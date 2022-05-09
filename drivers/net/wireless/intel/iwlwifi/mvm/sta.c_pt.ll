; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/sta.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/sta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.169 = type { %struct.iwl_mvm_add_sta_key_cmd_v1, [12 x i8] }
%struct.iwl_mvm_add_sta_key_cmd_v1 = type { %struct.iwl_mvm_add_sta_key_common, i8, i8, [5 x i16] }
%struct.iwl_mvm_add_sta_key_common = type { i8, i8, i16, [32 x i8], [16 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.170 = type { %struct.iwl_mvm_add_sta_key_cmd_v1, [12 x i8] }
%struct.iwl_mvm_add_sta_cmd = type { i8, i8, i16, i32, [6 x i8], i16, i8, i8, i16, i32, i32, i8, i8, i16, i16, i8, i8, i16, i16, i32, i16, i8, i8 }
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
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
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
%struct.iwl_trans_txq_scd_cfg = type { i8, i8, i8, i8, i32 }
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
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.iwl_scd_txq_cfg_cmd = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.iwl_mvm_rxq_dup_data = type { [9 x i16], [9 x i8], [101 x i8] }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.139, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.139 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.118 }>
%struct.anon.118 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mvm_rm_sta_cmd = type { i8, [3 x i8] }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_mvm_delba_data = type { i32 }
%struct.iwl_mvm_baid_data = type { %struct.callback_head, i8, i8, i8, i16, i16, i32, %struct.timer_list, ptr, ptr, [52 x i8], [16 x %struct.iwl_mvm_reorder_buffer], [0 x %struct.iwl_mvm_reorder_buf_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.iwl_mvm_reorder_buffer = type { i16, i16, i16, i32, i16, i8, %struct.timer_list, i8, i8, %struct.spinlock, ptr, i32, i32, i8 }
%struct.iwl_mvm_reorder_buf_entry = type { %struct._iwl_mvm_reorder_buf_entry, [4 x i8] }
%struct._iwl_mvm_reorder_buf_entry = type { %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.iwl_mvm_tvqm_txq_info = type { i8, i8 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.iwl_mvm_mgmt_mcast_key_cmd = type <{ i32, [32 x i8], i32, i32, i64 }>
%struct.ieee80211_key_seq = type { %union.anon.162 }
%union.anon.162 = type { %struct.anon.163, [12 x i8] }
%struct.anon.163 = type { i32, i16 }
%struct.iwl_mvm_mgmt_mcast_key_cmd_v1 = type <{ i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i64 }>
%struct.iwl_mvm_add_sta_key_cmd = type <{ %struct.iwl_mvm_add_sta_key_common, i64, i64, i64 }>
%struct.anon.168 = type { [16 x i8], i8 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.iwl_mvm_txq = type { %struct.list_head, i16, %struct.atomic_t, i8 }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/sta.c\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sta_send_to_fw = private unnamed_addr constant [23 x i8] c"iwl_mvm_sta_send_to_fw\00", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADD_STA PASSED\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADD_STA failed\0A\00", [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@iwl_mvm_add_sta.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mvm_sta->lock\00", [17 x i8] zeroinitializer }, align 32
@iwl_mvm_add_sta.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&mvm_sta->lq_sta.rs_drv.pers.lock\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_drain_sta = private unnamed_addr constant [18 x i8] c"iwl_mvm_drain_sta\00", align 1
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Frames for staid %d will drained in fw\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't drain frames for staid %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sta_id %d reserved txq %d status %d\00", [60 x i8] zeroinitializer }, align 32
@iwl_mvm_rm_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_allocate_int_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_rm_snif_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed sending remove station\0A\00", [33 x i8] zeroinitializer }, align 32
@iwl_mvm_rm_aux_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_send_add_bcast_sta._baddr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Missing required TXQ for adding bcast STA\0A\00", [53 x i8] zeroinitializer }, align 32
@iwl_mvm_send_add_bcast_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_add_mcast_sta._maddr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not enough RX BA SESSIONS\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sta_rx_agg = private unnamed_addr constant [19 x i8] c"iwl_mvm_sta_rx_agg\00", align 1
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX BA Session %sed in fw\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stopp\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX BA Session refused by fw\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RX BA Session failed %sing, status 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iwl_mvm_sta_rx_agg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&baid_data->session_timer)\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sta %d(%d) is assigned to BAID %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BAID %d is free\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TX BA Session failed %sing, status 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@tid_to_mac80211_ac = dso_local constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\03\03\02\01\01\00\00\00", [23 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_tx_agg_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Start AGG when state is not IWL_AGG_QUEUED or IWL_AGG_OFF %d!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate agg queue\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tid_id %d out of range (0, %d)!\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sta_tx_agg_start = private unnamed_addr constant [25 x i8] c"iwl_mvm_sta_tx_agg_start\00", align 1
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't start tid %d agg on shared queue!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AGG for tid %d will be on queue #%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Start AGG: sta %d tid %d queue %d - ssn = %d, next_recl = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_tx_agg_oper.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_ac_to_tx_fifo = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error draining queue before reconfig\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error reconfiguring TXQ #%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sta_tx_agg_oper = private unnamed_addr constant [24 x i8] c"iwl_mvm_sta_tx_agg_oper\00", align 1
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Tx aggregation enabled on ra = %pM tid = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sta_tx_agg_stop = private unnamed_addr constant [24 x i8] c"iwl_mvm_sta_tx_agg_stop\00", align 1
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Stop AGG: sta %d tid %d q %d state %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ssn = %d, next_recl = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Stopping AGG while state not ON or starting for %d on %d (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09tid_data->txq_id = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sta_tx_agg_flush = private unnamed_addr constant [25 x i8] c"iwl_mvm_sta_tx_agg_flush\00", align 1
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Flush AGG: sta %d tid %d q %d state %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't flush the AGG queue\0A\00", [34 x i8] zeroinitializer }, align 32
@iwl_mvm_set_sta_key.zero_addr = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to find station\0A\00", [40 x i8] zeroinitializer }, align 32
@iwl_mvm_set_sta_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid station id\0A\00", [44 x i8] zeroinitializer }, align 32
@iwl_mvm_set_sta_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_set_sta_key = private unnamed_addr constant [20 x i8] c"iwl_mvm_set_sta_key\00", align 1
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"key: cipher=%x len=%d idx=%d sta=%pM ret=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_remove_sta_key = private unnamed_addr constant [23 x i8] c"iwl_mvm_remove_sta_key\00", align 1
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mvm remove dynamic key: idx=%d sta=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"offset %d not used in fw key table.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"station non-existent, early return.\0A\00", [59 x i8] zeroinitializer }, align 32
@iwl_mvm_update_tkip_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to send ADD_STA command (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@tid_to_ucode_ac = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\00\00\01\02\02\03\03", [24 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_eosp_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_rx_eosp_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_modify_all_sta_disable_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_inactivity_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_remove_inactive_tids = private unnamed_addr constant [29 x i8] c"iwl_mvm_remove_inactive_tids\00", align 1
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Queue %d is inactive\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Removing inactive TID %d from shared Q:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TXQ #%d left with tid bitmap 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Marking Q:%d for reconfig\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to unshare q %d, active tids=0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_unshare_queue = private unnamed_addr constant [22 x i8] c"iwl_mvm_unshare_queue\00", align 1
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsharing TXQ %d, keeping tid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@iwl_mvm_unshare_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_unshare_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to redirect TXQ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TXQ #%d is now aggregated again\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_redirect_queue = private unnamed_addr constant [23 x i8] c"iwl_mvm_redirect_queue\00", align 1
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No redirection needed on TXQ #%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Redirecting TXQ #%d to FIFO #%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error draining queue %d before reconfig\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed SCD disable TXQ %d (ret=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@iwl_trans_txq_enable_cfg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_txq_enable_cfg = private unnamed_addr constant [25 x i8] c"iwl_trans_txq_enable_cfg\00", align 1
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TXQ %d has no tids assigned to it\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to update owner of TXQ %d (ret=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_change_queue_tid = private unnamed_addr constant [25 x i8] c"iwl_mvm_change_queue_tid\00", align 1
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Changed TXQ %d ownership to tid %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to free inactive queue %d (ret=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_from_staid_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_remove_sta_queue_marking.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_remove_sta_queue_marking.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_invalidate_sta_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_invalidate_sta_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_sta_alloc_queue = private unnamed_addr constant [24 x i8] c"iwl_mvm_sta_alloc_queue\00", align 1
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Found free MGMT queue #%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using reserved queue #%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No available queues for tid %d on sta_id %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Allocating %squeue #%d to sta %d on tid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shared \00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling aggs on queue %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iwl_mvm_ac_to_gen2_tx_fifo = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No DATA queues available to share\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_mvm_get_queue_agg_tids.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_get_queue_agg_tids.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_find_free_sta_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_find_free_sta_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_add_int_sta_common = private unnamed_addr constant [27 x i8] c"iwl_mvm_add_int_sta_common\00", align 1
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Internal station added.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Add internal station failed, status=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_realloc_queues_after_restart = private unnamed_addr constant [37 x i8] c"iwl_mvm_realloc_queues_after_restart\00", align 1
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Re-mapping sta %d tid %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Re-mapping sta %d tid %d to queue %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No available queues for new station\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_reserve_sta_stream = private unnamed_addr constant [27 x i8] c"iwl_mvm_reserve_sta_stream\00", align 1
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reserving data queue #%d for sta_id %d\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_trans_wait_txq_empty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_trans_wait_txq_empty.__already_done.78 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_wait_txq_empty = private unnamed_addr constant [25 x i8] c"iwl_trans_wait_txq_empty\00", align 1
@iwl_trans_wait_tx_queues_empty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_wait_tx_queues_empty = private unnamed_addr constant [31 x i8] c"iwl_trans_wait_tx_queues_empty\00", align 1
@iwl_mvm_rm_sta_common.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to remove station. Id=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_disable_txq = private unnamed_addr constant [20 x i8] c"iwl_mvm_disable_txq\00", align 1
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Disabling TXQ #%d tids=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TXQ #%d info out-of-sync - tids=0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to disable queue %d (ret=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@iwl_trans_txq_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to configure queue %d on FIFO %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trying to enable TXQ %d with existing TID %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_update_txq_mapping = private unnamed_addr constant [27 x i8] c"iwl_mvm_update_txq_mapping\00", align 1
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling TXQ #%d tids=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tvqm_enable_txq = private unnamed_addr constant [24 x i8] c"iwl_mvm_tvqm_enable_txq\00", align 1
@.str.86 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed allocating TXQ of size %d for sta %d tid %d, ret: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Enabling TXQ #%d for sta %d tid %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_trans_txq_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_trans_txq_alloc.__already_done.88 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_txq_alloc = private unnamed_addr constant [20 x i8] c"iwl_trans_txq_alloc\00", align 1
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't free bcast queue on vif type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_agg_session_expired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rx_agg_session_expired.__warned.90 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_init_reorder_buffer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&reorder_buf->reorder_timer)\00", [34 x i8] zeroinitializer }, align 32
@iwl_mvm_init_reorder_buffer.__key.92 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&reorder_buf->lock\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sta_alloc_queue_tvqm = private unnamed_addr constant [29 x i8] c"iwl_mvm_sta_alloc_queue_tvqm\00", align 1
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Allocating queue for sta %d on tid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Allocated queue is %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"max queue %d >= num_of_queues (%d)\00", [61 x i8] zeroinitializer }, align 32
@iwl_mvm_get_key_sta.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_send_sta_igtk = private unnamed_addr constant [22 x i8] c"iwl_mvm_send_sta_igtk\00", align 1
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %sIGTK (%d) for sta %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"removing\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"installing\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find station id\0A\00", [37 x i8] zeroinitializer }, align 32
@iwl_mvm_get_mac_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__const.__iwl_mvm_remove_sta_key.u = private unnamed_addr constant %union.anon.169 { %struct.iwl_mvm_add_sta_key_cmd_v1 zeroinitializer, [12 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@__func__.__iwl_mvm_remove_sta_key = private unnamed_addr constant [25 x i8] c"__iwl_mvm_remove_sta_key\00", align 1
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MODIFY_STA: remove sta key passed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MODIFY_STA: remove sta key failed\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__const.iwl_mvm_send_sta_key.u = private unnamed_addr constant %union.anon.170 { %struct.iwl_mvm_add_sta_key_cmd_v1 zeroinitializer, [12 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@__func__.iwl_mvm_send_sta_key = private unnamed_addr constant [21 x i8] c"iwl_mvm_send_sta_key\00", align 1
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MODIFY_STA: set dynamic key passed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MODIFY_STA: set dynamic key failed\0A\00", [60 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.108 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwl_trans_block_txq_ptrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_block_txq_ptrs = private unnamed_addr constant [25 x i8] c"iwl_trans_block_txq_ptrs\00", align 1
@iwl_mvm_sta_from_staid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.iwl_mvm_sta_send_to_fw = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 10]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 10]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 10]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 1027078, i64 1027083, i64 1027084]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 1027078, i64 1027083, i64 1027084]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 1027078, i64 1027083, i64 1027084]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 1027078, i64 1027083, i64 1027084]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.123 = internal global [8 x i64] [i64 6, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027080, i64 1027081]
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 85, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 211, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 215, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1578, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1679, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1729, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1734, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1872, i32 7 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2071, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_baddr\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2111, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2134, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_maddr\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2301, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2541, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2608, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2612, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2617, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2643, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2661, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2686, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2744, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"tid_to_mac80211_ac\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2752, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2789, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2820, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2830, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2837, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2843, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2852, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2959, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2968, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3000, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3051, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3062, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3089, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3092, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3116, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3131, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant [10 x i8] c"zero_addr\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3532, i32 33 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3541, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3552, i32 10 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3556, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3618, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3644, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3653, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3666, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3720, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [16 x i8] c"tid_to_ucode_ac\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2764, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3818, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1013, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1043, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1048, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1061, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 923, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 928, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 947, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 967, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 628, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 639, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 647, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 657, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1191, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1194, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 880, i32 6 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 890, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 896, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 517, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1203, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1213, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1224, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1256, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1270, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1280, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 592, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1545, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1549, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1465, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1495, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1416, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1424, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1767, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 345, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 358, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 380, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 857, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 792, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 821, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 736, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 745, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2196, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2518, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2520, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 764, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 775, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 698, i32 6 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3435, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3503, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2413, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2417, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 695, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3366, i32 3 }
@___asan_gen_.461 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 3370, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 723, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [36 x i8] c"switch.table.iwl_mvm_sta_send_to_fw\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @iwl_mvm_add_sta.__key, ptr @.str.3, ptr @iwl_mvm_add_sta.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @iwl_mvm_send_add_bcast_sta._baddr, ptr @.str.10, ptr @iwl_mvm_add_mcast_sta._maddr, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @iwl_mvm_sta_rx_agg.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tid_to_mac80211_ac, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @iwl_mvm_set_sta_key.zero_addr, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @tid_to_ucode_ac, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @iwl_mvm_init_reorder_buffer.__key, ptr @.str.91, ptr @iwl_mvm_init_reorder_buffer.__key.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @switch.table.iwl_mvm_sta_send_to_fw], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_add_sta.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_add_sta.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_send_add_bcast_sta._baddr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_add_mcast_sta._maddr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_sta_rx_agg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tid_to_mac80211_ac to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_set_sta_key.zero_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tid_to_ucode_ac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_init_reorder_buffer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_init_reorder_buffer.__key.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_sta_send_to_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sta_send_to_fw(ptr noundef %mvm, ptr nocapture noundef readonly %sta, i1 noundef zeroext %update, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %add_sta_cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %add_sta_cmd) #10
  %0 = getelementptr inbounds i8, ptr %add_sta_cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 47)
  %conv = zext i1 %update to i8
  %2 = ptrtoint ptr %add_sta_cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %add_sta_cmd, align 1
  %tid_disable_tx = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 2
  %tid_disable_agg = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %tid_disable_agg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tid_disable_agg, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %tid_disable_tx, align 1
  %mac_id_n_color = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 3
  %mac_id_n_color1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %mac_id_n_color1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_id_n_color1, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %mac_id_n_color, align 1
  %sta_id = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 6
  %11 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drv_priv.i, align 8
  %conv3 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %sta_id, align 1
  %station_flags_msk = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 10
  %14 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 572, ptr %station_flags_msk, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %status, align 4, !annotation !335
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_api.i, align 4
  %20 = and i32 %19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sta_type = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %sta_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sta_type, align 8
  %conv5 = trunc i32 %22 to i8
  %station_type = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 16
  %23 = ptrtoint ptr %station_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv5, ptr %station_type, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool7.not, %update
  br i1 %or.cond, label %if.end.if.end43_crit_edge, label %if.then8

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then8:                                         ; preds = %if.end
  %addr = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 4
  %addr9 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %addr, ptr %addr9, i32 6)
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %25 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %30 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.i288.not = icmp eq i16 %30, 0
  br i1 %tobool.i288.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %tfd_queue_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tfd_queue_msk, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %tfd_queue_msk12 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 19
  %34 = ptrtoint ptr %tfd_queue_msk12 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %tfd_queue_msk12, align 1
  br i1 %tobool7.not, label %if.then11.if.end43_crit_edge, label %if.then15

if.then11.if.end43_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %modify_mask = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 7
  %35 = ptrtoint ptr %modify_mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %modify_mask, align 1
  %37 = or i8 %36, -128
  store i8 %37, ptr %modify_mask, align 1
  br label %if.end43

if.else:                                          ; preds = %if.then8
  br i1 %tobool7.not, label %if.else.if.end43_crit_edge, label %do.end, !prof !336

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end, %if.else.if.end43_crit_edge, %if.then15, %if.then11.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %38 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bandwidth, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %if.end43.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.end43.sw.bb45_crit_edge
    i32 1, label %if.end43.sw.bb48_crit_edge
  ]

if.end43.sw.bb48_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

if.end43.sw.bb45_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %station_flags = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 9
  %41 = ptrtoint ptr %station_flags to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %station_flags, align 1
  %or44 = or i32 %42, 12
  store i32 %or44, ptr %station_flags, align 1
  br label %sw.bb45

sw.bb45:                                          ; preds = %sw.bb, %if.end43.sw.bb45_crit_edge
  %station_flags46 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 9
  %43 = ptrtoint ptr %station_flags46 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %station_flags46, align 1
  %or47 = or i32 %44, 8
  store i32 %or47, ptr %station_flags46, align 1
  br label %sw.bb48

sw.bb48:                                          ; preds = %sw.bb45, %if.end43.sw.bb48_crit_edge
  %station_flags49 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 9
  %45 = ptrtoint ptr %station_flags49 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %station_flags49, align 1
  %or50 = or i32 %46, 4
  store i32 %or50, ptr %station_flags49, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb48, %if.end43.sw.epilog_crit_edge
  %rx_nss = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %47 = ptrtoint ptr %rx_nss to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx_nss, align 1
  %switch.tableidx = add i8 %48, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %49 = icmp ult i8 %switch.tableidx, 7
  br i1 %49, label %switch.lookup, label %sw.epilog.sw.epilog67_crit_edge

sw.epilog.sw.epilog67_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog67

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %50 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.iwl_mvm_sta_send_to_fw, i32 0, i32 %50
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  %station_flags62 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 9
  %52 = ptrtoint ptr %station_flags62 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %station_flags62, align 1
  %or66 = or i32 %53, %switch.load
  store i32 %or66, ptr %station_flags62, align 1
  br label %sw.epilog67

sw.epilog67:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog67_crit_edge
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %54 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %smps_mode, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %55, label %sw.epilog67.sw.epilog103_crit_edge [
    i32 0, label %sw.epilog67.do.end81_crit_edge
    i32 4, label %sw.epilog67.do.end81_crit_edge293
    i32 2, label %sw.bb95
    i32 3, label %sw.bb100
  ]

sw.epilog67.do.end81_crit_edge293:                ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81

sw.epilog67.do.end81_crit_edge:                   ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81

sw.epilog67.sw.epilog103_crit_edge:               ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog103

do.end81:                                         ; preds = %sw.epilog67.do.end81_crit_edge, %sw.epilog67.do.end81_crit_edge293
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog103

sw.bb95:                                          ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #12
  %station_flags96 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 9
  %57 = ptrtoint ptr %station_flags96 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %station_flags96, align 1
  %and97 = and i32 %58, -49
  store i32 %and97, ptr %station_flags96, align 1
  br label %sw.epilog103

sw.bb100:                                         ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #12
  %station_flags101 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 9
  %59 = ptrtoint ptr %station_flags101 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %station_flags101, align 1
  %or102 = or i32 %60, 512
  store i32 %or102, ptr %station_flags101, align 1
  br label %sw.epilog103

sw.epilog103:                                     ; preds = %sw.bb100, %sw.bb95, %do.end81, %sw.epilog67.sw.epilog103_crit_edge
  %ht_supported105 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %ht_supported105 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ht_supported105, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool106.not = icmp eq i8 %62, 0
  br i1 %tobool106.not, label %sw.epilog103.if.end112_crit_edge, label %if.then107

sw.epilog103.if.end112_crit_edge:                 ; preds = %sw.epilog103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then107:                                       ; preds = %sw.epilog103
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %station_flags_msk, align 1
  %or109 = or i32 %64, 63491
  store i32 %or109, ptr %station_flags_msk, align 1
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ampdu_density, align 4
  %conv111 = zext i8 %66 to i32
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %sw.epilog103.if.end112_crit_edge
  %mpdu_dens.0 = phi i32 [ %conv111, %if.then107 ], [ 0, %sw.epilog103.if.end112_crit_edge ]
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %67 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vif, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_vif, ptr %68, i32 0, i32 1, i32 32
  %69 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chandef, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp = icmp eq i32 %72, 3
  br i1 %cmp, label %if.then114, label %if.else123

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %station_flags_msk, align 1
  %or116 = or i32 %74, 63491
  store i32 %or116, ptr %station_flags_msk, align 1
  %he_6ghz_capa = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 7
  %75 = ptrtoint ptr %he_6ghz_capa to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %he_6ghz_capa, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #10
  %and6.i = and i16 %77, 7
  %conv118 = zext i16 %and6.i to i32
  %78 = lshr i16 %77, 3
  %79 = and i16 %78, 7
  %div7.i289290 = zext i16 %79 to i32
  br label %if.end137

if.else123:                                       ; preds = %if.end112
  %vht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %80 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vht_cap, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool124.not = icmp eq i8 %81, 0
  br i1 %tobool124.not, label %if.else128, label %if.then125

if.then125:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #12
  %cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cap, align 4
  %and127 = lshr i32 %83, 23
  %shr = and i32 %and127, 7
  br label %if.end137

if.else128:                                       ; preds = %if.else123
  br i1 %tobool106.not, label %if.else128.if.end137_crit_edge, label %if.then132

if.else128.if.end137_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then132:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %84 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ampdu_factor, align 1
  %conv134 = zext i8 %85 to i32
  br label %if.end137

if.end137:                                        ; preds = %if.then132, %if.else128.if.end137_crit_edge, %if.then125, %if.then114
  %agg_size.0 = phi i32 [ %div7.i289290, %if.then114 ], [ %shr, %if.then125 ], [ %conv134, %if.then132 ], [ 0, %if.else128.if.end137_crit_edge ]
  %mpdu_dens.1 = phi i32 [ %conv118, %if.then114 ], [ %mpdu_dens.0, %if.then125 ], [ %mpdu_dens.0, %if.then132 ], [ %mpdu_dens.0, %if.else128.if.end137_crit_edge ]
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %86 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %he_cap, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool138.not = icmp eq i8 %87, 0
  br i1 %tobool138.not, label %if.end137.if.end143_crit_edge, label %if.then139

if.end137.if.end143_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then139:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx, align 1
  %90 = lshr i8 %89, 3
  %div12.i = and i8 %90, 3
  %conv142 = zext i8 %div12.i to i32
  %add = add nuw nsw i32 %agg_size.0, %conv142
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %if.end137.if.end143_crit_edge
  %agg_size.1 = phi i32 [ %add, %if.then139 ], [ %agg_size.0, %if.end137.if.end143_crit_edge ]
  %91 = tail call i32 @llvm.umin.i32(i32 %agg_size.1, i32 9)
  %shl = shl nuw nsw i32 %91, 11
  %station_flags148 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 9
  %92 = ptrtoint ptr %station_flags148 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %station_flags148, align 1
  %shl150 = shl nuw nsw i32 %mpdu_dens.1, 23
  %94 = tail call i32 @llvm.bswap.i32(i32 %shl150)
  %or149 = or i32 %93, %94
  %or152 = or i32 %or149, %shl
  %95 = ptrtoint ptr %station_flags148 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %or152, ptr %station_flags148, align 1
  %sta_state = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 5
  %96 = ptrtoint ptr %sta_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sta_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp153 = icmp ugt i32 %97, 2
  br i1 %cmp153, label %if.then155, label %if.end143.if.end156_crit_edge

if.end143.if.end156_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then155:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %aid = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %98 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %aid, align 2
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %assoc_id = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 17
  %101 = ptrtoint ptr %assoc_id to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %100, ptr %assoc_id, align 1
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.end143.if.end156_crit_edge
  %wme = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 10
  %102 = ptrtoint ptr %wme to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %wme, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool157.not = icmp eq i8 %103, 0
  br i1 %tobool157.not, label %if.end156.if.end214_crit_edge, label %if.then158

if.end156.if.end214_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end214

if.then158:                                       ; preds = %if.end156
  %modify_mask159 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 7
  %104 = ptrtoint ptr %modify_mask159 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %modify_mask159, align 1
  %106 = or i8 %105, 4
  store i8 %106, ptr %modify_mask159, align 1
  %uapsd_queues = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 11
  %107 = ptrtoint ptr %uapsd_queues to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %uapsd_queues, align 1
  %109 = and i8 %108, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool165.not = icmp eq i8 %109, 0
  br i1 %tobool165.not, label %if.then158.if.end170_crit_edge, label %if.then166

if.then158.if.end170_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then166:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  %uapsd_acs = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 22
  %110 = ptrtoint ptr %uapsd_acs to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %uapsd_acs, align 1
  %112 = or i8 %111, 1
  store i8 %112, ptr %uapsd_acs, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then166, %if.then158.if.end170_crit_edge
  %113 = and i8 %108, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool174.not = icmp eq i8 %113, 0
  br i1 %tobool174.not, label %if.end170.if.end180_crit_edge, label %if.then175

if.end170.if.end180_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then175:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  %uapsd_acs176 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 22
  %114 = ptrtoint ptr %uapsd_acs176 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %uapsd_acs176, align 1
  %116 = or i8 %115, 2
  store i8 %116, ptr %uapsd_acs176, align 1
  br label %if.end180

if.end180:                                        ; preds = %if.then175, %if.end170.if.end180_crit_edge
  %117 = and i8 %108, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool184.not = icmp eq i8 %117, 0
  br i1 %tobool184.not, label %if.end180.if.end190_crit_edge, label %if.then185

if.end180.if.end190_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  %uapsd_acs186 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 22
  %118 = ptrtoint ptr %uapsd_acs186 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %uapsd_acs186, align 1
  %120 = or i8 %119, 4
  store i8 %120, ptr %uapsd_acs186, align 1
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %if.end180.if.end190_crit_edge
  %121 = and i8 %108, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool194.not = icmp eq i8 %121, 0
  br i1 %tobool194.not, label %if.end190.if.end200_crit_edge, label %if.then195

if.end190.if.end200_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

if.then195:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  %uapsd_acs196 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 22
  %122 = ptrtoint ptr %uapsd_acs196 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %uapsd_acs196, align 1
  %124 = or i8 %123, 8
  store i8 %124, ptr %uapsd_acs196, align 1
  br label %if.end200

if.end200:                                        ; preds = %if.then195, %if.end190.if.end200_crit_edge
  %uapsd_acs201 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 22
  %125 = ptrtoint ptr %uapsd_acs201 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %uapsd_acs201, align 1
  %shl203 = shl i8 %126, 4
  %or206 = or i8 %shl203, %126
  store i8 %or206, ptr %uapsd_acs201, align 1
  %max_sp = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 12
  %127 = ptrtoint ptr %max_sp to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %max_sp, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool209.not = icmp eq i8 %128, 0
  %mul = shl i8 %128, 1
  %spec.select = select i1 %tobool209.not, i8 -128, i8 %mul
  %sp_length = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %add_sta_cmd, i32 0, i32 21
  %129 = ptrtoint ptr %sp_length to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %spec.select, ptr %sp_length, align 1
  br label %if.end214

if.end214:                                        ; preds = %if.end200, %if.end156.if.end214_crit_edge
  %130 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %status, align 4
  %131 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %132, i32 0, i32 5, i32 8, i32 2
  %133 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %135 = and i32 %134, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.i.i.not.i = icmp eq i32 %135, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %if.end214.iwl_mvm_add_sta_cmd_size.exit_crit_edge

if.end214.iwl_mvm_add_sta_cmd_size.exit_crit_edge: ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %132, i32 0, i32 5, i32 7
  %136 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %_api.i.i, align 4
  %138 = and i32 %137, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.i.not.i = icmp eq i32 %138, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %if.end214.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %if.end214.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call217 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 24, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %add_sta_cmd, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end220, label %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge

iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge:  ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end220:                                        ; preds = %iwl_mvm_add_sta_cmd_size.exit
  %139 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %status, align 4
  %and221 = and i32 %140, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and221)
  %cond242 = icmp eq i32 %and221, 1
  %141 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mvm, align 8
  br i1 %cond242, label %do.end226, label %sw.default

do.end226:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %142, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_send_to_fw, ptr noundef nonnull @.str.1) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %142, i32 noundef 0, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end226, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call217, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge ], [ 0, %do.end226 ], [ -5, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %add_sta_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_add_new_dqa_stream_wk(ptr noundef %wk) local_unnamed_addr #0 align 64 {
entry:
  %tid_bitmap.i.i = alloca i32, align 4
  %tfd_queue_mask.addr.i.i = alloca i32, align 4
  %ac_to_queue.i.i = alloca [4 x i8], align 4
  %cfg.i = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  %queue_tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -2296
  %mutex = getelementptr i8, ptr %wk, i32 -2272
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @iwl_mvm_inactivity_check(ptr noundef %add.ptr, i8 noundef zeroext -1)
  %add_stream_txqs = getelementptr i8, ptr %wk, i32 -1544
  %0 = ptrtoint ptr %add_stream_txqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add_stream_txqs, align 4
  %cmp.i.not47 = icmp eq ptr %1, %add_stream_txqs
  br i1 %cmp.i.not47, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 4
  %trans.i.i.i = getelementptr i8, ptr %wk, i32 -2292
  %dep_map.i = getelementptr i8, ptr %wk, i32 -2208
  %6 = getelementptr i8, ptr %wk, i32 -1536
  %7 = getelementptr inbounds [4 x i8], ptr %ac_to_queue.i.i, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i8], ptr %ac_to_queue.i.i, i32 0, i32 2
  %9 = getelementptr inbounds [4 x i8], ptr %ac_to_queue.i.i, i32 0, i32 3
  %hw = getelementptr i8, ptr %wk, i32 -2276
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %10 = phi ptr [ %1, %while.body.lr.ph ], [ %156, %cleanup.while.body_crit_edge ]
  %tid9 = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %tid9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tid9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp = icmp eq i8 %12, 16
  %spec.store.select = select i1 %cmp, i8 8, i8 %12
  %sta = getelementptr i8, ptr %10, i32 -8
  %13 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sta, align 4
  %ac = getelementptr i8, ptr %10, i32 -3
  %15 = ptrtoint ptr %ac to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ac, align 1
  %conv11 = zext i8 %spec.store.select to i32
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %14, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg.i) #10
  %conv.i32 = zext i8 %16 to i32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %cfg.i, align 4
  %18 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans.i.i.i, align 4
  %trans_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %trans_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_cfg.i.i.i, align 4
  %use_tfh.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %use_tfh.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i.i = load i16, ptr %use_tfh.i.i.i, align 4
  %23 = and i16 %bf.load.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.not.i.i = icmp eq i16 %23, 0
  %iwl_mvm_ac_to_gen2_tx_fifo.iwl_mvm_ac_to_tx_fifo.i.i = select i1 %tobool.i.not.i.i, ptr @iwl_mvm_ac_to_tx_fifo, ptr @iwl_mvm_ac_to_gen2_tx_fifo
  %cond.in.in.i.i = getelementptr [0 x i8], ptr %iwl_mvm_ac_to_gen2_tx_fifo.iwl_mvm_ac_to_tx_fifo.i.i, i32 0, i32 %conv.i32
  %24 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %cond.in5.i.i = load i8, ptr %cond.in.in.i.i, align 1
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cond.in5.i.i, ptr %cfg.i, align 4
  %26 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drv_priv.i.i, align 8
  %conv3.i = trunc i32 %27 to i8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i, ptr %2, align 1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.store.select, ptr %3, align 2
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 64, ptr %5, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sta, ptr %14, i32 17, i32 28, i32 10
  %31 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vif.i, align 8
  %call6.i = call i32 @iwl_mvm_get_wd_timeout(ptr noundef %add.ptr, ptr noundef %32, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %queue_tmp.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %while.body.if.end.i_crit_edge, label %land.rhs.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %while.body
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !338

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1198, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %while.body.if.end.i_crit_edge
  %34 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trans.i.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %39 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.i.not.i = icmp eq i16 %39, 0
  br i1 %tobool.i.not.i, label %if.end35.i, label %iwl_mvm_sta_alloc_queue.exit

if.end35.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.ieee80211_sta, ptr %14, i32 1, i32 1, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %tfd_queue_msk.i = getelementptr inbounds %struct.ieee80211_sta, ptr %14, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tfd_queue_msk.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %conv11
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i, align 4
  %44 = lshr i16 %43, 4
  %45 = zext i16 %44 to i32
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.store.select)
  %cmp38.i = icmp eq i8 %spec.store.select, 8
  br i1 %cmp38.i, label %if.then40.i, label %if.end35.i.land.lhs.true.i_crit_edge

if.end35.i.land.lhs.true.i_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.then40.i:                                      ; preds = %if.end35.i
  %call43.i = call fastcc i32 @iwl_mvm_find_free_queue(ptr noundef %add.ptr, i8 noundef zeroext 5, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call43.i)
  %cmp44.i = icmp sgt i32 %call43.i, 4
  br i1 %cmp44.i, label %if.end90.thread.i, label %if.end54.i

if.end90.thread.i:                                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %47, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_alloc_queue, ptr noundef nonnull @.str.64, i32 noundef %call43.i) #10
  br label %if.then106.i

if.end54.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp55.i = icmp slt i32 %call43.i, 0
  br i1 %cmp55.i, label %if.end54.i.land.lhs.true.i_crit_edge, label %if.end54.i.if.end90.i_crit_edge

if.end54.i.if.end90.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

if.end54.i.land.lhs.true.i_crit_edge:             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end54.i.land.lhs.true.i_crit_edge, %if.end35.i.land.lhs.true.i_crit_edge
  %reserved_queue.i = getelementptr inbounds %struct.ieee80211_sta, ptr %14, i32 17, i32 28, i32 16
  %48 = ptrtoint ptr %reserved_queue.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reserved_queue.i, align 8
  %conv57.i = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp58.not.i = icmp eq i8 %49, -1
  br i1 %cmp58.not.i, label %land.lhs.true.i.if.end83.i_crit_edge, label %land.lhs.true60.i

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true60.i:                                ; preds = %land.lhs.true.i
  %status.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %6, i32 0, i32 %conv57.i, i32 6
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp63.i = icmp eq i32 %51, 1
  br i1 %cmp63.i, label %if.then65.i, label %land.lhs.true60.i.if.end83.i_crit_edge

land.lhs.true60.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

if.then65.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #12
  %reserved.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %6, i32 0, i32 %conv57.i, i32 1
  %52 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %reserved.i, align 1
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %54, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_alloc_queue, ptr noundef nonnull @.str.65, i32 noundef %conv57.i) #10
  br label %if.end90.i

if.end83.i:                                       ; preds = %land.lhs.true60.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge
  %call82.i = call fastcc i32 @iwl_mvm_find_free_queue(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext 30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %cmp84.i = icmp slt i32 %call82.i, 0
  br i1 %cmp84.i, label %if.then86.i, label %if.end83.i.if.end90.i_crit_edge

if.end83.i.if.end90.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

if.then86.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %drv_priv.i.i, align 8
  %conv88.i = trunc i32 %56 to i8
  %call89.i = call fastcc i32 @iwl_mvm_inactivity_check(ptr noundef %add.ptr, i8 noundef zeroext %conv88.i) #10
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then86.i, %if.end83.i.if.end90.i_crit_edge, %if.then65.i, %if.end54.i.if.end90.i_crit_edge
  %queue.3.i = phi i32 [ %call89.i, %if.then86.i ], [ %call82.i, %if.end83.i.if.end90.i_crit_edge ], [ %call43.i, %if.end54.i.if.end90.i_crit_edge ], [ %conv57.i, %if.then65.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %queue.3.i)
  %cmp91.i = icmp slt i32 %queue.3.i, 1
  br i1 %cmp91.i, label %if.then93.i, label %if.end90.i.if.then106.i_crit_edge

if.end90.i.if.then106.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then106.i

if.then93.i:                                      ; preds = %if.end90.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfd_queue_mask.addr.i.i) #10
  %57 = ptrtoint ptr %tfd_queue_mask.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %41, ptr %tfd_queue_mask.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac_to_queue.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %58 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i, label %if.then93.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then93.i.if.end.i.i_crit_edge:                 ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then93.i
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !338

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 542, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then93.i.if.end.i.i_crit_edge
  %59 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %trans.i.i.i, align 4
  %trans_cfg.i.i359.i = getelementptr inbounds %struct.iwl_trans, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %trans_cfg.i.i359.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %trans_cfg.i.i359.i, align 4
  %use_tfh.i.i360.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %use_tfh.i.i360.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i.i361.i = load i16, ptr %use_tfh.i.i360.i, align 4
  %64 = and i16 %bf.load.i.i361.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.i.not.i362.i = icmp eq i16 %64, 0
  br i1 %tobool.i.not.i362.i, label %if.end57.i.i, label %do.end41.i.i, !prof !336

do.end41.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 544, i32 noundef 9, ptr noundef null) #10
  br label %do.end128.i

if.end57.i.i:                                     ; preds = %if.end.i.i
  %65 = ptrtoint ptr %ac_to_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %ac_to_queue.i.i, align 4
  %call58.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tfd_queue_mask.addr.i.i, i32 noundef 30, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call58.i.i)
  %cmp59161.i.i = icmp slt i32 %call58.i.i, 30
  br i1 %cmp59161.i.i, label %if.end57.i.i.for.body.i.i_crit_edge, label %if.end57.i.i.for.end.i.i_crit_edge

if.end57.i.i.for.end.i.i_crit_edge:               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end57.i.i.for.body.i.i_crit_edge:              ; preds = %if.end57.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end57.i.i.for.body.i.i_crit_edge
  %i.0162.i.i = phi i32 [ %call65.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call58.i.i, %if.end57.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0162.i.i)
  %cmp60.i.i = icmp sgt i32 %i.0162.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0162.i.i)
  %cmp61.not.i.i = icmp eq i32 %i.0162.i.i, 4
  %or.cond.i.i = or i1 %cmp60.i.i, %cmp61.not.i.i
  br i1 %or.cond.i.i, label %if.end63.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end63.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %i.0162.i.i to i8
  %mac80211_ac.i.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %6, i32 0, i32 %i.0162.i.i, i32 2
  %66 = ptrtoint ptr %mac80211_ac.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mac80211_ac.i.i, align 2
  %idxprom.i.i = zext i8 %67 to i32
  %arrayidx64.i.i = getelementptr [4 x i8], ptr %ac_to_queue.i.i, i32 0, i32 %idxprom.i.i
  %68 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i.i, ptr %arrayidx64.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end63.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %add.i.i = add nsw i32 %i.0162.i.i, 1
  %call65.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tfd_queue_mask.addr.i.i, i32 noundef 30, i32 noundef %add.i.i) #10
  %cmp59.i.i = icmp slt i32 %call65.i.i, 30
  br i1 %cmp59.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end57.i.i.for.end.i.i_crit_edge
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp68.not.i.i = icmp eq i8 %70, -1
  br i1 %cmp68.not.i.i, label %if.else.i.i, label %for.end.i.i.if.end123.i.i_crit_edge

for.end.i.i.if.end123.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i.i

if.else.i.i:                                      ; preds = %for.end.i.i
  %arrayidx74.i.i = getelementptr [4 x i8], ptr %ac_to_queue.i.i, i32 0, i32 %conv.i32
  %71 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx74.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp76.not.i.i = icmp eq i8 %72, -1
  br i1 %cmp76.not.i.i, label %if.else82.i.i, label %if.else.i.i.if.end123.i.i_crit_edge

if.else.i.i.if.end123.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i.i

if.else82.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp84.i.i = icmp eq i8 %16, 0
  br i1 %cmp84.i.i, label %land.lhs.true86.i.i, label %if.else82.i.i.if.else94.i.i_crit_edge

if.else82.i.i.if.else94.i.i_crit_edge:            ; preds = %if.else82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else94.i.i

land.lhs.true86.i.i:                              ; preds = %if.else82.i.i
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %cmp89.not.i.i = icmp eq i8 %74, -1
  br i1 %cmp89.not.i.i, label %land.lhs.true86.i.i.if.else94.i.i_crit_edge, label %land.lhs.true86.i.i.if.end123.i.i_crit_edge

land.lhs.true86.i.i.if.end123.i.i_crit_edge:      ; preds = %land.lhs.true86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i.i

land.lhs.true86.i.i.if.else94.i.i_crit_edge:      ; preds = %land.lhs.true86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else94.i.i

if.else94.i.i:                                    ; preds = %land.lhs.true86.i.i.if.else94.i.i_crit_edge, %if.else82.i.i.if.else94.i.i_crit_edge
  %75 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %76)
  %cmp97.not.i.i = icmp eq i8 %76, -1
  br i1 %cmp97.not.i.i, label %if.else102.i.i, label %if.else94.i.i.if.end123.i.i_crit_edge

if.else94.i.i.if.end123.i.i_crit_edge:            ; preds = %if.else94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i.i

if.else102.i.i:                                   ; preds = %if.else94.i.i
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %cmp105.not.i.i = icmp eq i8 %78, -1
  br i1 %cmp105.not.i.i, label %if.else110.i.i, label %if.else102.i.i.if.end123.i.i_crit_edge

if.else102.i.i.if.end123.i.i_crit_edge:           ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i.i

if.else110.i.i:                                   ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %ac_to_queue.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ac_to_queue.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp113.not.i.i = icmp eq i8 %80, -1
  %spec.select.i.i = select i1 %cmp113.not.i.i, i8 0, i8 %80
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %if.else110.i.i, %if.else102.i.i.if.end123.i.i_crit_edge, %if.else94.i.i.if.end123.i.i_crit_edge, %land.lhs.true86.i.i.if.end123.i.i_crit_edge, %if.else.i.i.if.end123.i.i_crit_edge, %for.end.i.i.if.end123.i.i_crit_edge
  %queue.0.shrunk.i.i = phi i8 [ %70, %for.end.i.i.if.end123.i.i_crit_edge ], [ %72, %if.else.i.i.if.end123.i.i_crit_edge ], [ %74, %land.lhs.true86.i.i.if.end123.i.i_crit_edge ], [ %76, %if.else94.i.i.if.end123.i.i_crit_edge ], [ %78, %if.else102.i.i.if.end123.i.i_crit_edge ], [ %spec.select.i.i, %if.else110.i.i ]
  %queue.0.i.i = zext i8 %queue.0.shrunk.i.i to i32
  %81 = add i8 %queue.0.shrunk.i.i, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %81)
  %82 = icmp ult i8 %81, 21
  %queue.0.shrunk.off.i.i = add i8 %queue.0.shrunk.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %queue.0.shrunk.off.i.i)
  %switch.i.i = icmp ult i8 %queue.0.shrunk.off.i.i, 5
  %or.cond160.i.i = or i1 %82, %switch.i.i
  br i1 %or.cond160.i.i, label %if.then170.i, label %do.end136.i.i

do.end136.i.i:                                    ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %84, i32 noundef 0, ptr noundef nonnull @.str.71) #10
  br label %do.end128.i

if.then106.i:                                     ; preds = %if.end90.i.if.then106.i_crit_edge, %if.end90.thread.i
  %queue.4.i = phi i32 [ %queue.3.i, %if.end90.i.if.then106.i_crit_edge ], [ %call43.i, %if.end90.thread.i ]
  %status108.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %6, i32 0, i32 %queue.4.i, i32 6
  %85 = ptrtoint ptr %status108.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %status108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %queue.4.i)
  %cmp154.i = icmp ugt i32 %queue.4.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue.4.i)
  %cmp156.i = icmp eq i32 %queue.4.i, 4
  %spec.select.i = or i1 %cmp154.i, %cmp156.i
  %frombool.i = zext i1 %spec.select.i to i8
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool.i, ptr %4, align 1
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 8
  %89 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %drv_priv.i.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %88, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_alloc_queue, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.69, i32 noundef %queue.4.i, i32 noundef %90, i32 noundef %conv11) #10
  %call185.i = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %add.ptr, ptr noundef %14, i32 noundef %queue.4.i, i16 noundef zeroext %44, ptr noundef nonnull %cfg.i, i32 noundef %call6.i) #10
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  br i1 %call185.i, label %if.then106.i.if.then192.i_crit_edge, label %if.then106.i.if.end200.i_crit_edge

if.then106.i.if.end200.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200.i

if.then106.i.if.then192.i_crit_edge:              ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then192.i

do.end128.i:                                      ; preds = %do.end136.i.i, %do.end41.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac_to_queue.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfd_queue_mask.addr.i.i) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef null) #10
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 8
  %conv150.i = and i32 %27, 255
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %92, i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %conv11, i32 noundef %conv150.i) #10
  br label %iwl_mvm_sta_alloc_queue.exit.thread44

if.then170.i:                                     ; preds = %if.end123.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac_to_queue.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfd_queue_mask.addr.i.i) #10
  %status99.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %6, i32 0, i32 %queue.0.i.i, i32 6
  %93 = ptrtoint ptr %status99.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3, ptr %status99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue.0.shrunk.i.i)
  %cmp154422.i = icmp ugt i8 %queue.0.shrunk.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %queue.0.shrunk.i.i)
  %cmp156423.i = icmp eq i8 %queue.0.shrunk.i.i, 4
  %spec.select424.i = or i1 %cmp154422.i, %cmp156423.i
  %frombool425.i = zext i1 %spec.select424.i to i8
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %frombool425.i, ptr %4, align 1
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 8
  %97 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %drv_priv.i.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %96, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_alloc_queue, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %queue.0.i.i, i32 noundef %98, i32 noundef %conv11) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %99 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i363.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i363.i, label %if.then170.i.if.end.i374.i_crit_edge, label %land.rhs.i367.i

if.then170.i.if.end.i374.i_crit_edge:             ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i374.i

land.rhs.i367.i:                                  ; preds = %if.then170.i
  %call.i.i365.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i365.i)
  %cmp.not.i366.i = icmp eq i32 %call.i.i365.i, 0
  br i1 %cmp.not.i366.i, label %do.end.i368.i, label %land.rhs.i367.i.if.end.i374.i_crit_edge, !prof !338

land.rhs.i367.i.if.end.i374.i_crit_edge:          ; preds = %land.rhs.i367.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i374.i

do.end.i368.i:                                    ; preds = %land.rhs.i367.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 394, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i374.i

if.end.i374.i:                                    ; preds = %do.end.i368.i, %land.rhs.i367.i.if.end.i374.i_crit_edge, %if.then170.i.if.end.i374.i_crit_edge
  %100 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %trans.i.i.i, align 4
  %trans_cfg.i.i370.i = getelementptr inbounds %struct.iwl_trans, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %trans_cfg.i.i370.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %trans_cfg.i.i370.i, align 4
  %use_tfh.i.i371.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %use_tfh.i.i371.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i.i372.i = load i16, ptr %use_tfh.i.i371.i, align 4
  %105 = and i16 %bf.load.i.i372.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.i.not.i373.i = icmp eq i16 %105, 0
  br i1 %tobool.i.not.i373.i, label %if.end57.i377.i, label %if.end.i374.i.iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i_crit_edge, !prof !336

if.end.i374.i.iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i_crit_edge: ; preds = %if.end.i374.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i

if.end57.i377.i:                                  ; preds = %if.end.i374.i
  %arrayidx.i.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %6, i32 0, i32 %queue.0.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.i, align 8
  %tid_bitmap59.i.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %6, i32 0, i32 %queue.0.i.i, i32 4
  %108 = ptrtoint ptr %tid_bitmap59.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %tid_bitmap59.i.i, align 4
  %conv.i376.i = zext i16 %109 to i32
  %110 = ptrtoint ptr %tid_bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv.i376.i, ptr %tid_bitmap.i.i, align 4
  %call.i168.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168.i.i)
  %tobool64.not.i.i = icmp eq i32 %call.i168.i.i, 0
  br i1 %tobool64.not.i.i, label %land.lhs.true.i.i, label %if.end57.i377.i.do.end72.i.i_crit_edge

if.end57.i377.i.do.end72.i.i_crit_edge:           ; preds = %if.end57.i377.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72.i.i

land.lhs.true.i.i:                                ; preds = %if.end57.i377.i
  %call65.i378.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i378.i)
  %tobool66.not.i.i = icmp eq i32 %call65.i378.i, 0
  br i1 %tobool66.not.i.i, label %land.lhs.true.i.i.do.end72.i.i_crit_edge, label %land.lhs.true67.i.i

land.lhs.true.i.i.do.end72.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72.i.i

land.lhs.true67.i.i:                              ; preds = %land.lhs.true.i.i
  %.b166.i.i = load i1, ptr @iwl_mvm_get_queue_agg_tids.__warned, align 1
  br i1 %.b166.i.i, label %land.lhs.true67.i.i.do.end72.i.i_crit_edge, label %if.then69.i.i

land.lhs.true67.i.i.do.end72.i.i_crit_edge:       ; preds = %land.lhs.true67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72.i.i

if.then69.i.i:                                    ; preds = %land.lhs.true67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_get_queue_agg_tids.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.37) #10
  br label %do.end72.i.i

do.end72.i.i:                                     ; preds = %if.then69.i.i, %land.lhs.true67.i.i.do.end72.i.i_crit_edge, %land.lhs.true.i.i.do.end72.i.i_crit_edge, %if.end57.i377.i.do.end72.i.i_crit_edge
  %idxprom.i379.i = zext i8 %107 to i32
  %arrayidx74.i380.i = getelementptr %struct.iwl_mvm, ptr %add.ptr, i32 0, i32 44, i32 %idxprom.i379.i
  %111 = ptrtoint ptr %arrayidx74.i380.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx74.i380.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %112, null
  %cmp.i.i.i = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %land.rhs82.i.i, label %if.end130.i.i

land.rhs82.i.i:                                   ; preds = %do.end72.i.i
  %.b164165.i.i = load i1, ptr @iwl_mvm_get_queue_agg_tids.__already_done, align 1
  br i1 %.b164165.i.i, label %land.rhs82.i.i.iwl_mvm_get_queue_agg_tids.exit.thread.i_crit_edge, label %if.then93.i.i, !prof !336

land.rhs82.i.i.iwl_mvm_get_queue_agg_tids.exit.thread.i_crit_edge: ; preds = %land.rhs82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_queue_agg_tids.exit.thread.i

if.then93.i.i:                                    ; preds = %land.rhs82.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_get_queue_agg_tids.__already_done, align 1
  br label %iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i

if.end130.i.i:                                    ; preds = %do.end72.i.i
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %112, i32 0, i32 29
  %lock.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %112, i32 1, i32 1, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  %call132.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.i.i, i32 noundef 9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call132.i.i)
  %cmp133169.i.i = icmp slt i32 %call132.i.i, 9
  br i1 %cmp133169.i.i, label %if.end130.i.i.for.body.i382.i_crit_edge, label %iwl_mvm_get_queue_agg_tids.exit.thread439.i

if.end130.i.i.for.body.i382.i_crit_edge:          ; preds = %if.end130.i.i
  br label %for.body.i382.i

iwl_mvm_get_queue_agg_tids.exit.thread439.i:      ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  br label %if.then188.i

for.body.i382.i:                                  ; preds = %for.body.i382.i.for.body.i382.i_crit_edge, %if.end130.i.i.for.body.i382.i_crit_edge
  %agg_tids.0171.i.i = phi i32 [ %agg_tids.1.i.i, %for.body.i382.i.for.body.i382.i_crit_edge ], [ 0, %if.end130.i.i.for.body.i382.i_crit_edge ]
  %tid.0170.i.i = phi i32 [ %call140.i.i, %for.body.i382.i.for.body.i382.i_crit_edge ], [ %call132.i.i, %if.end130.i.i.for.body.i382.i_crit_edge ]
  %state.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i.i, i32 0, i32 10, i32 %tid.0170.i.i, i32 5
  %113 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %cmp136.i.i = icmp eq i32 %114, 3
  %shl.i.i = shl nuw nsw i32 1, %tid.0170.i.i
  %or.i.i = select i1 %cmp136.i.i, i32 %shl.i.i, i32 0
  %agg_tids.1.i.i = or i32 %or.i.i, %agg_tids.0171.i.i
  %add.i381.i = add nsw i32 %tid.0170.i.i, 1
  %call140.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.i.i, i32 noundef 9, i32 noundef %add.i381.i) #10
  %cmp133.i.i = icmp slt i32 %call140.i.i, 9
  br i1 %cmp133.i.i, label %for.body.i382.i.for.body.i382.i_crit_edge, label %iwl_mvm_get_queue_agg_tids.exit.i

for.body.i382.i.for.body.i382.i_crit_edge:        ; preds = %for.body.i382.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i382.i

iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i: ; preds = %if.then93.i.i, %if.end.i374.i.iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 405, %if.then93.i.i ], [ 396, %if.end.i374.i.iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_get_queue_agg_tids.exit.thread.i

iwl_mvm_get_queue_agg_tids.exit.thread.i:         ; preds = %iwl_mvm_get_queue_agg_tids.exit.thread.sink.split.i, %land.rhs82.i.i.iwl_mvm_get_queue_agg_tids.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  br label %do.end177.i

iwl_mvm_get_queue_agg_tids.exit.i:                ; preds = %for.body.i382.i
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agg_tids.1.i.i)
  %tobool172.not.i = icmp eq i32 %agg_tids.1.i.i, 0
  br i1 %tobool172.not.i, label %iwl_mvm_get_queue_agg_tids.exit.i.if.then188.i_crit_edge, label %iwl_mvm_get_queue_agg_tids.exit.i.do.end177.i_crit_edge

iwl_mvm_get_queue_agg_tids.exit.i.do.end177.i_crit_edge: ; preds = %iwl_mvm_get_queue_agg_tids.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end177.i

iwl_mvm_get_queue_agg_tids.exit.i.if.then188.i_crit_edge: ; preds = %iwl_mvm_get_queue_agg_tids.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then188.i

do.end177.i:                                      ; preds = %iwl_mvm_get_queue_agg_tids.exit.i.do.end177.i_crit_edge, %iwl_mvm_get_queue_agg_tids.exit.thread.i
  %retval.0.i384438.i = phi i32 [ -22, %iwl_mvm_get_queue_agg_tids.exit.thread.i ], [ %agg_tids.1.i.i, %iwl_mvm_get_queue_agg_tids.exit.i.do.end177.i_crit_edge ]
  %115 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %116, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_alloc_queue, ptr noundef nonnull @.str.70, i32 noundef %queue.0.i.i) #10
  call fastcc void @iwl_mvm_invalidate_sta_queue(ptr noundef %add.ptr, i32 noundef %queue.0.i.i, i32 noundef %retval.0.i384438.i, i1 noundef zeroext false) #10
  br label %if.then188.i

if.then188.i:                                     ; preds = %do.end177.i, %iwl_mvm_get_queue_agg_tids.exit.i.if.then188.i_crit_edge, %iwl_mvm_get_queue_agg_tids.exit.thread439.i
  %call185444.i = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %add.ptr, ptr noundef %14, i32 noundef %queue.0.i.i, i16 noundef zeroext %44, ptr noundef nonnull %cfg.i, i32 noundef %call6.i) #10
  %117 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %trans.i.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops.i.i, align 4
  %txq_set_shared_mode.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %120, i32 0, i32 16
  %121 = ptrtoint ptr %txq_set_shared_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %txq_set_shared_mode.i.i, align 4
  %tobool.not.i385.i = icmp eq ptr %122, null
  br i1 %tobool.not.i385.i, label %if.end189.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then188.i
  call void %122(ptr noundef %118, i32 noundef %queue.0.i.i, i1 noundef zeroext true) #10
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  br i1 %call185444.i, label %if.then.i.i.if.then192.i_crit_edge, label %if.then.i.i.if.end200.i_crit_edge

if.then.i.i.if.end200.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200.i

if.then.i.i.if.then192.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then192.i

if.end189.i:                                      ; preds = %if.then188.i
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  br i1 %call185444.i, label %if.end189.i.if.then192.i_crit_edge, label %if.end189.i.if.end200.i_crit_edge

if.end189.i.if.end200.i_crit_edge:                ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200.i

if.end189.i.if.then192.i_crit_edge:               ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then192.i

if.then192.i:                                     ; preds = %if.end189.i.if.then192.i_crit_edge, %if.then.i.i.if.then192.i_crit_edge, %if.then106.i.if.then192.i_crit_edge
  %queue.4407413426434445454.i = phi i32 [ %queue.4.i, %if.then106.i.if.then192.i_crit_edge ], [ %queue.0.i.i, %if.end189.i.if.then192.i_crit_edge ], [ %queue.0.i.i, %if.then.i.i.if.then192.i_crit_edge ]
  %shared_queue.0.off0408412428432447452.i = phi i1 [ false, %if.then106.i.if.then192.i_crit_edge ], [ true, %if.end189.i.if.then192.i_crit_edge ], [ true, %if.then.i.i.if.then192.i_crit_edge ]
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx.i, align 4
  %add.i = add i16 %124, 16
  store i16 %add.i, ptr %arrayidx.i, align 4
  %add198.i = add nuw nsw i32 %45, 1
  %and199.i = and i32 %add198.i, 8176
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then192.i, %if.end189.i.if.end200.i_crit_edge, %if.then.i.i.if.end200.i_crit_edge, %if.then106.i.if.end200.i_crit_edge
  %queue.4407413426434445453.i = phi i32 [ %queue.4407413426434445454.i, %if.then192.i ], [ %queue.0.i.i, %if.end189.i.if.end200.i_crit_edge ], [ %queue.4.i, %if.then106.i.if.end200.i_crit_edge ], [ %queue.0.i.i, %if.then.i.i.if.end200.i_crit_edge ]
  %shared_queue.0.off0408412428432447451.i = phi i1 [ %shared_queue.0.off0408412428432447452.i, %if.then192.i ], [ true, %if.end189.i.if.end200.i_crit_edge ], [ false, %if.then106.i.if.end200.i_crit_edge ], [ true, %if.then.i.i.if.end200.i_crit_edge ]
  %ssn.0.i = phi i32 [ %and199.i, %if.then192.i ], [ %45, %if.end189.i.if.end200.i_crit_edge ], [ %45, %if.then106.i.if.end200.i_crit_edge ], [ %45, %if.then.i.i.if.end200.i_crit_edge ]
  %conv201.i = trunc i32 %queue.4407413426434445453.i to i16
  %txq_id.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %conv11, i32 6
  %125 = ptrtoint ptr %txq_id.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv201.i, ptr %txq_id.i, align 4
  %shl.i = shl nuw i32 1, %queue.4407413426434445453.i
  %126 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tfd_queue_msk.i, align 4
  %or.i = or i32 %127, %shl.i
  store i32 %or.i, ptr %tfd_queue_msk.i, align 4
  %state.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %conv11, i32 5
  %128 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %state.i, align 4
  %reserved_queue207.i = getelementptr inbounds %struct.ieee80211_sta, ptr %14, i32 17, i32 28, i32 16
  %130 = ptrtoint ptr %reserved_queue207.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %reserved_queue207.i, align 8
  %conv208.i = zext i8 %131 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %queue.4407413426434445453.i, i32 %conv208.i)
  %cmp209.i = icmp eq i32 %queue.4407413426434445453.i, %conv208.i
  br i1 %cmp209.i, label %if.then211.i, label %if.end200.i.if.end213.i_crit_edge

if.end200.i.if.end213.i_crit_edge:                ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213.i

if.then211.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %reserved_queue207.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -1, ptr %reserved_queue207.i, align 8
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.then211.i, %if.end200.i.if.end213.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br i1 %shared_queue.0.off0408412428432447451.i, label %if.else.i, label %if.then216.i

if.then216.i:                                     ; preds = %if.end213.i
  %call217.i = call i32 @iwl_mvm_sta_send_to_fw(ptr noundef %add.ptr, ptr noundef %14, i1 noundef zeroext true, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217.i)
  %tobool218.not.i = icmp eq i32 %call217.i, 0
  br i1 %tobool218.not.i, label %if.end220.i, label %if.then216.i.out_err.i_crit_edge

if.then216.i.out_err.i_crit_edge:                 ; preds = %if.then216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.i

if.end220.i:                                      ; preds = %if.then216.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %129)
  %cmp221.i = icmp eq i32 %129, 3
  br i1 %cmp221.i, label %if.then223.i, label %if.end220.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge

if.end220.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge: ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_sta_alloc_queue.exit.thread

if.then223.i:                                     ; preds = %if.end220.i
  %conv224.i = trunc i32 %queue.4407413426434445453.i to i8
  %call225.i = call i32 @iwl_mvm_sta_tx_agg(ptr noundef %add.ptr, ptr noundef %14, i32 noundef %conv11, i8 noundef zeroext %conv224.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225.i)
  %tobool226.not.i = icmp eq i32 %call225.i, 0
  br i1 %tobool226.not.i, label %if.then223.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge, label %if.then223.i.out_err.i_crit_edge

if.then223.i.out_err.i_crit_edge:                 ; preds = %if.then223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.i

if.then223.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge: ; preds = %if.then223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_sta_alloc_queue.exit.thread

if.else.i:                                        ; preds = %if.end213.i
  %idxprom.i387.i = select i1 %cmp38.i, i32 16, i32 %conv11
  %arrayidx.i388.i = getelementptr %struct.ieee80211_sta, ptr %14, i32 0, i32 28, i32 %idxprom.i387.i
  %133 = ptrtoint ptr %arrayidx.i388.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i388.i, align 4
  %drv_priv.i389.i = getelementptr inbounds %struct.ieee80211_txq, ptr %134, i32 0, i32 5
  %call233.i = call fastcc i32 @iwl_mvm_redirect_queue(ptr noundef %add.ptr, i32 noundef %queue.4407413426434445453.i, i32 noundef %conv11, i32 noundef %conv.i32, i32 noundef %ssn.0.i, i32 noundef %call6.i, i1 noundef zeroext false, ptr noundef %drv_priv.i389.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233.i)
  %tobool234.not.i = icmp eq i32 %call233.i, 0
  br i1 %tobool234.not.i, label %if.else.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge, label %if.else.i.out_err.i_crit_edge

if.else.i.out_err.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.i

if.else.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_sta_alloc_queue.exit.thread

out_err.i:                                        ; preds = %if.else.i.out_err.i_crit_edge, %if.then223.i.out_err.i_crit_edge, %if.then216.i.out_err.i_crit_edge
  %135 = ptrtoint ptr %queue_tmp.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv201.i, ptr %queue_tmp.i, align 2
  %136 = call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %add.ptr, ptr noundef %14, ptr noundef nonnull %queue_tmp.i, i8 noundef zeroext %spec.store.select) #10
  br label %iwl_mvm_sta_alloc_queue.exit.thread44

iwl_mvm_sta_alloc_queue.exit.thread:              ; preds = %if.else.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge, %if.then223.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge, %if.end220.i.iwl_mvm_sta_alloc_queue.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %queue_tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #10
  br label %if.end15

iwl_mvm_sta_alloc_queue.exit.thread44:            ; preds = %out_err.i, %do.end128.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %queue_tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #10
  br label %if.then14

iwl_mvm_sta_alloc_queue.exit:                     ; preds = %if.end.i
  %call34.i = call fastcc i32 @iwl_mvm_sta_alloc_queue_tvqm(ptr noundef %add.ptr, ptr noundef %14, i32 noundef %conv11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %queue_tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool13.not = icmp eq i32 %call34.i, 0
  br i1 %tobool13.not, label %iwl_mvm_sta_alloc_queue.exit.if.end15_crit_edge, label %iwl_mvm_sta_alloc_queue.exit.if.then14_crit_edge

iwl_mvm_sta_alloc_queue.exit.if.then14_crit_edge: ; preds = %iwl_mvm_sta_alloc_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

iwl_mvm_sta_alloc_queue.exit.if.end15_crit_edge:  ; preds = %iwl_mvm_sta_alloc_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %iwl_mvm_sta_alloc_queue.exit.if.then14_crit_edge, %iwl_mvm_sta_alloc_queue.exit.thread44
  %call.i.i33 = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #10
  br i1 %call.i.i33, label %if.end.i.i34, label %if.then14.list_del_init.exit_crit_edge

if.then14.list_del_init.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i34:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i, align 4
  %139 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i34, %if.then14.list_del_init.exit_crit_edge
  %143 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %10, ptr %prev.i3.i, align 4
  br label %cleanup

if.end15:                                         ; preds = %iwl_mvm_sta_alloc_queue.exit.if.end15_crit_edge, %iwl_mvm_sta_alloc_queue.exit.thread
  %add.ptr8 = getelementptr i8, ptr %10, i32 -12
  %call.i.i35 = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #10
  br i1 %call.i.i35, label %if.end.i.i38, label %if.end15.list_del_init.exit40_crit_edge

if.end15.list_del_init.exit40_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit40

if.end.i.i38:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i36 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i36, align 4
  %147 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %10, align 4
  %prev1.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev1.i.i.i37, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %148, ptr %146, align 4
  br label %list_del_init.exit40

list_del_init.exit40:                             ; preds = %if.end.i.i38, %if.end15.list_del_init.exit40_crit_edge
  %151 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i39 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i3.i39 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %10, ptr %prev.i3.i39, align 4
  call fastcc void @local_bh_disable()
  %153 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hw, align 4
  call void @iwl_mvm_mac_itxq_xmit(ptr noundef %154, ptr noundef %add.ptr8) #10
  call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit40, %list_del_init.exit
  %155 = ptrtoint ptr %add_stream_txqs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %add_stream_txqs, align 4
  %cmp.i.not = icmp eq ptr %156, %add_stream_txqs
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_inactivity_check(ptr noundef %mvm, i8 noundef zeroext %alloc_for_sta) unnamed_addr #0 align 64 {
entry:
  %tid_bitmap.i.i = alloca i32, align 4
  %queue_tmp.i = alloca i16, align 2
  %cmd.i200 = alloca %struct.iwl_scd_txq_cfg_cmd, align 1
  %tid_bitmap.i201 = alloca i32, align 4
  %tid_bitmap.i = alloca i32, align 4
  %cmd.i = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %tid_bitmap.addr.i = alloca i32, align 4
  %unshare_queues = alloca i32, align 4
  %changetid_queues = alloca i32, align 4
  %queue_tid_bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unshare_queues) #10
  %1 = ptrtoint ptr %unshare_queues to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %unshare_queues, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changetid_queues) #10
  %2 = ptrtoint ptr %changetid_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %changetid_queues, align 4
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
  %call.i178 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp.not = icmp eq i32 %call.i178, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1086, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %4 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %9 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not = icmp eq i16 %9, 0
  br i1 %tobool.i.not, label %if.end26, label %if.end.cleanup128_crit_edge

if.end.cleanup128_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup128

if.end26:                                         ; preds = %if.end
  %10 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end26.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end26.rcu_read_lock.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end26.rcu_read_lock.exit_crit_edge
  %14 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %add.neg = add i32 %0, -500
  %dep_map28.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %rcu_read_lock.exit
  %i.0259 = phi i32 [ 1, %rcu_read_lock.exit ], [ %inc, %cleanup.for.body_crit_edge ]
  %queue_owner.0258 = phi ptr [ null, %rcu_read_lock.exit ], [ %queue_owner.2, %cleanup.for.body_crit_edge ]
  %free_queue.0257 = phi i32 [ -28, %rcu_read_lock.exit ], [ %free_queue.2, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %queue_tid_bitmap) #10
  %arrayidx = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.0259
  %tid_bitmap = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.0259, i32 4
  %15 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tid_bitmap, align 4
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %queue_tid_bitmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %queue_tid_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool31.not = icmp eq i16 %16, 0
  br i1 %tobool31.not, label %for.body.cleanup_crit_edge, label %if.end33

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %for.body
  %status = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.0259, i32 6
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %20 = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch = icmp eq i32 %20, 2
  br i1 %switch, label %if.end42, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %call43 = call i32 @_find_next_bit_be(ptr noundef nonnull %queue_tid_bitmap, i32 noundef 9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call43)
  %cmp45254 = icmp slt i32 %call43, 9
  br i1 %cmp45254, label %if.end42.for.body47_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.for.body47_crit_edge:                    ; preds = %if.end42
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %if.end42.for.body47_crit_edge
  %inactive_tid_bitmap.0256 = phi i32 [ %inactive_tid_bitmap.1, %for.body47.for.body47_crit_edge ], [ 0, %if.end42.for.body47_crit_edge ]
  %tid.0255 = phi i32 [ %call55, %for.body47.for.body47_crit_edge ], [ %call43, %if.end42.for.body47_crit_edge ]
  %arrayidx49 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.0259, i32 5, i32 %tid.0255
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx49, align 4
  %sub = sub i32 %add.neg, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp50 = icmp slt i32 %sub, 0
  %shl = shl nuw nsw i32 1, %tid.0255
  %or = select i1 %cmp50, i32 0, i32 %shl
  %inactive_tid_bitmap.1 = or i32 %or, %inactive_tid_bitmap.0256
  %add54 = add nsw i32 %tid.0255, 1
  %call55 = call i32 @_find_next_bit_be(ptr noundef nonnull %queue_tid_bitmap, i32 noundef 9, i32 noundef %add54) #10
  %cmp45 = icmp slt i32 %call55, 9
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.end

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body47

for.end:                                          ; preds = %for.body47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inactive_tid_bitmap.1)
  %tobool56.not = icmp eq i32 %inactive_tid_bitmap.1, 0
  br i1 %tobool56.not, label %for.end.cleanup_crit_edge, label %if.end58

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end58:                                         ; preds = %for.end
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 8
  %idxprom = zext i8 %24 to i32
  %arrayidx64 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx64, align 4
  %call66 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %if.end58.do.end76_crit_edge

if.end58.do.end76_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

land.lhs.true68:                                  ; preds = %if.end58
  %call69 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b176 = load i1, ptr @iwl_mvm_inactivity_check.__warned, align 1
  br i1 %.b176, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_inactivity_check.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1133, ptr noundef nonnull @.str.44) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %if.end58.do.end76_crit_edge
  %tobool.not.i179 = icmp eq ptr %26, null
  %cmp.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i179, %cmp.i
  br i1 %spec.select.i, label %do.end76.cleanup_crit_edge, label %if.end80

do.end76.cleanup_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end80:                                         ; preds = %do.end76
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %26, i32 0, i32 29
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %26, i32 1, i32 1, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid_bitmap.addr.i)
  %27 = ptrtoint ptr %tid_bitmap.addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inactive_tid_bitmap.1, ptr %tid_bitmap.addr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i180 = icmp eq i32 %28, 0
  br i1 %tobool.not.i180, label %if.end80.if.end55.i_crit_edge, label %land.rhs.i

if.end80.if.end55.i_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

land.rhs.i:                                       ; preds = %if.end80
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sta, ptr %26, i32 1, i32 3, i32 4, i32 0, i32 7
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !338

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 994, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool26.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool26.not.i, label %if.end.i.if.end55.i_crit_edge, label %land.rhs27.i

if.end.i.if.end55.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

land.rhs27.i:                                     ; preds = %if.end.i
  %call.i458.i = call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i458.i)
  %cmp30.not.i = icmp eq i32 %call.i458.i, 0
  br i1 %cmp30.not.i, label %do.end49.i, label %land.rhs27.i.if.end55.i_crit_edge, !prof !338

land.rhs27.i.if.end55.i_crit_edge:                ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

do.end49.i:                                       ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 995, i32 noundef 9, ptr noundef null) #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %land.rhs27.i.if.end55.i_crit_edge, %if.end.i.if.end55.i_crit_edge, %if.end80.if.end55.i_crit_edge
  %29 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %34 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.i.not.i = icmp eq i16 %34, 0
  br i1 %tobool.i.not.i, label %if.end98.i, label %do.end82.i, !prof !336

do.end82.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_remove_inactive_tids.exit

if.end98.i:                                       ; preds = %if.end55.i
  %call99.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.addr.i, i32 noundef 9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call99.i)
  %cmp100464.i = icmp slt i32 %call99.i, 9
  br i1 %cmp100464.i, label %if.end98.i.for.body.i_crit_edge, label %if.end98.i.for.end.i_crit_edge

if.end98.i.for.end.i_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end98.i.for.body.i_crit_edge:                  ; preds = %if.end98.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end98.i.for.body.i_crit_edge
  %tid.0465.i = phi i32 [ %call113.i, %for.inc.i.for.body.i_crit_edge ], [ %call99.i, %if.end98.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid.0465.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 4
  %37 = lshr i16 %36, 4
  %38 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i460.i = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %trans_cfg.i460.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trans_cfg.i460.i, align 4
  %gen2.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %gen2.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i461.i = load i16, ptr %gen2.i.i, align 4
  %43 = and i16 %bf.load.i461.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i.i = icmp eq i16 %43, 0
  %44 = and i16 %37, 255
  %spec.select.i.i = select i1 %tobool.not.i.i, i16 %37, i16 %44
  %next_reclaimed.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid.0465.i, i32 1
  %45 = ptrtoint ptr %next_reclaimed.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %next_reclaimed.i.i, align 2
  %sub.i.i.i = sub i16 %spec.select.i.i, %46
  %and.i.i.i = and i16 %sub.i.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i.i.i)
  %tobool102.not.i = icmp eq i16 %and.i.i.i, 0
  br i1 %tobool102.not.i, label %for.body.i.if.end104.i_crit_edge, label %if.then103.i

for.body.i.if.end104.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then103.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw nsw i32 1, %tid.0465.i
  %neg.i = xor i32 %shl.i, -1
  %47 = ptrtoint ptr %tid_bitmap.addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tid_bitmap.addr.i, align 4
  %and.i = and i32 %48, %neg.i
  store i32 %and.i, ptr %tid_bitmap.addr.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then103.i, %for.body.i.if.end104.i_crit_edge
  %state.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid.0465.i, i32 5
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp107.not.i = icmp eq i32 %50, 0
  br i1 %cmp107.not.i, label %if.end104.i.for.inc.i_crit_edge, label %if.then108.i

if.end104.i.for.inc.i_crit_edge:                  ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then108.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl109.i = shl nuw nsw i32 1, %tid.0465.i
  %neg110.i = xor i32 %shl109.i, -1
  %51 = ptrtoint ptr %tid_bitmap.addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tid_bitmap.addr.i, align 4
  %and111.i = and i32 %52, %neg110.i
  store i32 %and111.i, ptr %tid_bitmap.addr.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then108.i, %if.end104.i.for.inc.i_crit_edge
  %add.i = add nsw i32 %tid.0465.i, 1
  %call113.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.addr.i, i32 noundef 9, i32 noundef %add.i) #10
  %cmp100.i = icmp slt i32 %call113.i, 9
  br i1 %cmp100.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end98.i.for.end.i_crit_edge
  %53 = ptrtoint ptr %tid_bitmap.addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tid_bitmap.addr.i, align 4
  %55 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %tid_bitmap, align 4
  %conv.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv.i)
  %cmp116.i = icmp eq i32 %54, %conv.i
  br i1 %cmp116.i, label %do.end122.i, label %if.end125.i

do.end122.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %58, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_inactive_tids, ptr noundef nonnull @.str.45, i32 noundef %i.0259) #10
  br label %iwl_mvm_remove_inactive_tids.exit

if.end125.i:                                      ; preds = %for.end.i
  %call126.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.addr.i, i32 noundef 9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call126.i)
  %cmp128467.i = icmp slt i32 %call126.i, 9
  br i1 %cmp128467.i, label %for.body130.lr.ph.i, label %if.end125.i.do.end165.i_crit_edge

if.end125.i.do.end165.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end165.i

for.body130.lr.ph.i:                              ; preds = %if.end125.i
  %txq_tid.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.0259, i32 3
  br label %for.body130.i

for.body130.i:                                    ; preds = %do.end154.i.for.body130.i_crit_edge, %for.body130.lr.ph.i
  %tid.1468.i = phi i32 [ %call126.i, %for.body130.lr.ph.i ], [ %call160.i, %do.end154.i.for.body130.i_crit_edge ]
  %txq_id.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid.1468.i, i32 6
  %59 = ptrtoint ptr %txq_id.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %txq_id.i, align 4
  %shl134.i = shl nuw nsw i32 1, %tid.1468.i
  %60 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %tid_bitmap, align 4
  %62 = trunc i32 %shl134.i to i16
  %63 = xor i16 %62, -1
  %conv140.i = and i16 %61, %63
  store i16 %conv140.i, ptr %tid_bitmap, align 4
  %conv143.i = zext i16 %conv140.i to i32
  %64 = ptrtoint ptr %txq_tid.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %txq_tid.i, align 1
  %conv145.i = zext i8 %65 to i32
  %shl146.i = shl nuw i32 1, %conv145.i
  %and147.i = and i32 %shl146.i, %conv143.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i)
  %tobool148.not.i = icmp eq i32 %and147.i, 0
  br i1 %tobool148.not.i, label %if.then149.i, label %for.body130.i.do.end154.i_crit_edge

for.body130.i.do.end154.i_crit_edge:              ; preds = %for.body130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end154.i

if.then149.i:                                     ; preds = %for.body130.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %i.0259, ptr noundef nonnull %changetid_queues) #10
  br label %do.end154.i

do.end154.i:                                      ; preds = %if.then149.i, %for.body130.i.do.end154.i_crit_edge
  %66 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %67, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_inactive_tids, ptr noundef nonnull @.str.46, i32 noundef %tid.1468.i, i32 noundef %i.0259) #10
  %add159.i = add nsw i32 %tid.1468.i, 1
  %call160.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.addr.i, i32 noundef 9, i32 noundef %add159.i) #10
  %cmp128.i = icmp slt i32 %call160.i, 9
  br i1 %cmp128.i, label %do.end154.i.for.body130.i_crit_edge, label %do.end154.i.do.end165.i_crit_edge

do.end154.i.do.end165.i_crit_edge:                ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end165.i

do.end154.i.for.body130.i_crit_edge:              ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body130.i

do.end165.i:                                      ; preds = %do.end154.i.do.end165.i_crit_edge, %if.end125.i.do.end165.i_crit_edge
  %68 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mvm, align 8
  %70 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tid_bitmap, align 4
  %conv169.i = zext i16 %71 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %69, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_inactive_tids, ptr noundef nonnull @.str.47, i32 noundef %i.0259, i32 noundef %conv169.i) #10
  %72 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %tid_bitmap, align 4
  %conv174.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %tid_bitmap.addr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv174.i, ptr %tid_bitmap.addr.i, align 4
  %call.i462.i = call i32 @__sw_hweight16(i32 noundef %conv174.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i462.i)
  %cmp355.i = icmp eq i32 %call.i462.i, 1
  br i1 %cmp355.i, label %land.lhs.true.i181, label %do.end165.i.iwl_mvm_remove_inactive_tids.exit_crit_edge

do.end165.i.iwl_mvm_remove_inactive_tids.exit_crit_edge: ; preds = %do.end165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_inactive_tids.exit

land.lhs.true.i181:                               ; preds = %do.end165.i
  %75 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp358.i = icmp eq i32 %76, 3
  br i1 %cmp358.i, label %do.end364.i, label %land.lhs.true.i181.iwl_mvm_remove_inactive_tids.exit_crit_edge

land.lhs.true.i181.iwl_mvm_remove_inactive_tids.exit_crit_edge: ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_inactive_tids.exit

do.end364.i:                                      ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %78, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_inactive_tids, ptr noundef nonnull @.str.48, i32 noundef %i.0259) #10
  call void @_set_bit(i32 noundef %i.0259, ptr noundef nonnull %unshare_queues) #10
  br label %iwl_mvm_remove_inactive_tids.exit

iwl_mvm_remove_inactive_tids.exit:                ; preds = %do.end364.i, %land.lhs.true.i181.iwl_mvm_remove_inactive_tids.exit_crit_edge, %do.end165.i.iwl_mvm_remove_inactive_tids.exit_crit_edge, %do.end122.i, %do.end82.i
  %retval.0.i = phi i1 [ false, %do.end82.i ], [ true, %do.end122.i ], [ false, %do.end364.i ], [ false, %land.lhs.true.i181.iwl_mvm_remove_inactive_tids.exit_crit_edge ], [ false, %do.end165.i.iwl_mvm_remove_inactive_tids.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_queue.0257)
  %cmp86 = icmp slt i32 %free_queue.0257, 0
  %or.cond = select i1 %retval.0.i, i1 %cmp86, i1 false
  %free_queue.1 = select i1 %or.cond, i32 %i.0259, i32 %free_queue.0257
  %queue_owner.1 = select i1 %or.cond, ptr %26, ptr %queue_owner.0258
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_remove_inactive_tids.exit, %do.end76.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %free_queue.2 = phi i32 [ %free_queue.1, %iwl_mvm_remove_inactive_tids.exit ], [ %free_queue.0257, %for.body.cleanup_crit_edge ], [ %free_queue.0257, %if.end33.cleanup_crit_edge ], [ %free_queue.0257, %for.end.cleanup_crit_edge ], [ %free_queue.0257, %do.end76.cleanup_crit_edge ], [ %free_queue.0257, %if.end42.cleanup_crit_edge ]
  %queue_owner.2 = phi ptr [ %queue_owner.1, %iwl_mvm_remove_inactive_tids.exit ], [ %queue_owner.0258, %for.body.cleanup_crit_edge ], [ %queue_owner.0258, %if.end33.cleanup_crit_edge ], [ %queue_owner.0258, %for.end.cleanup_crit_edge ], [ %queue_owner.0258, %do.end76.cleanup_crit_edge ], [ %queue_owner.0258, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %queue_tid_bitmap) #10
  %inc = add nuw nsw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end97, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end97:                                        ; preds = %cleanup
  %call98 = call i32 @_find_next_bit_be(ptr noundef nonnull %unshare_queues, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call98)
  %cmp100263 = icmp slt i32 %call98, 32
  br i1 %cmp100263, label %for.body102.lr.ph, label %for.end97.for.end106_crit_edge

for.end97.for.end106_crit_edge:                   ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end106

for.body102.lr.ph:                                ; preds = %for.end97
  %79 = getelementptr inbounds i8, ptr %cmd.i, i32 1
  %mac_id_n_color178.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 3
  %sta_id181.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 6
  %modify_mask.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 7
  %tfd_queue_msk182.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 19
  %tid_disable_tx.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 2
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  br label %for.body102

for.body102:                                      ; preds = %iwl_mvm_unshare_queue.exit.for.body102_crit_edge, %for.body102.lr.ph
  %i.1264 = phi i32 [ %call98, %for.body102.lr.ph ], [ %call105, %iwl_mvm_unshare_queue.exit.for.body102_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid_bitmap.i) #10
  %80 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i.i183 = getelementptr inbounds %struct.iwl_trans, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %trans_cfg.i.i183 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans_cfg.i.i183, align 4
  %use_tfh.i.i184 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %use_tfh.i.i184 to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load.i.i185 = load i16, ptr %use_tfh.i.i184, align 4
  %85 = and i16 %bf.load.i.i185, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool.i.not.i186 = icmp eq i16 %85, 0
  br i1 %tobool.i.not.i186, label %do.body22.i, label %do.end.i187, !prof !336

do.end.i187:                                      ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_unshare_queue.exit

do.body22.i:                                      ; preds = %for.body102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %86 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool24.not.i = icmp eq i32 %86, 0
  br i1 %tobool24.not.i, label %do.body22.i.if.end49.i_crit_edge, label %land.rhs.i191

do.body22.i.if.end49.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

land.rhs.i191:                                    ; preds = %do.body22.i
  %call.i.i189 = call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i189)
  %cmp.not.i190 = icmp eq i32 %call.i.i189, 0
  br i1 %cmp.not.i190, label %do.end43.i, label %land.rhs.i191.if.end49.i_crit_edge, !prof !338

land.rhs.i191.if.end49.i_crit_edge:               ; preds = %land.rhs.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i

do.end43.i:                                       ; preds = %land.rhs.i191
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 915, i32 noundef 9, ptr noundef null) #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %land.rhs.i191.if.end49.i_crit_edge, %do.body22.i.if.end49.i_crit_edge
  %arrayidx.i192 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.1264
  %87 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i192, align 8
  %tid_bitmap60.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.1264, i32 4
  %89 = ptrtoint ptr %tid_bitmap60.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %tid_bitmap60.i, align 4
  %conv.i193 = zext i16 %90 to i32
  %91 = ptrtoint ptr %tid_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv.i193, ptr %tid_bitmap.i, align 4
  %call61.i = call i32 @_find_first_bit_be(ptr noundef nonnull %tid_bitmap.i, i32 noundef 9) #10
  %92 = ptrtoint ptr %tid_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tid_bitmap.i, align 4
  %shl.i194 = shl nuw i32 1, %call61.i
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %shl.i194)
  %cmp62.not.i = icmp eq i32 %93, %shl.i194
  %94 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mvm, align 8
  br i1 %cmp62.not.i, label %do.end75.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %95, i32 noundef 0, ptr noundef nonnull @.str.49, i32 noundef %i.1264, i32 noundef %93) #10
  br label %iwl_mvm_unshare_queue.exit

do.end75.i:                                       ; preds = %if.end49.i
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %95, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_unshare_queue, ptr noundef nonnull @.str.50, i32 noundef %i.1264, i32 noundef %call61.i) #10
  %call.i254.i = call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254.i)
  %tobool83.not.i = icmp eq i32 %call.i254.i, 0
  br i1 %tobool83.not.i, label %land.lhs.true.i195, label %do.end75.i.do.end91.i_crit_edge

do.end75.i.do.end91.i_crit_edge:                  ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91.i

land.lhs.true.i195:                               ; preds = %do.end75.i
  %call84.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %land.lhs.true.i195.do.end91.i_crit_edge, label %land.lhs.true86.i

land.lhs.true.i195.do.end91.i_crit_edge:          ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91.i

land.lhs.true86.i:                                ; preds = %land.lhs.true.i195
  %.b252.i = load i1, ptr @iwl_mvm_unshare_queue.__warned, align 1
  br i1 %.b252.i, label %land.lhs.true86.i.do.end91.i_crit_edge, label %if.then88.i

land.lhs.true86.i.do.end91.i_crit_edge:           ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91.i

if.then88.i:                                      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_unshare_queue.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 932, ptr noundef nonnull @.str.37) #10
  br label %do.end91.i

do.end91.i:                                       ; preds = %if.then88.i, %land.lhs.true86.i.do.end91.i_crit_edge, %land.lhs.true.i195.do.end91.i_crit_edge, %do.end75.i.do.end91.i_crit_edge
  %idxprom.i = zext i8 %88 to i32
  %arrayidx93.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom.i
  %96 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx93.i, align 4
  %tobool.not.i.i196 = icmp eq ptr %97, null
  %cmp.i.i = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i197 = or i1 %tobool.not.i.i196, %cmp.i.i
  br i1 %spec.select.i.i197, label %land.rhs101.i, label %if.end149.i

land.rhs101.i:                                    ; preds = %do.end91.i
  %.b250251.i = load i1, ptr @iwl_mvm_unshare_queue.__already_done, align 1
  br i1 %.b250251.i, label %land.rhs101.i.iwl_mvm_unshare_queue.exit_crit_edge, label %if.then112.i, !prof !336

land.rhs101.i.iwl_mvm_unshare_queue.exit_crit_edge: ; preds = %land.rhs101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_unshare_queue.exit

if.then112.i:                                     ; preds = %land.rhs101.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_unshare_queue.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 934, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_unshare_queue.exit

if.end149.i:                                      ; preds = %do.end91.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %97, i32 0, i32 29
  %vif.i = getelementptr inbounds %struct.ieee80211_sta, ptr %97, i32 17, i32 28, i32 10
  %98 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vif.i, align 8
  %call151.i = call i32 @iwl_mvm_get_wd_timeout(ptr noundef %mvm, ptr noundef %99, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %arrayidx152.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %call61.i
  %100 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx152.i, align 4
  %102 = lshr i16 %101, 4
  %103 = zext i16 %102 to i32
  %arrayidx154.i = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %call61.i
  %104 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx154.i, align 1
  %conv155.i = zext i8 %105 to i32
  %conv156.i = trunc i32 %call61.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv156.i)
  %cmp.i255.i = icmp eq i8 %conv156.i, 8
  %call61.op.i = and i32 %call61.i, 255
  %idxprom.i.i = select i1 %cmp.i255.i, i32 16, i32 %call61.op.i
  %arrayidx.i.i = getelementptr %struct.ieee80211_sta, ptr %97, i32 0, i32 28, i32 %idxprom.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i.i, align 4
  %drv_priv.i256.i = getelementptr inbounds %struct.ieee80211_txq, ptr %107, i32 0, i32 5
  %call158.i = call fastcc i32 @iwl_mvm_redirect_queue(ptr noundef %mvm, i32 noundef %i.1264, i32 noundef %call61.i, i32 noundef %conv155.i, i32 noundef %103, i32 noundef %call151.i, i1 noundef zeroext true, ptr noundef %drv_priv.i256.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %tobool159.not.i = icmp eq i32 %call158.i, 0
  br i1 %tobool159.not.i, label %if.end168.i, label %do.end164.i

do.end164.i:                                      ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %109, i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %i.1264) #10
  br label %iwl_mvm_unshare_queue.exit

if.end168.i:                                      ; preds = %if.end149.i
  %state.i198 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %call61.i, i32 5
  %110 = ptrtoint ptr %state.i198 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %state.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp171.i = icmp eq i32 %111, 3
  br i1 %cmp171.i, label %if.then173.i, label %if.end168.i.if.end197.i_crit_edge

if.end168.i.if.end197.i_crit_edge:                ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end197.i

if.then173.i:                                     ; preds = %if.end168.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #10
  %112 = call ptr @memset(ptr %79, i32 0, i32 47)
  %tid_disable_agg.i = getelementptr inbounds %struct.ieee80211_sta, ptr %97, i32 1, i32 0, i32 3
  %113 = ptrtoint ptr %tid_disable_agg.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %tid_disable_agg.i, align 4
  %115 = trunc i32 %93 to i16
  %116 = xor i16 %115, -1
  %conv177.i = and i16 %114, %116
  store i16 %conv177.i, ptr %tid_disable_agg.i, align 4
  %mac_id_n_color.i = getelementptr inbounds %struct.ieee80211_sta, ptr %97, i32 1, i32 0, i32 2
  %117 = ptrtoint ptr %mac_id_n_color.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mac_id_n_color.i, align 8
  %119 = call i32 @llvm.bswap.i32(i32 %118) #10
  %120 = ptrtoint ptr %mac_id_n_color178.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %mac_id_n_color178.i, align 1
  %121 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %drv_priv.i.i, align 8
  %conv180.i = trunc i32 %122 to i8
  %123 = ptrtoint ptr %sta_id181.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv180.i, ptr %sta_id181.i, align 1
  %124 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %cmd.i, align 1
  %125 = ptrtoint ptr %modify_mask.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 2, ptr %modify_mask.i, align 1
  %tfd_queue_msk.i = getelementptr inbounds %struct.ieee80211_sta, ptr %97, i32 1, i32 0, i32 1
  %126 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tfd_queue_msk.i, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #10
  %129 = ptrtoint ptr %tfd_queue_msk182.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %tfd_queue_msk182.i, align 1
  %130 = call i16 @llvm.bswap.i16(i16 %conv177.i) #10
  %131 = ptrtoint ptr %tid_disable_tx.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %130, ptr %tid_disable_tx.i, align 1
  %132 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fw.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %133, i32 0, i32 5, i32 8, i32 2
  %134 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %136 = and i32 %135, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.i.i.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool.i.i.not.i.i, label %lor.lhs.false.i.i, label %if.then173.i.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge

if.then173.i.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge: ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %133, i32 0, i32 5, i32 7
  %137 = ptrtoint ptr %_api.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %_api.i.i.i, align 4
  %139 = and i32 %138, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.i.not.i.i = icmp eq i32 %139, 0
  %phi.cast.i = select i1 %tobool.i.not.i.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit.i

iwl_mvm_add_sta_cmd_size.exit.i:                  ; preds = %lor.lhs.false.i.i, %if.then173.i.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 48, %if.then173.i.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge ], [ %phi.cast.i, %lor.lhs.false.i.i ]
  %call186.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 1, i16 noundef zeroext %retval.0.i.i, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %tobool187.not.i = icmp eq i32 %call186.i, 0
  br i1 %tobool187.not.i, label %do.end192.i, label %iwl_mvm_add_sta_cmd_size.exit.i.if.end196.i_crit_edge

iwl_mvm_add_sta_cmd_size.exit.i.if.end196.i_crit_edge: ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196.i

do.end192.i:                                      ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  %140 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %141, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_unshare_queue, ptr noundef nonnull @.str.52, i32 noundef %i.1264) #10
  %142 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %trans.i, align 4
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i.i, align 4
  %txq_set_shared_mode.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %145, i32 0, i32 16
  %146 = ptrtoint ptr %txq_set_shared_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %txq_set_shared_mode.i.i, align 4
  %tobool.not.i258.i = icmp eq ptr %147, null
  br i1 %tobool.not.i258.i, label %do.end192.i.if.end196.i_crit_edge, label %if.then.i.i

do.end192.i.if.end196.i_crit_edge:                ; preds = %do.end192.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196.i

if.then.i.i:                                      ; preds = %do.end192.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %147(ptr noundef %143, i32 noundef %i.1264, i1 noundef zeroext false) #10
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then.i.i, %do.end192.i.if.end196.i_crit_edge, %iwl_mvm_add_sta_cmd_size.exit.i.if.end196.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #10
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.end196.i, %if.end168.i.if.end197.i_crit_edge
  %status.i199 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.1264, i32 6
  %148 = ptrtoint ptr %status.i199 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 2, ptr %status.i199, align 4
  br label %iwl_mvm_unshare_queue.exit

iwl_mvm_unshare_queue.exit:                       ; preds = %if.end197.i, %do.end164.i, %if.then112.i, %land.rhs101.i.iwl_mvm_unshare_queue.exit_crit_edge, %do.end68.i, %do.end.i187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i) #10
  %add104 = add nsw i32 %i.1264, 1
  %call105 = call i32 @_find_next_bit_be(ptr noundef nonnull %unshare_queues, i32 noundef 32, i32 noundef %add104) #10
  %cmp100 = icmp slt i32 %call105, 32
  br i1 %cmp100, label %iwl_mvm_unshare_queue.exit.for.body102_crit_edge, label %iwl_mvm_unshare_queue.exit.for.end106_crit_edge

iwl_mvm_unshare_queue.exit.for.end106_crit_edge:  ; preds = %iwl_mvm_unshare_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end106

iwl_mvm_unshare_queue.exit.for.body102_crit_edge: ; preds = %iwl_mvm_unshare_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body102

for.end106:                                       ; preds = %iwl_mvm_unshare_queue.exit.for.end106_crit_edge, %for.end97.for.end106_crit_edge
  %call107 = call i32 @_find_next_bit_be(ptr noundef nonnull %changetid_queues, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call107)
  %cmp109268 = icmp slt i32 %call107, 32
  br i1 %cmp109268, label %for.body111.lr.ph, label %for.end106.for.end115_crit_edge

for.end106.for.end115_crit_edge:                  ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end115

for.body111.lr.ph:                                ; preds = %for.end106
  %149 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd.i200, i32 0, i32 1
  %150 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd.i200, i32 0, i32 2
  %151 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd.i200, i32 0, i32 3
  %152 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd.i200, i32 0, i32 4
  %153 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd.i200, i32 0, i32 5
  %154 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd.i200, i32 0, i32 6
  br label %for.body111

for.body111:                                      ; preds = %iwl_mvm_change_queue_tid.exit.for.body111_crit_edge, %for.body111.lr.ph
  %i.2269 = phi i32 [ %call107, %for.body111.lr.ph ], [ %call114, %iwl_mvm_change_queue_tid.exit.for.body111_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i200) #10
  %155 = ptrtoint ptr %cmd.i200 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %cmd.i200, align 1
  %156 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %149, align 1
  %conv.i202 = trunc i32 %i.2269 to i8
  %157 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv.i202, ptr %151, align 1
  %158 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 2, ptr %152, align 1
  %159 = call ptr @memset(ptr %153, i32 0, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid_bitmap.i201) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %160 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i203 = icmp eq i32 %160, 0
  br i1 %tobool.not.i203, label %for.body111.if.end.i214_crit_edge, label %land.rhs.i207

for.body111.if.end.i214_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i214

land.rhs.i207:                                    ; preds = %for.body111
  %call.i.i205 = call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205)
  %cmp.not.i206 = icmp eq i32 %call.i.i205, 0
  br i1 %cmp.not.i206, label %do.end.i208, label %land.rhs.i207.if.end.i214_crit_edge, !prof !338

land.rhs.i207.if.end.i214_crit_edge:              ; preds = %land.rhs.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i214

do.end.i208:                                      ; preds = %land.rhs.i207
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 873, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i214

if.end.i214:                                      ; preds = %do.end.i208, %land.rhs.i207.if.end.i214_crit_edge, %for.body111.if.end.i214_crit_edge
  %161 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i.i210 = getelementptr inbounds %struct.iwl_trans, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %trans_cfg.i.i210 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %trans_cfg.i.i210, align 4
  %use_tfh.i.i211 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %use_tfh.i.i211 to i32
  call void @__asan_load2_noabort(i32 %165)
  %bf.load.i.i212 = load i16, ptr %use_tfh.i.i211, align 4
  %166 = and i16 %bf.load.i.i212, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool.i.not.i213 = icmp eq i16 %166, 0
  br i1 %tobool.i.not.i213, label %if.end59.i, label %do.end43.i215, !prof !336

do.end43.i215:                                    ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 875, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_change_queue_tid.exit

if.end59.i:                                       ; preds = %if.end.i214
  %tid_bitmap60.i216 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.2269, i32 4
  %167 = ptrtoint ptr %tid_bitmap60.i216 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %tid_bitmap60.i216, align 4
  %conv61.i = zext i16 %168 to i32
  %169 = ptrtoint ptr %tid_bitmap.i201 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %conv61.i, ptr %tid_bitmap.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool63.not.i = icmp eq i16 %168, 0
  br i1 %tobool63.not.i, label %do.end81.i, label %if.end97.i, !prof !338

do.end81.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 880, i32 noundef 9, ptr noundef nonnull @.str.59, i32 noundef %i.2269) #10
  br label %iwl_mvm_change_queue_tid.exit

if.end97.i:                                       ; preds = %if.end59.i
  %call98.i = call i32 @_find_first_bit_be(ptr noundef nonnull %tid_bitmap.i201, i32 noundef 9) #10
  %conv99.i = trunc i32 %call98.i to i8
  %170 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv99.i, ptr %150, align 1
  %arrayidx101.i = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %call98.i
  %171 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx101.i, align 1
  %idxprom.i217 = zext i8 %172 to i32
  %arrayidx102.i = getelementptr [0 x i8], ptr @iwl_mvm_ac_to_tx_fifo, i32 0, i32 %idxprom.i217
  %173 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx102.i, align 1
  %175 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %154, align 1
  %call104.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 29, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd.i200) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %if.end113.i, label %do.end110.i

do.end110.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %176 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %177, i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef %i.2269, i32 noundef %call104.i) #10
  br label %iwl_mvm_change_queue_tid.exit

if.end113.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %txq_tid.i218 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %i.2269, i32 3
  %178 = ptrtoint ptr %txq_tid.i218 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv99.i, ptr %txq_tid.i218, align 1
  %179 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %180, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_change_queue_tid, ptr noundef nonnull @.str.61, i32 noundef %i.2269, i32 noundef %call98.i) #10
  br label %iwl_mvm_change_queue_tid.exit

iwl_mvm_change_queue_tid.exit:                    ; preds = %if.end113.i, %do.end110.i, %do.end81.i, %do.end43.i215
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i201) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i200) #10
  %add113 = add nsw i32 %i.2269, 1
  %call114 = call i32 @_find_next_bit_be(ptr noundef nonnull %changetid_queues, i32 noundef 32, i32 noundef %add113) #10
  %cmp109 = icmp slt i32 %call114, 32
  br i1 %cmp109, label %iwl_mvm_change_queue_tid.exit.for.body111_crit_edge, label %iwl_mvm_change_queue_tid.exit.for.end115_crit_edge

iwl_mvm_change_queue_tid.exit.for.end115_crit_edge: ; preds = %iwl_mvm_change_queue_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end115

iwl_mvm_change_queue_tid.exit.for.body111_crit_edge: ; preds = %iwl_mvm_change_queue_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body111

for.end115:                                       ; preds = %iwl_mvm_change_queue_tid.exit.for.end115_crit_edge, %for.end106.for.end115_crit_edge
  %call.i219 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i219, label %for.end115.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i222

for.end115.rcu_read_unlock.exit_crit_edge:        ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i222:                               ; preds = %for.end115
  %call1.i220 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i220)
  %tobool.not.i221 = icmp eq i32 %call1.i220, 0
  br i1 %tobool.not.i221, label %land.lhs.true.i222.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i224

land.lhs.true.i222.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i222
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i224:                              ; preds = %land.lhs.true.i222
  %.b4.i223 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i223, label %land.lhs.true2.i224.rcu_read_unlock.exit_crit_edge, label %if.then.i225

land.lhs.true2.i224.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i224
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i225:                                     ; preds = %land.lhs.true2.i224
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i225, %land.lhs.true2.i224.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i222.rcu_read_unlock.exit_crit_edge, %for.end115.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %181 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i226 = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i.i.i226 to ptr
  %preempt_count.i.i.i.i227 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %preempt_count.i.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %preempt_count.i.i.i.i227, align 4
  %sub.i.i.i228 = add i32 %184, -1
  store volatile i32 %sub.i.i.i228, ptr %preempt_count.i.i.i.i227, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_queue.2)
  %cmp116 = icmp slt i32 %free_queue.2, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %alloc_for_sta)
  %cmp120.not = icmp eq i8 %alloc_for_sta, -1
  %or.cond177 = or i1 %cmp120.not, %cmp116
  br i1 %or.cond177, label %rcu_read_unlock.exit.cleanup128_crit_edge, label %if.then122

rcu_read_unlock.exit.cleanup128_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup128

if.then122:                                       ; preds = %rcu_read_unlock.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %queue_tmp.i) #10
  %conv.i230 = trunc i32 %free_queue.2 to i16
  %185 = ptrtoint ptr %queue_tmp.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv.i230, ptr %queue_tmp.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %186 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i231 = icmp eq i32 %186, 0
  br i1 %tobool.not.i231, label %if.then122.if.end.i242_crit_edge, label %land.rhs.i235

if.then122.if.end.i242_crit_edge:                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i242

land.rhs.i235:                                    ; preds = %if.then122
  %call.i.i233 = call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i233)
  %cmp.not.i234 = icmp eq i32 %call.i.i233, 0
  br i1 %cmp.not.i234, label %do.end.i236, label %land.rhs.i235.if.end.i242_crit_edge, !prof !338

land.rhs.i235.if.end.i242_crit_edge:              ; preds = %land.rhs.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i242

do.end.i236:                                      ; preds = %land.rhs.i235
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 495, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i242

if.end.i242:                                      ; preds = %do.end.i236, %land.rhs.i235.if.end.i242_crit_edge, %if.then122.if.end.i242_crit_edge
  %187 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i.i238 = getelementptr inbounds %struct.iwl_trans, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %trans_cfg.i.i238 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %trans_cfg.i.i238, align 4
  %use_tfh.i.i239 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %use_tfh.i.i239 to i32
  call void @__asan_load2_noabort(i32 %191)
  %bf.load.i.i240 = load i16, ptr %use_tfh.i.i239, align 4
  %192 = and i16 %bf.load.i.i240, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %tobool.i.not.i241 = icmp eq i16 %192, 0
  br i1 %tobool.i.not.i241, label %if.end58.i, label %do.end42.i, !prof !336

do.end42.i:                                       ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 497, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_free_inactive_queue.exit.thread

if.end58.i:                                       ; preds = %if.end.i242
  %arrayidx.i243 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %free_queue.2
  %193 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i243, align 8
  %txq_tid.i244 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %free_queue.2, i32 3
  %195 = ptrtoint ptr %txq_tid.i244 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %txq_tid.i244, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %194, i8 %alloc_for_sta)
  %cmp62.i = icmp eq i8 %194, %alloc_for_sta
  %conv.i.i = zext i8 %194 to i32
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %197 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %fw.i.i, align 8
  %num_stations.i.i = getelementptr inbounds %struct.iwl_fw, ptr %198, i32 0, i32 5, i32 6
  %199 = ptrtoint ptr %num_stations.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %num_stations.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %conv.i.i)
  %cmp.not.i.i = icmp ugt i32 %200, %conv.i.i
  br i1 %cmp.not.i.i, label %do.body.i.i, label %if.end58.i.do.end84.i_crit_edge

if.end58.i.do.end84.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84.i

do.body.i.i:                                      ; preds = %if.end58.i
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i245 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i245, label %land.lhs.true.i.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b16.i.i = load i1, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  br i1 %.b16.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then6.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 1204, ptr noundef nonnull @.str.37) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %arrayidx.i.i246 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i.i
  %201 = ptrtoint ptr %arrayidx.i.i246 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i246, align 4
  %tobool.not.i.i.i = icmp eq ptr %202, null
  %cmp.i.i.i = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.do.end84.i_crit_edge, label %if.end100.i, !prof !341

do.end.i.i.do.end84.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84.i

do.end84.i:                                       ; preds = %do.end.i.i.do.end84.i_crit_edge, %if.end58.i.do.end84.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 506, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_free_inactive_queue.exit.thread

if.end100.i:                                      ; preds = %do.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %203 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i148.i = icmp eq i32 %203, 0
  br i1 %tobool.not.i148.i, label %if.end100.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end100.i.if.end.i.i_crit_edge:                 ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end100.i
  %call.i181.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i.i)
  %cmp.not.i150.i = icmp eq i32 %call.i181.i.i, 0
  br i1 %cmp.not.i150.i, label %do.end.i151.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !338

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i151.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 434, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i151.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end100.i.if.end.i.i_crit_edge
  %204 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %205, i32 0, i32 3
  %206 = ptrtoint ptr %trans_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %trans_cfg.i.i.i, align 4
  %use_tfh.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %use_tfh.i.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %bf.load.i.i.i = load i16, ptr %use_tfh.i.i.i, align 4
  %209 = and i16 %bf.load.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %tobool.i.not.i.i247 = icmp eq i16 %209, 0
  br i1 %tobool.i.not.i.i247, label %if.end57.i.i, label %iwl_mvm_remove_sta_queue_marking.exit.thread165.i, !prof !336

iwl_mvm_remove_sta_queue_marking.exit.thread165.i: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  br label %if.then103.i250

if.end57.i.i:                                     ; preds = %if.end.i.i
  %210 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.i243, align 8
  %tid_bitmap59.i.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %free_queue.2, i32 4
  %212 = ptrtoint ptr %tid_bitmap59.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %tid_bitmap59.i.i, align 4
  %conv.i153.i = zext i16 %213 to i32
  %214 = ptrtoint ptr %tid_bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %conv.i153.i, ptr %tid_bitmap.i.i, align 4
  %215 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i.i.i = and i32 %215, -16384
  %216 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %218, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i154.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i154.i, label %if.end57.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end57.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end57.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i155.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i155.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end57.i.i.rcu_read_lock.exit.i.i_crit_edge
  %idxprom.i.i248 = zext i8 %211 to i32
  %arrayidx64.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom.i.i248
  %219 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile ptr, ptr %arrayidx64.i.i, align 4
  %call66.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %land.lhs.true.i156.i, label %rcu_read_lock.exit.i.i.do.end75.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end75.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75.i.i

land.lhs.true.i156.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call68.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %tobool69.not.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %tobool69.not.i.i, label %land.lhs.true.i156.i.do.end75.i.i_crit_edge, label %land.lhs.true70.i.i

land.lhs.true.i156.i.do.end75.i.i_crit_edge:      ; preds = %land.lhs.true.i156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75.i.i

land.lhs.true70.i.i:                              ; preds = %land.lhs.true.i156.i
  %.b179.i.i = load i1, ptr @iwl_mvm_remove_sta_queue_marking.__warned, align 1
  br i1 %.b179.i.i, label %land.lhs.true70.i.i.do.end75.i.i_crit_edge, label %if.then72.i.i

land.lhs.true70.i.i.do.end75.i.i_crit_edge:       ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75.i.i

if.then72.i.i:                                    ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_remove_sta_queue_marking.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 444, ptr noundef nonnull @.str.44) #10
  br label %do.end75.i.i

do.end75.i.i:                                     ; preds = %if.then72.i.i, %land.lhs.true70.i.i.do.end75.i.i_crit_edge, %land.lhs.true.i156.i.do.end75.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end75.i.i_crit_edge
  %tobool.not.i182.i.i = icmp eq ptr %220, null
  %cmp.i.i157.i = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i158.i = or i1 %tobool.not.i182.i.i, %cmp.i.i157.i
  br i1 %spec.select.i.i158.i, label %land.rhs84.i.i, label %if.end132.i.i

land.rhs84.i.i:                                   ; preds = %do.end75.i.i
  %.b177178.i.i = load i1, ptr @iwl_mvm_remove_sta_queue_marking.__already_done, align 1
  br i1 %.b177178.i.i, label %land.rhs84.i.i.if.then131.i.i_crit_edge, label %if.then95.i.i, !prof !336

land.rhs84.i.i.if.then131.i.i_crit_edge:          ; preds = %land.rhs84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then131.i.i

if.then95.i.i:                                    ; preds = %land.rhs84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_remove_sta_queue_marking.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 446, i32 noundef 9, ptr noundef null) #10
  br label %if.then131.i.i

if.then131.i.i:                                   ; preds = %if.then95.i.i, %land.rhs84.i.i.if.then131.i.i_crit_edge
  %call.i183.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i183.i.i, label %if.then131.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge, label %land.lhs.true.i186.i.i

if.then131.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge: ; preds = %if.then131.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_sta_queue_marking.exit.thread.i

land.lhs.true.i186.i.i:                           ; preds = %if.then131.i.i
  %call1.i184.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i184.i.i)
  %tobool.not.i185.i.i = icmp eq i32 %call1.i184.i.i, 0
  br i1 %tobool.not.i185.i.i, label %land.lhs.true.i186.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge, label %land.lhs.true2.i188.i.i

land.lhs.true.i186.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i186.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_sta_queue_marking.exit.thread.i

land.lhs.true2.i188.i.i:                          ; preds = %land.lhs.true.i186.i.i
  %.b4.i187.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i187.i.i, label %land.lhs.true2.i188.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge, label %if.then.i189.i.i

land.lhs.true2.i188.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge: ; preds = %land.lhs.true2.i188.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_sta_queue_marking.exit.thread.i

if.then.i189.i.i:                                 ; preds = %land.lhs.true2.i188.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %iwl_mvm_remove_sta_queue_marking.exit.thread.i

iwl_mvm_remove_sta_queue_marking.exit.thread.i:   ; preds = %if.then.i189.i.i, %land.lhs.true2.i188.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge, %land.lhs.true.i186.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge, %if.then131.i.i.iwl_mvm_remove_sta_queue_marking.exit.thread.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %221 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i190.i.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i.i.i190.i.i to ptr
  %preempt_count.i.i.i.i191.i.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %preempt_count.i.i.i.i191.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %preempt_count.i.i.i.i191.i.i, align 4
  %sub.i.i.i.i.i = add i32 %224, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i191.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  br label %if.end105.i

if.end132.i.i:                                    ; preds = %do.end75.i.i
  %drv_priv.i.i159.i = getelementptr inbounds %struct.ieee80211_sta, ptr %220, i32 0, i32 29
  %lock.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %220, i32 1, i32 1, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  %call134.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.i.i, i32 noundef 9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call134.i.i)
  %cmp135205.i.i = icmp slt i32 %call134.i.i, 9
  br i1 %cmp135205.i.i, label %if.end132.i.i.for.body.i.i_crit_edge, label %if.end132.i.i.for.end.i.i_crit_edge

if.end132.i.i.for.end.i.i_crit_edge:              ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end132.i.i.for.body.i.i_crit_edge:             ; preds = %if.end132.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end132.i.i.for.body.i.i_crit_edge
  %disable_agg_tids.0207.i.i = phi i32 [ %disable_agg_tids.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end132.i.i.for.body.i.i_crit_edge ]
  %tid.0206.i.i = phi i32 [ %call147.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call134.i.i, %if.end132.i.i.for.body.i.i_crit_edge ]
  %conv137.i.i = trunc i32 %tid.0206.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv137.i.i)
  %cmp.i192.i.i = icmp eq i8 %conv137.i.i, 8
  %tid.0.op.i.i = and i32 %tid.0206.i.i, 255
  %idxprom.i.i.i = select i1 %cmp.i192.i.i, i32 16, i32 %tid.0.op.i.i
  %arrayidx.i.i.i = getelementptr %struct.ieee80211_sta, ptr %220, i32 0, i32 28, i32 %idxprom.i.i.i
  %225 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.i.i.i, align 4
  %state.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i159.i, i32 0, i32 10, i32 %tid.0206.i.i, i32 5
  %227 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %228)
  %cmp140.i.i = icmp eq i32 %228, 3
  %shl.i.i = shl nuw nsw i32 1, %tid.0206.i.i
  %or.i.i = select i1 %cmp140.i.i, i32 %shl.i.i, i32 0
  %disable_agg_tids.1.i.i = or i32 %or.i.i, %disable_agg_tids.0207.i.i
  %txq_id.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i159.i, i32 0, i32 10, i32 %tid.0206.i.i, i32 6
  %229 = ptrtoint ptr %txq_id.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 -1, ptr %txq_id.i.i, align 4
  %txq_id146.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %226, i32 1, i32 2
  %230 = ptrtoint ptr %txq_id146.i.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 -1, ptr %txq_id146.i.i, align 4
  %add.i.i = add nsw i32 %tid.0206.i.i, 1
  %call147.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap.i.i, i32 noundef 9, i32 noundef %add.i.i) #10
  %cmp135.i.i = icmp slt i32 %call147.i.i, 9
  br i1 %cmp135.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end132.i.i.for.end.i.i_crit_edge
  %disable_agg_tids.0.lcssa.i.i = phi i32 [ 0, %if.end132.i.i.for.end.i.i_crit_edge ], [ %disable_agg_tids.1.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %shl148.i.i = shl nuw i32 1, %free_queue.2
  %neg.i.i = xor i32 %shl148.i.i, -1
  %tfd_queue_msk.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %220, i32 1, i32 0, i32 1
  %231 = ptrtoint ptr %tfd_queue_msk.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %tfd_queue_msk.i.i, align 4
  %and.i.i = and i32 %232, %neg.i.i
  store i32 %and.i.i, ptr %tfd_queue_msk.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  %call.i194.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i194.i.i, label %for.end.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge, label %land.lhs.true.i197.i.i

for.end.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_sta_queue_marking.exit.i

land.lhs.true.i197.i.i:                           ; preds = %for.end.i.i
  %call1.i195.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i195.i.i)
  %tobool.not.i196.i.i = icmp eq i32 %call1.i195.i.i, 0
  br i1 %tobool.not.i196.i.i, label %land.lhs.true.i197.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge, label %land.lhs.true2.i199.i.i

land.lhs.true.i197.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge: ; preds = %land.lhs.true.i197.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_sta_queue_marking.exit.i

land.lhs.true2.i199.i.i:                          ; preds = %land.lhs.true.i197.i.i
  %.b4.i198.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i198.i.i, label %land.lhs.true2.i199.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge, label %if.then.i200.i.i

land.lhs.true2.i199.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge: ; preds = %land.lhs.true2.i199.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_remove_sta_queue_marking.exit.i

if.then.i200.i.i:                                 ; preds = %land.lhs.true2.i199.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %iwl_mvm_remove_sta_queue_marking.exit.i

iwl_mvm_remove_sta_queue_marking.exit.i:          ; preds = %if.then.i200.i.i, %land.lhs.true2.i199.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge, %land.lhs.true.i197.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge, %for.end.i.i.iwl_mvm_remove_sta_queue_marking.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %233 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i201.i.i = and i32 %233, -16384
  %234 = inttoptr i32 %and.i.i.i.i.i201.i.i to ptr
  %preempt_count.i.i.i.i202.i.i = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %preempt_count.i.i.i.i202.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %preempt_count.i.i.i.i202.i.i, align 4
  %sub.i.i.i203.i.i = add i32 %236, -1
  store volatile i32 %sub.i.i.i203.i.i, ptr %preempt_count.i.i.i.i202.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @synchronize_net() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_agg_tids.0.lcssa.i.i)
  %tobool102.not.i249 = icmp eq i32 %disable_agg_tids.0.lcssa.i.i, 0
  br i1 %tobool102.not.i249, label %iwl_mvm_remove_sta_queue_marking.exit.i.if.end105.i_crit_edge, label %iwl_mvm_remove_sta_queue_marking.exit.i.if.then103.i250_crit_edge

iwl_mvm_remove_sta_queue_marking.exit.i.if.then103.i250_crit_edge: ; preds = %iwl_mvm_remove_sta_queue_marking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then103.i250

iwl_mvm_remove_sta_queue_marking.exit.i.if.end105.i_crit_edge: ; preds = %iwl_mvm_remove_sta_queue_marking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.then103.i250:                                  ; preds = %iwl_mvm_remove_sta_queue_marking.exit.i.if.then103.i250_crit_edge, %iwl_mvm_remove_sta_queue_marking.exit.thread165.i
  %retval.0.i160168.i = phi i32 [ -22, %iwl_mvm_remove_sta_queue_marking.exit.thread165.i ], [ %disable_agg_tids.0.lcssa.i.i, %iwl_mvm_remove_sta_queue_marking.exit.i.if.then103.i250_crit_edge ]
  call fastcc void @iwl_mvm_invalidate_sta_queue(ptr noundef %mvm, i32 noundef %free_queue.2, i32 noundef %retval.0.i160168.i, i1 noundef zeroext false) #10
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then103.i250, %iwl_mvm_remove_sta_queue_marking.exit.i.if.end105.i_crit_edge, %iwl_mvm_remove_sta_queue_marking.exit.thread.i
  %call106.i = call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %queue_owner.2, ptr noundef nonnull %queue_tmp.i, i8 noundef zeroext %196) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end115.i, label %do.end112.i

do.end112.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  %237 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %238, i32 noundef 0, ptr noundef nonnull @.str.62, i32 noundef %free_queue.2, i32 noundef %call106.i) #10
  br label %iwl_mvm_free_inactive_queue.exit.thread

if.end115.i:                                      ; preds = %if.end105.i
  br i1 %cmp62.i, label %if.end115.i.iwl_mvm_free_inactive_queue.exit_crit_edge, label %if.then117.i

if.end115.i.iwl_mvm_free_inactive_queue.exit_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_free_inactive_queue.exit

if.then117.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @iwl_mvm_invalidate_sta_queue(ptr noundef %mvm, i32 noundef %free_queue.2, i32 noundef 0, i1 noundef zeroext true) #10
  br label %iwl_mvm_free_inactive_queue.exit

iwl_mvm_free_inactive_queue.exit.thread:          ; preds = %do.end112.i, %do.end84.i, %do.end42.i
  %retval.0.i251.ph = phi i32 [ %call106.i, %do.end112.i ], [ -22, %do.end84.i ], [ -22, %do.end42.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %queue_tmp.i) #10
  br label %cleanup128

iwl_mvm_free_inactive_queue.exit:                 ; preds = %if.then117.i, %if.end115.i.iwl_mvm_free_inactive_queue.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %queue_tmp.i) #10
  br label %cleanup128

cleanup128:                                       ; preds = %iwl_mvm_free_inactive_queue.exit, %iwl_mvm_free_inactive_queue.exit.thread, %rcu_read_unlock.exit.cleanup128_crit_edge, %if.end.cleanup128_crit_edge
  %retval.0 = phi i32 [ -28, %if.end.cleanup128_crit_edge ], [ %retval.0.i251.ph, %iwl_mvm_free_inactive_queue.exit.thread ], [ %free_queue.2, %iwl_mvm_free_inactive_queue.exit ], [ %free_queue.2, %rcu_read_unlock.exit.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changetid_queues) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unshare_queues) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_mac_itxq_xmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_add_sta(ptr noundef %mvm, ptr noundef %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  %tmp_sta = alloca %struct.iwl_mvm_int_sta, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv.i353 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1567, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool27.not = icmp eq i32 %3, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p2p.i, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then28.if.end.i.i_crit_edge, label %if.then.i.i

if.then28.if.end.i.i_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then28
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %5, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.then28.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %5, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  %call30 = tail call fastcc i32 @iwl_mvm_find_free_sta_id(ptr noundef %mvm, i32 noundef %retval.0.i.i)
  br label %if.end32

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %drv_priv.i353, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %ieee80211_vif_type_p2p.exit
  %sta_id.0 = phi i32 [ %10, %if.else ], [ %call30, %ieee80211_vif_type_p2p.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sta_id.0)
  %cmp33 = icmp eq i32 %sta_id.0, 255
  br i1 %cmp33, label %if.end32.cleanup257_crit_edge, label %do.body36

if.end32.cleanup257_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup257

do.body36:                                        ; preds = %if.end32
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @iwl_mvm_add_sta.__key, i16 noundef signext 3) #10
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool42.not = icmp eq i32 %13, 0
  br i1 %tobool42.not, label %if.end50, label %if.then43

if.then43:                                        ; preds = %do.body36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp_sta) #10
  %14 = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %tmp_sta, i32 0, i32 1
  %15 = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %tmp_sta, i32 0, i32 2
  %16 = ptrtoint ptr %tmp_sta to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sta_id.0, ptr %tmp_sta, align 4
  %sta_type = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %sta_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sta_type, align 8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %15, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id, align 4
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %23 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %color, align 2
  %call45 = call fastcc i32 @iwl_mvm_add_int_sta_common(ptr noundef %mvm, ptr noundef nonnull %tmp_sta, ptr noundef %addr, i16 noundef zeroext %22, i16 noundef zeroext %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %if.then43
  %vif.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %25 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vif.i, align 8
  %call1.i = tail call i32 @iwl_mvm_get_wd_timeout(ptr noundef %mvm, ptr noundef %26, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg.i) #10
  %27 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 4
  %31 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %drv_priv.i353, align 8
  %conv.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %27, align 1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %30, align 4
  %reserved_queue.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 16
  %35 = ptrtoint ptr %reserved_queue.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reserved_queue.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.not.i = icmp eq i8 %36, -1
  br i1 %cmp.not.i, label %if.end48.if.end.i_crit_edge, label %if.then.i

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i = zext i8 %36 to i32
  %37 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %status.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %37, i32 0, i32 %conv3.i, i32 6
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %status.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end48.if.end.i_crit_edge
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %39 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i
  %i.094.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i353, i32 0, i32 10, i32 %i.094.i
  %txq_id10.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i353, i32 0, i32 10, i32 %i.094.i, i32 6
  %40 = ptrtoint ptr %txq_id10.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %txq_id10.i, align 4
  %conv11.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %cmp12.i = icmp eq i16 %41, -1
  br i1 %cmp12.i, label %for.body.i.cleanup.i_crit_edge, label %if.end15.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end15.i:                                       ; preds = %for.body.i
  %42 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %47 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.i.not.i = icmp eq i16 %47, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mvm, align 8
  %50 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %drv_priv.i353, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %49, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_realloc_queues_after_restart, ptr noundef nonnull @.str.74, i32 noundef %51, i32 noundef %i.094.i) #10
  %52 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %drv_priv.i353, align 8
  %conv25.i = trunc i32 %53 to i8
  %conv26.i = trunc i32 %i.094.i to i8
  %call27.i = tail call fastcc i32 @iwl_mvm_tvqm_enable_txq(ptr noundef %mvm, i8 noundef zeroext %conv25.i, i8 noundef zeroext %conv26.i, i32 noundef %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  %54 = trunc i32 %call27.i to i16
  %conv32.i = select i1 %cmp28.i, i16 -1, i16 %54
  %55 = ptrtoint ptr %txq_id10.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv32.i, ptr %txq_id10.i, align 4
  %56 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %arrayidx9.i, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %i.094.i
  %57 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %58 to i32
  %59 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx9.i, align 4
  %61 = lshr i16 %60, 4
  %conv37.i = trunc i32 %i.094.i to i8
  %62 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv37.i, ptr %28, align 2
  %cond.in.in.i.i = getelementptr [0 x i8], ptr @iwl_mvm_ac_to_tx_fifo, i32 0, i32 %conv17.i
  %63 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %cond.in5.i.i = load i8, ptr %cond.in.in.i.i, align 1
  %64 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %cond.in5.i.i, ptr %cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %41)
  %cmp41.i = icmp ugt i16 %41, 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %41)
  %cmp43.i = icmp eq i16 %41, 4
  %spec.select.i = or i1 %cmp41.i, %cmp43.i
  %frombool.i = zext i1 %spec.select.i to i8
  %65 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %frombool.i, ptr %29, align 1
  %66 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mvm, align 8
  %68 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %drv_priv.i353, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %67, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_realloc_queues_after_restart, ptr noundef nonnull @.str.75, i32 noundef %69, i32 noundef %i.094.i, i32 noundef %conv11.i) #10
  %call54.i = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %mvm, ptr noundef %sta, i32 noundef %conv11.i, i16 noundef zeroext %61, ptr noundef nonnull %cfg.i, i32 noundef %call1.i) #10
  %status56.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %39, i32 0, i32 %conv11.i, i32 6
  %70 = ptrtoint ptr %status56.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %status56.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %do.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %cleanup.thread, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.thread:                                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #10
  %71 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %76 = lshr i16 %bf.load.i, 7
  %77 = and i16 %76, 128
  %78 = xor i16 %77, 128
  %79 = zext i16 %78 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp_sta) #10
  br label %update_fw

cleanup:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp_sta) #10
  br label %cleanup257

if.end50:                                         ; preds = %do.body36
  %80 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sta_id.0, ptr %drv_priv.i353, align 8
  %id52 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %81 = ptrtoint ptr %id52 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %id52, align 4
  %conv = zext i16 %82 to i32
  %color53 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %83 = ptrtoint ptr %color53 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %color53, align 2
  %conv54 = zext i16 %84 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or = or i32 %shl55, %conv
  %mac_id_n_color = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %85 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or, ptr %mac_id_n_color, align 8
  %vif56 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %86 = ptrtoint ptr %vif56 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %vif, ptr %vif56, align 8
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %87 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load = load i16, ptr %gen2, align 4
  %92 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool57.not = icmp eq i16 %92, 0
  %spec.select = select i1 %tobool57.not, i16 63, i16 255
  %93 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i353, i32 0, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %spec.select, ptr %93, align 2
  %tx_protection = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i353, i32 0, i32 17
  %95 = ptrtoint ptr %tx_protection to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %tx_protection, align 1
  %tt_tx_protection = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i353, i32 0, i32 18
  %96 = ptrtoint ptr %tt_tx_protection to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %tt_tx_protection, align 2
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %97 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tdls, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool62.not = icmp eq i8 %98, 0
  %cond64 = select i1 %tobool62.not, i32 0, i32 3
  %sta_type65 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %99 = ptrtoint ptr %sta_type65 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %cond64, ptr %sta_type65, align 8
  %tid_disable_agg = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %100 = ptrtoint ptr %tid_disable_agg to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %tid_disable_agg, align 4
  %tfd_queue_msk66 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %101 = ptrtoint ptr %tfd_queue_msk66 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %tfd_queue_msk66, align 4
  %arrayidx = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 6
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx, align 4
  %104 = call ptr @memset(ptr %arrayidx, i32 0, i32 36)
  store i16 %103, ptr %arrayidx, align 4
  %txq_id = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 9
  %105 = ptrtoint ptr %txq_id to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %txq_id, align 4
  %arrayidx.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 3, i32 6
  %106 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx.1, align 4
  %108 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 36)
  store i16 %107, ptr %arrayidx.1, align 4
  %txq_id.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 3, i32 22
  %109 = ptrtoint ptr %txq_id.1 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %txq_id.1, align 4
  %arrayidx.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 16
  %110 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx.2, align 4
  %112 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 36)
  store i16 %111, ptr %arrayidx.2, align 4
  %txq_id.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 1
  %113 = ptrtoint ptr %txq_id.2 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -1, ptr %txq_id.2, align 4
  %arrayidx.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 11
  %114 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx.3, align 4
  %116 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 36)
  store i16 %115, ptr %arrayidx.3, align 4
  %txq_id.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 27, i32 1
  %117 = ptrtoint ptr %txq_id.3 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %txq_id.3, align 4
  %arrayidx.4 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 28, i32 4
  %118 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx.4, align 4
  %120 = call ptr @memset(ptr %arrayidx.4, i32 0, i32 36)
  store i16 %119, ptr %arrayidx.4, align 4
  %txq_id.4 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 28, i32 8
  %121 = ptrtoint ptr %txq_id.4 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -1, ptr %txq_id.4, align 4
  %arrayidx.5 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 28, i32 13
  %122 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx.5, align 4
  %124 = call ptr @memset(ptr %arrayidx.5, i32 0, i32 36)
  store i16 %123, ptr %arrayidx.5, align 4
  %txq_id.5 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2
  %125 = ptrtoint ptr %txq_id.5 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 -1, ptr %txq_id.5, align 4
  %arrayidx.6 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 0, i32 5
  %126 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx.6, align 4
  %128 = call ptr @memset(ptr %arrayidx.6, i32 0, i32 36)
  store i16 %127, ptr %arrayidx.6, align 4
  %txq_id.6 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 3
  %129 = ptrtoint ptr %txq_id.6 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -1, ptr %txq_id.6, align 4
  %arrayidx.7 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 5
  %130 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx.7, align 4
  %132 = call ptr @memset(ptr %arrayidx.7, i32 0, i32 36)
  store i16 %131, ptr %arrayidx.7, align 4
  %txq_id.7 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6
  %133 = ptrtoint ptr %txq_id.7 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -1, ptr %txq_id.7, align 4
  %arrayidx.8 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 2, i32 1
  %134 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx.8, align 4
  %136 = call ptr @memset(ptr %arrayidx.8, i32 0, i32 36)
  store i16 %135, ptr %arrayidx.8, align 4
  %txq_id.8 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 3, i32 6
  %137 = ptrtoint ptr %txq_id.8 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %txq_id.8, align 4
  br label %for.body79

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %if.end50
  %i.1399 = phi i32 [ %inc84, %for.body79.for.body79_crit_edge ], [ 0, %if.end50 ]
  %arrayidx80 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 %i.1399
  %138 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx80, align 4
  %drv_priv.i354 = getelementptr inbounds %struct.ieee80211_txq, ptr %139, i32 0, i32 5
  %txq_id82 = getelementptr inbounds %struct.ieee80211_txq, ptr %139, i32 1, i32 2
  %140 = ptrtoint ptr %txq_id82 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -1, ptr %txq_id82, align 4
  %141 = ptrtoint ptr %drv_priv.i354 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %drv_priv.i354, ptr %drv_priv.i354, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_txq, ptr %139, i32 1, i32 1
  %142 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %drv_priv.i354, ptr %prev.i, align 4
  %tx_request = getelementptr inbounds %struct.ieee80211_txq, ptr %139, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_request, i32 noundef 4) #10
  %143 = ptrtoint ptr %tx_request to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 0, ptr %tx_request, align 4
  %inc84 = add nuw nsw i32 %i.1399, 1
  %exitcond.not = icmp eq i32 %inc84, 17
  br i1 %exitcond.not, label %for.end85, label %for.body79.for.body79_crit_edge

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body79

for.end85:                                        ; preds = %for.body79
  %agg_tids = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i353, i32 0, i32 24
  %144 = ptrtoint ptr %agg_tids to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %agg_tids, align 1
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %145 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %146, i32 0, i32 5, i32 8, i32 2
  %147 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %149 = and i32 %148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.i.i.not = icmp eq i32 %149, 0
  br i1 %tobool.i.i.not, label %for.end85.if.end112_crit_edge, label %land.lhs.true

for.end85.if.end112_crit_edge:                    ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

land.lhs.true:                                    ; preds = %for.end85
  %150 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %status, align 4
  %152 = and i32 %151, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool90.not = icmp eq i32 %152, 0
  br i1 %tobool90.not, label %if.end7.i.i, label %land.lhs.true.if.end112_crit_edge

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.end7.i.i:                                      ; preds = %land.lhs.true
  %153 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %trans, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %154, i32 0, i32 25
  %155 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %num_rx_queues, align 8
  %conv93 = zext i8 %156 to i32
  %157 = shl nuw nsw i32 %conv93, 7
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %157, i32 noundef 3520) #13
  %tobool95.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool95.not, label %if.end7.i.i.cleanup257_crit_edge, label %for.cond98.preheader

if.end7.i.i.cleanup257_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup257

for.cond98.preheader:                             ; preds = %if.end7.i.i
  %158 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %trans, align 4
  %num_rx_queues100400 = getelementptr inbounds %struct.iwl_trans, ptr %159, i32 0, i32 25
  %160 = ptrtoint ptr %num_rx_queues100400 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %num_rx_queues100400, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp102402.not = icmp eq i8 %161, 0
  br i1 %cmp102402.not, label %for.cond98.preheader.if.end112.sink.split_crit_edge, label %for.body104.preheader

for.cond98.preheader.if.end112.sink.split_crit_edge: ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112.sink.split

for.body104.preheader:                            ; preds = %for.cond98.preheader
  %162 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %trans, align 4
  %num_rx_queues100 = getelementptr inbounds %struct.iwl_trans, ptr %163, i32 0, i32 25
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %for.body104.preheader
  %q.0403 = phi i32 [ %inc108, %for.body104.for.body104_crit_edge ], [ 0, %for.body104.preheader ]
  %arrayidx105 = getelementptr %struct.iwl_mvm_rxq_dup_data, ptr %call8.i.i, i32 %q.0403
  %164 = call ptr @memset(ptr %arrayidx105, i32 255, i32 18)
  %inc108 = add nuw nsw i32 %q.0403, 1
  %165 = ptrtoint ptr %num_rx_queues100 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %num_rx_queues100, align 8
  %conv101 = zext i8 %166 to i32
  %cmp102 = icmp ult i32 %inc108, %conv101
  br i1 %cmp102, label %for.body104.for.body104_crit_edge, label %for.body104.if.end112.sink.split_crit_edge

for.body104.if.end112.sink.split_crit_edge:       ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112.sink.split

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body104

if.end112.sink.split:                             ; preds = %for.body104.if.end112.sink.split_crit_edge, %for.cond98.preheader.if.end112.sink.split_crit_edge
  %dup_data110 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 15
  %167 = ptrtoint ptr %dup_data110 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call8.i.i, ptr %dup_data110, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %land.lhs.true.if.end112_crit_edge, %for.end85.if.end112_crit_edge
  %168 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %trans, align 4
  %trans_cfg.i358 = getelementptr inbounds %struct.iwl_trans, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %trans_cfg.i358 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %trans_cfg.i358, align 4
  %use_tfh.i359 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %use_tfh.i359 to i32
  call void @__asan_load2_noabort(i32 %172)
  %bf.load.i360 = load i16, ptr %use_tfh.i359, align 4
  %173 = and i16 %bf.load.i360, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %173)
  %tobool.i361.not = icmp eq i16 %173, 0
  br i1 %tobool.i361.not, label %if.then114, label %if.end112.if.end120_crit_edge

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then114:                                       ; preds = %if.end112
  %174 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vif, align 8
  %p2p.i362 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %176 = ptrtoint ptr %p2p.i362 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %p2p.i362, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i363 = icmp eq i8 %177, 0
  %call23.i = tail call fastcc i32 @iwl_mvm_inactivity_check(ptr noundef %mvm, i8 noundef zeroext -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %175)
  %cmp.i = icmp eq i32 %175, 2
  %or.cond = select i1 %tobool.not.i363, i1 %cmp.i, i1 false
  br i1 %or.cond, label %land.lhs.true.i, label %if.then114.if.end32.i_crit_edge

if.then114.if.end32.i_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.then114
  %178 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %tdls, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool24.not.i = icmp eq i8 %179, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.lhs.true25.i:                                ; preds = %land.lhs.true.i
  %tid_bitmap.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 28, i32 0, i32 4, i32 4
  %180 = ptrtoint ptr %tid_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %tid_bitmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %tobool26.not.i = icmp eq i16 %181, 0
  br i1 %tobool26.not.i, label %land.lhs.true27.i, label %land.lhs.true25.i.if.end32.i_crit_edge

land.lhs.true25.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.lhs.true27.i:                                ; preds = %land.lhs.true25.i
  %status.i376 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 28, i32 0, i32 4, i32 6
  %182 = ptrtoint ptr %status.i376 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %status.i376, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp29.i = icmp eq i32 %183, 0
  br i1 %cmp29.i, label %land.lhs.true27.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge, label %land.lhs.true27.i.if.end32.i_crit_edge

land.lhs.true27.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.lhs.true27.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_reserve_sta_stream.exit.thread

if.end32.i:                                       ; preds = %land.lhs.true27.i.if.end32.i_crit_edge, %land.lhs.true25.i.if.end32.i_crit_edge, %land.lhs.true.i.if.end32.i_crit_edge, %if.then114.if.end32.i_crit_edge
  %call31.i = tail call fastcc i32 @iwl_mvm_find_free_queue(ptr noundef %mvm, i8 noundef zeroext 10, i8 noundef zeroext 30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp33.i = icmp slt i32 %call31.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.end32.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge

if.end32.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_reserve_sta_stream.exit.thread

if.then35.i:                                      ; preds = %if.end32.i
  %184 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %drv_priv.i353, align 8
  %conv37.i377 = trunc i32 %185 to i8
  %call38.i = tail call fastcc i32 @iwl_mvm_inactivity_check(ptr noundef %mvm, i8 noundef zeroext %conv37.i377) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %iwl_mvm_reserve_sta_stream.exit, label %if.then35.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge

if.then35.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_reserve_sta_stream.exit.thread

iwl_mvm_reserve_sta_stream.exit.thread:           ; preds = %if.then35.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge, %if.end32.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge, %land.lhs.true27.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge
  %queue.1.i = phi i32 [ %call38.i, %if.then35.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge ], [ %call31.i, %if.end32.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge ], [ 4, %land.lhs.true27.i.iwl_mvm_reserve_sta_stream.exit.thread_crit_edge ]
  %186 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %status51.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %186, i32 0, i32 %queue.1.i, i32 6
  %187 = ptrtoint ptr %status51.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %status51.i, align 4
  %conv52.i = trunc i32 %queue.1.i to i8
  %reserved_queue.i378 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 16
  %188 = ptrtoint ptr %reserved_queue.i378 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv52.i, ptr %reserved_queue.i378, align 8
  %189 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mvm, align 8
  %191 = ptrtoint ptr %drv_priv.i353 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %drv_priv.i353, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %190, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_reserve_sta_stream, ptr noundef nonnull @.str.77, i32 noundef %queue.1.i, i32 noundef %192) #10
  br label %if.end120

iwl_mvm_reserve_sta_stream.exit:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  %193 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %194, i32 noundef 0, ptr noundef nonnull @.str.76) #10
  br label %cleanup257

if.end120:                                        ; preds = %iwl_mvm_reserve_sta_stream.exit.thread, %if.end112.if.end120_crit_edge
  %195 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i381 = getelementptr %struct.iwl_fw, ptr %196, i32 0, i32 5, i32 8, i32 1
  %197 = ptrtoint ptr %arrayidx.i.i.i381 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %arrayidx.i.i.i381, align 4
  %199 = and i32 %198, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.i.i382.not = icmp eq i32 %199, 0
  br i1 %tobool.i.i382.not, label %do.body124, label %if.then122

if.then122:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_mvm_rs_add_sta(ptr noundef %mvm, ptr noundef %drv_priv.i353) #10
  br label %if.end129

do.body124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %lock125 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 27, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock125, ptr noundef nonnull @.str.5, ptr noundef nonnull @iwl_mvm_add_sta.__key.4, i16 noundef signext 3) #10
  br label %if.end129

if.end129:                                        ; preds = %do.body124, %if.then122
  %tx_ant = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i353, i32 0, i32 27
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %200 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %201, null
  br i1 %tobool.not.i.i, label %if.end129.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.end129.cond.false.i.i_crit_edge:               ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end129
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %201, i32 0, i32 20
  %202 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool2.not.i.i = icmp eq i8 %203, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %204 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %205, i32 0, i32 15
  %206 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i = and i8 %207, %203
  br label %iwl_mvm_toggle_tx_ant.exit

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.end129.cond.false.i.i_crit_edge
  %208 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %209, i32 0, i32 15
  %210 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_toggle_tx_ant.exit

iwl_mvm_toggle_tx_ant.exit:                       ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %211, %cond.false.i.i ]
  %212 = ptrtoint ptr %tx_ant to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %tx_ant, align 1
  %call1.i383 = tail call zeroext i8 @iwl_mvm_next_antenna(ptr noundef %mvm, i8 noundef zeroext %cond.i.i, i8 noundef zeroext %213) #10
  %214 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %call1.i383, ptr %tx_ant, align 1
  br label %update_fw

update_fw:                                        ; preds = %iwl_mvm_toggle_tx_ant.exit, %cleanup.thread
  %sta_flags.1 = phi i32 [ 0, %iwl_mvm_toggle_tx_ant.exit ], [ %79, %cleanup.thread ]
  %215 = xor i1 %tobool42.not, true
  %call132 = tail call i32 @iwl_mvm_sta_send_to_fw(ptr noundef %mvm, ptr noundef %sta, i1 noundef zeroext %215, i32 noundef %sta_flags.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %update_fw.cleanup257_crit_edge

update_fw.cleanup257_crit_edge:                   ; preds = %update_fw
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup257

if.end135:                                        ; preds = %update_fw
  %216 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %217)
  %cmp137 = icmp eq i32 %217, 2
  br i1 %cmp137, label %if.then139, label %if.end135.do.body215_crit_edge

if.end135.do.body215_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body215

if.then139:                                       ; preds = %if.end135
  %tdls140 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %218 = ptrtoint ptr %tdls140 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %tdls140, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool141.not = icmp eq i8 %219, 0
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %220 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %ap_sta_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %221)
  %cmp145.not = icmp eq i8 %221, -1
  br i1 %tobool141.not, label %if.then142, label %if.else178

if.then142:                                       ; preds = %if.then139
  br i1 %cmp145.not, label %if.then142.if.end168_crit_edge, label %do.end162, !prof !336

if.then142.if.end168_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

do.end162:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1690, i32 noundef 9, ptr noundef null) #10
  br label %if.end168

if.end168:                                        ; preds = %do.end162, %if.then142.if.end168_crit_edge
  %conv176 = trunc i32 %sta_id.0 to i8
  %222 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv176, ptr %ap_sta_id, align 8
  br label %do.body215

if.else178:                                       ; preds = %if.then139
  br i1 %cmp145.not, label %do.end199, label %if.else178.do.body215_crit_edge, !prof !338

if.else178.do.body215_crit_edge:                  ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body215

do.end199:                                        ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1693, i32 noundef 9, ptr noundef null) #10
  br label %do.body215

do.body215:                                       ; preds = %do.end199, %if.else178.do.body215_crit_edge, %if.end168, %if.end135.do.body215_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !342
  %arrayidx245 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %sta_id.0
  %223 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %sta, ptr %arrayidx245, align 4
  br label %cleanup257

cleanup257:                                       ; preds = %do.body215, %update_fw.cleanup257_crit_edge, %iwl_mvm_reserve_sta_stream.exit, %if.end7.i.i.cleanup257_crit_edge, %cleanup, %if.end32.cleanup257_crit_edge
  %retval.1 = phi i32 [ 0, %do.body215 ], [ -28, %if.end32.cleanup257_crit_edge ], [ %call45, %cleanup ], [ %call132, %update_fw.cleanup257_crit_edge ], [ -28, %iwl_mvm_reserve_sta_stream.exit ], [ -12, %if.end7.i.i.cleanup257_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_find_free_sta_id(ptr noundef %mvm, i32 noundef %iftype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %land.rhs

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b116 = load i1, ptr @iwl_mvm_find_free_sta_id.__already_done, align 1
  br i1 %.b116, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !336

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_find_free_sta_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef null) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool41.not = icmp eq i32 %3, 0
  br i1 %tobool41.not, label %if.end31.if.end68_crit_edge, label %land.rhs42

if.end31.if.end68_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.rhs42:                                       ; preds = %if.end31
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end62, label %land.rhs42.if.end68_crit_edge, !prof !338

land.rhs42.if.end68_crit_edge:                    ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.end62:                                         ; preds = %land.rhs42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #10
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %land.rhs42.if.end68_crit_edge, %if.end31.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %iftype)
  %cmp78.not = icmp ne i32 %iftype, 2
  %spec.select = zext i1 %cmp78.not to i32
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %num_stations118 = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %num_stations118 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stations118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp81119.not = icmp eq i32 %7, 0
  br i1 %cmp81119.not, label %if.end68.cleanup_crit_edge, label %for.body.lr.ph

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end68
  %dep_map87 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sta_id.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %sta_id.0120
  %and = and i32 %shl, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %do.body85, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body85:                                        ; preds = %for.body
  %call.i117 = tail call i32 @lock_is_held_type(ptr noundef %dep_map87, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool89.not = icmp eq i32 %call.i117, 0
  br i1 %tobool89.not, label %land.lhs.true, label %do.body85.do.end97_crit_edge

do.body85.do.end97_crit_edge:                     ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

land.lhs.true:                                    ; preds = %do.body85
  %call90 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true.do.end97_crit_edge, label %land.lhs.true92

land.lhs.true.do.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

land.lhs.true92:                                  ; preds = %land.lhs.true
  %.b114115 = load i1, ptr @iwl_mvm_find_free_sta_id.__warned, align 1
  br i1 %.b114115, label %land.lhs.true92.do.end97_crit_edge, label %if.then94

land.lhs.true92.do.end97_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

if.then94:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_find_free_sta_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 48, ptr noundef nonnull @.str.37) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %land.lhs.true92.do.end97_crit_edge, %land.lhs.true.do.end97_crit_edge, %do.body85.do.end97_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %sta_id.0120
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool99.not = icmp eq ptr %9, null
  br i1 %tobool99.not, label %do.end97.cleanup_crit_edge, label %do.end97.for.inc_crit_edge

do.end97.for.inc_crit_edge:                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end97.cleanup_crit_edge:                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %do.end97.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %sta_id.0120, 1
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 6
  %12 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_stations, align 4
  %cmp81 = icmp ult i32 %inc, %13
  br i1 %cmp81, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end97.cleanup_crit_edge, %if.end68.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %if.end68.cleanup_crit_edge ], [ 255, %for.inc.cleanup_crit_edge ], [ %sta_id.0120, %do.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_add_int_sta_common(ptr noundef %mvm, ptr nocapture noundef readonly %sta, ptr noundef readonly %addr, i16 noundef zeroext %mac_id, i16 noundef zeroext %color) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %status, align 4
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1514, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %3 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta, align 4
  %conv = trunc i32 %4 to i8
  %sta_id24 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %sta_id24 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %sta_id24, align 1
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 8
  %call25 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %call25)
  %cmp27 = icmp ugt i8 %call25, 11
  br i1 %cmp27, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp29 = icmp eq i32 %9, 4
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv32 = zext i16 %mac_id to i32
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %conv33 = zext i16 %mac_id to i32
  %conv34 = zext i16 %color to i32
  %shl35 = shl nuw nsw i32 %conv34, 8
  %or = or i32 %shl35, %conv33
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31
  %or.sink = phi i32 [ %or, %if.else ], [ %conv32, %if.then31 ]
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.sink)
  %mac_id_n_color36 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %11 = ptrtoint ptr %mac_id_n_color36 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %mac_id_n_color36, align 1
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 7
  %14 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_api.i, align 4
  %16 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %type41 = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 1
  %17 = ptrtoint ptr %type41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type41, align 4
  %conv42 = trunc i32 %18 to i8
  %station_type = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 16
  %19 = ptrtoint ptr %station_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv42, ptr %station_type, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
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
  %tobool.i88.not = icmp eq i16 %25, 0
  br i1 %tobool.i88.not, label %if.then45, label %if.end43.if.end47_crit_edge

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %tfd_queue_msk = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 2
  %26 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tfd_queue_msk, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %tfd_queue_msk46 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 19
  %29 = ptrtoint ptr %tfd_queue_msk46 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %tfd_queue_msk46, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  %tid_disable_tx = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 2
  %30 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 -1, ptr %tid_disable_tx, align 1
  %tobool48.not = icmp eq ptr %addr, null
  br i1 %tobool48.not, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %addr50 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 4
  %31 = call ptr @memcpy(ptr %addr50, ptr %addr, i32 6)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 8, i32 2
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %34 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %if.end51.iwl_mvm_add_sta_cmd_size.exit_crit_edge

if.end51.iwl_mvm_add_sta_cmd_size.exit_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_api.i, align 4
  %37 = and i32 %36, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i = icmp eq i32 %37, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %if.end51.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %if.end51.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call54 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 24, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %cmd, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge

iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge:  ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %iwl_mvm_add_sta_cmd_size.exit
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 4
  %and = and i32 %39, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cond = icmp eq i32 %and, 1
  %40 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mvm, align 8
  br i1 %cond, label %do.end61, label %sw.default

do.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_add_int_sta_common, ptr noundef nonnull @.str.72) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.73, i32 noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end61, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end61 ], [ -5, %sw.default ], [ %call54, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rs_add_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_drain_sta(ptr noundef %mvm, ptr nocapture noundef readonly %mvmsta, i1 noundef zeroext %drain) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 47)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1712, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %mac_id_n_color = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 2
  %3 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id_n_color, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mac_id_n_color24 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %mac_id_n_color24 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %mac_id_n_color24, align 1
  %7 = ptrtoint ptr %mvmsta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mvmsta, align 8
  %conv = trunc i32 %8 to i8
  %sta_id25 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %9 = ptrtoint ptr %sta_id25 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %sta_id25, align 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cmd, align 1
  %cond = select i1 %drain, i32 1048576, i32 0
  %station_flags = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 9
  %11 = ptrtoint ptr %station_flags to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %cond, ptr %station_flags, align 1
  %station_flags_msk = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 10
  %12 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1048576, ptr %station_flags_msk, align 1
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %status, align 4
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %14 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %15, i32 0, i32 5, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %18 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %if.end.iwl_mvm_add_sta_cmd_size.exit_crit_edge

if.end.iwl_mvm_add_sta_cmd_size.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %15, i32 0, i32 5, i32 7
  %19 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_api.i.i, align 4
  %21 = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %if.end.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %if.end.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call30 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 24, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %cmd, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge

iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge:  ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %iwl_mvm_add_sta_cmd_size.exit
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %and = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cond51 = icmp eq i32 %and, 1
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 8
  %26 = ptrtoint ptr %mvmsta to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mvmsta, align 8
  br i1 %cond51, label %do.end37, label %sw.default

do.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_drain_sta, ptr noundef nonnull @.str.6, i32 noundef %27) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end37, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge ], [ 0, %do.end37 ], [ -5, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_wait_sta_queues_empty(ptr nocapture noundef readonly %mvm, ptr noundef %mvm_sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvm_sta, i32 0, i32 9
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %txq_id1 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_sta, i32 0, i32 10, i32 %i.023, i32 6
  %0 = ptrtoint ptr %txq_id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %txq_id1, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp3 = icmp eq i16 %1, -1
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %wait_txq_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %wait_txq_empty.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait_txq_empty.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b116.i = load i1, ptr @iwl_trans_wait_txq_empty.__already_done, align 1
  br i1 %.b116.i, label %land.rhs.i.cleanup9_crit_edge, label %if.then.i, !prof !336

land.rhs.i.cleanup9_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_txq_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1321, i32 noundef 9, ptr noundef null) #10
  br label %cleanup9

if.end39.i:                                       ; preds = %if.end
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 2
  br i1 %cmp.not.i, label %iwl_trans_wait_txq_empty.exit, label %land.rhs47.i

land.rhs47.i:                                     ; preds = %if.end39.i
  %state.i.le = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 6
  %.b114115.i = load i1, ptr @iwl_trans_wait_txq_empty.__already_done.78, align 1
  br i1 %.b114115.i, label %land.rhs47.i.do.end98.i_crit_edge, label %if.then58.i, !prof !336

land.rhs47.i.do.end98.i_crit_edge:                ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98.i

if.then58.i:                                      ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_txq_empty.__already_done.78, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1324, i32 noundef 9, ptr noundef null) #10
  br label %do.end98.i

do.end98.i:                                       ; preds = %if.then58.i, %land.rhs47.i.do.end98.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %12 = ptrtoint ptr %state.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.le, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_wait_txq_empty, i32 noundef %13) #10
  br label %cleanup9

iwl_trans_wait_txq_empty.exit:                    ; preds = %if.end39.i
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %iwl_trans_wait_txq_empty.exit.for.inc_crit_edge, label %iwl_trans_wait_txq_empty.exit.cleanup9_crit_edge

iwl_trans_wait_txq_empty.exit.cleanup9_crit_edge: ; preds = %iwl_trans_wait_txq_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

iwl_trans_wait_txq_empty.exit.for.inc_crit_edge:  ; preds = %iwl_trans_wait_txq_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %iwl_trans_wait_txq_empty.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.inc.cleanup9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

cleanup9:                                         ; preds = %for.inc.cleanup9_crit_edge, %iwl_trans_wait_txq_empty.exit.cleanup9_crit_edge, %do.end98.i, %if.then.i, %land.rhs.i.cleanup9_crit_edge
  %retval.2 = phi i32 [ -524, %land.rhs.i.cleanup9_crit_edge ], [ -524, %if.then.i ], [ -5, %do.end98.i ], [ %call.i, %iwl_trans_wait_txq_empty.exit.cleanup9_crit_edge ], [ 0, %for.inc.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_rm_sta(ptr noundef %mvm, ptr nocapture noundef %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i246 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %drv_priv.i246 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drv_priv.i246, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1833, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %3 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 8, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.i.not, label %if.end.if.end30_crit_edge, label %if.then29

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dup_data = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 15
  %8 = ptrtoint ptr %dup_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dup_data, align 4
  tail call void @kfree(ptr noundef %9) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end.if.end30_crit_edge
  %call31 = tail call i32 @iwl_mvm_drain_sta(ptr noundef %mvm, ptr noundef %drv_priv.i246, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup192_crit_edge

if.end30.cleanup192_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @iwl_mvm_flush_sta(ptr noundef %mvm, ptr noundef %drv_priv.i246, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup192_crit_edge

if.end34.cleanup192_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192

if.end38:                                         ; preds = %if.end34
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %10 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %15 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not = icmp eq i16 %15, 0
  br i1 %tobool.i.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 @iwl_mvm_wait_sta_queues_empty(ptr noundef %mvm, ptr noundef %drv_priv.i246)
  br label %if.end43

if.else:                                          ; preds = %if.end38
  %tfd_queue_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tfd_queue_msk, align 4
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %wait_tx_queues_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %wait_tx_queues_empty.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wait_tx_queues_empty.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else
  %.b58.i = load i1, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.cleanup192_crit_edge, label %if.then.i, !prof !336

land.rhs.i.cleanup192_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1307, i32 noundef 9, ptr noundef null) #10
  br label %cleanup192

if.end39.i:                                       ; preds = %if.else
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 2
  br i1 %cmp.not.i, label %if.end48.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 8
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_wait_tx_queues_empty, i32 noundef %23) #10
  br label %cleanup192

if.end48.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i247 = tail call i32 %21(ptr noundef %11, i32 noundef %17) #10
  br label %if.end43

if.end43:                                         ; preds = %if.end48.i, %if.then40
  %ret.0 = phi i32 [ %call41, %if.then40 ], [ %call.i247, %if.end48.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool44.not = icmp eq i32 %ret.0, 0
  br i1 %tobool44.not, label %if.end46, label %if.end43.cleanup192_crit_edge

if.end43.cleanup192_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192

if.end46:                                         ; preds = %if.end43
  %call47 = tail call i32 @iwl_mvm_drain_sta(ptr noundef %mvm, ptr noundef %drv_priv.i246, i1 noundef zeroext false)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i248 = icmp eq i32 %26, 0
  br i1 %tobool.not.i248, label %if.end46.if.end.i_crit_edge, label %land.rhs.i250

if.end46.if.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i250:                                    ; preds = %if.end46
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i249 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i249, label %do.end.i, label %land.rhs.i250.if.end.i_crit_edge, !prof !338

land.rhs.i250.if.end.i_crit_edge:                 ; preds = %land.rhs.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i250
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1781, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i250.if.end.i_crit_edge, %if.end46.if.end.i_crit_edge
  %txq_id.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 9
  %27 = ptrtoint ptr %txq_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %txq_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp26.i = icmp eq i16 %28, -1
  br i1 %cmp26.i, label %if.end.i.for.inc.i_crit_edge, label %if.end29.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end29.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.i, i8 noundef zeroext 0) #10
  %30 = ptrtoint ptr %txq_id.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %txq_id.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end29.i, %if.end.i.for.inc.i_crit_edge
  %txq_id.1.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 3, i32 22
  %31 = ptrtoint ptr %txq_id.1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %txq_id.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %cmp26.1.i = icmp eq i16 %32, -1
  br i1 %cmp26.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end29.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.end29.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.1.i, i8 noundef zeroext 1) #10
  %34 = ptrtoint ptr %txq_id.1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %txq_id.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end29.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %txq_id.2.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 1
  %35 = ptrtoint ptr %txq_id.2.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %txq_id.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp26.2.i = icmp eq i16 %36, -1
  br i1 %cmp26.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end29.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.end29.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.2.i, i8 noundef zeroext 2) #10
  %38 = ptrtoint ptr %txq_id.2.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %txq_id.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end29.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %txq_id.3.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 27, i32 1
  %39 = ptrtoint ptr %txq_id.3.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %txq_id.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp26.3.i = icmp eq i16 %40, -1
  br i1 %cmp26.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end29.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

if.end29.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.3.i, i8 noundef zeroext 3) #10
  %42 = ptrtoint ptr %txq_id.3.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %txq_id.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end29.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %txq_id.4.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 28, i32 8
  %43 = ptrtoint ptr %txq_id.4.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %txq_id.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %44)
  %cmp26.4.i = icmp eq i16 %44, -1
  br i1 %cmp26.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end29.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i

if.end29.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.4.i, i8 noundef zeroext 4) #10
  %46 = ptrtoint ptr %txq_id.4.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %txq_id.4.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end29.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %txq_id.5.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2
  %47 = ptrtoint ptr %txq_id.5.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %txq_id.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp26.5.i = icmp eq i16 %48, -1
  br i1 %cmp26.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.end29.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5.i

if.end29.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.5.i, i8 noundef zeroext 5) #10
  %50 = ptrtoint ptr %txq_id.5.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %txq_id.5.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.end29.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %txq_id.6.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 3, i32 3
  %51 = ptrtoint ptr %txq_id.6.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %txq_id.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp26.6.i = icmp eq i16 %52, -1
  br i1 %cmp26.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.end29.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6.i

if.end29.6.i:                                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.6.i, i8 noundef zeroext 6) #10
  %54 = ptrtoint ptr %txq_id.6.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %txq_id.6.i, align 4
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.end29.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %txq_id.7.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6
  %55 = ptrtoint ptr %txq_id.7.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %txq_id.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %56)
  %cmp26.7.i = icmp eq i16 %56, -1
  br i1 %cmp26.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.end29.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

if.end29.7.i:                                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.7.i, i8 noundef zeroext 7) #10
  %58 = ptrtoint ptr %txq_id.7.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %txq_id.7.i, align 4
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.end29.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %txq_id.8.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 6, i32 3, i32 6
  %59 = ptrtoint ptr %txq_id.8.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %txq_id.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %60)
  %cmp26.8.i = icmp eq i16 %60, -1
  br i1 %cmp26.8.i, label %for.inc.7.i.iwl_mvm_disable_sta_queues.exit_crit_edge, label %if.end29.8.i

for.inc.7.i.iwl_mvm_disable_sta_queues.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_disable_sta_queues.exit

if.end29.8.i:                                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef %sta, ptr noundef %txq_id.8.i, i8 noundef zeroext 8) #10
  %62 = ptrtoint ptr %txq_id.8.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %txq_id.8.i, align 4
  br label %iwl_mvm_disable_sta_queues.exit

iwl_mvm_disable_sta_queues.exit:                  ; preds = %if.end29.8.i, %for.inc.7.i.iwl_mvm_disable_sta_queues.exit_crit_edge
  %arrayidx42.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 0
  %63 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx42.i, align 4
  %txq_id44.i = getelementptr inbounds %struct.ieee80211_txq, ptr %64, i32 1, i32 2
  %65 = ptrtoint ptr %txq_id44.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %txq_id44.i, align 4
  %arrayidx42.1.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 1
  %66 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx42.1.i, align 4
  %txq_id44.1.i = getelementptr inbounds %struct.ieee80211_txq, ptr %67, i32 1, i32 2
  %68 = ptrtoint ptr %txq_id44.1.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %txq_id44.1.i, align 4
  %arrayidx42.2.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 2
  %69 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx42.2.i, align 4
  %txq_id44.2.i = getelementptr inbounds %struct.ieee80211_txq, ptr %70, i32 1, i32 2
  %71 = ptrtoint ptr %txq_id44.2.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %txq_id44.2.i, align 4
  %arrayidx42.3.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 3
  %72 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx42.3.i, align 4
  %txq_id44.3.i = getelementptr inbounds %struct.ieee80211_txq, ptr %73, i32 1, i32 2
  %74 = ptrtoint ptr %txq_id44.3.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -1, ptr %txq_id44.3.i, align 4
  %arrayidx42.4.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 4
  %75 = ptrtoint ptr %arrayidx42.4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx42.4.i, align 4
  %txq_id44.4.i = getelementptr inbounds %struct.ieee80211_txq, ptr %76, i32 1, i32 2
  %77 = ptrtoint ptr %txq_id44.4.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %txq_id44.4.i, align 4
  %arrayidx42.5.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 5
  %78 = ptrtoint ptr %arrayidx42.5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx42.5.i, align 4
  %txq_id44.5.i = getelementptr inbounds %struct.ieee80211_txq, ptr %79, i32 1, i32 2
  %80 = ptrtoint ptr %txq_id44.5.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 -1, ptr %txq_id44.5.i, align 4
  %arrayidx42.6.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 6
  %81 = ptrtoint ptr %arrayidx42.6.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx42.6.i, align 4
  %txq_id44.6.i = getelementptr inbounds %struct.ieee80211_txq, ptr %82, i32 1, i32 2
  %83 = ptrtoint ptr %txq_id44.6.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %txq_id44.6.i, align 4
  %arrayidx42.7.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 7
  %84 = ptrtoint ptr %arrayidx42.7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx42.7.i, align 4
  %txq_id44.7.i = getelementptr inbounds %struct.ieee80211_txq, ptr %85, i32 1, i32 2
  %86 = ptrtoint ptr %txq_id44.7.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %txq_id44.7.i, align 4
  %arrayidx42.8.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 8
  %87 = ptrtoint ptr %arrayidx42.8.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx42.8.i, align 4
  %txq_id44.8.i = getelementptr inbounds %struct.ieee80211_txq, ptr %88, i32 1, i32 2
  %89 = ptrtoint ptr %txq_id44.8.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %txq_id44.8.i, align 4
  %arrayidx42.9.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 9
  %90 = ptrtoint ptr %arrayidx42.9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx42.9.i, align 4
  %txq_id44.9.i = getelementptr inbounds %struct.ieee80211_txq, ptr %91, i32 1, i32 2
  %92 = ptrtoint ptr %txq_id44.9.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %txq_id44.9.i, align 4
  %arrayidx42.10.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 10
  %93 = ptrtoint ptr %arrayidx42.10.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx42.10.i, align 4
  %txq_id44.10.i = getelementptr inbounds %struct.ieee80211_txq, ptr %94, i32 1, i32 2
  %95 = ptrtoint ptr %txq_id44.10.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -1, ptr %txq_id44.10.i, align 4
  %arrayidx42.11.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 11
  %96 = ptrtoint ptr %arrayidx42.11.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx42.11.i, align 4
  %txq_id44.11.i = getelementptr inbounds %struct.ieee80211_txq, ptr %97, i32 1, i32 2
  %98 = ptrtoint ptr %txq_id44.11.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -1, ptr %txq_id44.11.i, align 4
  %arrayidx42.12.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 12
  %99 = ptrtoint ptr %arrayidx42.12.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx42.12.i, align 4
  %txq_id44.12.i = getelementptr inbounds %struct.ieee80211_txq, ptr %100, i32 1, i32 2
  %101 = ptrtoint ptr %txq_id44.12.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1, ptr %txq_id44.12.i, align 4
  %arrayidx42.13.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 13
  %102 = ptrtoint ptr %arrayidx42.13.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx42.13.i, align 4
  %txq_id44.13.i = getelementptr inbounds %struct.ieee80211_txq, ptr %103, i32 1, i32 2
  %104 = ptrtoint ptr %txq_id44.13.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %txq_id44.13.i, align 4
  %arrayidx42.14.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 14
  %105 = ptrtoint ptr %arrayidx42.14.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx42.14.i, align 4
  %txq_id44.14.i = getelementptr inbounds %struct.ieee80211_txq, ptr %106, i32 1, i32 2
  %107 = ptrtoint ptr %txq_id44.14.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %txq_id44.14.i, align 4
  %arrayidx42.15.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 15
  %108 = ptrtoint ptr %arrayidx42.15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx42.15.i, align 4
  %txq_id44.15.i = getelementptr inbounds %struct.ieee80211_txq, ptr %109, i32 1, i32 2
  %110 = ptrtoint ptr %txq_id44.15.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -1, ptr %txq_id44.15.i, align 4
  %arrayidx42.16.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 16
  %111 = ptrtoint ptr %arrayidx42.16.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx42.16.i, align 4
  %txq_id44.16.i = getelementptr inbounds %struct.ieee80211_txq, ptr %112, i32 1, i32 2
  %113 = ptrtoint ptr %txq_id44.16.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -1, ptr %txq_id44.16.i, align 4
  %reserved_queue = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 16
  %114 = ptrtoint ptr %reserved_queue to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %reserved_queue, align 8
  %conv48 = zext i8 %115 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %115)
  %cmp49.not = icmp eq i8 %115, -1
  br i1 %cmp49.not, label %iwl_mvm_disable_sta_queues.exit.if.end96_crit_edge, label %if.then51

iwl_mvm_disable_sta_queues.exit.if.end96_crit_edge: ; preds = %iwl_mvm_disable_sta_queues.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then51:                                        ; preds = %iwl_mvm_disable_sta_queues.exit
  %116 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %status53 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %116, i32 0, i32 %conv48, i32 6
  %117 = ptrtoint ptr %status53 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %status53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %do.end76, label %if.end94, !prof !338

do.end76:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %conv77 = and i32 %1, 255
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1875, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %conv77, i32 noundef %conv48, i32 noundef %118) #10
  br label %cleanup192

if.end94:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %status53 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %status53, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end94, %iwl_mvm_disable_sta_queues.exit.if.end96_crit_edge
  %121 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp97 = icmp eq i32 %122, 2
  br i1 %cmp97, label %land.lhs.true, label %if.end96.if.end108_crit_edge

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = trunc i32 %1 to i8
  br label %if.end108

land.lhs.true:                                    ; preds = %if.end96
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %123 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %ap_sta_id, align 8
  %125 = trunc i32 %1 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %124, i8 %125)
  %cmp101 = icmp eq i8 %124, %125
  br i1 %cmp101, label %if.then103, label %land.lhs.true.if.end108_crit_edge

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then103:                                       ; preds = %land.lhs.true
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %126 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %assoc, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool104.not = icmp eq i8 %127, 0
  br i1 %tobool104.not, label %if.end106, label %if.then103.cleanup192_crit_edge

if.then103.cleanup192_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192

if.end106:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -1, ptr %ap_sta_id, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.end106, %land.lhs.true.if.end108_crit_edge, %if.end96.if.end108_crit_edge
  %.pre-phi = phi i8 [ %.pre, %if.end96.if.end108_crit_edge ], [ %125, %if.end106 ], [ %125, %land.lhs.true.if.end108_crit_edge ]
  %tdls_cs = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158
  %peer = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 3
  %129 = ptrtoint ptr %peer to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %peer, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %130, i8 %.pre-phi)
  %cmp112 = icmp eq i8 %130, %.pre-phi
  br i1 %cmp112, label %land.rhs120, label %if.end108.if.end173_crit_edge

if.end108.if.end173_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

land.rhs120:                                      ; preds = %if.end108
  %.b244 = load i1, ptr @iwl_mvm_rm_sta.__already_done, align 1
  br i1 %.b244, label %land.rhs120.if.then167_crit_edge, label %if.then131, !prof !336

land.rhs120.if.then167_crit_edge:                 ; preds = %land.rhs120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then167

if.then131:                                       ; preds = %land.rhs120
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rm_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1895, i32 noundef 9, ptr noundef null) #10
  br label %if.then167

if.then167:                                       ; preds = %if.then131, %land.rhs120.if.then167_crit_edge
  %131 = ptrtoint ptr %peer to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -1, ptr %peer, align 4
  %call172 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %tdls_cs) #10
  br label %if.end173

if.end173:                                        ; preds = %if.then167, %if.end108.if.end173_crit_edge
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %132 = ptrtoint ptr %drv_priv.i246 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %drv_priv.i246, align 8
  %conv176 = trunc i32 %133 to i8
  %call177 = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %conv176)
  %134 = ptrtoint ptr %drv_priv.i246 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %drv_priv.i246, align 8
  %arrayidx185 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %135
  %136 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr null, ptr %arrayidx185, align 4
  br label %cleanup192

cleanup192:                                       ; preds = %if.end173, %if.then103.cleanup192_crit_edge, %do.end76, %if.end43.cleanup192_crit_edge, %do.end44.i, %if.then.i, %land.rhs.i.cleanup192_crit_edge, %if.end34.cleanup192_crit_edge, %if.end30.cleanup192_crit_edge
  %retval.1 = phi i32 [ %call177, %if.end173 ], [ %call31, %if.end30.cleanup192_crit_edge ], [ %call35, %if.end34.cleanup192_crit_edge ], [ %ret.0, %if.end43.cleanup192_crit_edge ], [ -22, %do.end76 ], [ %call47, %if.then103.cleanup192_crit_edge ], [ -524, %land.rhs.i.cleanup192_crit_edge ], [ -524, %if.then.i ], [ -5, %do.end44.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_flush_sta(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %sta_id) unnamed_addr #0 align 64 {
entry:
  %rm_sta_cmd = alloca %struct.iwl_mvm_rm_sta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rm_sta_cmd) #10
  %0 = getelementptr inbounds %struct.iwl_mvm_rm_sta_cmd, ptr %rm_sta_cmd, i32 0, i32 1
  %1 = ptrtoint ptr %rm_sta_cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %sta_id, ptr %rm_sta_cmd, align 1
  %2 = call ptr @memset(ptr %0, i32 0, i32 3)
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @iwl_mvm_rm_sta_common.__warned, align 1
  br i1 %.b35, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rm_sta_common.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1756, ptr noundef nonnull @.str.37) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %idxprom = zext i8 %sta_id to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %call15 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 25, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %rm_sta_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %do.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.79, i32 noundef %idxprom) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end14.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ %call15, %do.end21 ], [ -22, %do.end11 ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rm_sta_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_rm_sta_id(ptr noundef %mvm, ptr nocapture noundef readnone %vif, i8 noundef zeroext %sta_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %sta_id)
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1919, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %idxprom = zext i8 %sta_id to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr null, ptr %arrayidx, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_allocate_int_sta(ptr noundef %mvm, ptr nocapture noundef %sta, i32 noundef %qmask, i32 noundef %iftype, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp eq i32 %4, 255
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end44_crit_edge

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call fastcc i32 @iwl_mvm_find_free_sta_id(ptr noundef %mvm, i32 noundef %iftype)
  %5 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1)
  %cmp4 = icmp eq i32 %call1, 255
  br i1 %cmp4, label %land.rhs, label %if.then.if.end44_crit_edge

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.rhs:                                         ; preds = %if.then
  %.b81 = load i1, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  br i1 %.b81, label %land.rhs.return_crit_edge, label %if.then12, !prof !336

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1933, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end44:                                         ; preds = %if.then.if.end44_crit_edge, %lor.lhs.false.if.end44_crit_edge
  %tfd_queue_msk = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 2
  %6 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %qmask, ptr %tfd_queue_msk, align 4
  %type45 = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 1
  %7 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %type45, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !343
  %8 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sta, align 4
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 -22 to ptr), ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then12, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -28, %if.then12 ], [ -28, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_dealloc_int_sta(ptr noundef %mvm, ptr nocapture noundef %sta) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sta, align 4
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx, align 4
  %3 = getelementptr inbounds i8, ptr %sta, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  store i32 255, ptr %sta, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_add_aux_sta(ptr noundef %mvm, i32 noundef %lmac_id) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2023, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %aux_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62
  %aux_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 141
  %1 = ptrtoint ptr %aux_queue to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %aux_queue, align 4
  %conv = zext i16 %2 to i32
  %shl = shl nuw i32 1, %conv
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aux_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp.i = icmp eq i32 %7, 255
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end27_crit_edge

lor.lhs.false.i.if.end27_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call1.i = tail call fastcc i32 @iwl_mvm_find_free_sta_id(ptr noundef %mvm, i32 noundef 0) #10
  %8 = ptrtoint ptr %aux_sta to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1.i, ptr %aux_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1.i)
  %cmp4.i = icmp eq i32 %call1.i, 255
  br i1 %cmp4.i, label %land.rhs.i, label %if.then.i.if.end27_crit_edge

if.then.i.if.end27_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs.i:                                       ; preds = %if.then.i
  %.b81.i = load i1, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  br i1 %.b81.i, label %land.rhs.i.cleanup_crit_edge, label %if.then12.i, !prof !336

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1933, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end27:                                         ; preds = %if.then.i.if.end27_crit_edge, %lor.lhs.false.i.if.end27_crit_edge
  %tfd_queue_msk.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62, i32 2
  %9 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %tfd_queue_msk.i, align 4
  %type45.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62, i32 1
  %10 = ptrtoint ptr %type45.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %type45.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !343
  %11 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aux_sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  %call30 = tail call fastcc i32 @iwl_mvm_add_int_sta_with_queue(ptr noundef %mvm, i32 noundef %lmac_id, i32 noundef 0, ptr noundef null, ptr noundef %aux_sta, ptr noundef %aux_queue, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.then32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aux_sta, align 4
  %arrayidx.i47 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %15
  %16 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %arrayidx.i47, align 4
  %17 = ptrtoint ptr %type45.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %type45.i, align 4
  store i32 255, ptr %aux_sta, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27.cleanup_crit_edge, %if.then12.i, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then32 ], [ 0, %if.end27.cleanup_crit_edge ], [ -28, %if.then12.i ], [ -28, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_add_int_sta_with_queue(ptr noundef %mvm, i32 noundef %macidx, i32 noundef %maccolor, ptr noundef %addr, ptr nocapture noundef readonly %sta, ptr nocapture noundef %queue, i32 noundef %fifo) unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %0 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %5 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %iwl_mvm_enable_aux_snif_queue.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

iwl_mvm_enable_aux_snif_queue.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue, align 2
  %8 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sta, align 4
  %conv = trunc i32 %9 to i8
  %conv1 = trunc i32 %fifo to i8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg.i) #10
  %14 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 4
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv1, ptr %cfg.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %14, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %15, align 2
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %16, align 1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %17, align 4
  %conv.i = zext i16 %7 to i32
  %call21.i = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %mvm, ptr noundef null, i32 noundef %conv.i, i16 noundef zeroext 0, ptr noundef nonnull %cfg.i, i32 noundef %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #10
  br label %if.end

if.end:                                           ; preds = %iwl_mvm_enable_aux_snif_queue.exit, %entry.if.end_crit_edge
  %conv2 = trunc i32 %macidx to i16
  %conv3 = trunc i32 %maccolor to i16
  %call4 = tail call fastcc i32 @iwl_mvm_add_int_sta_common(ptr noundef %mvm, ptr noundef %sta, ptr noundef %addr, i16 noundef zeroext %conv2, i16 noundef zeroext %conv3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %23 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i48 = getelementptr inbounds %struct.iwl_trans, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %trans_cfg.i48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_cfg.i48, align 4
  %use_tfh.i49 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %use_tfh.i49 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i50 = load i16, ptr %use_tfh.i49, align 4
  %28 = and i16 %bf.load.i50, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.i51.not = icmp eq i16 %28, 0
  br i1 %tobool.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %tobool.i51.not, label %if.then7, label %if.then5.cleanup24_crit_edge

if.then5.cleanup24_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef null, ptr noundef %queue, i8 noundef zeroext 8)
  br label %cleanup24

if.end10:                                         ; preds = %if.end
  br i1 %tobool.i51.not, label %if.end10.cleanup24_crit_edge, label %iwl_mvm_enable_aux_snif_queue_tvqm.exit

if.end10.cleanup24_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

iwl_mvm_enable_aux_snif_queue_tvqm.exit:          ; preds = %if.end10
  %30 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sta, align 4
  %conv14 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %26, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %call20.i = tail call fastcc i32 @iwl_mvm_tvqm_enable_txq(ptr noundef %mvm, i8 noundef zeroext %conv14, i8 noundef zeroext 8, i32 noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp = icmp slt i32 %call20.i, 0
  br i1 %cmp, label %if.then17, label %if.end21

if.then17:                                        ; preds = %iwl_mvm_enable_aux_snif_queue_tvqm.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sta, align 4
  %conv19 = trunc i32 %37 to i8
  %call20 = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %conv19)
  br label %cleanup24

if.end21:                                         ; preds = %iwl_mvm_enable_aux_snif_queue_tvqm.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv22 = trunc i32 %call20.i to i16
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv22, ptr %queue, align 2
  br label %cleanup24

cleanup24:                                        ; preds = %if.end21, %if.then17, %if.end10.cleanup24_crit_edge, %if.then7, %if.then5.cleanup24_crit_edge
  %retval.1 = phi i32 [ %call4, %if.then7 ], [ %call4, %if.then5.cleanup24_crit_edge ], [ %call20.i, %if.then17 ], [ 0, %if.end21 ], [ 0, %if.end10.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_add_snif_sta(ptr noundef %mvm, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2051, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id, align 4
  %conv = zext i16 %2 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %3 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %color, align 2
  %conv25 = zext i16 %4 to i32
  %snif_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 63
  %snif_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 142
  %call26 = tail call fastcc i32 @iwl_mvm_add_int_sta_with_queue(ptr noundef %mvm, i32 noundef %conv, i32 noundef %conv25, ptr noundef null, ptr noundef %snif_sta, ptr noundef %snif_queue, i32 noundef 1)
  ret i32 %call26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_rm_snif_sta(ptr noundef %mvm, ptr nocapture noundef readnone %vif) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2063, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %snif_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 63
  %1 = ptrtoint ptr %snif_sta to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %snif_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp24 = icmp eq i32 %2, 255
  br i1 %cmp24, label %land.rhs30, label %if.end78

land.rhs30:                                       ; preds = %if.end
  %.b102 = load i1, ptr @iwl_mvm_rm_snif_sta.__already_done, align 1
  br i1 %.b102, label %land.rhs30.cleanup_crit_edge, label %if.then41, !prof !336

land.rhs30.cleanup_crit_edge:                     ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rm_snif_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2065, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end
  %snif_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 142
  %3 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef null, ptr noundef %snif_queue, i8 noundef zeroext 8)
  %4 = ptrtoint ptr %snif_sta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snif_sta, align 4
  %conv = trunc i32 %5 to i8
  %call82 = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end78.cleanup_crit_edge, label %do.end88

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %7, ptr noundef nonnull @.str.9) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.end78.cleanup_crit_edge, %if.then41, %land.rhs30.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then41 ], [ %call82, %do.end88 ], [ 0, %if.end78.cleanup_crit_edge ], [ -22, %land.rhs30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef readonly %sta, ptr nocapture noundef %queueptr, i8 noundef zeroext %tid) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_scd_txq_cfg_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queueptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queueptr, align 2
  %conv = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #10
  %2 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 3
  %5 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cmd, align 1
  %conv2 = trunc i16 %1 to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2, ptr %4, align 1
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %8 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 5
  %9 = call ptr @memset(ptr %8, i32 0, i32 7)
  %10 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %15 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not = icmp eq i16 %15, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %txq_free.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %txq_free.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %txq_free.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.critedge.i

land.rhs.i:                                       ; preds = %if.then
  %.b46.i = load i1, ptr @iwl_trans_txq_free.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.iwl_trans_txq_free.exit_crit_edge, label %if.then.i, !prof !336

land.rhs.i.iwl_trans_txq_free.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_trans_txq_free.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_txq_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1215, i32 noundef 9, ptr noundef null) #10
  br label %iwl_trans_txq_free.exit

if.end39.critedge.i:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef %11, i32 noundef %conv) #10
  br label %iwl_trans_txq_free.exit

iwl_trans_txq_free.exit:                          ; preds = %if.end39.critedge.i, %if.then.i, %land.rhs.i.iwl_trans_txq_free.exit_crit_edge
  %20 = ptrtoint ptr %queueptr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %queueptr, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %arrayidx = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %21, i32 0, i32 %conv
  %tid_bitmap = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %21, i32 0, i32 %conv, i32 4
  %22 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tid_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp = icmp eq i16 %23, 0
  br i1 %cmp, label %do.end, label %if.end27, !prof !338

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %conv28 = zext i8 %tid to i32
  %shl = shl nuw i32 1, %conv28
  %24 = trunc i32 %shl to i16
  %25 = xor i16 %24, -1
  %conv32 = and i16 %23, %25
  %26 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv32, ptr %tid_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv32)
  %tobool36.not = icmp ne i16 %conv32, 0
  %conv37 = zext i1 %tobool36.not to i8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv37, ptr %5, align 1
  br i1 %tobool36.not, label %cleanup.critedge, label %if.then43

if.then43:                                        ; preds = %if.end27
  %status = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %21, i32 0, i32 %conv, i32 6
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %status, align 4
  %29 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mvm, align 8
  %31 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tid_bitmap, align 4
  %conv52.c = zext i16 %32 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %30, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_disable_txq, ptr noundef nonnull @.str.80, i32 noundef %conv, i32 noundef %conv52.c) #10
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 8
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %2, align 1
  %txq_tid = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %21, i32 0, i32 %conv, i32 3
  %36 = ptrtoint ptr %txq_tid to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %txq_tid, align 1
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %3, align 1
  %39 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tid_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool68.not = icmp eq i16 %40, 0
  br i1 %tobool68.not, label %if.then43.if.end93_crit_edge, label %do.end84, !prof !336

if.then43.if.end93_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

do.end84:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %conv87 = zext i16 %40 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef nonnull @.str.81, i32 noundef %conv, i32 noundef %conv87) #10
  br label %if.end93

if.end93:                                         ; preds = %do.end84, %if.then43.if.end93_crit_edge
  %41 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %tid_bitmap, align 4
  %tobool103.not = icmp eq ptr %sta, null
  br i1 %tobool103.not, label %if.end93.if.end106_crit_edge, label %if.then104

if.end93.if.end106_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then104:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %tid)
  %cmp.i = icmp eq i8 %tid, 8
  %spec.store.select.i = select i1 %cmp.i, i8 16, i8 %tid
  %idxprom.i = zext i8 %spec.store.select.i to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %txq_id = getelementptr inbounds %struct.ieee80211_txq, ptr %43, i32 1, i32 2
  %44 = ptrtoint ptr %txq_id to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %txq_id, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end93.if.end106_crit_edge
  %reserved108 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %21, i32 0, i32 %conv, i32 1
  %45 = ptrtoint ptr %reserved108 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %reserved108, align 1
  %46 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trans.i, align 4
  %ops.i1 = getelementptr inbounds %struct.iwl_trans, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ops.i1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i1, align 4
  %txq_disable.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %txq_disable.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %txq_disable.i, align 4
  tail call void %51(ptr noundef %47, i32 noundef %conv, i1 noundef zeroext false) #10
  %call111 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 29, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end106.cleanup_crit_edge, label %do.end117

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end117:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef %conv, i32 noundef %call111) #10
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mvm, align 8
  %56 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tid_bitmap, align 4
  %conv52.c2 = zext i16 %57 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %55, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_disable_txq, ptr noundef nonnull @.str.80, i32 noundef %conv, i32 noundef %conv52.c2) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %do.end117, %if.end106.cleanup_crit_edge, %do.end, %iwl_trans_txq_free.exit
  %retval.0 = phi i32 [ 0, %iwl_trans_txq_free.exit ], [ 0, %do.end ], [ %call111, %do.end117 ], [ 0, %if.end106.cleanup_crit_edge ], [ 0, %cleanup.critedge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_rm_aux_sta(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2080, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %aux_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62
  %1 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %aux_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp24 = icmp eq i32 %2, 255
  br i1 %cmp24, label %land.rhs30, label %if.end78

land.rhs30:                                       ; preds = %if.end
  %.b105 = load i1, ptr @iwl_mvm_rm_aux_sta.__already_done, align 1
  br i1 %.b105, label %land.rhs30.cleanup_crit_edge, label %if.then41, !prof !336

land.rhs30.cleanup_crit_edge:                     ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rm_aux_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2082, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end
  %aux_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 141
  %3 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef null, ptr noundef %aux_queue, i8 noundef zeroext 8)
  %4 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aux_sta, align 8
  %conv = trunc i32 %5 to i8
  %call82 = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end78.if.end91_crit_edge, label %do.end88

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

do.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %7, ptr noundef nonnull @.str.9) #10
  br label %if.end91

if.end91:                                         ; preds = %do.end88, %if.end78.if.end91_crit_edge
  %8 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aux_sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %11 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %11, align 4
  store i32 255, ptr %aux_sta, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then41, %land.rhs30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call82, %if.end91 ], [ -22, %if.then41 ], [ -22, %land.rhs30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_dealloc_snif_sta(ptr noundef %mvm) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %snif_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 63
  %0 = ptrtoint ptr %snif_sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snif_sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %3 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 63, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  store i32 255, ptr %snif_sta, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_add_bcast_sta(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %call1 = tail call i32 @iwl_mvm_get_wd_timeout(ptr noundef %mvm, ptr noundef %vif, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 4
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %cfg, align 4
  %5 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bcast_sta, align 8
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %1, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2125, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %12 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %17 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not = icmp eq i16 %17, 0
  br i1 %tobool.i.not, label %if.then30, label %if.end.if.end73_crit_edge

if.end.if.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then30:                                        ; preds = %if.end
  %18 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vif, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %19, label %do.end56 [
    i32 3, label %if.then30.if.then36_crit_edge
    i32 1, label %if.then30.if.then36_crit_edge225
    i32 10, label %if.then41
  ]

if.then30.if.then36_crit_edge225:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then30.if.then36_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %if.then30.if.then36_crit_edge, %if.then30.if.then36_crit_edge225
  %probe_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 143
  br label %if.end71

if.then41:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %p2p_dev_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 144
  br label %if.end71

do.end56:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2134, i32 noundef 9, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end71:                                         ; preds = %if.then41, %if.then36
  %queue.0.in.in = phi ptr [ %probe_queue, %if.then36 ], [ %p2p_dev_queue, %if.then41 ]
  %21 = ptrtoint ptr %queue.0.in.in to i32
  call void @__asan_load2_noabort(i32 %21)
  %queue.0.in = load i16, ptr %queue.0.in.in, align 2
  %queue.0 = zext i16 %queue.0.in to i32
  %shl = shl nuw i32 1, %queue.0
  %tfd_queue_msk = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 17
  %22 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tfd_queue_msk, align 4
  %or = or i32 %shl, %23
  store i32 %or, ptr %tfd_queue_msk, align 4
  %call72 = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %mvm, ptr noundef null, i32 noundef %queue.0, i16 noundef zeroext 0, ptr noundef nonnull %cfg, i32 noundef %call1)
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %if.end.if.end73_crit_edge
  %24 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp75 = icmp eq i32 %25, 1
  br i1 %cmp75, label %if.then77, label %if.end73.if.end78_crit_edge

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %26 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bss_conf, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end73.if.end78_crit_edge
  %baddr.0 = phi ptr [ %27, %if.then77 ], [ @iwl_mvm_send_add_bcast_sta._baddr, %if.end73.if.end78_crit_edge ]
  %28 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bcast_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %29)
  %cmp80 = icmp eq i32 %29, 255
  br i1 %cmp80, label %land.rhs88, label %if.end136

land.rhs88:                                       ; preds = %if.end78
  %.b218 = load i1, ptr @iwl_mvm_send_add_bcast_sta.__already_done, align 1
  br i1 %.b218, label %land.rhs88.cleanup_crit_edge, label %if.then99, !prof !336

land.rhs88.cleanup_crit_edge:                     ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then99:                                        ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_send_add_bcast_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2146, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end136:                                        ; preds = %if.end78
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %id, align 4
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %32 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %color, align 2
  %call137 = tail call fastcc i32 @iwl_mvm_add_int_sta_common(ptr noundef %mvm, ptr noundef %bcast_sta, ptr noundef %baddr.0, i16 noundef zeroext %31, i16 noundef zeroext %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end140:                                        ; preds = %if.end136
  %34 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i221 = getelementptr inbounds %struct.iwl_trans, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %trans_cfg.i221 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg.i221, align 4
  %use_tfh.i222 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %use_tfh.i222 to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i223 = load i16, ptr %use_tfh.i222, align 4
  %39 = and i16 %bf.load.i223, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.i224.not = icmp eq i16 %39, 0
  br i1 %tobool.i224.not, label %if.end140.cleanup_crit_edge, label %if.then142

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then142:                                       ; preds = %if.end140
  %40 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bcast_sta, align 4
  %conv144 = trunc i32 %41 to i8
  %call145 = tail call fastcc i32 @iwl_mvm_tvqm_enable_txq(ptr noundef %mvm, i8 noundef zeroext %conv144, i8 noundef zeroext 8, i32 noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.end152

if.then148:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bcast_sta, align 4
  %conv150 = trunc i32 %43 to i8
  %call151 = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %conv150)
  br label %cleanup

if.end152:                                        ; preds = %if.then142
  %44 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vif, align 8
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %45, label %if.end152.cleanup_crit_edge [
    i32 3, label %if.end152.if.then160_crit_edge
    i32 1, label %if.end152.if.then160_crit_edge226
    i32 10, label %if.then167
  ]

if.end152.if.then160_crit_edge226:                ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then160

if.end152.if.then160_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then160

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then160:                                       ; preds = %if.end152.if.then160_crit_edge, %if.end152.if.then160_crit_edge226
  %conv161 = trunc i32 %call145 to i16
  %probe_queue162 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 143
  %47 = ptrtoint ptr %probe_queue162 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv161, ptr %probe_queue162, align 8
  br label %cleanup

if.then167:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %conv168 = trunc i32 %call145 to i16
  %p2p_dev_queue169 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 144
  %48 = ptrtoint ptr %p2p_dev_queue169 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv168, ptr %p2p_dev_queue169, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then167, %if.then160, %if.end152.cleanup_crit_edge, %if.then148, %if.end140.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %if.then99, %land.rhs88.cleanup_crit_edge, %do.end56
  %retval.0 = phi i32 [ %call145, %if.then148 ], [ -22, %do.end56 ], [ -28, %if.then99 ], [ %call137, %if.end136.cleanup_crit_edge ], [ 0, %if.end152.cleanup_crit_edge ], [ 0, %if.then160 ], [ 0, %if.then167 ], [ 0, %if.end140.cleanup_crit_edge ], [ -28, %land.rhs88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_get_wd_timeout(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %mvm, ptr noundef readonly %sta, i32 noundef %queue, i16 noundef zeroext %ssn, ptr nocapture noundef readonly %cfg, i32 noundef %wdg_timeout) unnamed_addr #0 align 64 {
entry:
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
  %sta_id1 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 1
  %10 = ptrtoint ptr %sta_id1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sta_id1, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %0, align 1
  %tid2 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 2
  %13 = ptrtoint ptr %tid2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tid2, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %1, align 1
  %conv = trunc i32 %queue to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %2, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %3, align 1
  %aggregate3 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %aggregate3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %aggregate3, align 1, !range !337
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %4, align 1
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cfg, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %5, align 1
  %frame_limit = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 4
  %24 = ptrtoint ptr %frame_limit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_limit, align 4
  %conv5 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5, ptr %6, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %ssn)
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %7, align 1
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 0, ptr %8, align 1
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %30 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %35 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.i.not = icmp eq i16 %35, 0
  br i1 %tobool.i.not, label %if.end28, label %do.end, !prof !336

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end28:                                         ; preds = %entry
  %36 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %tid_bitmap.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %36, i32 0, i32 %queue, i32 4
  %37 = ptrtoint ptr %tid_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tid_bitmap.i, align 4
  %conv.i = zext i16 %38 to i32
  %conv1.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 1, %conv1.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %iwl_mvm_update_txq_mapping.exit.thread

iwl_mvm_update_txq_mapping.exit.thread:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %40, i32 noundef 0, ptr noundef nonnull @.str.84, i32 noundef %queue, i32 noundef %conv1.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end28
  %arrayidx.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %36, i32 0, i32 %queue
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool8.not.i = icmp eq i16 %38, 0
  %41 = trunc i32 %shl.i to i16
  %conv16.i = or i16 %38, %41
  %42 = ptrtoint ptr %tid_bitmap.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv16.i, ptr %tid_bitmap.i, align 4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %11, ptr %arrayidx.i, align 8
  br i1 %tobool8.not.i, label %if.then19.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 8
  br i1 %cmp.not.i, label %if.then19.i.if.end27.i_crit_edge, label %if.then22.i

if.then19.i.if.end27.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %conv1.i
  %44 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx23.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.then19.i.if.end27.i_crit_edge
  %.sink.i = phi i8 [ %45, %if.then22.i ], [ 0, %if.then19.i.if.end27.i_crit_edge ]
  %46 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %36, i32 0, i32 %queue, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink.i, ptr %46, align 2
  %txq_tid.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %36, i32 0, i32 %queue, i32 3
  %48 = ptrtoint ptr %txq_tid.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %14, ptr %txq_tid.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end27.i, %if.end.i.if.end29.i_crit_edge
  %tobool30.not.i = icmp eq ptr %sta, null
  br i1 %tobool30.not.i, label %if.end29.i.iwl_mvm_update_txq_mapping.exit_crit_edge, label %if.then31.i

if.end29.i.iwl_mvm_update_txq_mapping.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_update_txq_mapping.exit

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 8
  %spec.store.select.i.i = select i1 %cmp.i.i, i8 16, i8 %14
  %idxprom.i.i = zext i8 %spec.store.select.i.i to i32
  %arrayidx.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 %idxprom.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %conv32.i = trunc i32 %queue to i16
  %txq_id.i = getelementptr inbounds %struct.ieee80211_txq, ptr %50, i32 1, i32 2
  %51 = ptrtoint ptr %txq_id.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv32.i, ptr %txq_id.i, align 4
  br label %iwl_mvm_update_txq_mapping.exit

iwl_mvm_update_txq_mapping.exit:                  ; preds = %if.then31.i, %if.end29.i.iwl_mvm_update_txq_mapping.exit_crit_edge
  %52 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mvm, align 8
  %54 = ptrtoint ptr %tid_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tid_bitmap.i, align 4
  %conv41.i = zext i16 %55 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %53, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_txq_mapping, ptr noundef nonnull @.str.85, i32 noundef %queue, i32 noundef %conv41.i) #10
  br i1 %tobool8.not.i, label %if.end33, label %iwl_mvm_update_txq_mapping.exit.cleanup_crit_edge

iwl_mvm_update_txq_mapping.exit.cleanup_crit_edge: ; preds = %iwl_mvm_update_txq_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %iwl_mvm_update_txq_mapping.exit
  %56 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trans.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1191) #10
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.not.i92 = icmp eq i32 %59, 2
  br i1 %cmp.not.i92, label %iwl_trans_txq_enable_cfg.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end33
  %.b1.i = load i1, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.iwl_trans_txq_enable_cfg.exit.thread_crit_edge, label %if.then.i, !prof !336

land.rhs.i.iwl_trans_txq_enable_cfg.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_trans_txq_enable_cfg.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1193, i32 noundef 9, ptr noundef null) #10
  br label %iwl_trans_txq_enable_cfg.exit.thread

iwl_trans_txq_enable_cfg.exit.thread:             ; preds = %if.then.i, %land.rhs.i.iwl_trans_txq_enable_cfg.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %57, i32 0, i32 8
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 8
  %62 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %61, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_txq_enable_cfg, i32 noundef %63) #10
  br label %if.end38

iwl_trans_txq_enable_cfg.exit:                    ; preds = %if.end33
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %57, i32 0, i32 1
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %txq_enable.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %txq_enable.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %txq_enable.i, align 4
  %call.i = tail call zeroext i1 %67(ptr noundef %57, i32 noundef %queue, i16 noundef zeroext %ssn, ptr noundef null, i32 noundef %wdg_timeout) #10
  br i1 %call.i, label %if.then36, label %iwl_trans_txq_enable_cfg.exit.if.end38_crit_edge

iwl_trans_txq_enable_cfg.exit.if.end38_crit_edge: ; preds = %iwl_trans_txq_enable_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then36:                                        ; preds = %iwl_trans_txq_enable_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %7, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #10
  %add.i = add i16 %70, 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %add.i) #10
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %7, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %iwl_trans_txq_enable_cfg.exit.if.end38_crit_edge, %iwl_trans_txq_enable_cfg.exit.thread
  %retval.0.i9396 = phi i1 [ false, %iwl_trans_txq_enable_cfg.exit.thread ], [ true, %if.then36 ], [ false, %iwl_trans_txq_enable_cfg.exit.if.end38_crit_edge ]
  %call40 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 29, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %do.end57, !prof !336

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end57:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %cfg, align 4
  %conv59 = zext i8 %74 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 858, i32 noundef 9, ptr noundef nonnull @.str.83, i32 noundef %queue, i32 noundef %conv59) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end38.cleanup_crit_edge, %iwl_mvm_update_txq_mapping.exit.cleanup_crit_edge, %iwl_mvm_update_txq_mapping.exit.thread, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %iwl_mvm_update_txq_mapping.exit.cleanup_crit_edge ], [ %retval.0.i9396, %do.end57 ], [ %retval.0.i9396, %if.end38.cleanup_crit_edge ], [ false, %iwl_mvm_update_txq_mapping.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #10
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_tvqm_enable_txq(ptr nocapture noundef readonly %mvm, i8 noundef zeroext %sta_id, i8 noundef zeroext %tid, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %min_256_ba_txq_size = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %min_256_ba_txq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_256_ba_txq_size, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 256)
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %tid)
  %cmp1 = icmp eq i8 %tid, 8
  br i1 %cmp1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %min_txq_size = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 33
  %7 = ptrtoint ptr %min_txq_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_txq_size, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.0 = phi i32 [ %9, %if.then ], [ %6, %entry.if.end_crit_edge ]
  %tid.addr.0 = phi i8 [ 15, %if.then ], [ %tid, %entry.if.end_crit_edge ]
  %conv18 = zext i8 %sta_id to i32
  %conv19 = zext i8 %tid.addr.0 to i32
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %if.end
  %size.1 = phi i32 [ %size.0, %if.end ], [ %div, %do.end.do.body_crit_edge ]
  %10 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1227) #10
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %txq_alloc.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %txq_alloc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %txq_alloc.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end43.i

land.rhs.i:                                       ; preds = %do.body
  %.b2.i = load i1, ptr @iwl_trans_txq_alloc.__already_done, align 1
  br i1 %.b2.i, label %land.rhs.i.do.end_crit_edge, label %if.then.i, !prof !336

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_txq_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1229, i32 noundef 9, ptr noundef null) #10
  br label %do.end

if.end43.i:                                       ; preds = %do.body
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 2
  br i1 %cmp.not.i, label %iwl_trans_txq_alloc.exit, label %land.rhs51.i

land.rhs51.i:                                     ; preds = %if.end43.i
  %.b1181.i = load i1, ptr @iwl_trans_txq_alloc.__already_done.88, align 1
  br i1 %.b1181.i, label %land.rhs51.i.do.end102.i_crit_edge, label %if.then62.i, !prof !336

land.rhs51.i.do.end102.i_crit_edge:               ; preds = %land.rhs51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102.i

if.then62.i:                                      ; preds = %land.rhs51.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_txq_alloc.__already_done.88, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1232, i32 noundef 9, ptr noundef null) #10
  br label %do.end102.i

do.end102.i:                                      ; preds = %if.then62.i, %land.rhs51.i.do.end102.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_txq_alloc, i32 noundef %21) #10
  br label %do.end

iwl_trans_txq_alloc.exit:                         ; preds = %if.end43.i
  %call.i = tail call i32 %15(ptr noundef %11, i16 noundef zeroext 256, i8 noundef zeroext %sta_id, i8 noundef zeroext %tid.addr.0, i32 noundef 29, i32 noundef %size.1, i32 noundef %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %iwl_trans_txq_alloc.exit.do.end_crit_edge, label %do.end36

iwl_trans_txq_alloc.exit.do.end_crit_edge:        ; preds = %iwl_trans_txq_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %iwl_trans_txq_alloc.exit.do.end_crit_edge, %do.end102.i, %if.then.i, %land.rhs.i.do.end_crit_edge
  %retval.0.i70 = phi i32 [ %call.i, %iwl_trans_txq_alloc.exit.do.end_crit_edge ], [ -524, %land.rhs.i.do.end_crit_edge ], [ -524, %if.then.i ], [ -5, %do.end102.i ]
  %22 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tvqm_enable_txq, ptr noundef nonnull @.str.86, i32 noundef %size.1, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %retval.0.i70) #10
  %div = sdiv i32 %size.1, 2
  %cmp26 = icmp sgt i32 %size.1, 31
  br i1 %cmp26, label %do.end.do.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end36:                                         ; preds = %iwl_trans_txq_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tvqm_enable_txq, ptr noundef nonnull @.str.87, i32 noundef %call.i, i32 noundef %conv18, i32 noundef %conv19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end.cleanup_crit_edge
  %retval.0.i69 = phi i32 [ %call.i, %do.end36 ], [ %retval.0.i70, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0.i69
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_rm_bcast_sta(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end.i_crit_edge, label %land.rhs

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2217, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !338

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2183, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %bcast_sta.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %call25.i = tail call i32 @iwl_mvm_flush_sta(ptr noundef %mvm, ptr noundef %bcast_sta.i, i1 noundef zeroext true) #10
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vif, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %2, label %do.end39.i [
    i32 3, label %if.end.i.sw.bb.i_crit_edge
    i32 1, label %if.end.i.sw.bb.i_crit_edge42
    i32 10, label %sw.bb26.i
  ]

if.end.i.sw.bb.i_crit_edge42:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge42
  %probe_queue.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 143
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %p2p_dev_queue.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 144
  br label %sw.epilog.i

do.end39.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2197, i32 noundef 9, ptr noundef nonnull @.str.89, i32 noundef %2) #10
  br label %iwl_mvm_free_bcast_sta_queues.exit

sw.epilog.i:                                      ; preds = %sw.bb26.i, %sw.bb.i
  %queueptr.0.i = phi ptr [ %p2p_dev_queue.i, %sw.bb26.i ], [ %probe_queue.i, %sw.bb.i ]
  %4 = ptrtoint ptr %queueptr.0.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queueptr.0.i, align 2
  %6 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef null, ptr noundef %queueptr.0.i, i8 noundef zeroext 8) #10
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %7 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %12 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i = icmp eq i16 %12, 0
  br i1 %tobool.i.not.i, label %if.end57.i, label %sw.epilog.i.iwl_mvm_free_bcast_sta_queues.exit_crit_edge

sw.epilog.i.iwl_mvm_free_bcast_sta_queues.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_free_bcast_sta_queues.exit

if.end57.i:                                       ; preds = %sw.epilog.i
  %tfd_queue_msk.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 17
  %13 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tfd_queue_msk.i, align 8
  %conv.i = zext i16 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %14, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool60.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool60.not.i, label %do.end78.i, label %if.end57.i.if.end84.i_crit_edge, !prof !338

if.end57.i.if.end84.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

do.end78.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2206, i32 noundef 9, ptr noundef null) #10
  br label %if.end84.i

if.end84.i:                                       ; preds = %do.end78.i, %if.end57.i.if.end84.i_crit_edge
  %neg.i = xor i32 %shl.i, -1
  %15 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tfd_queue_msk.i, align 8
  %and96.i = and i32 %16, %neg.i
  store i32 %and96.i, ptr %tfd_queue_msk.i, align 8
  br label %iwl_mvm_free_bcast_sta_queues.exit

iwl_mvm_free_bcast_sta_queues.exit:               ; preds = %if.end84.i, %sw.epilog.i.iwl_mvm_free_bcast_sta_queues.exit_crit_edge, %do.end39.i
  %17 = ptrtoint ptr %bcast_sta.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bcast_sta.i, align 8
  %conv = trunc i32 %18 to i8
  %call25 = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %iwl_mvm_free_bcast_sta_queues.exit.if.end34_crit_edge, label %do.end31

iwl_mvm_free_bcast_sta_queues.exit.if.end34_crit_edge: ; preds = %iwl_mvm_free_bcast_sta_queues.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end31:                                         ; preds = %iwl_mvm_free_bcast_sta_queues.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %20, ptr noundef nonnull @.str.9) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %iwl_mvm_free_bcast_sta_queues.exit.if.end34_crit_edge
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_alloc_bcast_sta(ptr noundef %mvm, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2231, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %3 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p2p.i, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.if.end.i.i_crit_edge, label %if.then.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  %5 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %2, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %2, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i30 = icmp eq i32 %8, 0
  br i1 %tobool.not.i30, label %ieee80211_vif_type_p2p.exit.if.then.i_crit_edge, label %lor.lhs.false.i

ieee80211_vif_type_p2p.exit.if.then.i_crit_edge:  ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %ieee80211_vif_type_p2p.exit
  %9 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bcast_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %10)
  %cmp.i = icmp eq i32 %10, 255
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end44.i_crit_edge

lor.lhs.false.i.if.end44.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %ieee80211_vif_type_p2p.exit.if.then.i_crit_edge
  %call1.i = tail call fastcc i32 @iwl_mvm_find_free_sta_id(ptr noundef %mvm, i32 noundef %retval.0.i.i) #10
  %11 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i, ptr %bcast_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1.i)
  %cmp4.i = icmp eq i32 %call1.i, 255
  br i1 %cmp4.i, label %land.rhs.i, label %if.then.i.if.end44.i_crit_edge

if.then.i.if.end44.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b81.i = load i1, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  br i1 %.b81.i, label %land.rhs.i.iwl_mvm_allocate_int_sta.exit_crit_edge, label %if.then12.i, !prof !336

land.rhs.i.iwl_mvm_allocate_int_sta.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_allocate_int_sta.exit

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1933, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_allocate_int_sta.exit

if.end44.i:                                       ; preds = %if.then.i.if.end44.i_crit_edge, %lor.lhs.false.i.if.end44.i_crit_edge
  %tfd_queue_msk.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 17
  %12 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tfd_queue_msk.i, align 4
  %type45.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 13
  %13 = ptrtoint ptr %type45.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type45.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !343
  %14 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bcast_sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %iwl_mvm_allocate_int_sta.exit

iwl_mvm_allocate_int_sta.exit:                    ; preds = %if.end44.i, %if.then12.i, %land.rhs.i.iwl_mvm_allocate_int_sta.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end44.i ], [ -28, %if.then12.i ], [ -28, %land.rhs.i.iwl_mvm_allocate_int_sta.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_add_p2p_bcast_sta(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2251, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call25 = tail call i32 @iwl_mvm_alloc_bcast_sta(ptr noundef %mvm, ptr noundef %vif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %call29 = tail call i32 @iwl_mvm_send_add_bcast_sta(ptr noundef %mvm, ptr noundef %vif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bcast_sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %4 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  store i32 255, ptr %bcast_sta, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end.cleanup_crit_edge ], [ %call29, %if.then31 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_dealloc_bcast_sta(ptr noundef %mvm, ptr nocapture noundef %vif) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %0 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bcast_sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %3 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  store i32 255, ptr %bcast_sta, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_rm_p2p_bcast_sta(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2280, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call i32 @iwl_mvm_send_rm_bcast_sta(ptr noundef %mvm, ptr noundef %vif)
  %bcast_sta.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %1 = ptrtoint ptr %bcast_sta.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bcast_sta.i, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr null, ptr %arrayidx.i.i, align 4
  %4 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  store i32 255, ptr %bcast_sta.i, align 4
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_add_mcast_sta(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 4
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  %conv = select i1 %cmp, i8 5, i8 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %cfg, align 4
  %7 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mcast_sta, align 4
  %conv2 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %0, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %1, align 2
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %3, align 4
  %call3 = tail call i32 @iwl_mvm_get_wd_timeout(ptr noundef %mvm, ptr noundef %vif, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not = icmp eq i32 %call.i, 0
  br i1 %cmp5.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2314, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif, align 8
  %16 = and i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %.not = icmp eq i32 %16, 1
  br i1 %.not, label %if.end70, label %do.end54, !prof !336

do.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2317, i32 noundef 9, ptr noundef null) #10
  br label %cleanup110

if.end70:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp72 = icmp eq i32 %15, 1
  br i1 %cmp72, label %if.then74, label %if.end70.if.end75_crit_edge

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %cab_queue = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %17 = ptrtoint ptr %cab_queue to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %cab_queue, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70.if.end75_crit_edge
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %18 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %23 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.not = icmp eq i16 %23, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end75.if.end85_crit_edge

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end75
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %25, i32 0, i32 5, i32 7
  %26 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_api.i, align 4
  %28 = and i32 %27, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i150.not = icmp eq i32 %28, 0
  br i1 %tobool.i150.not, label %land.lhs.true.if.end85_crit_edge, label %if.then79

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %cab_queue80 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %29 = ptrtoint ptr %cab_queue80 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cab_queue80, align 2
  %conv81 = zext i16 %30 to i32
  %call82 = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %mvm, ptr noundef null, i32 noundef %conv81, i16 noundef zeroext 0, ptr noundef nonnull %cfg, i32 noundef %call3)
  %31 = ptrtoint ptr %cab_queue80 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cab_queue80, align 2
  %conv84 = zext i16 %32 to i32
  %shl = shl nuw i32 1, %conv84
  %tfd_queue_msk = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 29
  %33 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tfd_queue_msk, align 4
  %or = or i32 %shl, %34
  store i32 %or, ptr %tfd_queue_msk, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %land.lhs.true.if.end85_crit_edge, %if.end75.if.end85_crit_edge
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %id, align 4
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %37 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %color, align 2
  %call86 = tail call fastcc i32 @iwl_mvm_add_int_sta_common(ptr noundef %mvm, ptr noundef %mcast_sta, ptr noundef nonnull @iwl_mvm_add_mcast_sta._maddr, i16 noundef zeroext %36, i16 noundef zeroext %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.err_crit_edge

if.end85.err_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end89:                                         ; preds = %if.end85
  %39 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i152 = getelementptr inbounds %struct.iwl_trans, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %trans_cfg.i152 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trans_cfg.i152, align 4
  %use_tfh.i153 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %use_tfh.i153 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i154 = load i16, ptr %use_tfh.i153, align 4
  %44 = and i16 %bf.load.i154, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.i155.not = icmp eq i16 %44, 0
  br i1 %tobool.i155.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %if.end89
  %45 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mcast_sta, align 4
  %conv93 = trunc i32 %46 to i8
  %call94 = tail call fastcc i32 @iwl_mvm_tvqm_enable_txq(ptr noundef %mvm, i8 noundef zeroext %conv93, i8 noundef zeroext 0, i32 noundef %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then91.err_crit_edge, label %cleanup.thread

if.then91.err_crit_edge:                          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

cleanup.thread:                                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %conv99 = trunc i32 %call94 to i16
  %cab_queue100 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %47 = ptrtoint ptr %cab_queue100 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv99, ptr %cab_queue100, align 2
  br label %cleanup110

if.else:                                          ; preds = %if.end89
  %fw101 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %48 = ptrtoint ptr %fw101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw101, align 8
  %_api.i156 = getelementptr inbounds %struct.iwl_fw, ptr %49, i32 0, i32 5, i32 7
  %50 = ptrtoint ptr %_api.i156 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %_api.i156, align 4
  %52 = and i32 %51, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i157.not = icmp eq i32 %52, 0
  br i1 %tobool.i157.not, label %if.then104, label %if.else.cleanup110_crit_edge

if.else.cleanup110_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup110

if.then104:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %cab_queue105 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %53 = ptrtoint ptr %cab_queue105 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %cab_queue105, align 2
  %conv106 = zext i16 %54 to i32
  %call107 = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %mvm, ptr noundef null, i32 noundef %conv106, i16 noundef zeroext 0, ptr noundef nonnull %cfg, i32 noundef %call3)
  br label %cleanup110

err:                                              ; preds = %if.then91.err_crit_edge, %if.end85.err_crit_edge
  %ret.1 = phi i32 [ %call86, %if.end85.err_crit_edge ], [ %call94, %if.then91.err_crit_edge ]
  %55 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mcast_sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %56
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %58 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 25
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 0, ptr %58, align 4
  store i32 255, ptr %mcast_sta, align 4
  br label %cleanup110

cleanup110:                                       ; preds = %err, %if.then104, %if.else.cleanup110_crit_edge, %cleanup.thread, %do.end54
  %retval.0 = phi i32 [ -524, %do.end54 ], [ %ret.1, %err ], [ 0, %if.else.cleanup110_crit_edge ], [ 0, %if.then104 ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_rm_mcast_sta(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2433, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %mcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 21
  %call25 = tail call i32 @iwl_mvm_flush_sta(ptr noundef %mvm, ptr noundef %mcast_sta, i1 noundef zeroext true) #10
  %cab_queue = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %1 = tail call fastcc i32 @iwl_mvm_disable_txq(ptr noundef %mvm, ptr noundef null, ptr noundef %cab_queue, i8 noundef zeroext 0)
  %2 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcast_sta, align 4
  %conv = trunc i32 %3 to i8
  %call28 = tail call fastcc i32 @iwl_mvm_rm_sta_common(ptr noundef %mvm, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end.if.end37_crit_edge, label %do.end34

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %5, ptr noundef nonnull @.str.9) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.end.if.end37_crit_edge
  ret i32 %call28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sta_rx_agg(ptr noundef %mvm, ptr nocapture noundef %sta, i32 noundef %tid, i16 noundef zeroext %ssn, i1 noundef zeroext %start, i16 noundef zeroext %buf_size, i16 noundef zeroext %timeout) local_unnamed_addr #0 align 64 {
entry:
  %notif.i.i = alloca %struct.iwl_mvm_delba_data, align 4
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %status, align 4, !annotation !335
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i495 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i495)
  %cmp.not = icmp eq i32 %call.i495, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2538, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %start, label %land.lhs.true, label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fw.i533 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %3 = ptrtoint ptr %fw.i533 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw.i533, align 8
  %arrayidx.i.i.i534 = getelementptr %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 8, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i.i534 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i534, align 4
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end
  %rx_ba_sessions = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 45
  %7 = ptrtoint ptr %rx_ba_sessions to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_ba_sessions, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %8)
  %cmp26 = icmp ugt i8 %8, 15
  br i1 %cmp26, label %do.end32, label %if.end35

do.end32:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %10, ptr noundef nonnull @.str.11) #10
  br label %cleanup404

if.end35:                                         ; preds = %land.lhs.true
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %12, i32 0, i32 5, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not = icmp ne i32 %15, 0
  %16 = and i1 %tobool.i.i.not, %start
  br i1 %16, label %if.then41, label %if.end35.if.end59_crit_edge

if.end35.if.end59_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then41:                                        ; preds = %if.end35
  %mul = shl i16 %buf_size, 6
  %add = add i16 %mul, 127
  %and = and i16 %add, -128
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_rx_queues, align 8
  %conv49 = zext i8 %20 to i32
  %conv50 = zext i16 %and to i32
  %mul51 = mul nuw nsw i32 %conv49, %conv50
  %add52 = add nuw nsw i32 %mul51, 2176
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add52, i32 noundef 3520) #13
  %tobool54.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool54.not, label %if.then41.cleanup404_crit_edge, label %if.end56

if.then41.cleanup404_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup404

if.end56:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %div494 = lshr exact i16 %and, 6
  %entries_per_queue = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %call9.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %entries_per_queue to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %div494, ptr %entries_per_queue, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.end56, %if.end35.if.end59_crit_edge, %if.end35.thread
  %fw.i536 = phi ptr [ %fw.i, %if.end35.if.end59_crit_edge ], [ %fw.i, %if.end56 ], [ %fw.i533, %if.end35.thread ]
  %baid_data.0 = phi ptr [ null, %if.end35.if.end59_crit_edge ], [ %call9.i.i, %if.end56 ], [ null, %if.end35.thread ]
  %mac_id_n_color = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac_id_n_color, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %mac_id_n_color60 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %mac_id_n_color60 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %mac_id_n_color60, align 1
  %26 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drv_priv.i, align 8
  %conv61 = trunc i32 %27 to i8
  %sta_id62 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %28 = ptrtoint ptr %sta_id62 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv61, ptr %sta_id62, align 1
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %cmd, align 1
  %conv65 = trunc i32 %tid to i8
  br i1 %start, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %add_immediate_ba_tid = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 11
  %30 = ptrtoint ptr %add_immediate_ba_tid to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv65, ptr %add_immediate_ba_tid, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %ssn)
  %add_immediate_ba_ssn = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 13
  %32 = ptrtoint ptr %add_immediate_ba_ssn to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %add_immediate_ba_ssn, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %buf_size)
  %rx_ba_window = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 20
  %34 = ptrtoint ptr %rx_ba_window to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %rx_ba_window, align 1
  br label %if.end67

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %remove_immediate_ba_tid = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 12
  %35 = ptrtoint ptr %remove_immediate_ba_tid to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv65, ptr %remove_immediate_ba_tid, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then64
  %cond = phi i8 [ 16, %if.else ], [ 8, %if.then64 ]
  %modify_mask = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 7
  %36 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %cond, ptr %modify_mask, align 1
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %status, align 4
  %38 = ptrtoint ptr %fw.i536 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw.i536, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %39, i32 0, i32 5, i32 8, i32 2
  %40 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %42 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %if.end67.iwl_mvm_add_sta_cmd_size.exit_crit_edge

if.end67.iwl_mvm_add_sta_cmd_size.exit_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %39, i32 0, i32 5, i32 7
  %43 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_api.i.i, align 4
  %45 = and i32 %44, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i = icmp eq i32 %45, 0
  %spec.select.i = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %if.end67.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i496 = phi i16 [ 48, %if.end67.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call73 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 24, i16 noundef zeroext %retval.0.i496, ptr noundef nonnull %cmd, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %iwl_mvm_add_sta_cmd_size.exit.out_free_crit_edge

iwl_mvm_add_sta_cmd_size.exit.out_free_crit_edge: ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end76:                                         ; preds = %iwl_mvm_add_sta_cmd_size.exit
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  %trunc = trunc i32 %47 to i8
  %48 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %trunc, label %sw.default [
    i8 1, label %if.end108
    i8 4, label %do.end92
  ]

do.end92:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mvm, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %50, ptr noundef nonnull @.str.15) #10
  br label %out_free

sw.default:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mvm, align 8
  %cond103 = select i1 %start, ptr @.str.13, ptr @.str.14
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond103, i32 noundef %47) #10
  br label %out_free

if.end108:                                        ; preds = %if.end76
  %53 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mvm, align 8
  %cond85 = select i1 %start, ptr @.str.13, ptr @.str.14
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %54, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_rx_agg, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond85) #10
  br i1 %start, label %if.then110, label %if.else272

if.then110:                                       ; preds = %if.end108
  %rx_ba_sessions111 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 45
  %55 = ptrtoint ptr %rx_ba_sessions111 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rx_ba_sessions111, align 4
  %inc = add i8 %56, 1
  store i8 %inc, ptr %rx_ba_sessions111, align 4
  %57 = ptrtoint ptr %fw.i536 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i536, align 8
  %arrayidx.i.i.i498 = getelementptr %struct.iwl_fw, ptr %58, i32 0, i32 5, i32 8, i32 2
  %59 = ptrtoint ptr %arrayidx.i.i.i498 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i.i.i498, align 4
  %61 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.i499.not = icmp eq i32 %61, 0
  br i1 %tobool.i.i499.not, label %if.then110.cleanup404_crit_edge, label %if.end114

if.then110.cleanup404_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup404

if.end114:                                        ; preds = %if.then110
  %62 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %status, align 4
  %and116 = and i32 %63, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %cleanup269, label %if.end151, !prof !338

if.end151:                                        ; preds = %if.end114
  %and152 = lshr i32 %63, 8
  %64 = trunc i32 %and152 to i8
  %conv153 = and i8 %64, 127
  %baid154 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 3
  %65 = ptrtoint ptr %baid154 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv153, ptr %baid154, align 2
  %timeout155 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 4
  %66 = ptrtoint ptr %timeout155 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %timeout, ptr %timeout155, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 6
  %68 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %last_rx, align 16
  %idxprom = zext i8 %conv153 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 167, i32 %idxprom
  %rcu_ptr = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 8
  %69 = ptrtoint ptr %rcu_ptr to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx, ptr %rcu_ptr, align 4
  %session_timer = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 7
  call void @init_timer_key(ptr noundef %session_timer, ptr noundef nonnull @iwl_mvm_rx_agg_session_expired, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @iwl_mvm_sta_rx_agg.__key) #10
  %mvm159 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 9
  %70 = ptrtoint ptr %mvm159 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %mvm, ptr %mvm159, align 8
  %conv160 = trunc i32 %tid to i8
  %tid161 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 2
  %71 = ptrtoint ptr %tid161 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv160, ptr %tid161, align 1
  %72 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %drv_priv.i, align 8
  %conv163 = trunc i32 %73 to i8
  %sta_id164 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 1
  %74 = ptrtoint ptr %sta_id164 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv163, ptr %sta_id164, align 8
  %arrayidx165 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 11, i32 %tid
  %75 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv153, ptr %arrayidx165, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %timeout)
  %tobool166.not = icmp eq i16 %timeout, 0
  br i1 %tobool166.not, label %if.end151.if.end175_crit_edge, label %if.then167

if.end151.if.end175_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

if.then167:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %conv169 = zext i16 %timeout to i32
  %mul171 = shl nuw nsw i32 %conv169, 11
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %mul171) #10
  %add173 = add i32 %call3.i, %76
  %call174 = call i32 @mod_timer(ptr noundef %session_timer, i32 noundef %add173) #10
  br label %if.end175

if.end175:                                        ; preds = %if.then167, %if.end151.if.end175_crit_edge
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %77 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %trans.i, align 4
  %num_rx_queues41.i = getelementptr inbounds %struct.iwl_trans, ptr %78, i32 0, i32 25
  %79 = ptrtoint ptr %num_rx_queues41.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_rx_queues41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp43.not.i = icmp eq i8 %80, 0
  br i1 %cmp43.not.i, label %if.end175.iwl_mvm_init_reorder_buffer.exit_crit_edge, label %for.body.lr.ph.i

if.end175.iwl_mvm_init_reorder_buffer.exit_crit_edge: ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_init_reorder_buffer.exit

for.body.lr.ph.i:                                 ; preds = %if.end175
  %entries_per_queue.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc19.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i
  %81 = ptrtoint ptr %entries_per_queue.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %entries_per_queue.i, align 2
  %conv4.i = zext i16 %82 to i32
  %mul.i = mul i32 %i.044.i, %conv4.i
  %arrayidx5.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 12, i32 %mul.i
  %num_stored.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i, i32 1
  %83 = ptrtoint ptr %num_stored.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %num_stored.i, align 2
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %ssn, ptr %arrayidx.i, align 128
  %buf_size6.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i, i32 2
  %85 = ptrtoint ptr %buf_size6.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %buf_size, ptr %buf_size6.i, align 4
  %reorder_timer.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i, i32 6
  call void @init_timer_key(ptr noundef %reorder_timer.i, ptr noundef nonnull @iwl_mvm_reorder_timer_expired, i32 noundef 0, ptr noundef nonnull @.str.91, ptr noundef nonnull @iwl_mvm_init_reorder_buffer.__key) #10
  %lock.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @iwl_mvm_init_reorder_buffer.__key.92, i16 noundef signext 3) #10
  %mvm10.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i, i32 10
  %86 = ptrtoint ptr %mvm10.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %mvm, ptr %mvm10.i, align 16
  %queue.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i, i32 3
  %87 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %i.044.i, ptr %queue.i, align 8
  %valid.i = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data.0, i32 0, i32 11, i32 %i.044.i, i32 8
  %88 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %valid.i, align 1
  %89 = ptrtoint ptr %buf_size6.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %buf_size6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp1439.not.i = icmp eq i16 %90, 0
  br i1 %cmp1439.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body16.i_crit_edge

for.body.i.for.body16.i_crit_edge:                ; preds = %for.body.i
  br label %for.body16.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body.i.for.body16.i_crit_edge
  %j.040.i = phi i32 [ %inc.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.body.i.for.body16.i_crit_edge ]
  %arrayidx17.i = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx5.i, i32 %j.040.i
  %91 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %arrayidx17.i, ptr %arrayidx17.i, align 64
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %arrayidx17.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx17.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx17.i, i32 0, i32 1
  %93 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %qlen.i.i, align 8
  %inc.i = add nuw nsw i32 %j.040.i, 1
  %94 = ptrtoint ptr %buf_size6.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %buf_size6.i, align 4
  %conv13.i = zext i16 %95 to i32
  %cmp14.i = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp14.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.for.end.i_crit_edge

for.body16.i.for.end.i_crit_edge:                 ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i

for.end.i:                                        ; preds = %for.body16.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %inc19.i = add nuw nsw i32 %i.044.i, 1
  %96 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %trans.i, align 4
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %97, i32 0, i32 25
  %98 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %num_rx_queues.i, align 8
  %conv.i = zext i8 %99 to i32
  %cmp.i500 = icmp ult i32 %inc19.i, %conv.i
  br i1 %cmp.i500, label %for.end.i.for.body.i_crit_edge, label %for.end.i.iwl_mvm_init_reorder_buffer.exit_crit_edge

for.end.i.iwl_mvm_init_reorder_buffer.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_init_reorder_buffer.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

iwl_mvm_init_reorder_buffer.exit:                 ; preds = %for.end.i.iwl_mvm_init_reorder_buffer.exit_crit_edge, %if.end175.iwl_mvm_init_reorder_buffer.exit_crit_edge
  %100 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mvm, align 8
  %102 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %drv_priv.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %101, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_rx_agg, ptr noundef nonnull @.str.18, i32 noundef %103, i32 noundef %tid, i32 noundef %idxprom) #10
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %arrayidx, align 4
  %tobool194.not = icmp eq ptr %105, null
  br i1 %tobool194.not, label %iwl_mvm_init_reorder_buffer.exit.cleanup269.thread527_crit_edge, label %do.end210, !prof !336

iwl_mvm_init_reorder_buffer.exit.cleanup269.thread527_crit_edge: ; preds = %iwl_mvm_init_reorder_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup269.thread527

do.end210:                                        ; preds = %iwl_mvm_init_reorder_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2663, i32 noundef 9, ptr noundef null) #10
  br label %cleanup269.thread527

cleanup269.thread527:                             ; preds = %do.end210, %iwl_mvm_init_reorder_buffer.exit.cleanup269.thread527_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !344
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %baid_data.0, ptr %arrayidx, align 4
  br label %cleanup404

cleanup269:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2633, i32 noundef 9, ptr noundef null) #10
  br label %out_free

if.else272:                                       ; preds = %if.end108
  %arrayidx275 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 11, i32 %tid
  %107 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx275, align 1
  %rx_ba_sessions276 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 45
  %109 = ptrtoint ptr %rx_ba_sessions276 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %rx_ba_sessions276, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp278.not = icmp eq i8 %110, 0
  br i1 %cmp278.not, label %if.else272.if.end282_crit_edge, label %if.then280

if.else272.if.end282_crit_edge:                   ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.then280:                                       ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i8 %110, -1
  %111 = ptrtoint ptr %rx_ba_sessions276 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %dec, ptr %rx_ba_sessions276, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.then280, %if.else272.if.end282_crit_edge
  %112 = ptrtoint ptr %fw.i536 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fw.i536, align 8
  %arrayidx.i.i.i502 = getelementptr %struct.iwl_fw, ptr %113, i32 0, i32 5, i32 8, i32 2
  %114 = ptrtoint ptr %arrayidx.i.i.i502 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %arrayidx.i.i.i502, align 4
  %116 = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.i.i503.not = icmp eq i32 %116, 0
  br i1 %tobool.i.i503.not, label %if.end282.cleanup404_crit_edge, label %if.end285

if.end282.cleanup404_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup404

if.end285:                                        ; preds = %if.end282
  %conv287 = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %108)
  %cmp288 = icmp eq i8 %108, 127
  br i1 %cmp288, label %do.end305, label %if.end321, !prof !338

do.end305:                                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2674, i32 noundef 9, ptr noundef null) #10
  br label %cleanup404

if.end321:                                        ; preds = %if.end285
  %arrayidx328 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 167, i32 %conv287
  %117 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %arrayidx328, align 4
  %tobool331.not = icmp eq ptr %118, null
  br i1 %tobool331.not, label %do.end349, label %if.end365, !prof !338

do.end349:                                        ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2678, i32 noundef 9, ptr noundef null) #10
  br label %cleanup404

if.end365:                                        ; preds = %if.end321
  %baid.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %baid.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %baid.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %notif.i.i) #10
  %conv.i.i = zext i8 %120 to i32
  %121 = ptrtoint ptr %notif.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv.i.i, ptr %notif.i.i, align 4
  call void @iwl_mvm_sync_rx_queues_internal(ptr noundef %mvm, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull %notif.i.i, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %notif.i.i) #10
  %trans.i504 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %122 = ptrtoint ptr %trans.i504 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %trans.i504, align 4
  %num_rx_queues62.i = getelementptr inbounds %struct.iwl_trans, ptr %123, i32 0, i32 25
  %124 = ptrtoint ptr %num_rx_queues62.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %num_rx_queues62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp64.not.i = icmp eq i8 %125, 0
  br i1 %cmp64.not.i, label %if.end365.cleanup400_crit_edge, label %for.body.lr.ph.i506

if.end365.cleanup400_crit_edge:                   ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup400

for.body.lr.ph.i506:                              ; preds = %if.end365
  %entries_per_queue.i505 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 5
  br label %for.body.i512

for.body.i512:                                    ; preds = %cleanup.i.for.body.i512_crit_edge, %for.body.lr.ph.i506
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i506 ], [ %inc41.i, %cleanup.i.for.body.i512_crit_edge ]
  %126 = ptrtoint ptr %entries_per_queue.i505 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %entries_per_queue.i505, align 2
  %conv4.i507 = zext i16 %127 to i32
  %mul.i508 = mul i32 %i.065.i, %conv4.i507
  %arrayidx5.i509 = getelementptr %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 12, i32 %mul.i508
  %lock.i510 = getelementptr %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 11, i32 %i.065.i, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %lock.i510) #10
  %num_stored.i511 = getelementptr %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 11, i32 %i.065.i, i32 1
  %128 = ptrtoint ptr %num_stored.i511 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %num_stored.i511, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool.not.i = icmp eq i16 %129, 0
  br i1 %tobool.not.i, label %if.then.i513, label %do.end.i, !prof !336

if.then.i513:                                     ; preds = %for.body.i512
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i510) #10
  br label %cleanup.i

do.end.i:                                         ; preds = %for.body.i512
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2483, i32 noundef 9, ptr noundef null) #10
  %buf_size.i = getelementptr %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 11, i32 %i.065.i, i32 2
  %130 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %buf_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp3360.not.i = icmp eq i16 %131, 0
  br i1 %cmp3360.not.i, label %do.end.i.for.end.i518_crit_edge, label %do.end.i.for.body35.i_crit_edge

do.end.i.for.body35.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body35.i

do.end.i.for.end.i518_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i518

for.body35.i:                                     ; preds = %__skb_queue_purge.exit.i.for.body35.i_crit_edge, %do.end.i.for.body35.i_crit_edge
  %j.061.i = phi i32 [ %inc.i515, %__skb_queue_purge.exit.i.for.body35.i_crit_edge ], [ 0, %do.end.i.for.body35.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx5.i509, i32 %j.061.i
  %132 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx36.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %133, %arrayidx36.i
  %tobool.not.i13.i.i = icmp eq ptr %133, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %for.body35.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.lr.ph.i.i

for.body35.i.__skb_queue_purge.exit.i_crit_edge:  ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit.i

while.body.lr.ph.i.i:                             ; preds = %for.body35.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx36.i, i32 0, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %134 = phi ptr [ %133, %while.body.lr.ph.i.i ], [ %144, %while.body.i.i.while.body.i.i_crit_edge ]
  %135 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i514 = add i32 %136, -1
  store volatile i32 %sub.i.i.i.i514, ptr %qlen.i.i.i.i, align 4
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %134, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %134, i32 0, i32 1
  %139 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %134, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %138, i32 0, i32 1
  %141 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %140, ptr %prev17.i.i.i.i, align 4
  %142 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %138, ptr %140, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %134, i32 noundef 0) #10
  %143 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx36.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %144, %arrayidx36.i
  %tobool.not.i1.i.i = icmp eq ptr %144, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.__skb_queue_purge.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit.i

__skb_queue_purge.exit.i:                         ; preds = %while.body.i.i.__skb_queue_purge.exit.i_crit_edge, %for.body35.i.__skb_queue_purge.exit.i_crit_edge
  %inc.i515 = add nuw nsw i32 %j.061.i, 1
  %145 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %buf_size.i, align 4
  %conv32.i = zext i16 %146 to i32
  %cmp33.i = icmp ult i32 %inc.i515, %conv32.i
  br i1 %cmp33.i, label %__skb_queue_purge.exit.i.for.body35.i_crit_edge, label %__skb_queue_purge.exit.i.for.end.i518_crit_edge

__skb_queue_purge.exit.i.for.end.i518_crit_edge:  ; preds = %__skb_queue_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i518

__skb_queue_purge.exit.i.for.body35.i_crit_edge:  ; preds = %__skb_queue_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35.i

for.end.i518:                                     ; preds = %__skb_queue_purge.exit.i.for.end.i518_crit_edge, %do.end.i.for.end.i518_crit_edge
  %removed.i = getelementptr %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 11, i32 %i.065.i, i32 7
  %147 = ptrtoint ptr %removed.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %removed.i, align 64
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i510) #10
  %reorder_timer.i516 = getelementptr %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 11, i32 %i.065.i, i32 6
  %call.i517 = call i32 @del_timer_sync(ptr noundef %reorder_timer.i516) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end.i518, %if.then.i513
  %inc41.i = add nuw nsw i32 %i.065.i, 1
  %148 = ptrtoint ptr %trans.i504 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %trans.i504, align 4
  %num_rx_queues.i519 = getelementptr inbounds %struct.iwl_trans, ptr %149, i32 0, i32 25
  %150 = ptrtoint ptr %num_rx_queues.i519 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %num_rx_queues.i519, align 8
  %conv.i520 = zext i8 %151 to i32
  %cmp.i521 = icmp ult i32 %inc41.i, %conv.i520
  br i1 %cmp.i521, label %cleanup.i.for.body.i512_crit_edge, label %cleanup.i.cleanup400_crit_edge

cleanup.i.cleanup400_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup400

cleanup.i.for.body.i512_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i512

cleanup400:                                       ; preds = %cleanup.i.cleanup400_crit_edge, %if.end365.cleanup400_crit_edge
  %session_timer366 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %118, i32 0, i32 7
  %call367 = call i32 @del_timer_sync(ptr noundef %session_timer366) #10
  %152 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr null, ptr %arrayidx328, align 4
  call void @kvfree_call_rcu(ptr noundef nonnull %118, ptr noundef null) #10
  %153 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %154, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_rx_agg, ptr noundef nonnull @.str.19, i32 noundef %conv287) #10
  call void @iwl_mvm_sync_rx_queues_internal(ptr noundef %mvm, i32 noundef 0, i1 noundef zeroext true, ptr noundef null, i32 noundef 0) #10
  br label %cleanup404

out_free:                                         ; preds = %cleanup269, %sw.default, %do.end92, %iwl_mvm_add_sta_cmd_size.exit.out_free_crit_edge
  %ret.2 = phi i32 [ %call73, %iwl_mvm_add_sta_cmd_size.exit.out_free_crit_edge ], [ -22, %cleanup269 ], [ -28, %do.end92 ], [ -5, %sw.default ]
  call void @kfree(ptr noundef %baid_data.0) #10
  br label %cleanup404

cleanup404:                                       ; preds = %out_free, %cleanup400, %do.end349, %do.end305, %if.end282.cleanup404_crit_edge, %cleanup269.thread527, %if.then110.cleanup404_crit_edge, %if.then41.cleanup404_crit_edge, %do.end32
  %retval.4 = phi i32 [ -28, %do.end32 ], [ %ret.2, %out_free ], [ -12, %if.then41.cleanup404_crit_edge ], [ 0, %cleanup400 ], [ 0, %cleanup269.thread527 ], [ 0, %if.then110.cleanup404_crit_edge ], [ 0, %if.end282.cleanup404_crit_edge ], [ -22, %do.end305 ], [ -22, %do.end349 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_rx_agg_session_expired(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rcu_ptr1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %rcu_ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcu_ptr1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b88 = load i1, ptr @iwl_mvm_rx_agg_session_expired.__warned, align 1
  br i1 %.b88, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rx_agg_session_expired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @.str.44) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end24, label %if.end40.critedge, !prof !338

do.end24:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef null) #10
  br label %unlock

if.end40.critedge:                                ; preds = %do.end9
  %timeout41 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %timeout41 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %timeout41, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool42.not = icmp eq i16 %9, 0
  br i1 %tobool42.not, label %if.end40.critedge.unlock_crit_edge, label %if.end44

if.end40.critedge.unlock_crit_edge:               ; preds = %if.end40.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end44:                                         ; preds = %if.end40.critedge
  %last_rx = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %last_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_rx, align 16
  %conv = zext i16 %9 to i32
  %mul46 = shl nuw nsw i32 %conv, 11
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul46) #10
  %add = add i32 %call3.i, %11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %session_timer = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 7
  %call50 = tail call i32 @mod_timer(ptr noundef %session_timer, i32 noundef %add) #10
  br label %unlock

if.end51:                                         ; preds = %if.end44
  %mvm = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 9
  %13 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvm, align 8
  %sta_id = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sta_id, align 8
  %idxprom = zext i8 %16 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %14, i32 0, i32 44, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx, align 4
  %call57 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.end51.do.end67_crit_edge

if.end51.do.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true59:                                  ; preds = %if.end51
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true59.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true59.do.end67_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %.b8687 = load i1, ptr @iwl_mvm_rx_agg_session_expired.__warned.90, align 1
  br i1 %.b8687, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rx_agg_session_expired.__warned.90, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.44) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true59.do.end67_crit_edge, %if.end51.do.end67_crit_edge
  %tobool69.not = icmp eq ptr %18, null
  br i1 %tobool69.not, label %do.end67.unlock_crit_edge, label %if.end71

do.end67.unlock_crit_edge:                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end71:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #12
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %18, i32 17, i32 28, i32 10
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vif, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %18, i32 0, i32 1
  %tid = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tid, align 1
  %conv73 = zext i8 %22 to i32
  tail call void @ieee80211_rx_ba_timer_expired(ptr noundef %20, ptr noundef %addr, i32 noundef %conv73) #10
  br label %unlock

unlock:                                           ; preds = %if.end71, %do.end67.unlock_crit_edge, %if.then49, %if.end40.critedge.unlock_crit_edge, %do.end24
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i91, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i94

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i94:                                ; preds = %unlock
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %23 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i98 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i99, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_sync_rx_queues_internal(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sta_tx_agg(ptr noundef %mvm, ptr nocapture noundef %sta, i32 noundef %tid, i8 noundef zeroext %queue, i1 noundef zeroext %start) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 47)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2713, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %start, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %queue to i32
  %shl = shl nuw i32 1, %conv
  %tfd_queue_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tfd_queue_msk, align 4
  %or = or i32 %4, %shl
  store i32 %or, ptr %tfd_queue_msk, align 4
  %shl27 = shl nuw i32 1, %tid
  %tid_disable_agg = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %tid_disable_agg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tid_disable_agg, align 4
  %7 = trunc i32 %shl27 to i16
  %8 = xor i16 %7, -1
  %conv29 = and i16 %6, %8
  store i16 %conv29, ptr %tid_disable_agg, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl30 = shl nuw i32 1, %tid
  %tid_disable_agg31 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %tid_disable_agg31 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tid_disable_agg31, align 4
  %11 = trunc i32 %shl30 to i16
  %conv34 = or i16 %10, %11
  store i16 %conv34, ptr %tid_disable_agg31, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then26
  %mac_id_n_color = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_id_n_color, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %mac_id_n_color36 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %mac_id_n_color36 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %mac_id_n_color36, align 1
  %16 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %drv_priv.i, align 8
  %conv37 = trunc i32 %17 to i8
  %sta_id38 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %18 = ptrtoint ptr %sta_id38 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv37, ptr %sta_id38, align 1
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %cmd, align 1
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
  br i1 %tobool.i.not, label %if.then40, label %if.end35.if.end41_crit_edge

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %modify_mask = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 7
  %26 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %modify_mask, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end35.if.end41_crit_edge
  %modify_mask42 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 7
  %27 = ptrtoint ptr %modify_mask42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %modify_mask42, align 1
  %29 = or i8 %28, 2
  store i8 %29, ptr %modify_mask42, align 1
  %tfd_queue_msk46 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %tfd_queue_msk46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tfd_queue_msk46, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %tfd_queue_msk47 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 19
  %33 = ptrtoint ptr %tfd_queue_msk47 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %tfd_queue_msk47, align 1
  %tid_disable_agg48 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %tid_disable_agg48 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tid_disable_agg48, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %tid_disable_tx = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 2
  %37 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %tid_disable_tx, align 1
  %38 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %status, align 4
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %39 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %40, i32 0, i32 5, i32 8, i32 2
  %41 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %43 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %if.end41.iwl_mvm_add_sta_cmd_size.exit_crit_edge

if.end41.iwl_mvm_add_sta_cmd_size.exit_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %40, i32 0, i32 5, i32 7
  %44 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %_api.i.i, align 4
  %46 = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i = icmp eq i32 %46, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %if.end41.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %if.end41.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call51 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 24, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %cmd, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge

iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge:  ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %iwl_mvm_add_sta_cmd_size.exit
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status, align 4
  %and55 = and i32 %48, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and55)
  %cond67 = icmp eq i32 %and55, 1
  br i1 %cond67, label %if.end54.cleanup_crit_edge, label %sw.default

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mvm, align 8
  %cond = select i1 %start, ptr @.str.13, ptr @.str.14
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i32 noundef %48) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end54.cleanup_crit_edge, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %iwl_mvm_add_sta_cmd_size.exit.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ -5, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sta_tx_agg_start(ptr noundef %mvm, ptr nocapture noundef readnone %vif, ptr noundef %sta, i16 noundef zeroext %tid, ptr nocapture noundef writeonly %ssn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %conv = zext i16 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %tid)
  %cmp = icmp ugt i16 %tid, 7
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b323 = load i1, ptr @iwl_mvm_sta_tx_agg_start.__already_done, align 1
  br i1 %.b323, label %land.rhs.cleanup260_crit_edge, label %if.then, !prof !336

land.rhs.cleanup260_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup260

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_sta_tx_agg_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2784, i32 noundef 9, ptr noundef null) #10
  br label %cleanup260

if.end39:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv
  %state = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %do.body61, label %do.end53

do.end53:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %1) #10
  br label %cleanup260

do.body61:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool63.not = icmp eq i32 %4, 0
  br i1 %tobool63.not, label %do.body61.if.end92_crit_edge, label %land.rhs64

do.body61.if.end92_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.rhs64:                                       ; preds = %do.body61
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp66.not = icmp eq i32 %call.i, 0
  br i1 %cmp66.not, label %do.end86, label %land.rhs64.if.end92_crit_edge, !prof !338

land.rhs64.if.end92_crit_edge:                    ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

do.end86:                                         ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2795, i32 noundef 9, ptr noundef null) #10
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %land.rhs64.if.end92_crit_edge, %do.body61.if.end92_crit_edge
  %txq_id105 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv, i32 6
  %5 = ptrtoint ptr %txq_id105 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %txq_id105, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp107 = icmp eq i16 %6, -1
  br i1 %cmp107, label %land.lhs.true109, label %if.end92.if.end120_crit_edge

if.end92.if.end120_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

land.lhs.true109:                                 ; preds = %if.end92
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %7 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %12 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not = icmp eq i16 %12, 0
  br i1 %tobool.i.not, label %land.lhs.true109.if.end120_crit_edge, label %if.then112

land.lhs.true109.if.end120_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then112:                                       ; preds = %land.lhs.true109
  %call116 = tail call fastcc i32 @iwl_mvm_sta_alloc_queue_tvqm(ptr noundef %mvm, ptr noundef %sta, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then112.if.end120_crit_edge, label %if.then112.cleanup260_crit_edge

if.then112.cleanup260_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup260

if.then112.if.end120_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.end120:                                        ; preds = %if.then112.if.end120_crit_edge, %land.lhs.true109.if.end120_crit_edge, %if.end92.if.end120_crit_edge
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %13 = ptrtoint ptr %txq_id105 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %txq_id105, align 4
  %conv125 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp126 = icmp eq i16 %14, -1
  br i1 %cmp126, label %if.then128, label %if.else

if.then128:                                       ; preds = %if.end120
  %call130 = tail call fastcc i32 @iwl_mvm_find_free_queue(ptr noundef %mvm, i8 noundef zeroext 10, i8 noundef zeroext 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %do.end137, label %if.end141

do.end137:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.22) #10
  br label %out

if.end141:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  %conv142 = trunc i32 %call130 to i16
  %17 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %idxprom143 = and i32 %call130, 65535
  %status = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %17, i32 0, i32 %idxprom143, i32 6
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %status, align 4
  %.pre = and i32 %call130, 65535
  br label %do.end215

if.else:                                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %14)
  %cmp147 = icmp ugt i16 %14, 31
  br i1 %cmp147, label %do.end164, label %if.else188, !prof !338

do.end164:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2828, i32 noundef 9, ptr noundef null) #10
  %19 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef 31) #10
  br label %out

if.else188:                                       ; preds = %if.else
  %21 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %status191 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %21, i32 0, i32 %conv125, i32 6
  %22 = ptrtoint ptr %status191 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp192 = icmp eq i32 %23, 3
  br i1 %cmp192, label %if.then200, label %if.else188.do.end215_crit_edge, !prof !338

if.else188.do.end215_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end215

if.then200:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_tx_agg_start, ptr noundef nonnull @.str.24, i32 noundef %conv) #10
  br label %out

do.end215:                                        ; preds = %if.else188.do.end215_crit_edge, %if.end141
  %conv218.pre-phi = phi i32 [ %conv125, %if.else188.do.end215_crit_edge ], [ %.pre, %if.end141 ]
  %txq_id.0 = phi i16 [ %14, %if.else188.do.end215_crit_edge ], [ %conv142, %if.end141 ]
  %26 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_tx_agg_start, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv218.pre-phi) #10
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 4
  %30 = lshr i16 %29, 4
  %ssn226 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv, i32 7
  %31 = ptrtoint ptr %ssn226 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %ssn226, align 2
  %32 = ptrtoint ptr %txq_id105 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %txq_id.0, ptr %txq_id105, align 4
  %33 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %30, ptr %ssn, align 2
  %34 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mvm, align 8
  %36 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %drv_priv.i, align 8
  %38 = load i16, ptr %ssn226, align 2
  %conv238 = zext i16 %38 to i32
  %next_reclaimed = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv, i32 1
  %39 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %next_reclaimed, align 2
  %conv239 = zext i16 %40 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_tx_agg_start, ptr noundef nonnull @.str.26, i32 noundef %37, i32 noundef %conv, i32 noundef %conv218.pre-phi, i32 noundef %conv238, i32 noundef %conv239) #10
  %41 = ptrtoint ptr %ssn226 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ssn226, align 2
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %43 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load = load i16, ptr %gen2, align 4
  %48 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool243.not = icmp eq i16 %48, 0
  %49 = and i16 %42, 255
  %spec.select = select i1 %tobool243.not, i16 %42, i16 %49
  %50 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %next_reclaimed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %51)
  %cmp252 = icmp eq i16 %spec.select, %51
  br i1 %cmp252, label %if.then254, label %if.else256

if.then254:                                       ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %state, align 4
  br label %out

if.else256:                                       ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.else256, %if.then254, %if.then200, %do.end164, %do.end137
  %ret.0 = phi i32 [ %call130, %do.end137 ], [ 1, %if.then254 ], [ 2, %if.else256 ], [ -6, %do.end164 ], [ -6, %if.then200 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup260

cleanup260:                                       ; preds = %out, %if.then112.cleanup260_crit_edge, %do.end53, %if.then, %land.rhs.cleanup260_crit_edge
  %retval.1 = phi i32 [ -6, %do.end53 ], [ %ret.0, %out ], [ %call116, %if.then112.cleanup260_crit_edge ], [ -22, %if.then ], [ -22, %land.rhs.cleanup260_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_sta_alloc_queue_tvqm(ptr noundef %mvm, ptr noundef %sta, i32 noundef %tid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %conv = trunc i32 %tid to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 8
  %tid.op = and i32 %tid, 255
  %idxprom.i = select i1 %cmp.i, i32 16, i32 %tid.op
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 28, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif, align 8
  %call2 = tail call i32 @iwl_mvm_get_wd_timeout(ptr noundef %mvm, ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 762, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_priv.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_alloc_queue_tvqm, ptr noundef nonnull @.str.94, i32 noundef %8, i32 noundef %tid) #10
  %9 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %drv_priv.i, align 8
  %conv35 = trunc i32 %10 to i8
  %call37 = tail call fastcc i32 @iwl_mvm_tvqm_enable_txq(ptr noundef %mvm, i8 noundef zeroext %conv35, i8 noundef zeroext %conv, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end.cleanup_crit_edge, label %if.end41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv42 = trunc i32 %call37 to i16
  %txq_id = getelementptr inbounds %struct.ieee80211_txq, ptr %1, i32 1, i32 2
  %11 = ptrtoint ptr %txq_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv42, ptr %txq_id, align 4
  %12 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %arrayidx = getelementptr [512 x %struct.iwl_mvm_tvqm_txq_info], ptr %12, i32 0, i32 %call37
  %txq_tid = getelementptr [512 x %struct.iwl_mvm_tvqm_txq_info], ptr %12, i32 0, i32 %call37, i32 1
  %13 = ptrtoint ptr %txq_tid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %txq_tid, align 1
  %14 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %drv_priv.i, align 8
  %conv45 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv45, ptr %arrayidx, align 2
  %17 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_alloc_queue_tvqm, ptr noundef nonnull @.str.95, i32 noundef %call37) #10
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %txq_id57 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid, i32 6
  %19 = ptrtoint ptr %txq_id57 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv42, ptr %txq_id57, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call37, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_find_free_queue(ptr noundef %mvm, i8 noundef zeroext %minq, i8 noundef zeroext %maxq) unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 696, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i8 %maxq to i32
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %1 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_of_queues, align 2
  %conv25 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv25)
  %cmp26.not = icmp ult i32 %conv, %conv25
  br i1 %cmp26.not, label %if.end.if.end71_crit_edge, label %do.end43, !prof !336

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.96, i32 noundef %conv, i32 noundef %conv25) #10
  %9 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans, align 4
  %trans_cfg66 = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %trans_cfg66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans_cfg66, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %num_of_queues68 = getelementptr inbounds %struct.iwl_base_params, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %num_of_queues68 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_of_queues68, align 2
  %conv69 = trunc i16 %16 to i8
  %sub = add i8 %conv69, -1
  br label %if.end71

if.end71:                                         ; preds = %do.end43, %if.end.if.end71_crit_edge
  %maxq.addr.0 = phi i8 [ %sub, %do.end43 ], [ %maxq, %if.end.if.end71_crit_edge ]
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %22 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.i.not = icmp eq i16 %22, 0
  br i1 %tobool.i.not, label %if.end105, label %do.end89, !prof !336

do.end89:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 704, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end105:                                        ; preds = %if.end71
  %23 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  call void @__sanitizer_cov_trace_cmp1(i8 %maxq.addr.0, i8 %minq)
  %cmp108.not1 = icmp ult i8 %maxq.addr.0, %minq
  br i1 %cmp108.not1, label %if.end105.cleanup_crit_edge, label %for.body.preheader

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %if.end105
  %conv107 = zext i8 %maxq.addr.0 to i32
  %conv106 = zext i8 %minq to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.02 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %conv106, %for.body.preheader ]
  %tid_bitmap = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %23, i32 0, i32 %i.02, i32 4
  %24 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tid_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp111 = icmp eq i16 %25, 0
  br i1 %cmp111, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %status = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %23, i32 0, i32 %i.02, i32 6
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp114 = icmp eq i32 %27, 0
  br i1 %cmp114, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %i.02, %conv107
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %do.end89
  %retval.0 = phi i32 [ -28, %do.end89 ], [ -28, %if.end105.cleanup_crit_edge ], [ %i.02, %land.lhs.true.cleanup_crit_edge ], [ -28, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sta_tx_agg_oper(ptr noundef %mvm, ptr noundef %vif, ptr noundef %sta, i16 noundef zeroext %tid, i16 noundef zeroext %buf_size, i1 noundef zeroext %amsdu) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %idxprom = zext i16 %tid to i32
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 17
  %0 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tdls, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %call2 = tail call i32 @iwl_mvm_get_wd_timeout(ptr noundef %mvm, ptr noundef %vif, i1 noundef zeroext %tobool, i1 noundef zeroext false) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg) #10
  %2 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 3
  %5 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 4
  %6 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drv_priv.i, align 8
  %conv = trunc i32 %7 to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %2, align 1
  %conv5 = trunc i16 %tid to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %3, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %4, align 1
  %conv6 = zext i16 %buf_size to i32
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %5, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 8, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.i.not, label %do.end50, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b227 = load i1, ptr @iwl_mvm_sta_tx_agg_oper.__already_done, align 1
  br i1 %.b227, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !336

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_sta_tx_agg_oper.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2903, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

do.end50:                                         ; preds = %entry
  %frombool = zext i1 %amsdu to i8
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %ssn51 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 7
  %17 = ptrtoint ptr %ssn51 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ssn51, align 2
  %txq_id = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 6
  %19 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %txq_id, align 4
  %conv52 = zext i16 %20 to i32
  %state = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 5
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %state, align 4
  %shl = shl nuw i32 1, %idxprom
  %agg_tids = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 24
  %22 = ptrtoint ptr %agg_tids to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %agg_tids, align 1
  %24 = trunc i32 %shl to i8
  %conv55 = or i8 %23, %24
  store i8 %conv55, ptr %agg_tids, align 1
  store i16 -1, ptr %ssn51, align 2
  %amsdu_in_ampdu_allowed = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 4
  %25 = ptrtoint ptr %amsdu_in_ampdu_allowed to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %amsdu_in_ampdu_allowed, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %26 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %31 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.i.not = icmp eq i16 %31, 0
  br i1 %tobool.i.not, label %if.end72, label %if.then61

if.then61:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %buf_size)
  %cmp = icmp ult i16 %buf_size, 64
  br i1 %cmp, label %if.then61.cleanup_crit_edge, label %if.end65

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.then61
  %conv67 = trunc i16 %20 to i8
  %call68 = tail call i32 @iwl_mvm_sta_tx_agg(ptr noundef %mvm, ptr noundef %sta, i32 noundef %idxprom, i8 noundef zeroext %conv67, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end65.out_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end72:                                         ; preds = %do.end50
  %arrayidx74 = getelementptr [9 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx74, align 1
  %idxprom75 = zext i8 %33 to i32
  %arrayidx76 = getelementptr [0 x i8], ptr @iwl_mvm_ac_to_tx_fifo, i32 0, i32 %idxprom75
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx76, align 1
  %36 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %cfg, align 4
  %37 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %status = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %37, i32 0, i32 %conv52, i32 6
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp81 = icmp eq i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %buf_size)
  %cmp87 = icmp ult i16 %buf_size, 64
  %or.cond = and i1 %cmp87, %cmp81
  br i1 %or.cond, label %if.then89, label %if.end117

if.then89:                                        ; preds = %if.end72
  %shl90 = shl nuw i32 1, %conv52
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 1
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %wait_tx_queues_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %wait_tx_queues_empty.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wait_tx_queues_empty.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then89
  %.b58.i = load i1, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.do.end97_crit_edge, label %if.then.i, !prof !336

land.rhs.i.do.end97_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1307, i32 noundef 9, ptr noundef null) #10
  br label %do.end97

if.end39.i:                                       ; preds = %if.then89
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 6
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 2
  br i1 %cmp.not.i, label %iwl_trans_wait_tx_queues_empty.exit, label %do.end44.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 8
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_wait_tx_queues_empty, i32 noundef %45) #10
  br label %do.end97

iwl_trans_wait_tx_queues_empty.exit:              ; preds = %if.end39.i
  %call.i = tail call i32 %43(ptr noundef %27, i32 noundef %shl90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool92.not = icmp eq i32 %call.i, 0
  br i1 %tobool92.not, label %if.end100, label %iwl_trans_wait_tx_queues_empty.exit.do.end97_crit_edge

iwl_trans_wait_tx_queues_empty.exit.do.end97_crit_edge: ; preds = %iwl_trans_wait_tx_queues_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

do.end97:                                         ; preds = %iwl_trans_wait_tx_queues_empty.exit.do.end97_crit_edge, %do.end44.i, %if.then.i, %land.rhs.i.do.end97_crit_edge
  %retval.0.i231 = phi i32 [ %call.i, %iwl_trans_wait_tx_queues_empty.exit.do.end97_crit_edge ], [ -524, %land.rhs.i.do.end97_crit_edge ], [ -524, %if.then.i ], [ -5, %do.end44.i ]
  %48 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end100:                                        ; preds = %iwl_trans_wait_tx_queues_empty.exit
  %conv102 = zext i8 %35 to i32
  %50 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %drv_priv.i, align 8
  %call106 = tail call i32 @iwl_mvm_reconfig_scd(ptr noundef %mvm, i32 noundef %conv52, i32 noundef %conv102, i32 noundef %51, i32 noundef %idxprom, i32 noundef %conv6, i16 noundef zeroext %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end100.if.then124_crit_edge, label %do.end112

if.end100.if.then124_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then124

do.end112:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %conv52) #10
  br label %cleanup

if.end117:                                        ; preds = %if.end72
  br i1 %cmp81, label %if.end117.if.then124_crit_edge, label %if.end121

if.end117.if.then124_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then124

if.end121:                                        ; preds = %if.end117
  %call120 = call fastcc zeroext i1 @iwl_mvm_enable_txq(ptr noundef %mvm, ptr noundef %sta, i32 noundef %conv52, i16 noundef zeroext %18, ptr noundef nonnull %cfg, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp122.not = icmp eq i32 %39, 3
  br i1 %cmp122.not, label %if.end121.if.end131_crit_edge, label %if.end121.if.then124_crit_edge

if.end121.if.then124_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then124

if.end121.if.end131_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then124:                                       ; preds = %if.end121.if.then124_crit_edge, %if.end117.if.then124_crit_edge, %if.end100.if.then124_crit_edge
  %conv126 = trunc i16 %20 to i8
  %call127 = tail call i32 @iwl_mvm_sta_tx_agg(ptr noundef %mvm, ptr noundef %sta, i32 noundef %idxprom, i8 noundef zeroext %conv126, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then124.if.end131_crit_edge, label %if.then124.cleanup_crit_edge

if.then124.cleanup_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then124.if.end131_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.end131:                                        ; preds = %if.then124.if.end131_crit_edge, %if.end121.if.end131_crit_edge
  %54 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %status, align 4
  br label %out

out:                                              ; preds = %if.end131, %if.end65.out_crit_edge
  %max_agg_bufsize = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 4
  %55 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %max_agg_bufsize, align 2
  %57 = tail call i16 @llvm.umin.i16(i16 %56, i16 %buf_size)
  %58 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %max_agg_bufsize, align 2
  %conv144 = trunc i16 %57 to i8
  %lq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 14
  %agg_frame_cnt_limit = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 29, i32 10
  %59 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv144, ptr %agg_frame_cnt_limit, align 1
  %60 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mvm, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %61, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_tx_agg_oper, ptr noundef nonnull @.str.29, ptr noundef %addr, i32 noundef %idxprom) #10
  %call155 = tail call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then124.cleanup_crit_edge, %do.end112, %do.end97, %if.end65.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call155, %out ], [ %retval.0.i231, %do.end97 ], [ %call106, %do.end112 ], [ -22, %if.then ], [ -524, %if.then61.cleanup_crit_edge ], [ -5, %if.end65.cleanup_crit_edge ], [ -5, %if.then124.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_reconfig_scd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_lq_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sta_tx_agg_stop(ptr noundef %mvm, ptr noundef %vif, ptr noundef %sta, i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %tid) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %txq_id3 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 6
  %3 = ptrtoint ptr %txq_id3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %txq_id3, align 4
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_priv.i, align 8
  %conv5 = zext i16 %4 to i32
  %state = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_tx_agg_stop, ptr noundef nonnull @.str.30, i32 noundef %8, i32 noundef %idxprom, i32 noundef %conv5, i32 noundef %10) #10
  %shl = shl nuw i32 1, %idxprom
  %agg_tids = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 24
  %11 = ptrtoint ptr %agg_tids to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %agg_tids, align 1
  %13 = trunc i32 %shl to i8
  %14 = xor i8 %13, -1
  %conv10 = and i8 %12, %14
  store i8 %conv10, ptr %agg_tids, align 1
  %15 = ptrtoint ptr %txq_id3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %txq_id3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !338

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3012, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %18 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %23 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.not.i = icmp eq i16 %23, 0
  br i1 %tobool.i.not.i, label %if.end27.i, label %if.end.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge

if.end.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_unreserve_agg_queue.exit

if.end27.i:                                       ; preds = %if.end.i
  %24 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %idxprom.i = zext i16 %16 to i32
  %status.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %24, i32 0, i32 %idxprom.i, i32 6
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp28.i = icmp eq i32 %26, 1
  br i1 %cmp28.i, label %if.then29.i, label %if.end27.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge

if.end27.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_unreserve_agg_queue.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %status.i, align 4
  %28 = ptrtoint ptr %txq_id3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %txq_id3, align 4
  br label %iwl_mvm_unreserve_agg_queue.exit

iwl_mvm_unreserve_agg_queue.exit:                 ; preds = %if.then29.i, %if.end27.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge, %if.end.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %30, label %do.end71 [
    i32 3, label %sw.bb
    i32 2, label %iwl_mvm_unreserve_agg_queue.exit.do.body34_crit_edge
    i32 4, label %iwl_mvm_unreserve_agg_queue.exit.do.body34_crit_edge132
  ]

iwl_mvm_unreserve_agg_queue.exit.do.body34_crit_edge132: ; preds = %iwl_mvm_unreserve_agg_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

iwl_mvm_unreserve_agg_queue.exit.do.body34_crit_edge: ; preds = %iwl_mvm_unreserve_agg_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

sw.bb:                                            ; preds = %iwl_mvm_unreserve_agg_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 4
  %34 = lshr i16 %33, 4
  %ssn = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 7
  %35 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %ssn, align 2
  %36 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mvm, align 8
  %conv21 = zext i16 %34 to i32
  %next_reclaimed = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 1
  %38 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %next_reclaimed, align 2
  %conv22 = zext i16 %39 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %37, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_tx_agg_stop, ptr noundef nonnull @.str.31, i32 noundef %conv21, i32 noundef %conv22) #10
  %40 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %ssn, align 2
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %addr28 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr28, i16 noundef zeroext %tid) #10
  %conv31 = trunc i16 %4 to i8
  %call32 = tail call i32 @iwl_mvm_sta_tx_agg(ptr noundef %mvm, ptr noundef %sta, i32 noundef %idxprom, i8 noundef zeroext %conv31, i1 noundef zeroext false)
  br label %cleanup

do.body34:                                        ; preds = %iwl_mvm_unreserve_agg_queue.exit.do.body34_crit_edge, %iwl_mvm_unreserve_agg_queue.exit.do.body34_crit_edge132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool35.not = icmp eq i32 %42, 0
  br i1 %tobool35.not, label %do.body34.if.end56_crit_edge, label %land.rhs

do.body34.if.end56_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

land.rhs:                                         ; preds = %do.body34
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end50, label %land.rhs.if.end56_crit_edge, !prof !338

land.rhs.if.end56_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.end50:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3082, i32 noundef 9, ptr noundef null) #10
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %land.rhs.if.end56_crit_edge, %do.body34.if.end56_crit_edge
  %addr65 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr65, i16 noundef zeroext %tid) #10
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

do.end71:                                         ; preds = %iwl_mvm_unreserve_agg_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mvm, align 8
  %46 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %drv_priv.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %47, i32 noundef %idxprom, i32 noundef %30) #10
  %48 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mvm, align 8
  %50 = ptrtoint ptr %txq_id3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %txq_id3, align 4
  %conv84 = zext i16 %51 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %conv84) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end71, %if.end56
  %err.0 = phi i32 [ -22, %do.end71 ], [ 0, %if.end56 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %sw.epilog ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sta_tx_agg_flush(ptr noundef %mvm, ptr nocapture noundef readnone %vif, ptr noundef %sta, i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %idxprom = zext i16 %tid to i32
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %txq_id2 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 6
  %0 = ptrtoint ptr %txq_id2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %txq_id2, align 4
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drv_priv.i, align 8
  %conv4 = zext i16 %1 to i32
  %state = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sta_tx_agg_flush, ptr noundef nonnull @.str.34, i32 noundef %5, i32 noundef %idxprom, i32 noundef %conv4, i32 noundef %7) #10
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  store i32 0, ptr %state, align 4
  %shl = shl nuw i32 1, %idxprom
  %agg_tids = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 24
  %10 = ptrtoint ptr %agg_tids to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %agg_tids, align 1
  %12 = trunc i32 %shl to i8
  %13 = xor i8 %12, -1
  %conv11 = and i8 %11, %13
  store i8 %conv11, ptr %agg_tids, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %14 = ptrtoint ptr %txq_id2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %txq_id2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !338

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3012, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %17 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %22 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.i.not.i = icmp eq i16 %22, 0
  br i1 %tobool.i.not.i, label %if.end27.i, label %if.end.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge

if.end.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_unreserve_agg_queue.exit

if.end27.i:                                       ; preds = %if.end.i
  %23 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %idxprom.i = zext i16 %15 to i32
  %status.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %23, i32 0, i32 %idxprom.i, i32 6
  %24 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp28.i = icmp eq i32 %25, 1
  br i1 %cmp28.i, label %if.then29.i, label %if.end27.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge

if.end27.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_unreserve_agg_queue.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %status.i, align 4
  %27 = ptrtoint ptr %txq_id2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %txq_id2, align 4
  br label %iwl_mvm_unreserve_agg_queue.exit

iwl_mvm_unreserve_agg_queue.exit:                 ; preds = %if.then29.i, %if.end27.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge, %if.end.i.iwl_mvm_unreserve_agg_queue.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ugt i32 %9, 2
  br i1 %cmp, label %if.then, label %iwl_mvm_unreserve_agg_queue.exit.if.end54_crit_edge

iwl_mvm_unreserve_agg_queue.exit.if.end54_crit_edge: ; preds = %iwl_mvm_unreserve_agg_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then:                                          ; preds = %iwl_mvm_unreserve_agg_queue.exit
  %call14 = tail call i32 @iwl_mvm_drain_sta(ptr noundef %mvm, ptr noundef %drv_priv.i, i1 noundef zeroext true)
  %28 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %33 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.i.not = icmp eq i16 %33, 0
  br i1 %tobool.i.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then
  %34 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %drv_priv.i, align 8
  %conv20 = trunc i32 %shl to i16
  %call21 = tail call i32 @iwl_mvm_flush_sta_tids(ptr noundef %mvm, i32 noundef %35, i16 noundef zeroext %conv20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.then16.if.end_crit_edge, label %do.end26

if.then16.if.end_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end26:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %37, i32 noundef 0, ptr noundef nonnull @.str.35) #10
  br label %if.end

if.end:                                           ; preds = %do.end26, %if.then16.if.end_crit_edge
  %38 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans.i.i, align 4
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %wait_txq_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %wait_txq_empty.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wait_txq_empty.i, align 4
  %tobool.not.i87 = icmp eq ptr %43, null
  br i1 %tobool.not.i87, label %land.rhs.i88, label %if.end39.i

land.rhs.i88:                                     ; preds = %if.end
  %.b116.i = load i1, ptr @iwl_trans_wait_txq_empty.__already_done, align 1
  br i1 %.b116.i, label %land.rhs.i88.if.end49_crit_edge, label %if.then.i, !prof !336

land.rhs.i88.if.end49_crit_edge:                  ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then.i:                                        ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_txq_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1321, i32 noundef 9, ptr noundef null) #10
  br label %if.end49

if.end39.i:                                       ; preds = %if.end
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 6
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.not.i89 = icmp eq i32 %45, 2
  br i1 %cmp.not.i89, label %if.end102.i, label %land.rhs47.i

land.rhs47.i:                                     ; preds = %if.end39.i
  %.b114115.i = load i1, ptr @iwl_trans_wait_txq_empty.__already_done.78, align 1
  br i1 %.b114115.i, label %land.rhs47.i.do.end98.i_crit_edge, label %if.then58.i, !prof !336

land.rhs47.i.do.end98.i_crit_edge:                ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98.i

if.then58.i:                                      ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_txq_empty.__already_done.78, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1324, i32 noundef 9, ptr noundef null) #10
  br label %do.end98.i

do.end98.i:                                       ; preds = %if.then58.i, %land.rhs47.i.do.end98.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 8
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 8
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_wait_txq_empty, i32 noundef %49) #10
  br label %if.end49

if.end102.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %43(ptr noundef %39, i32 noundef %conv4) #10
  br label %if.end49

if.else:                                          ; preds = %if.then
  %shl33 = shl nuw i32 1, %conv4
  %call34 = tail call i32 @iwl_mvm_flush_tx_path(ptr noundef %mvm, i32 noundef %shl33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else.if.end44_crit_edge, label %do.end40

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %51, i32 noundef 0, ptr noundef nonnull @.str.35) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %if.else.if.end44_crit_edge
  %52 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trans.i.i, align 4
  %ops.i90 = getelementptr inbounds %struct.iwl_trans, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i90, align 4
  %wait_tx_queues_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %55, i32 0, i32 17
  %56 = ptrtoint ptr %wait_tx_queues_empty.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wait_tx_queues_empty.i, align 4
  %tobool.not.i91 = icmp eq ptr %57, null
  br i1 %tobool.not.i91, label %land.rhs.i92, label %if.end39.i96

land.rhs.i92:                                     ; preds = %if.end44
  %.b58.i = load i1, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i92.if.end49_crit_edge, label %if.then.i93, !prof !336

land.rhs.i92.if.end49_crit_edge:                  ; preds = %land.rhs.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then.i93:                                      ; preds = %land.rhs.i92
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1307, i32 noundef 9, ptr noundef null) #10
  br label %if.end49

if.end39.i96:                                     ; preds = %if.end44
  %state.i94 = getelementptr inbounds %struct.iwl_trans, ptr %53, i32 0, i32 6
  %58 = ptrtoint ptr %state.i94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.not.i95 = icmp eq i32 %59, 2
  br i1 %cmp.not.i95, label %if.end48.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end39.i96
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i97 = getelementptr inbounds %struct.iwl_trans, ptr %53, i32 0, i32 8
  %60 = ptrtoint ptr %dev.i97 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i97, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %61, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_wait_tx_queues_empty, i32 noundef %59) #10
  br label %if.end49

if.end48.i:                                       ; preds = %if.end39.i96
  call void @__sanitizer_cov_trace_pc() #12
  %call.i98 = tail call i32 %57(ptr noundef %53, i32 noundef %shl33) #10
  br label %if.end49

if.end49:                                         ; preds = %if.end48.i, %do.end44.i, %if.then.i93, %land.rhs.i92.if.end49_crit_edge, %if.end102.i, %do.end98.i, %if.then.i, %land.rhs.i88.if.end49_crit_edge
  %call50 = tail call i32 @iwl_mvm_drain_sta(ptr noundef %mvm, ptr noundef %drv_priv.i, i1 noundef zeroext false)
  %conv52 = trunc i16 %1 to i8
  %call53 = tail call i32 @iwl_mvm_sta_tx_agg(ptr noundef %mvm, ptr noundef %sta, i32 noundef %idxprom, i8 noundef zeroext %conv52, i1 noundef zeroext false)
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %iwl_mvm_unreserve_agg_queue.exit.if.end54_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_flush_sta_tids(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_flush_tx_path(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_set_sta_key(ptr noundef %mvm, ptr noundef readonly %vif, ptr noundef %sta, ptr noundef %keyconf, i8 noundef zeroext %key_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 8
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool = icmp ne i16 %2, 0
  %lnot = xor i1 %tobool, true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3534, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp27.not = icmp eq i32 %5, 3
  br i1 %cmp27.not, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 8
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool32.not = icmp eq i16 %8, 0
  br i1 %tobool32.not, label %if.else, label %if.then33.thread

if.then33:                                        ; preds = %if.end
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then33.iwl_mvm_get_key_sta.exit_crit_edge

if.then33.iwl_mvm_get_key_sta.exit_crit_edge:     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_key_sta.exit

if.then33.thread:                                 ; preds = %lor.lhs.false
  %tobool.not.i274 = icmp eq ptr %sta, null
  br i1 %tobool.not.i274, label %if.then33.thread.do.end40_crit_edge, label %if.then33.thread.iwl_mvm_get_key_sta.exit_crit_edge

if.then33.thread.iwl_mvm_get_key_sta.exit_crit_edge: ; preds = %if.then33.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_key_sta.exit

if.then33.thread.do.end40_crit_edge:              ; preds = %if.then33.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.end.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.do.end40_crit_edge

if.end.i.do.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

land.lhs.true.i:                                  ; preds = %if.end.i
  %ap_sta_id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %9 = ptrtoint ptr %ap_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ap_sta_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp2.not.i = icmp eq i8 %10, -1
  br i1 %cmp2.not.i, label %land.lhs.true.i.do.end40_crit_edge, label %if.then4.i

land.lhs.true.i.do.end40_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.then4.i:                                       ; preds = %land.lhs.true.i
  %conv.i = zext i8 %10 to i32
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.then4.i.do.end19.i_crit_edge

if.then4.i.do.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %call9.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %lor.lhs.false.i.do.end19.i_crit_edge

lor.lhs.false.i.do.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

land.lhs.true11.i:                                ; preds = %lor.lhs.false.i
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.do.end19.i_crit_edge, label %land.lhs.true14.i

land.lhs.true11.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %.b33.i = load i1, ptr @iwl_mvm_get_key_sta.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true14.i.do.end19.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_get_key_sta.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3193, ptr noundef nonnull @.str.44) #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.do.end19.i_crit_edge, %land.lhs.true11.i.do.end19.i_crit_edge, %lor.lhs.false.i.do.end19.i_crit_edge, %if.then4.i.do.end19.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %12, null
  %cmp.i.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end19.i.do.end40_crit_edge, label %iwl_mvm_get_key_sta.exit.thread

do.end19.i.do.end40_crit_edge:                    ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

iwl_mvm_get_key_sta.exit:                         ; preds = %if.then33.thread.iwl_mvm_get_key_sta.exit_crit_edge, %if.then33.iwl_mvm_get_key_sta.exit_crit_edge
  %retval.1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %tobool35.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool35.not, label %iwl_mvm_get_key_sta.exit.do.end40_crit_edge, label %if.end43

iwl_mvm_get_key_sta.exit.do.end40_crit_edge:      ; preds = %iwl_mvm_get_key_sta.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

iwl_mvm_get_key_sta.exit.thread:                  ; preds = %do.end19.i
  %retval.1.i285 = getelementptr inbounds %struct.ieee80211_sta, ptr %12, i32 0, i32 29
  %tobool35.not286 = icmp eq ptr %retval.1.i285, null
  br i1 %tobool35.not286, label %iwl_mvm_get_key_sta.exit.thread.do.end40_crit_edge, label %do.body48

iwl_mvm_get_key_sta.exit.thread.do.end40_crit_edge: ; preds = %iwl_mvm_get_key_sta.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end40:                                         ; preds = %iwl_mvm_get_key_sta.exit.thread.do.end40_crit_edge, %iwl_mvm_get_key_sta.exit.do.end40_crit_edge, %do.end19.i.do.end40_crit_edge, %land.lhs.true.i.do.end40_crit_edge, %if.end.i.do.end40_crit_edge, %if.then33.thread.do.end40_crit_edge
  %13 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end43:                                         ; preds = %iwl_mvm_get_key_sta.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %retval.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %retval.1.i, align 8
  br label %if.end72

do.body48:                                        ; preds = %iwl_mvm_get_key_sta.exit.thread
  %17 = ptrtoint ptr %retval.1.i285 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retval.1.i285, align 8
  %dep_map50 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i263 = tail call i32 @lock_is_held_type(ptr noundef %dep_map50, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool52.not = icmp eq i32 %call.i263, 0
  br i1 %tobool52.not, label %land.lhs.true, label %do.body48.do.end60_crit_edge

do.body48.do.end60_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

land.lhs.true:                                    ; preds = %do.body48
  %call53 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true.do.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true
  %.b261 = load i1, ptr @iwl_mvm_set_sta_key.__warned, align 1
  br i1 %.b261, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_set_sta_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3554, ptr noundef nonnull @.str.37) #10
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true.do.end60_crit_edge, %do.body48.do.end60_crit_edge
  %idxprom = and i32 %18, 255
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i264 = icmp eq ptr %20, null
  %cmp.i265 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i266 = or i1 %tobool.not.i264, %cmp.i265
  br i1 %spec.select.i266, label %do.end67, label %do.end60.if.end72_crit_edge

do.end60.if.end72_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end67:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end72:                                         ; preds = %do.end60.if.end72_crit_edge, %if.end43
  %23 = phi i32 [ %16, %if.end43 ], [ %18, %do.end60.if.end72_crit_edge ]
  %sta.addr.0 = phi ptr [ %sta, %if.end43 ], [ %20, %do.end60.if.end72_crit_edge ]
  %vif74 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.addr.0, i32 17, i32 28, i32 10
  %24 = ptrtoint ptr %vif74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vif74, align 8
  %cmp75.not = icmp eq ptr %25, %vif
  br i1 %cmp75.not, label %if.end72.if.end136_crit_edge, label %land.rhs84

if.end72.if.end136_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

land.rhs84:                                       ; preds = %if.end72
  %.b259260 = load i1, ptr @iwl_mvm_set_sta_key.__already_done, align 1
  br i1 %.b259260, label %land.rhs84.cleanup_crit_edge, label %if.then95, !prof !336

land.rhs84.cleanup_crit_edge:                     ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then95:                                        ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_set_sta_key.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3561, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %mcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 21
  %26 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mcast_sta, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else, %if.end72.if.end136_crit_edge
  %sta_id.0.in = phi i32 [ %27, %if.else ], [ %23, %if.end72.if.end136_crit_edge ]
  %sta.addr.1 = phi ptr [ %sta, %if.else ], [ %sta.addr.0, %if.end72.if.end136_crit_edge ]
  %sta_id.0 = trunc i32 %sta_id.0.in to i8
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 1
  %28 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cipher, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %29, label %if.end149 [
    i32 1027078, label %if.end136.if.then147_crit_edge
    i32 1027083, label %if.end136.if.then147_crit_edge291
    i32 1027084, label %if.end136.if.then147_crit_edge292
  ]

if.end136.if.then147_crit_edge292:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.end136.if.then147_crit_edge291:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.end136.if.then147_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.then147:                                       ; preds = %if.end136.if.then147_crit_edge, %if.end136.if.then147_crit_edge291, %if.end136.if.then147_crit_edge292
  %call148 = tail call fastcc i32 @iwl_mvm_send_sta_igtk(ptr noundef %mvm, ptr noundef %keyconf, i8 noundef zeroext %sta_id.0, i1 noundef zeroext false)
  br label %do.end191

if.end149:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %key_offset)
  %cmp151 = icmp eq i8 %key_offset, -1
  br i1 %cmp151, label %if.then153, label %if.end149.if.end161_crit_edge

if.end149.if.end161_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then153:                                       ; preds = %if.end149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %31 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i268 = icmp eq i32 %31, 0
  br i1 %tobool.not.i268, label %if.then153.if.end.i271_crit_edge, label %land.rhs.i

if.then153.if.end.i271_crit_edge:                 ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i271

land.rhs.i:                                       ; preds = %if.then153
  %dep_map.i269 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i270 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i269, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i270)
  %cmp.not.i = icmp eq i32 %call.i.i270, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i271_crit_edge, !prof !338

land.rhs.i.if.end.i271_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i271

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3151, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i271

if.end.i271:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i271_crit_edge, %if.then153.if.end.i271_crit_edge
  %fw_key_table.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 90
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i271
  %max_offs.056.i = phi i32 [ -1, %if.end.i271 ], [ %max_offs.1.i, %for.inc.i.for.body.i_crit_edge ]
  %max.055.i = phi i32 [ -1, %if.end.i271 ], [ %max.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.053.i = phi i32 [ 0, %if.end.i271 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.053.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %fw_key_table.i, i32 %div3.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i, align 4
  %34 = shl nuw i32 1, %i.053.i
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool26.not.i = icmp eq i32 %35, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end28.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i272 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 %i.053.i
  %36 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i272, align 1
  %conv.i273 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max.055.i, i32 %conv.i273)
  %cmp29.i = icmp slt i32 %max.055.i, %conv.i273
  %38 = tail call i32 @llvm.smax.i32(i32 %max.055.i, i32 %conv.i273) #10
  %spec.select52.i = select i1 %cmp29.i, i32 %i.053.i, i32 %max_offs.056.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end28.i, %for.body.i.for.inc.i_crit_edge
  %max.1.i = phi i32 [ %max.055.i, %for.body.i.for.inc.i_crit_edge ], [ %38, %if.end28.i ]
  %max_offs.1.i = phi i32 [ %max_offs.056.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select52.i, %if.end28.i ]
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %iwl_mvm_set_fw_key_idx.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

iwl_mvm_set_fw_key_idx.exit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_offs.1.i)
  %cmp36.i = icmp slt i32 %max_offs.1.i, 0
  %.max_offs.0.i = select i1 %cmp36.i, i32 255, i32 %max_offs.1.i
  %conv156 = and i32 %.max_offs.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv156)
  %cmp157 = icmp eq i32 %conv156, 255
  br i1 %cmp157, label %iwl_mvm_set_fw_key_idx.exit.cleanup_crit_edge, label %if.end160

iwl_mvm_set_fw_key_idx.exit.cleanup_crit_edge:    ; preds = %iwl_mvm_set_fw_key_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end160:                                        ; preds = %iwl_mvm_set_fw_key_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv155 = trunc i32 %.max_offs.0.i to i8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %39 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv155, ptr %hw_key_idx, align 2
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end149.if.end161_crit_edge
  %key_offset.addr.0 = phi i8 [ %conv155, %if.end160 ], [ %key_offset, %if.end149.if.end161_crit_edge ]
  %call163 = tail call fastcc i32 @__iwl_mvm_set_sta_key(ptr noundef %mvm, ptr noundef %vif, ptr noundef %sta.addr.1, ptr noundef %keyconf, i8 noundef zeroext %key_offset.addr.0, i1 noundef zeroext %lnot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end161.do.end191_crit_edge

if.end161.do.end191_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end191

if.end166:                                        ; preds = %if.end161
  %40 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cipher, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %41, label %if.end166.if.end186_crit_edge [
    i32 1027073, label %if.end166.land.lhs.true174_crit_edge
    i32 1027077, label %if.end166.land.lhs.true174_crit_edge293
  ]

if.end166.land.lhs.true174_crit_edge293:          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true174

if.end166.land.lhs.true174_crit_edge:             ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true174

if.end166.if.end186_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

land.lhs.true174:                                 ; preds = %if.end166.land.lhs.true174_crit_edge, %if.end166.land.lhs.true174_crit_edge293
  %tobool175.not = icmp eq ptr %sta.addr.1, null
  br i1 %tobool175.not, label %land.lhs.true174.if.end186_crit_edge, label %if.then176

land.lhs.true174.if.end186_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then176:                                       ; preds = %land.lhs.true174
  %call180 = tail call fastcc i32 @__iwl_mvm_set_sta_key(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %sta.addr.1, ptr noundef %keyconf, i8 noundef zeroext %key_offset.addr.0, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then176.if.end186_crit_edge, label %if.then182

if.then176.if.end186_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then182:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  %call184 = tail call fastcc i32 @__iwl_mvm_remove_sta_key(ptr noundef %mvm, i8 noundef zeroext %sta_id.0, ptr noundef %keyconf, i1 noundef zeroext %lnot)
  br label %do.end191

if.end186:                                        ; preds = %if.then176.if.end186_crit_edge, %land.lhs.true174.if.end186_crit_edge, %if.end166.if.end186_crit_edge
  %conv187 = zext i8 %key_offset.addr.0 to i32
  %fw_key_table = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 90
  %rem.i = and i32 %conv187, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv187, 5
  %add.ptr.i = getelementptr i32, ptr %fw_key_table, i32 %div2.i
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %44, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %do.end191

do.end191:                                        ; preds = %if.end186, %if.then182, %if.end161.do.end191_crit_edge, %if.then147
  %ret.1 = phi i32 [ %call148, %if.then147 ], [ %call163, %if.end161.do.end191_crit_edge ], [ %call180, %if.then182 ], [ 0, %if.end186 ]
  %45 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mvm, align 8
  %47 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cipher, align 8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 7
  %49 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %keylen, align 2
  %conv194 = zext i8 %50 to i32
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %51 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %keyidx, align 1
  %conv195 = sext i8 %52 to i32
  %tobool196.not = icmp eq ptr %sta.addr.1, null
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.addr.1, i32 0, i32 1
  %spec.select = select i1 %tobool196.not, ptr @iwl_mvm_set_sta_key.zero_addr, ptr %addr
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %46, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_set_sta_key, ptr noundef nonnull @.str.39, i32 noundef %48, i32 noundef %conv194, i32 noundef %conv195, ptr noundef %spec.select, i32 noundef %ret.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end191, %iwl_mvm_set_fw_key_idx.exit.cleanup_crit_edge, %if.then95, %land.rhs84.cleanup_crit_edge, %do.end67, %do.end40
  %retval.0 = phi i32 [ %ret.1, %do.end191 ], [ -22, %do.end67 ], [ -22, %do.end40 ], [ -22, %if.then95 ], [ -28, %iwl_mvm_set_fw_key_idx.exit.cleanup_crit_edge ], [ -22, %land.rhs84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_send_sta_igtk(ptr noundef %mvm, ptr noundef %keyconf, i8 noundef zeroext %sta_id, i1 noundef zeroext %remove_key) unnamed_addr #0 align 64 {
entry:
  %igtk_cmd = alloca %struct.iwl_mvm_mgmt_mcast_key_cmd, align 4
  %seq = alloca %struct.ieee80211_key_seq, align 4
  %igtk_cmd_v1 = alloca %struct.iwl_mvm_mgmt_mcast_key_cmd_v1, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %igtk_cmd) #10
  %0 = call ptr @memset(ptr %igtk_cmd, i32 0, i32 52)
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 6
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 8
  %3 = and i16 %2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %4 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keyidx, align 1
  %6 = and i8 %5, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %switch = icmp eq i8 %6, 4
  br i1 %switch, label %lor.rhs, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 1
  %7 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %8, label %lor.rhs.do.end_crit_edge [
    i32 1027078, label %lor.rhs.if.end47_crit_edge
    i32 1027083, label %lor.rhs.if.end47_crit_edge207
    i32 1027084, label %lor.rhs.if.end47_crit_edge208
  ]

lor.rhs.if.end47_crit_edge208:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

lor.rhs.if.end47_crit_edge207:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

lor.rhs.if.end47_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3389, i32 noundef 9, ptr noundef null) #10
  br label %cleanup172

if.end47:                                         ; preds = %lor.rhs.if.end47_crit_edge, %lor.rhs.if.end47_crit_edge207, %lor.rhs.if.end47_crit_edge208
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027078, i32 %8)
  %cmp51 = icmp ne i32 %8, 1027078
  %or.cond = select i1 %tobool.i.i, i1 %cmp51, i1 false
  br i1 %or.cond, label %do.end69, label %if.end85, !prof !345

do.end69:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3393, i32 noundef 9, ptr noundef null) #10
  br label %cleanup172

if.end85:                                         ; preds = %if.end47
  %conv87206 = zext i8 %5 to i32
  %15 = shl nuw nsw i32 %conv87206, 24
  %key_id = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd, ptr %igtk_cmd, i32 0, i32 2
  %16 = ptrtoint ptr %key_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %key_id, align 4
  %conv88 = zext i8 %sta_id to i32
  %17 = shl nuw i32 %conv88, 24
  %sta_id89 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd, ptr %igtk_cmd, i32 0, i32 3
  %18 = ptrtoint ptr %sta_id89 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sta_id89, align 4
  br i1 %remove_key, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sta_id)
  %cmp93 = icmp eq i8 %sta_id, -1
  br i1 %cmp93, label %if.then91.cleanup172_crit_edge, label %if.end96

if.then91.cleanup172_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup172

if.end96:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %igtk_cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %igtk_cmd, align 4
  %or = or i32 %20, 524288
  store i32 %or, ptr %igtk_cmd, align 4
  br label %do.end140

if.else:                                          ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #10
  %21 = call ptr @memset(ptr %seq, i32 255, i32 20)
  %22 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %8, label %cleanup [
    i32 1027078, label %sw.bb
    i32 1027083, label %if.else.sw.bb100_crit_edge
    i32 1027084, label %if.else.sw.bb100_crit_edge209
  ]

if.else.sw.bb100_crit_edge209:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb100

if.else.sw.bb100_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb100

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %igtk_cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %igtk_cmd, align 4
  %or99 = or i32 %24, 33554432
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.else.sw.bb100_crit_edge, %if.else.sw.bb100_crit_edge209
  %25 = ptrtoint ptr %igtk_cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %igtk_cmd, align 4
  %or102 = or i32 %26, 83886080
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb100, %sw.bb
  %storemerge = phi i32 [ %or99, %sw.bb ], [ %or102, %sw.bb100 ]
  %27 = ptrtoint ptr %igtk_cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %igtk_cmd, align 4
  %igtk = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd, ptr %igtk_cmd, i32 0, i32 1
  %key = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 7
  %28 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %keylen, align 2
  %conv104 = zext i8 %29 to i32
  %30 = call ptr @memcpy(ptr %igtk, ptr %key, i32 %conv104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027084, i32 %8)
  %cmp106 = icmp eq i32 %8, 1027084
  br i1 %cmp106, label %if.then108, label %sw.epilog.if.end111_crit_edge

sw.epilog.if.end111_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then108:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %or110 = or i32 %storemerge, 1048576
  %31 = ptrtoint ptr %igtk_cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or110, ptr %igtk_cmd, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %sw.epilog.if.end111_crit_edge
  call void @ieee80211_get_key_rx_seq(ptr noundef %keyconf, i32 noundef 0, ptr noundef nonnull %seq) #10
  %arrayidx = getelementptr inbounds i8, ptr %seq, i32 5
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %conv114 = zext i8 %33 to i64
  %arrayidx115 = getelementptr inbounds i8, ptr %seq, i32 4
  %34 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx115, align 4
  %conv116 = zext i8 %35 to i64
  %shl117 = shl nuw nsw i64 %conv116, 8
  %or118 = or i64 %shl117, %conv114
  %arrayidx119 = getelementptr inbounds i8, ptr %seq, i32 3
  %36 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %37 to i64
  %shl121 = shl nuw nsw i64 %conv120, 16
  %or122 = or i64 %or118, %shl121
  %arrayidx123 = getelementptr inbounds i8, ptr %seq, i32 2
  %38 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx123, align 2
  %conv124 = zext i8 %39 to i64
  %shl125 = shl nuw nsw i64 %conv124, 24
  %or126 = or i64 %or122, %shl125
  %arrayidx127 = getelementptr inbounds i8, ptr %seq, i32 1
  %40 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %41 to i64
  %shl129 = shl nuw nsw i64 %conv128, 32
  %or130 = or i64 %or126, %shl129
  %42 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %seq, align 4
  %conv132 = zext i8 %43 to i64
  %shl133 = shl nuw nsw i64 %conv132, 40
  %or134 = or i64 %or130, %shl133
  %44 = call i64 @llvm.bswap.i64(i64 %or134)
  %receive_seq_cnt = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd, ptr %igtk_cmd, i32 0, i32 4
  %45 = ptrtoint ptr %receive_seq_cnt to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %receive_seq_cnt, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #10
  br label %do.end140

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #10
  br label %cleanup172

do.end140:                                        ; preds = %if.end111, %if.end96
  %cond = phi ptr [ @.str.98, %if.end96 ], [ @.str.99, %if.end111 ]
  %46 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mvm, align 8
  %48 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %keyidx, align 1
  %conv144 = sext i8 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %49)
  %cmp145 = icmp sgt i8 %49, 5
  %cond147 = select i1 %cmp145, ptr @.str.100, ptr @.str.69
  %50 = ptrtoint ptr %sta_id89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sta_id89, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %47, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_send_sta_igtk, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond, ptr noundef nonnull %cond147, i32 noundef %conv144, i32 noundef %51) #10
  %52 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i204 = getelementptr %struct.iwl_fw, ptr %53, i32 0, i32 5, i32 8, i32 2
  %54 = ptrtoint ptr %arrayidx.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i.i.i204, align 4
  %56 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.i205.not = icmp eq i32 %56, 0
  br i1 %tobool.i.i205.not, label %if.then154, label %if.end170

if.then154:                                       ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %igtk_cmd_v1) #10
  %57 = ptrtoint ptr %igtk_cmd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %igtk_cmd, align 4
  %59 = ptrtoint ptr %igtk_cmd_v1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %igtk_cmd_v1, align 4
  %igtk157 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd_v1, ptr %igtk_cmd_v1, i32 0, i32 1
  %key_id158 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd_v1, ptr %igtk_cmd_v1, i32 0, i32 4
  %60 = ptrtoint ptr %key_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %key_id, align 4
  %62 = ptrtoint ptr %key_id158 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %key_id158, align 4
  %sta_id160 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd_v1, ptr %igtk_cmd_v1, i32 0, i32 5
  %63 = ptrtoint ptr %sta_id89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sta_id89, align 4
  %65 = ptrtoint ptr %sta_id160 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %sta_id160, align 4
  %receive_seq_cnt162 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd_v1, ptr %igtk_cmd_v1, i32 0, i32 6
  %receive_seq_cnt163 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd, ptr %igtk_cmd, i32 0, i32 4
  %66 = ptrtoint ptr %receive_seq_cnt163 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %receive_seq_cnt163, align 4
  %68 = ptrtoint ptr %receive_seq_cnt162 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %67, ptr %receive_seq_cnt162, align 4
  %igtk166 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd, ptr %igtk_cmd, i32 0, i32 1
  %69 = getelementptr inbounds %struct.iwl_mvm_mgmt_mcast_key_cmd_v1, ptr %igtk_cmd_v1, i32 0, i32 2
  %70 = call ptr @memset(ptr %69, i32 0, i32 32)
  %71 = call ptr @memcpy(ptr %igtk157, ptr %igtk166, i32 16)
  %call168 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 31, i32 noundef 0, i16 noundef zeroext 68, ptr noundef nonnull %igtk_cmd_v1) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %igtk_cmd_v1) #10
  br label %cleanup172

if.end170:                                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  %call171 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 31, i32 noundef 0, i16 noundef zeroext 52, ptr noundef nonnull %igtk_cmd) #10
  br label %cleanup172

cleanup172:                                       ; preds = %if.end170, %if.then154, %cleanup, %if.then91.cleanup172_crit_edge, %do.end69, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end69 ], [ %call171, %if.end170 ], [ %call168, %if.then154 ], [ -22, %cleanup ], [ 0, %if.then91.cleanup172_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %igtk_cmd) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iwl_mvm_set_sta_key(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef %sta, ptr noundef %keyconf, i8 noundef zeroext %key_offset, i1 noundef zeroext %mcast) unnamed_addr #0 align 64 {
entry:
  %seq = alloca %struct.ieee80211_key_seq, align 4
  %p1k = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #10
  %0 = call ptr @memset(ptr %seq, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %p1k) #10
  %tobool.not = icmp eq ptr %sta, null
  %1 = call ptr @memset(ptr %p1k, i32 255, i32 10)
  br i1 %tobool.not, label %if.else, label %if.end13.thread

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.else
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 8
  %6 = and i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.end13, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge
  %7 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.101) #10
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true
  %mcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 21
  %9 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %9)
  %sta_id.0 = load i32, ptr %mcast_sta, align 4
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 1
  %10 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %11)
  %cmp14 = icmp eq i32 %11, 1027074
  br i1 %cmp14, label %if.end.i, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end13.thread:                                  ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %mfp2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 19
  %12 = ptrtoint ptr %mfp2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mfp2, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3 = icmp ne i8 %13, 0
  %14 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %sta_id.051 = load i32, ptr %drv_priv.i, align 4
  %cipher52 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 1
  %15 = ptrtoint ptr %cipher52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cipher52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %16)
  %cmp1453 = icmp eq i32 %16, 1027074
  br i1 %cmp1453, label %if.then.i, label %if.end13.thread.if.end23_crit_edge

if.end13.thread.if.end23_crit_edge:               ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then.i:                                        ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  br label %iwl_mvm_get_mac_addr.exit

if.end.i:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp eq i32 %18, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.iwl_mvm_get_mac_addr.exit_crit_edge

if.end.i.iwl_mvm_get_mac_addr.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_mac_addr.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %ap_sta_id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %19 = ptrtoint ptr %ap_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ap_sta_id.i, align 8
  %conv.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp1.not.i = icmp eq i8 %20, -1
  br i1 %cmp1.not.i, label %land.lhs.true.i.iwl_mvm_get_mac_addr.exit_crit_edge, label %if.then3.i

land.lhs.true.i.iwl_mvm_get_mac_addr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_mac_addr.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %if.then3.i.do.end.i_crit_edge

if.then3.i.do.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %if.then3.i
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %land.lhs.true10.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true7.i
  %.b22.i = load i1, ptr @iwl_mvm_get_mac_addr.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true10.i.do.end.i_crit_edge, label %if.then12.i

land.lhs.true10.i.do.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_get_mac_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3471, ptr noundef nonnull @.str.37) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %land.lhs.true10.i.do.end.i_crit_edge, %land.lhs.true7.i.do.end.i_crit_edge, %if.then3.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %addr14.i = getelementptr inbounds %struct.ieee80211_sta, ptr %22, i32 0, i32 1
  br label %iwl_mvm_get_mac_addr.exit

iwl_mvm_get_mac_addr.exit:                        ; preds = %do.end.i, %land.lhs.true.i.iwl_mvm_get_mac_addr.exit_crit_edge, %if.end.i.iwl_mvm_get_mac_addr.exit_crit_edge, %if.then.i
  %mfp.0.off05562 = phi i1 [ %tobool3, %if.then.i ], [ false, %do.end.i ], [ false, %land.lhs.true.i.iwl_mvm_get_mac_addr.exit_crit_edge ], [ false, %if.end.i.iwl_mvm_get_mac_addr.exit_crit_edge ]
  %sta_id.05760 = phi i32 [ %sta_id.051, %if.then.i ], [ %sta_id.0, %do.end.i ], [ %sta_id.0, %land.lhs.true.i.iwl_mvm_get_mac_addr.exit_crit_edge ], [ %sta_id.0, %if.end.i.iwl_mvm_get_mac_addr.exit_crit_edge ]
  %retval.0.i = phi ptr [ %addr.i, %if.then.i ], [ %addr14.i, %do.end.i ], [ null, %land.lhs.true.i.iwl_mvm_get_mac_addr.exit_crit_edge ], [ null, %if.end.i.iwl_mvm_get_mac_addr.exit_crit_edge ]
  call void @ieee80211_get_key_rx_seq(ptr noundef %keyconf, i32 noundef 0, ptr noundef nonnull %seq) #10
  %23 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seq, align 4
  call void @ieee80211_get_tkip_rx_p1k(ptr noundef %keyconf, ptr noundef %retval.0.i, i32 noundef %24, ptr noundef nonnull %p1k) #10
  %25 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seq, align 4
  %call22 = call fastcc i32 @iwl_mvm_send_sta_key(ptr noundef %mvm, i32 noundef %sta_id.05760, ptr noundef %keyconf, i1 noundef zeroext %mcast, i32 noundef %26, ptr noundef nonnull %p1k, i32 noundef 0, i8 noundef zeroext %key_offset, i1 noundef zeroext %mfp.0.off05562)
  br label %cleanup

if.end23:                                         ; preds = %if.end13.thread.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %sta_id.056 = phi i32 [ %sta_id.051, %if.end13.thread.if.end23_crit_edge ], [ %sta_id.0, %if.end13.if.end23_crit_edge ]
  %mfp.0.off054 = phi i1 [ %tobool3, %if.end13.thread.if.end23_crit_edge ], [ false, %if.end13.if.end23_crit_edge ]
  %call26 = tail call fastcc i32 @iwl_mvm_send_sta_key(ptr noundef %mvm, i32 noundef %sta_id.056, ptr noundef %keyconf, i1 noundef zeroext %mcast, i32 noundef 0, ptr noundef null, i32 noundef 0, i8 noundef zeroext %key_offset, i1 noundef zeroext %mfp.0.off054)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %iwl_mvm_get_mac_addr.exit, %do.end
  %retval.0 = phi i32 [ %call22, %iwl_mvm_get_mac_addr.exit ], [ %call26, %if.end23 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %p1k) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iwl_mvm_remove_sta_key(ptr noundef %mvm, i8 noundef zeroext %sta_id, ptr nocapture noundef readonly %keyconf, i1 noundef zeroext %mcast) unnamed_addr #0 align 64 {
entry:
  %u = alloca %union.anon.169, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %u) #10
  %0 = call ptr @memcpy(ptr %u, ptr @__const.__iwl_mvm_remove_sta_key.u, i32 76)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 7
  %3 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %_api.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sta_id)
  %cmp = icmp eq i8 %sta_id, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %6 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %keyidx, align 1
  %8 = and i8 %7, 3
  %conv5 = zext i8 %8 to i16
  %spec.select.v = select i1 %mcast, i16 2120, i16 2056
  %spec.select = or i16 %spec.select.v, %conv5
  %key_flags15 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 2
  %9 = ptrtoint ptr %key_flags15 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %spec.select, ptr %key_flags15, align 1
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %10 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_key_idx, align 2
  %key_offset = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 1
  %12 = ptrtoint ptr %key_offset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %key_offset, align 1
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %sta_id, ptr %u, align 1
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %status, align 4
  %conv21 = select i1 %tobool.i.not, i16 64, i16 76
  %call22 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 23, i16 noundef zeroext %conv21, ptr noundef nonnull %u, ptr noundef nonnull %status) #10
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cond38 = icmp eq i32 %16, 1
  %17 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mvm, align 8
  br i1 %cond38, label %do.end, label %sw.default

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_remove_sta_key, ptr noundef nonnull @.str.102) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.103) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call22, %do.end ], [ -5, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %u) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_remove_sta_key(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef readonly %sta, ptr noundef %keyconf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 8
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool = icmp ne i16 %2, 0
  %lnot = xor i1 %tobool, true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !338

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3634, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %if.end.i, label %iwl_mvm_get_key_sta.exit.thread173

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.land.lhs.true_crit_edge

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %if.end.i
  %ap_sta_id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %6 = ptrtoint ptr %ap_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ap_sta_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp2.not.i = icmp eq i8 %7, -1
  br i1 %cmp2.not.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %if.then4.i

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then4.i:                                       ; preds = %land.lhs.true.i
  %conv.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.then4.i.do.end19.i_crit_edge

if.then4.i.do.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %call9.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %lor.lhs.false.i.do.end19.i_crit_edge

lor.lhs.false.i.do.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

land.lhs.true11.i:                                ; preds = %lor.lhs.false.i
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.do.end19.i_crit_edge, label %land.lhs.true14.i

land.lhs.true11.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %.b33.i = load i1, ptr @iwl_mvm_get_key_sta.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true14.i.do.end19.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_get_key_sta.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3193, ptr noundef nonnull @.str.44) #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.do.end19.i_crit_edge, %land.lhs.true11.i.do.end19.i_crit_edge, %lor.lhs.false.i.do.end19.i_crit_edge, %if.then4.i.do.end19.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %9, null
  %cmp.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i35.i = getelementptr inbounds %struct.ieee80211_sta, ptr %9, i32 0, i32 29
  %tobool28.not = icmp eq ptr %drv_priv.i35.i, null
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %do.end19.i.land.lhs.true_crit_edge, label %do.end19.i.if.then29_crit_edge

do.end19.i.if.then29_crit_edge:                   ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

do.end19.i.land.lhs.true_crit_edge:               ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

iwl_mvm_get_key_sta.exit.thread173:               ; preds = %if.end
  %drv_priv.i34.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %tobool28.not175 = icmp eq ptr %drv_priv.i34.i, null
  br i1 %tobool28.not175, label %iwl_mvm_get_key_sta.exit.thread173.do.end47_crit_edge, label %iwl_mvm_get_key_sta.exit.thread173.if.then29_crit_edge

iwl_mvm_get_key_sta.exit.thread173.if.then29_crit_edge: ; preds = %iwl_mvm_get_key_sta.exit.thread173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

iwl_mvm_get_key_sta.exit.thread173.do.end47_crit_edge: ; preds = %iwl_mvm_get_key_sta.exit.thread173
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then29:                                        ; preds = %iwl_mvm_get_key_sta.exit.thread173.if.then29_crit_edge, %do.end19.i.if.then29_crit_edge
  %retval.1.i176 = phi ptr [ %drv_priv.i34.i, %iwl_mvm_get_key_sta.exit.thread173.if.then29_crit_edge ], [ %drv_priv.i35.i, %do.end19.i.if.then29_crit_edge ]
  %10 = ptrtoint ptr %retval.1.i176 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retval.1.i176, align 8
  %conv31 = trunc i32 %11 to i8
  br label %do.end47

land.lhs.true:                                    ; preds = %do.end19.i.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp33 = icmp ne i32 %13, 3
  %brmerge = select i1 %cmp33, i1 true, i1 %tobool
  br i1 %brmerge, label %land.lhs.true.do.end47_crit_edge, label %if.then38

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %mcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 21
  %14 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mcast_sta, align 4
  %conv41 = trunc i32 %15 to i8
  br label %do.end47

do.end47:                                         ; preds = %if.then38, %land.lhs.true.do.end47_crit_edge, %if.then29, %iwl_mvm_get_key_sta.exit.thread173.do.end47_crit_edge
  %tobool28.not169 = phi i1 [ true, %if.then29 ], [ false, %if.then38 ], [ false, %land.lhs.true.do.end47_crit_edge ], [ false, %iwl_mvm_get_key_sta.exit.thread173.do.end47_crit_edge ]
  %sta_id.0 = phi i8 [ %conv31, %if.then29 ], [ %conv41, %if.then38 ], [ -1, %land.lhs.true.do.end47_crit_edge ], [ -1, %iwl_mvm_get_key_sta.exit.thread173.do.end47_crit_edge ]
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %18 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %keyidx, align 1
  %conv48 = sext i8 %19 to i32
  %conv49 = zext i8 %sta_id.0 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_sta_key, ptr noundef nonnull @.str.40, i32 noundef %conv48, i32 noundef %conv49) #10
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 1
  %20 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cipher, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %21, label %if.end63 [
    i32 1027078, label %do.end47.if.then61_crit_edge
    i32 1027083, label %do.end47.if.then61_crit_edge181
    i32 1027084, label %do.end47.if.then61_crit_edge182
  ]

do.end47.if.then61_crit_edge182:                  ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

do.end47.if.then61_crit_edge181:                  ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

do.end47.if.then61_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.then61:                                        ; preds = %do.end47.if.then61_crit_edge, %do.end47.if.then61_crit_edge181, %do.end47.if.then61_crit_edge182
  %call62 = tail call fastcc i32 @iwl_mvm_send_sta_igtk(ptr noundef %mvm, ptr noundef %keyconf, i8 noundef zeroext %sta_id.0, i1 noundef zeroext true)
  br label %cleanup

if.end63:                                         ; preds = %do.end47
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %23 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hw_key_idx, align 2
  %conv64 = zext i8 %24 to i32
  %fw_key_table = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 90
  %rem.i = and i32 %conv64, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div6.i = lshr i32 %conv64, 5
  %add.ptr.i = getelementptr i32, ptr %fw_key_table, i32 %div6.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %26, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %27 = and i32 %shl.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool66.not = icmp eq i32 %27, 0
  br i1 %tobool66.not, label %do.end71, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end63
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 0
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp81.not = icmp eq i8 %29, -1
  br i1 %cmp81.not, label %for.body.preheader.for.inc_crit_edge, label %if.then83

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mvm, align 8
  %32 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hw_key_idx, align 2
  %conv74 = zext i8 %33 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %conv74) #10
  br label %cleanup

if.then83:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nuw i8 %29, 1
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %inc, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then83, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 1
  %35 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp81.not.1 = icmp eq i8 %36, -1
  br i1 %cmp81.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then83.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then83.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1 = add nuw i8 %36, 1
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %inc.1, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then83.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 2
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp81.not.2 = icmp eq i8 %39, -1
  br i1 %cmp81.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then83.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then83.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %inc.2 = add nuw i8 %39, 1
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %inc.2, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then83.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 3
  %41 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp81.not.3 = icmp eq i8 %42, -1
  br i1 %cmp81.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then83.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then83.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %inc.3 = add nuw i8 %42, 1
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %inc.3, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then83.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 4
  %44 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp81.not.4 = icmp eq i8 %45, -1
  br i1 %cmp81.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then83.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then83.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %inc.4 = add nuw i8 %45, 1
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %inc.4, ptr %arrayidx.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then83.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp81.not.5 = icmp eq i8 %48, -1
  br i1 %cmp81.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then83.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then83.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %inc.5 = add nuw i8 %48, 1
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %inc.5, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then83.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 6
  %50 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp81.not.6 = icmp eq i8 %51, -1
  br i1 %cmp81.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then83.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then83.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %inc.6 = add nuw i8 %51, 1
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %inc.6, ptr %arrayidx.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then83.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 7
  %53 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp81.not.7 = icmp eq i8 %54, -1
  br i1 %cmp81.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then83.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then83.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %inc.7 = add nuw i8 %54, 1
  %55 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %inc.7, ptr %arrayidx.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then83.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 8
  %56 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %cmp81.not.8 = icmp eq i8 %57, -1
  br i1 %cmp81.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then83.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

if.then83.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  %inc.8 = add nuw i8 %57, 1
  %58 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %inc.8, ptr %arrayidx.8, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then83.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 9
  %59 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp81.not.9 = icmp eq i8 %60, -1
  br i1 %cmp81.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then83.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.9

if.then83.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  %inc.9 = add nuw i8 %60, 1
  %61 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %inc.9, ptr %arrayidx.9, align 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then83.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 10
  %62 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp81.not.10 = icmp eq i8 %63, -1
  br i1 %cmp81.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then83.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

if.then83.10:                                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  %inc.10 = add nuw i8 %63, 1
  %64 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %inc.10, ptr %arrayidx.10, align 1
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then83.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 11
  %65 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp81.not.11 = icmp eq i8 %66, -1
  br i1 %cmp81.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.then83.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.11

if.then83.11:                                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  %inc.11 = add nuw i8 %66, 1
  %67 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %inc.11, ptr %arrayidx.11, align 1
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then83.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 12
  %68 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp81.not.12 = icmp eq i8 %69, -1
  br i1 %cmp81.not.12, label %for.inc.11.for.inc.12_crit_edge, label %if.then83.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.12

if.then83.12:                                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  %inc.12 = add nuw i8 %69, 1
  %70 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %inc.12, ptr %arrayidx.12, align 1
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then83.12, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 13
  %71 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp81.not.13 = icmp eq i8 %72, -1
  br i1 %cmp81.not.13, label %for.inc.12.for.inc.13_crit_edge, label %if.then83.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.13

if.then83.13:                                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  %inc.13 = add nuw i8 %72, 1
  %73 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %inc.13, ptr %arrayidx.13, align 1
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then83.13, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 14
  %74 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp81.not.14 = icmp eq i8 %75, -1
  br i1 %cmp81.not.14, label %for.inc.13.for.inc.14_crit_edge, label %if.then83.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.14

if.then83.14:                                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  %inc.14 = add nuw i8 %75, 1
  %76 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %inc.14, ptr %arrayidx.14, align 1
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then83.14, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 15
  %77 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %cmp81.not.15 = icmp eq i8 %78, -1
  br i1 %cmp81.not.15, label %for.inc.14.for.inc.15_crit_edge, label %if.then83.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.15

if.then83.15:                                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #12
  %inc.15 = add nuw i8 %78, 1
  %79 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %inc.15, ptr %arrayidx.15, align 1
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then83.15, %for.inc.14.for.inc.15_crit_edge
  %80 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hw_key_idx, align 2
  %idxprom = zext i8 %81 to i32
  %arrayidx90 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 91, i32 %idxprom
  %82 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx90, align 1
  %brmerge166 = or i1 %tobool.not.i, %tobool28.not169
  br i1 %brmerge166, label %if.end102, label %do.end98

do.end98:                                         ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %84, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_sta_key, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end102:                                        ; preds = %for.inc.15
  %call104 = tail call fastcc i32 @__iwl_mvm_remove_sta_key(ptr noundef %mvm, i8 noundef zeroext %sta_id.0, ptr noundef %keyconf, i1 noundef zeroext %lnot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  %85 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cipher, align 8
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %86, label %if.end107.cleanup_crit_edge [
    i32 1027073, label %if.end107.if.then115_crit_edge
    i32 1027077, label %if.end107.if.then115_crit_edge183
  ]

if.end107.if.then115_crit_edge183:                ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then115

if.end107.if.then115_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then115

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then115:                                       ; preds = %if.end107.if.then115_crit_edge, %if.end107.if.then115_crit_edge183
  %call119 = tail call fastcc i32 @__iwl_mvm_remove_sta_key(ptr noundef %mvm, i8 noundef zeroext %sta_id.0, ptr noundef %keyconf, i1 noundef zeroext %tobool)
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.end107.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %do.end98, %do.end71, %if.then61
  %retval.0 = phi i32 [ %call62, %if.then61 ], [ 0, %do.end98 ], [ -2, %do.end71 ], [ %call104, %if.end102.cleanup_crit_edge ], [ %call119, %if.then115 ], [ 0, %if.end107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_update_tkip_key(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef %keyconf, ptr noundef readonly %sta, i32 noundef %iv32, ptr nocapture noundef readonly %phase1key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 8
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %tobool1.not = icmp eq ptr %sta, null
  br i1 %tobool1.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mfp2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 19
  %3 = ptrtoint ptr %mfp2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mfp2, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3 = icmp ne i8 %4, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %tobool3, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  %5 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %cond.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

cond.end.rcu_read_lock.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %cond.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %cond.end.rcu_read_lock.exit_crit_edge
  br i1 %tobool1.not, label %if.end.i, label %rcu_read_lock.exit.iwl_mvm_get_key_sta.exit_crit_edge

rcu_read_lock.exit.iwl_mvm_get_key_sta.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_key_sta.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %land.lhs.true.i65, label %if.end.i.land.rhs_crit_edge

if.end.i.land.rhs_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.lhs.true.i65:                                ; preds = %if.end.i
  %ap_sta_id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %11 = ptrtoint ptr %ap_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ap_sta_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp2.not.i = icmp eq i8 %12, -1
  br i1 %cmp2.not.i, label %land.lhs.true.i65.land.rhs_crit_edge, label %if.then4.i

land.lhs.true.i65.land.rhs_crit_edge:             ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.then4.i:                                       ; preds = %land.lhs.true.i65
  %conv.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %if.then4.i.do.end19.i_crit_edge

if.then4.i.do.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %call9.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %lor.lhs.false.i.do.end19.i_crit_edge

lor.lhs.false.i.do.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

land.lhs.true11.i:                                ; preds = %lor.lhs.false.i
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.do.end19.i_crit_edge, label %land.lhs.true14.i

land.lhs.true11.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %.b33.i = load i1, ptr @iwl_mvm_get_key_sta.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true14.i.do.end19.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end19.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_get_key_sta.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3193, ptr noundef nonnull @.str.44) #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.do.end19.i_crit_edge, %land.lhs.true11.i.do.end19.i_crit_edge, %lor.lhs.false.i.do.end19.i_crit_edge, %if.then4.i.do.end19.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %14, null
  %cmp.i.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end19.i.land.rhs_crit_edge, label %do.end19.i.iwl_mvm_get_key_sta.exit_crit_edge

do.end19.i.iwl_mvm_get_key_sta.exit_crit_edge:    ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_key_sta.exit

do.end19.i.land.rhs_crit_edge:                    ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

iwl_mvm_get_key_sta.exit:                         ; preds = %do.end19.i.iwl_mvm_get_key_sta.exit_crit_edge, %rcu_read_lock.exit.iwl_mvm_get_key_sta.exit_crit_edge
  %sta.pn = phi ptr [ %14, %do.end19.i.iwl_mvm_get_key_sta.exit_crit_edge ], [ %sta, %rcu_read_lock.exit.iwl_mvm_get_key_sta.exit_crit_edge ]
  %retval.1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.pn, i32 0, i32 29
  %tobool7.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool7.not, label %iwl_mvm_get_key_sta.exit.land.rhs_crit_edge, label %if.end49.critedge

iwl_mvm_get_key_sta.exit.land.rhs_crit_edge:      ; preds = %iwl_mvm_get_key_sta.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %iwl_mvm_get_key_sta.exit.land.rhs_crit_edge, %do.end19.i.land.rhs_crit_edge, %land.lhs.true.i65.land.rhs_crit_edge, %if.end.i.land.rhs_crit_edge
  %.b61 = load i1, ptr @iwl_mvm_update_tkip_key.__already_done, align 1
  br i1 %.b61, label %land.rhs.unlock_crit_edge, label %if.then, !prof !336

land.rhs.unlock_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_update_tkip_key.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3695, i32 noundef 9, ptr noundef null) #10
  br label %unlock

if.end49.critedge:                                ; preds = %iwl_mvm_get_key_sta.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %retval.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %retval.1.i, align 8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %17 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hw_key_idx, align 2
  %call52 = tail call fastcc i32 @iwl_mvm_send_sta_key(ptr noundef %mvm, i32 noundef %16, ptr noundef %keyconf, i1 noundef zeroext %tobool.not, i32 noundef %iv32, ptr noundef %phase1key, i32 noundef 1, i8 noundef zeroext %18, i1 noundef zeroext %cond)
  br label %unlock

unlock:                                           ; preds = %if.end49.critedge, %if.then, %land.rhs.unlock_crit_edge
  %call.i66 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i66, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %unlock
  %call1.i67 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %19 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i73 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i74, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_send_sta_key(ptr noundef %mvm, i32 noundef %sta_id, ptr noundef %key, i1 noundef zeroext %mcast, i32 noundef %tkip_iv32, ptr nocapture noundef readonly %tkip_p1k, i32 noundef %cmd_flags, i8 noundef zeroext %key_offset, i1 noundef zeroext %mfp) unnamed_addr #0 align 64 {
entry:
  %u = alloca %union.anon.170, align 1
  %status = alloca i32, align 4
  %seq = alloca %struct.ieee80211_key_seq, align 4
  %_rx_pn = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %u) #10
  %0 = call ptr @memcpy(ptr %u, ptr @__const.iwl_mvm_send_sta_key.u, i32 76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 7
  %3 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %_api.i, align 4
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  %conv = select i1 %tobool.i.not, i8 1, i8 2
  %call4 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 23, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sta_id)
  %cmp = icmp eq i32 %sta_id, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %keyidx7 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %6 = ptrtoint ptr %keyidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %keyidx7, align 1
  %8 = and i8 %7, 3
  %conv10 = zext i8 %8 to i16
  %or = or i16 %conv10, 2048
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %10, label %sw.default [
    i32 1027074, label %sw.bb
    i32 1027076, label %sw.bb32
    i32 1027077, label %sw.bb49
    i32 1027073, label %if.end.sw.bb53_crit_edge
    i32 1027081, label %sw.bb64
    i32 1027080, label %if.end.sw.bb68_crit_edge
  ]

if.end.sw.bb68_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb68

if.end.sw.bb53_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53

sw.bb:                                            ; preds = %if.end
  %12 = or i16 %conv10, 2816
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4)
  %cmp15 = icmp ugt i8 %call4, 1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %tx_mic_key = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd, ptr %u, i32 0, i32 2
  %key18 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx = getelementptr [0 x i8], ptr %key18, i32 0, i32 16
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %tx_mic_key to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %tx_mic_key, align 1
  %rx_mic_key = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd, ptr %u, i32 0, i32 1
  %arrayidx20 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %arrayidx20, align 1
  %18 = ptrtoint ptr %rx_mic_key to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %rx_mic_key, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #10
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %key) #10
  br label %if.end27

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv22 = trunc i32 %tkip_iv32 to i8
  %tkip_rx_tsc_byte2 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd_v1, ptr %u, i32 0, i32 1
  %19 = ptrtoint ptr %tkip_rx_tsc_byte2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22, ptr %tkip_rx_tsc_byte2, align 1
  %20 = ptrtoint ptr %tkip_p1k to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tkip_p1k, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %arrayidx26 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd_v1, ptr %u, i32 0, i32 3, i32 0
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %arrayidx26, align 1
  %arrayidx25.1 = getelementptr i16, ptr %tkip_p1k, i32 1
  %24 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx25.1, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %arrayidx26.1 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd_v1, ptr %u, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %arrayidx26.1, align 1
  %arrayidx25.2 = getelementptr i16, ptr %tkip_p1k, i32 2
  %28 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx25.2, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %arrayidx26.2 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd_v1, ptr %u, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %arrayidx26.2, align 1
  %arrayidx25.3 = getelementptr i16, ptr %tkip_p1k, i32 3
  %32 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx25.3, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %arrayidx26.3 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd_v1, ptr %u, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %arrayidx26.3, align 1
  %arrayidx25.4 = getelementptr i16, ptr %tkip_p1k, i32 4
  %36 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx25.4, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %arrayidx26.4 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd_v1, ptr %u, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %arrayidx26.4, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then17
  %pn.0 = phi i64 [ %call.i, %if.then17 ], [ 0, %if.else ]
  %key28 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 3
  %key29 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %40 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %keylen, align 2
  %conv31 = zext i8 %41 to i32
  %42 = call ptr @memcpy(ptr %key28, ptr %key29, i32 %conv31)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %43 = or i16 %conv10, 2560
  %key37 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 3
  %key39 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen41 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %44 = ptrtoint ptr %keylen41 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %keylen41, align 2
  %conv42 = zext i8 %45 to i32
  %46 = call ptr @memcpy(ptr %key37, ptr %key39, i32 %conv42)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4)
  %cmp43 = icmp ugt i8 %call4, 1
  br i1 %cmp43, label %if.then45, label %sw.bb32.sw.epilog_crit_edge

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then45:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i305 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #10
  %call.i306 = tail call i64 @generic_atomic64_read(ptr noundef %key) #10
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %47 = or i16 %conv10, 2064
  br label %sw.bb53

sw.bb53:                                          ; preds = %sw.bb49, %if.end.sw.bb53_crit_edge
  %key_flags.0 = phi i16 [ %or, %if.end.sw.bb53_crit_edge ], [ %47, %sw.bb49 ]
  %48 = or i16 %key_flags.0, 256
  %add.ptr = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 3, i32 3
  %key60 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen62 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %49 = ptrtoint ptr %keylen62 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %keylen62, align 2
  %conv63 = zext i8 %50 to i32
  %51 = call ptr @memcpy(ptr %add.ptr, ptr %key60, i32 %conv63)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %52 = or i16 %conv10, 2064
  br label %sw.bb68

sw.bb68:                                          ; preds = %sw.bb64, %if.end.sw.bb68_crit_edge
  %key_flags.1 = phi i16 [ %or, %if.end.sw.bb68_crit_edge ], [ %52, %sw.bb64 ]
  %53 = or i16 %key_flags.1, 1280
  %key73 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 3
  %key75 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen77 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %54 = ptrtoint ptr %keylen77 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %keylen77, align 2
  %conv78 = zext i8 %55 to i32
  %56 = call ptr @memcpy(ptr %key73, ptr %key75, i32 %conv78)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4)
  %cmp79 = icmp ugt i8 %call4, 1
  br i1 %cmp79, label %if.then81, label %sw.bb68.sw.epilog_crit_edge

sw.bb68.sw.epilog_crit_edge:                      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then81:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i307 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #10
  %call.i308 = tail call i64 @generic_atomic64_read(ptr noundef %key) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %57 = or i16 %conv10, 3072
  %key89 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 3
  %key91 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen93 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %58 = ptrtoint ptr %keylen93 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %keylen93, align 2
  %conv94 = zext i8 %59 to i32
  %60 = call ptr @memcpy(ptr %key89, ptr %key91, i32 %conv94)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then81, %sw.bb68.sw.epilog_crit_edge, %sw.bb53, %if.then45, %sw.bb32.sw.epilog_crit_edge, %if.end27
  %key_flags.2 = phi i16 [ %57, %sw.default ], [ %53, %if.then81 ], [ %53, %sw.bb68.sw.epilog_crit_edge ], [ %48, %sw.bb53 ], [ %43, %if.then45 ], [ %43, %sw.bb32.sw.epilog_crit_edge ], [ %12, %if.end27 ]
  %pn.1 = phi i64 [ 0, %sw.default ], [ %call.i308, %if.then81 ], [ 0, %sw.bb68.sw.epilog_crit_edge ], [ 0, %sw.bb53 ], [ %call.i306, %if.then45 ], [ 0, %sw.bb32.sw.epilog_crit_edge ], [ %pn.0, %if.end27 ]
  %61 = or i16 %key_flags.2, 64
  %spec.select = select i1 %mcast, i16 %61, i16 %key_flags.2
  %62 = or i16 %spec.select, 128
  %key_flags.4 = select i1 %mfp, i16 %62, i16 %spec.select
  %key_offset108 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 1
  %63 = ptrtoint ptr %key_offset108 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %key_offset, ptr %key_offset108, align 1
  %key_flags110 = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 2
  %64 = ptrtoint ptr %key_flags110 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %key_flags.4, ptr %key_flags110, align 1
  %conv111 = trunc i32 %sta_id to i8
  %65 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv111, ptr %u, align 1
  %66 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %67)
  %cmp115 = icmp ne i32 %67, 1027074
  %i.1 = sext i1 %cmp115 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call4)
  %cmp125 = icmp ugt i8 %call4, 2
  %cond127 = select i1 %cmp125, i32 0, i32 2
  %68 = and i16 %key_flags.4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool158.not = icmp eq i16 %68, 0
  %seq_len = getelementptr inbounds %struct.anon.168, ptr %seq, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds i8, ptr %_rx_pn, i32 1
  %arrayidx171 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 2
  %add172 = add nuw nsw i32 %cond127, 2
  %arrayidx173 = getelementptr i8, ptr %_rx_pn, i32 %add172
  %arrayidx175 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 3
  %add176 = add nuw nsw i32 %cond127, 3
  %arrayidx177 = getelementptr i8, ptr %_rx_pn, i32 %add176
  %arrayidx179 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 4
  %add180 = or i32 %cond127, 4
  %arrayidx181 = getelementptr i8, ptr %_rx_pn, i32 %add180
  %arrayidx183 = getelementptr inbounds [6 x i8], ptr %seq, i32 0, i32 5
  %add184 = or i32 %cond127, 5
  %arrayidx185 = getelementptr i8, ptr %_rx_pn, i32 %add184
  %rx_secur_seq_cnt = getelementptr inbounds %struct.iwl_mvm_add_sta_key_common, ptr %u, i32 0, i32 4
  br label %for.body123

for.body123:                                      ; preds = %if.end195.for.body123_crit_edge, %sw.epilog
  %i.2312 = phi i32 [ %i.1, %sw.epilog ], [ %inc197, %if.end195.for.body123_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #10
  %69 = call ptr @memset(ptr %seq, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_rx_pn) #10
  %70 = call ptr @memset(ptr %_rx_pn, i32 0, i32 16)
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.2312, ptr noundef nonnull %seq) #10
  %71 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %72)
  %cmp129 = icmp eq i32 %72, 1027074
  br i1 %cmp129, label %if.then131, label %if.else155

if.then131:                                       ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx179, align 4
  %conv132 = trunc i16 %74 to i8
  %75 = ptrtoint ptr %_rx_pn to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv132, ptr %_rx_pn, align 1
  %76 = lshr i16 %74, 8
  %conv136 = trunc i16 %76 to i8
  %77 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv136, ptr %arrayidx169, align 1
  %78 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %seq, align 4
  %conv138 = trunc i32 %79 to i8
  %80 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv138, ptr %arrayidx173, align 1
  %shr141 = lshr i32 %79, 8
  %conv142 = trunc i32 %shr141 to i8
  %81 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv142, ptr %arrayidx177, align 1
  %shr146 = lshr i32 %79, 16
  %conv147 = trunc i32 %shr146 to i8
  %82 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv147, ptr %arrayidx181, align 1
  %shr151 = lshr i32 %79, 24
  %conv152 = trunc i32 %shr151 to i8
  %83 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv152, ptr %arrayidx185, align 1
  br label %if.end187

if.else155:                                       ; preds = %for.body123
  br i1 %tobool158.not, label %if.else163, label %if.then159

if.then159:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %seq_len to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %seq_len, align 4
  %conv162 = zext i8 %85 to i32
  br label %if.end187

if.else163:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %seq, align 4
  %88 = ptrtoint ptr %_rx_pn to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %_rx_pn, align 1
  %89 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx168, align 1
  %91 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx169, align 1
  %92 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx171, align 2
  %94 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx173, align 1
  %95 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx175, align 1
  %97 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx177, align 1
  %98 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx179, align 4
  %100 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx181, align 1
  %101 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx183, align 1
  %103 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx185, align 1
  br label %if.end187

if.end187:                                        ; preds = %if.else163, %if.then159, %if.then131
  %rx_pn.0 = phi ptr [ %_rx_pn, %if.then131 ], [ %seq, %if.then159 ], [ %_rx_pn, %if.else163 ]
  %rx_pn_len.0 = phi i32 [ 8, %if.then131 ], [ %conv162, %if.then159 ], [ 8, %if.else163 ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end187
  %i.0.in.i = phi i32 [ %rx_pn_len.0, %if.end187 ], [ %i.0.i, %if.end.i.for.cond.i_crit_edge ]
  %i.0.i = add nsw i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i)
  %cmp.i = icmp sgt i32 %i.0.in.i, 0
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.if.end195_crit_edge

for.cond.i.if.end195_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i8, ptr %rx_pn.0, i32 %i.0.i
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %rx_secur_seq_cnt, i32 %i.0.i
  %106 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %107)
  %cmp3.i = icmp ugt i8 %105, %107
  br i1 %cmp3.i, label %if.then192, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %cmp9.i = icmp ult i8 %105, %107
  br i1 %cmp9.i, label %if.end.i.if.end195_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end.i.if.end195_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then192:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = call ptr @memcpy(ptr %rx_secur_seq_cnt, ptr %rx_pn.0, i32 %rx_pn_len.0)
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end.i.if.end195_crit_edge, %for.cond.i.if.end195_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_rx_pn) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #10
  %inc197 = add nsw i32 %i.2312, 1
  %exitcond.not = icmp eq i32 %inc197, 16
  br i1 %exitcond.not, label %for.end198, label %if.end195.for.body123_crit_edge

if.end195.for.body123_crit_edge:                  ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body123

for.end198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4)
  %cmp199 = icmp ugt i8 %call4, 1
  br i1 %cmp199, label %if.then201, label %for.end198.if.end203_crit_edge

for.end198.if.end203_crit_edge:                   ; preds = %for.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then201:                                       ; preds = %for.end198
  call void @__sanitizer_cov_trace_pc() #12
  %109 = call i64 @llvm.bswap.i64(i64 %pn.1)
  %transmit_seq_cnt = getelementptr inbounds %struct.iwl_mvm_add_sta_key_cmd, ptr %u, i32 0, i32 3
  %110 = ptrtoint ptr %transmit_seq_cnt to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %109, ptr %transmit_seq_cnt, align 1
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %for.end198.if.end203_crit_edge
  %size.0 = phi i16 [ 76, %if.then201 ], [ 64, %for.end198.if.end203_crit_edge ]
  %111 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %status, align 4
  %and204 = and i32 %cmd_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.else209, label %if.then206

if.then206:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  %call208 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 23, i32 noundef 1, i16 noundef zeroext %size.0, ptr noundef nonnull %u) #10
  br label %if.end212

if.else209:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  %call211 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 23, i16 noundef zeroext %size.0, ptr noundef nonnull %u, ptr noundef nonnull %status) #10
  br label %if.end212

if.end212:                                        ; preds = %if.else209, %if.then206
  %ret.0 = phi i32 [ %call208, %if.then206 ], [ %call211, %if.else209 ]
  %112 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cond235 = icmp eq i32 %113, 1
  %114 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mvm, align 8
  br i1 %cond235, label %do.end, label %sw.default217

do.end:                                           ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %115, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_send_sta_key, ptr noundef nonnull @.str.106) #10
  br label %cleanup

sw.default217:                                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %115, i32 noundef 0, ptr noundef nonnull @.str.107) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default217, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %do.end ], [ -5, %sw.default217 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %u) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_sta_modify_ps_wake(ptr noundef %mvm, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 47)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd, align 1
  %mac_id_n_color = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %mac_id_n_color1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %mac_id_n_color1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id_n_color1, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %mac_id_n_color, align 1
  %sta_id = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_priv.i, align 8
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %sta_id, align 1
  %station_flags_msk = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 10
  %10 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 65536, ptr %station_flags_msk, align 1
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %11 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %12, i32 0, i32 5, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge

entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %12, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_api.i.i, align 4
  %18 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call5 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 1, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %iwl_mvm_add_sta_cmd_size.exit.if.end_crit_edge, label %do.end

iwl_mvm_add_sta_cmd_size.exit.if.end_crit_edge:   ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %call5) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %iwl_mvm_add_sta_cmd_size.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_sta_modify_sleep_tx_count(ptr noundef %mvm, ptr noundef %sta, i32 noundef %reason, i16 noundef zeroext %cnt, i16 noundef zeroext %tids, i1 noundef zeroext %more_data, i1 noundef zeroext %single_sta_queue) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %_tids = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 47)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd, align 1
  %mac_id_n_color = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %mac_id_n_color2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %mac_id_n_color2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id_n_color2, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %mac_id_n_color, align 1
  %sta_id = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_priv.i, align 8
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %sta_id, align 1
  %modify_mask = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 7
  %10 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %modify_mask, align 1
  %sleep_tx_count = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 14
  %11 = tail call i16 @llvm.bswap.i16(i16 %cnt)
  %12 = ptrtoint ptr %sleep_tx_count to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %sleep_tx_count, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_tids) #10
  %conv4 = zext i16 %tids to i32
  %13 = ptrtoint ptr %_tids to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4, ptr %_tids, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %_tids, i32 noundef 8, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5)
  %cmp143 = icmp slt i32 %call5, 8
  br i1 %cmp143, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %awake_acs = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %tid.0144 = phi i32 [ %call5, %for.body.lr.ph ], [ %call10, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr @tid_to_ucode_ac, i32 0, i32 %tid.0144
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv7
  %16 = ptrtoint ptr %awake_acs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %awake_acs, align 1
  %18 = trunc i32 %shl to i8
  %conv9 = or i8 %17, %18
  store i8 %conv9, ptr %awake_acs, align 1
  %add = add nsw i32 %tid.0144, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %_tids, i32 noundef 8, i32 noundef %add) #10
  %cmp = icmp slt i32 %call10, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  br i1 %single_sta_queue, label %if.then, label %if.end74

if.then:                                          ; preds = %for.end
  %conv11 = zext i16 %cnt to i32
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %_tids, i32 noundef 8, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call13)
  %cmp15145 = icmp slt i32 %call13, 8
  br i1 %cmp15145, label %for.body17.lr.ph, label %if.then.for.end30_crit_edge

if.then.for.end30_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.body17.lr.ph:                                 ; preds = %if.then
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  br label %for.body17

for.body17:                                       ; preds = %for.inc27.for.body17_crit_edge, %for.body17.lr.ph
  %remaining.0147 = phi i32 [ %conv11, %for.body17.lr.ph ], [ %sub, %for.inc27.for.body17_crit_edge ]
  %tid.1146 = phi i32 [ %call13, %for.body17.lr.ph ], [ %call29, %for.inc27.for.body17_crit_edge ]
  %arrayidx19 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid.1146
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx19, align 4
  %21 = lshr i16 %20, 4
  %22 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trans_cfg.i, align 4
  %gen2.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %gen2.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %gen2.i, align 4
  %27 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  %28 = and i16 %21, 255
  %spec.select.i = select i1 %tobool.not.i, i16 %21, i16 %28
  %next_reclaimed.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid.1146, i32 1
  %29 = ptrtoint ptr %next_reclaimed.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %next_reclaimed.i, align 2
  %sub.i.i = sub i16 %spec.select.i, %30
  %and.i.i = and i16 %sub.i.i, 4095
  %conv21 = zext i16 %and.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.0147, i32 %conv21)
  %cmp22 = icmp slt i32 %remaining.0147, %conv21
  br i1 %cmp22, label %for.body17.for.end30_crit_edge, label %for.inc27

for.body17.for.end30_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.inc27:                                        ; preds = %for.body17
  %sub = sub i32 %remaining.0147, %conv21
  %add28 = add nsw i32 %tid.1146, 1
  %call29 = call i32 @_find_next_bit_be(ptr noundef nonnull %_tids, i32 noundef 8, i32 noundef %add28) #10
  %cmp15 = icmp slt i32 %call29, 8
  br i1 %cmp15, label %for.inc27.for.body17_crit_edge, label %for.inc27.for.end30_crit_edge

for.inc27.for.end30_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.inc27.for.body17_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.end30:                                        ; preds = %for.inc27.for.end30_crit_edge, %for.body17.for.end30_crit_edge, %if.then.for.end30_crit_edge
  %remaining.2 = phi i32 [ %conv11, %if.then.for.end30_crit_edge ], [ 0, %for.body17.for.end30_crit_edge ], [ %sub, %for.inc27.for.end30_crit_edge ]
  %more_data.addr.2.shrunk = phi i1 [ %more_data, %if.then.for.end30_crit_edge ], [ true, %for.body17.for.end30_crit_edge ], [ %more_data, %for.inc27.for.end30_crit_edge ]
  %sub32 = sub i32 %conv11, %remaining.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reason)
  %cmp33 = icmp eq i32 %reason, 1
  br i1 %cmp33, label %if.then35, label %for.end30.if.end38_crit_edge

for.end30.if.end38_crit_edge:                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #12
  %conv36 = trunc i32 %sub32 to i8
  %sleep_tx_count37 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 18, i32 0, i32 2
  %31 = ptrtoint ptr %sleep_tx_count37 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv36, ptr %sleep_tx_count37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %for.end30.if.end38_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %conv40 = trunc i32 %sub32 to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv40)
  %33 = ptrtoint ptr %sleep_tx_count to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %sleep_tx_count, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.2, i32 %conv11)
  %cmp44 = icmp eq i32 %remaining.2, %conv11
  br i1 %cmp44, label %cleanup70.thread, label %cleanup70, !prof !338

cleanup70.thread:                                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3779, i32 noundef 9, ptr noundef null) #10
  call void @ieee80211_sta_eosp(ptr noundef %sta) #10
  br label %cleanup105

cleanup70:                                        ; preds = %if.end38
  br i1 %more_data.addr.2.shrunk, label %cleanup70.if.then76_crit_edge, label %cleanup70.if.end80_crit_edge

cleanup70.if.end80_crit_edge:                     ; preds = %cleanup70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

cleanup70.if.then76_crit_edge:                    ; preds = %cleanup70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.end74:                                         ; preds = %for.end
  br i1 %more_data, label %if.end74.if.then76_crit_edge, label %if.end74.if.end80_crit_edge

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.end74.if.then76_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.then76:                                        ; preds = %if.end74.if.then76_crit_edge, %cleanup70.if.then76_crit_edge
  %sleep_state_flags = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 15
  %34 = ptrtoint ptr %sleep_state_flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sleep_state_flags, align 1
  %36 = or i8 %35, 4
  store i8 %36, ptr %sleep_state_flags, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.end74.if.end80_crit_edge, %cleanup70.if.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp81 = icmp eq i32 %reason, 0
  br i1 %cmp81, label %if.then83, label %if.end80.if.end92_crit_edge

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %next_status_eosp = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %next_status_eosp to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %next_status_eosp, align 1
  br label %if.end92

if.end92:                                         ; preds = %if.then83, %if.end80.if.end92_crit_edge
  %.sink152 = phi i8 [ 1, %if.then83 ], [ 2, %if.end80.if.end92_crit_edge ]
  %sleep_state_flags88 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 15
  %38 = ptrtoint ptr %sleep_state_flags88 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sleep_state_flags88, align 1
  %40 = or i8 %39, %.sink152
  store i8 %40, ptr %sleep_state_flags88, align 1
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %41 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trans, align 4
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 2
  br i1 %cmp.not.i, label %if.end45.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end92
  %.b1.i = load i1, ptr @iwl_trans_block_txq_ptrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.do.end41.i_crit_edge, label %if.then.i, !prof !336

land.rhs.i.do.end41.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_block_txq_ptrs.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1295, i32 noundef 9, ptr noundef null) #10
  br label %do.end41.i

do.end41.i:                                       ; preds = %if.then.i, %land.rhs.i.do.end41.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 8
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_block_txq_ptrs, i32 noundef %48) #10
  br label %iwl_trans_block_txq_ptrs.exit

if.end45.i:                                       ; preds = %if.end92
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 1
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %block_txq_ptrs.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %block_txq_ptrs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %block_txq_ptrs.i, align 4
  %tobool46.not.i = icmp eq ptr %52, null
  br i1 %tobool46.not.i, label %if.end45.i.iwl_trans_block_txq_ptrs.exit_crit_edge, label %if.then47.i

if.end45.i.iwl_trans_block_txq_ptrs.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_trans_block_txq_ptrs.exit

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %52(ptr noundef %42, i1 noundef zeroext true) #10
  br label %iwl_trans_block_txq_ptrs.exit

iwl_trans_block_txq_ptrs.exit:                    ; preds = %if.then47.i, %if.end45.i.iwl_trans_block_txq_ptrs.exit_crit_edge, %do.end41.i
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %53 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %54, i32 0, i32 5, i32 8, i32 2
  %55 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %57 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i.i.not.i = icmp eq i32 %57, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %iwl_trans_block_txq_ptrs.exit.iwl_mvm_add_sta_cmd_size.exit_crit_edge

iwl_trans_block_txq_ptrs.exit.iwl_mvm_add_sta_cmd_size.exit_crit_edge: ; preds = %iwl_trans_block_txq_ptrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %iwl_trans_block_txq_ptrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %54, i32 0, i32 5, i32 7
  %58 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_api.i.i, align 4
  %60 = and i32 %59, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i = icmp eq i32 %60, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %iwl_trans_block_txq_ptrs.exit.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %iwl_trans_block_txq_ptrs.exit.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call95 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 9, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %iwl_mvm_add_sta_cmd_size.exit.cleanup105_crit_edge, label %do.end101

iwl_mvm_add_sta_cmd_size.exit.cleanup105_crit_edge: ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105

do.end101:                                        ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %62, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %call95) #10
  br label %cleanup105

cleanup105:                                       ; preds = %do.end101, %iwl_mvm_add_sta_cmd_size.exit.cleanup105_crit_edge, %cleanup70.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_tids) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @iwl_mvm_tid_queued(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %tid_data) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tid_data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tid_data, align 4
  %2 = lshr i16 %1, 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %3 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %gen2, align 4
  %8 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %9 = and i16 %2, 255
  %spec.select = select i1 %tobool.not, i16 %2, i16 %9
  %next_reclaimed = getelementptr inbounds %struct.iwl_mvm_tid_data, ptr %tid_data, i32 0, i32 1
  %10 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %next_reclaimed, align 2
  %sub.i = sub i16 %spec.select, %11
  %and.i = and i16 %sub.i, 4095
  ret i16 %and.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_eosp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_eosp_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i70 = tail call ptr @page_address(ptr noundef %1) #10
  %2 = ptrtoint ptr %call.i70 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %sta_id1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %6 = ptrtoint ptr %sta_id1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %sta_id1, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %10, i32 0, i32 5, i32 6
  %11 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp.not = icmp ult i32 %8, %12
  br i1 %cmp.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b68 = load i1, ptr @iwl_mvm_rx_eosp_notif.__already_done, align 1
  br i1 %.b68, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !336

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rx_eosp_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3814, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end38:                                         ; preds = %entry
  %13 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end38.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end38.rcu_read_lock.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end38
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end38.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx, align 4
  %call44 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end53_crit_edge

rcu_read_lock.exit.do.end53_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call46 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true.do.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true
  %.b6667 = load i1, ptr @iwl_mvm_rx_eosp_notif.__warned, align 1
  br i1 %.b6667, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rx_eosp_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3818, ptr noundef nonnull @.str.44) #10
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true.do.end53_crit_edge, %rcu_read_lock.exit.do.end53_crit_edge
  %tobool.not.i71 = icmp eq ptr %18, null
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i71, %cmp.i
  br i1 %spec.select.i, label %do.end53.if.end57_crit_edge, label %if.then56

do.end53.if.end57_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_sta_eosp(ptr noundef nonnull %18) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %do.end53.if.end57_crit_edge
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i72, label %if.end57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

if.end57.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %if.end57
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %if.end57.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %19 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i79 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_sta_modify_disable_tx(ptr noundef %mvm, ptr nocapture noundef readonly %mvmsta, i1 noundef zeroext %disable) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %cmd, align 1
  %awake_acs = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %awake_acs to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %awake_acs, align 1
  %tid_disable_tx = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %tid_disable_tx, align 1
  %mac_id_n_color = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %mac_id_n_color1 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 2
  %3 = ptrtoint ptr %mac_id_n_color1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id_n_color1, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %mac_id_n_color, align 1
  %addr = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 4
  %sta_id = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %addr, align 1
  %8 = ptrtoint ptr %mvmsta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mvmsta, align 8
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %sta_id, align 1
  %modify_mask = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 7
  %11 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %modify_mask, align 1
  %reserved3 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 8
  %12 = ptrtoint ptr %reserved3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %reserved3, align 1
  %station_flags = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 9
  %cond = select i1 %disable, i32 268435456, i32 0
  %13 = ptrtoint ptr %station_flags to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %cond, ptr %station_flags, align 1
  %station_flags_msk = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 10
  %14 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 268435456, ptr %station_flags_msk, align 1
  %add_immediate_ba_tid = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 11
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %15 = call ptr @memset(ptr %add_immediate_ba_tid, i32 0, i32 20)
  %16 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 8, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge

entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_api.i.i, align 4
  %23 = and i32 %22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %entry.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call5 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 1, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %iwl_mvm_add_sta_cmd_size.exit.if.end_crit_edge, label %do.end

iwl_mvm_add_sta_cmd_size.exit.if.end_crit_edge:   ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %iwl_mvm_add_sta_cmd_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %call5) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %iwl_mvm_add_sta_cmd_size.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_sta_modify_disable_tx_ap(ptr noundef %mvm, ptr noundef %sta, i1 noundef zeroext %disable) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %disable_tx = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 19
  %0 = ptrtoint ptr %disable_tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disable_tx, align 1, !range !337
  %2 = zext i1 %disable to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %disable_tx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %disable_tx, align 1
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_sta_block_awake(ptr noundef %5, ptr noundef %sta, i1 noundef zeroext %disable) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #10
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %cmd.i, align 1
  %awake_acs.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 1
  %10 = ptrtoint ptr %awake_acs.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %awake_acs.i, align 1
  %tid_disable_tx.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 2
  %11 = ptrtoint ptr %tid_disable_tx.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %tid_disable_tx.i, align 1
  %mac_id_n_color.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 3
  %mac_id_n_color1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %mac_id_n_color1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_id_n_color1.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = ptrtoint ptr %mac_id_n_color.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %mac_id_n_color.i, align 1
  %addr.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 4
  %sta_id.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 6
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %addr.i, align 1
  %17 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drv_priv.i, align 8
  %conv.i = trunc i32 %18 to i8
  %19 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %sta_id.i, align 1
  %modify_mask.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 7
  %20 = ptrtoint ptr %modify_mask.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %modify_mask.i, align 1
  %reserved3.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 8
  %21 = ptrtoint ptr %reserved3.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 0, ptr %reserved3.i, align 1
  %station_flags.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 9
  %cond.i = select i1 %disable, i32 268435456, i32 0
  %22 = ptrtoint ptr %station_flags.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %cond.i, ptr %station_flags.i, align 1
  %station_flags_msk.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 10
  %23 = ptrtoint ptr %station_flags_msk.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 268435456, ptr %station_flags_msk.i, align 1
  %add_immediate_ba_tid.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 11
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %24 = call ptr @memset(ptr %add_immediate_ba_tid.i, i32 0, i32 20)
  %25 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %26, i32 0, i32 5, i32 8, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.i.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.i.not.i.i, label %lor.lhs.false.i.i, label %if.end12.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge

if.end12.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %26, i32 0, i32 5, i32 7
  %30 = ptrtoint ptr %_api.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_api.i.i.i, align 4
  %32 = and i32 %31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i = icmp eq i32 %32, 0
  %phi.cast.i = select i1 %tobool.i.not.i.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit.i

iwl_mvm_add_sta_cmd_size.exit.i:                  ; preds = %lor.lhs.false.i.i, %if.end12.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 48, %if.end12.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge ], [ %phi.cast.i, %lor.lhs.false.i.i ]
  %call5.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 1, i16 noundef zeroext %retval.0.i.i, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_sta_modify_disable_tx.exit_crit_edge, label %do.end.i

iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_sta_modify_disable_tx.exit_crit_edge: ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_sta_modify_disable_tx.exit

do.end.i:                                         ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %34, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %call5.i) #10
  br label %iwl_mvm_sta_modify_disable_tx.exit

iwl_mvm_sta_modify_disable_tx.exit:               ; preds = %do.end.i, %iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_sta_modify_disable_tx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_sta_modify_disable_tx.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_block_awake(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_modify_all_sta_disable_tx(ptr noundef %mvm, ptr nocapture noundef readonly %mvmvif, i1 noundef zeroext %disable) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i72 = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %cmd.i = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %num_stations103 = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %num_stations103 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stations103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp104.not = icmp eq i32 %7, 0
  br i1 %cmp104.not, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 1
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %i.0105
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end7_crit_edge

for.body.do.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @iwl_mvm_modify_all_sta_disable_tx.__warned, align 1
  br i1 %.b61, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_modify_all_sta_disable_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3902, ptr noundef nonnull @.str.44) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %for.body.do.end7_crit_edge
  %tobool.not.i62 = icmp eq ptr %9, null
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i62, %cmp.i
  br i1 %spec.select.i, label %do.end7.for.inc_crit_edge, label %if.end11

do.end7.for.inc_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %do.end7
  %mac_id_n_color = getelementptr inbounds %struct.ieee80211_sta, ptr %9, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac_id_n_color, align 8
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id, align 4
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %color, align 2
  %conv13 = zext i16 %15 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or = or i32 %shl14, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or)
  %cmp15.not = icmp eq i32 %11, %or
  br i1 %cmp15.not, label %if.end18, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_mvm_sta_modify_disable_tx_ap(ptr noundef %mvm, ptr noundef nonnull %9, i1 noundef zeroext %disable)
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.end11.for.inc_crit_edge, %do.end7.for.inc_crit_edge
  %inc = add nuw i32 %i.0105, 1
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_stations, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i63, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %for.end
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %20 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i70 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %25, i32 0, i32 5, i32 7
  %26 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_api.i, align 4
  %28 = and i32 %27, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end24

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %rcu_read_unlock.exit
  %mcast_sta = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 22
  %29 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mcast_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %30)
  %cmp25.not = icmp eq i32 %30, 255
  br i1 %cmp25.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  %id1.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 1
  %31 = ptrtoint ptr %id1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %id1.i, align 4
  %conv.i = zext i16 %32 to i32
  %color.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 2
  %33 = ptrtoint ptr %color.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %color.i, align 2
  %conv2.i = zext i16 %34 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #10
  %35 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %cmd.i, align 1
  %awake_acs.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 1
  %36 = ptrtoint ptr %awake_acs.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %awake_acs.i, align 1
  %tid_disable_tx.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 2
  %37 = ptrtoint ptr %tid_disable_tx.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 0, ptr %tid_disable_tx.i, align 1
  %mac_id_n_color.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 3
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %39 = ptrtoint ptr %mac_id_n_color.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %mac_id_n_color.i, align 1
  %addr.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 4
  %sta_id.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 6
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 0, ptr %addr.i, align 1
  %conv5.i = trunc i32 %30 to i8
  %41 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv5.i, ptr %sta_id.i, align 1
  %modify_mask.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 7
  %42 = ptrtoint ptr %modify_mask.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %modify_mask.i, align 1
  %reserved3.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 8
  %43 = ptrtoint ptr %reserved3.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 0, ptr %reserved3.i, align 1
  %station_flags.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 9
  %cond.i = select i1 %disable, i32 268435456, i32 0
  %44 = ptrtoint ptr %station_flags.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %cond.i, ptr %station_flags.i, align 1
  %station_flags_msk.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 10
  %45 = ptrtoint ptr %station_flags_msk.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 268435456, ptr %station_flags_msk.i, align 1
  %add_immediate_ba_tid.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 11
  %46 = call ptr @memset(ptr %add_immediate_ba_tid.i, i32 0, i32 20)
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %25, i32 0, i32 5, i32 8, i32 2
  %47 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %49 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.i.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.i.i.not.i.i, label %lor.lhs.false.i.i, label %if.then27.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge

if.then27.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %_api.i, align 4
  %52 = and i32 %51, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i = icmp eq i32 %52, 0
  %phi.cast.i = select i1 %tobool.i.not.i.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit.i

iwl_mvm_add_sta_cmd_size.exit.i:                  ; preds = %lor.lhs.false.i.i, %if.then27.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 48, %if.then27.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge ], [ %phi.cast.i, %lor.lhs.false.i.i ]
  %call8.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 1, i16 noundef zeroext %retval.0.i.i, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_int_sta_modify_disable_tx.exit_crit_edge, label %do.end.i

iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_int_sta_modify_disable_tx.exit_crit_edge: ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_int_sta_modify_disable_tx.exit

do.end.i:                                         ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %call8.i) #10
  br label %iwl_mvm_int_sta_modify_disable_tx.exit

iwl_mvm_int_sta_modify_disable_tx.exit:           ; preds = %do.end.i, %iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_int_sta_modify_disable_tx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #10
  br label %if.end30

if.end30:                                         ; preds = %iwl_mvm_int_sta_modify_disable_tx.exit, %if.end24.if.end30_crit_edge
  br i1 %disable, label %if.end30.cleanup_crit_edge, label %land.lhs.true32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true32:                                  ; preds = %if.end30
  %bcast_sta = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 21
  %55 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bcast_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %56)
  %cmp34.not = icmp eq i32 %56, 255
  br i1 %cmp34.not, label %land.lhs.true32.cleanup_crit_edge, label %if.then36

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true32
  %id1.i73 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 1
  %57 = ptrtoint ptr %id1.i73 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %id1.i73, align 4
  %conv.i74 = zext i16 %58 to i32
  %color.i75 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 2
  %59 = ptrtoint ptr %color.i75 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %color.i75, align 2
  %conv2.i76 = zext i16 %60 to i32
  %shl3.i77 = shl nuw nsw i32 %conv2.i76, 8
  %or.i78 = or i32 %shl3.i77, %conv.i74
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i72) #10
  %61 = ptrtoint ptr %cmd.i72 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %cmd.i72, align 1
  %awake_acs.i79 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 1
  %62 = ptrtoint ptr %awake_acs.i79 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %awake_acs.i79, align 1
  %tid_disable_tx.i80 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 2
  %63 = ptrtoint ptr %tid_disable_tx.i80 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 0, ptr %tid_disable_tx.i80, align 1
  %mac_id_n_color.i81 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 3
  %64 = call i32 @llvm.bswap.i32(i32 %or.i78) #10
  %65 = ptrtoint ptr %mac_id_n_color.i81 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %mac_id_n_color.i81, align 1
  %addr.i82 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 4
  %sta_id.i83 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 6
  %66 = ptrtoint ptr %addr.i82 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 0, ptr %addr.i82, align 1
  %conv5.i84 = trunc i32 %56 to i8
  %67 = ptrtoint ptr %sta_id.i83 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv5.i84, ptr %sta_id.i83, align 1
  %modify_mask.i85 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 7
  %68 = ptrtoint ptr %modify_mask.i85 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %modify_mask.i85, align 1
  %reserved3.i86 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 8
  %69 = ptrtoint ptr %reserved3.i86 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 0, ptr %reserved3.i86, align 1
  %station_flags.i87 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 9
  %70 = ptrtoint ptr %station_flags.i87 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 0, ptr %station_flags.i87, align 1
  %station_flags_msk.i88 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 10
  %71 = ptrtoint ptr %station_flags_msk.i88 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 268435456, ptr %station_flags_msk.i88, align 1
  %add_immediate_ba_tid.i89 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i72, i32 0, i32 11
  %72 = call ptr @memset(ptr %add_immediate_ba_tid.i89, i32 0, i32 20)
  %73 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.i91 = getelementptr %struct.iwl_fw, ptr %74, i32 0, i32 5, i32 8, i32 2
  %75 = ptrtoint ptr %arrayidx.i.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx.i.i.i.i.i91, align 4
  %77 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.i.not.i.i92 = icmp eq i32 %77, 0
  br i1 %tobool.i.i.not.i.i92, label %lor.lhs.false.i.i96, label %if.then36.iwl_mvm_add_sta_cmd_size.exit.i100_crit_edge

if.then36.iwl_mvm_add_sta_cmd_size.exit.i100_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit.i100

lor.lhs.false.i.i96:                              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i.i93 = getelementptr inbounds %struct.iwl_fw, ptr %74, i32 0, i32 5, i32 7
  %78 = ptrtoint ptr %_api.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %_api.i.i.i93, align 4
  %80 = and i32 %79, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.not.i.i94 = icmp eq i32 %80, 0
  %phi.cast.i95 = select i1 %tobool.i.not.i.i94, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit.i100

iwl_mvm_add_sta_cmd_size.exit.i100:               ; preds = %lor.lhs.false.i.i96, %if.then36.iwl_mvm_add_sta_cmd_size.exit.i100_crit_edge
  %retval.0.i.i97 = phi i16 [ 48, %if.then36.iwl_mvm_add_sta_cmd_size.exit.i100_crit_edge ], [ %phi.cast.i95, %lor.lhs.false.i.i96 ]
  %call8.i98 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 1, i16 noundef zeroext %retval.0.i.i97, ptr noundef nonnull %cmd.i72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i98)
  %tobool9.not.i99 = icmp eq i32 %call8.i98, 0
  br i1 %tobool9.not.i99, label %iwl_mvm_add_sta_cmd_size.exit.i100.iwl_mvm_int_sta_modify_disable_tx.exit102_crit_edge, label %do.end.i101

iwl_mvm_add_sta_cmd_size.exit.i100.iwl_mvm_int_sta_modify_disable_tx.exit102_crit_edge: ; preds = %iwl_mvm_add_sta_cmd_size.exit.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_int_sta_modify_disable_tx.exit102

do.end.i101:                                      ; preds = %iwl_mvm_add_sta_cmd_size.exit.i100
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %call8.i98) #10
  br label %iwl_mvm_int_sta_modify_disable_tx.exit102

iwl_mvm_int_sta_modify_disable_tx.exit102:        ; preds = %do.end.i101, %iwl_mvm_add_sta_cmd_size.exit.i100.iwl_mvm_int_sta_modify_disable_tx.exit102_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i72) #10
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_int_sta_modify_disable_tx.exit102, %land.lhs.true32.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_csa_client_absent(ptr noundef %mvm, ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %4 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ap_sta_id, align 8
  %conv.i = zext i8 %5 to i32
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 5, i32 6
  %8 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %9, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i28 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i30:                                ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i30.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i30.do.end10.i_crit_edge:           ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i30
  %.b19.i = load i1, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 1186, ptr noundef nonnull @.str.44) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i30.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %11, null
  %cmp.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %11, i32 0, i32 29
  %tobool.not = icmp eq ptr %drv_priv.i.i, null
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.end10.i.do.end_crit_edge, label %if.then23.critedge, !prof !341

do.end10.i.do.end_crit_edge:                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %do.end10.i.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3942, i32 noundef 9, ptr noundef null) #10
  br label %if.end24

if.then23.critedge:                               ; preds = %do.end10.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #10
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cmd.i, align 1
  %awake_acs.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 1
  %13 = ptrtoint ptr %awake_acs.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %awake_acs.i, align 1
  %tid_disable_tx.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 2
  %14 = ptrtoint ptr %tid_disable_tx.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 0, ptr %tid_disable_tx.i, align 1
  %mac_id_n_color.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 3
  %mac_id_n_color1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %11, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %mac_id_n_color1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac_id_n_color1.i, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %mac_id_n_color.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %mac_id_n_color.i, align 1
  %addr.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 4
  %sta_id.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 6
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %addr.i, align 1
  %20 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %drv_priv.i.i, align 8
  %conv.i31 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i31, ptr %sta_id.i, align 1
  %modify_mask.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 7
  %23 = ptrtoint ptr %modify_mask.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %modify_mask.i, align 1
  %reserved3.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 8
  %24 = ptrtoint ptr %reserved3.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 0, ptr %reserved3.i, align 1
  %station_flags.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 9
  %25 = ptrtoint ptr %station_flags.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 268435456, ptr %station_flags.i, align 1
  %station_flags_msk.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 10
  %26 = ptrtoint ptr %station_flags_msk.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 268435456, ptr %station_flags_msk.i, align 1
  %add_immediate_ba_tid.i = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd.i, i32 0, i32 11
  %27 = call ptr @memset(ptr %add_immediate_ba_tid.i, i32 0, i32 20)
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %29, i32 0, i32 5, i32 8, i32 2
  %30 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %32 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.i.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i.i.not.i.i, label %lor.lhs.false.i.i, label %if.then23.critedge.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge

if.then23.critedge.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge: ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %29, i32 0, i32 5, i32 7
  %33 = ptrtoint ptr %_api.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_api.i.i.i, align 4
  %35 = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i = icmp eq i32 %35, 0
  %phi.cast.i = select i1 %tobool.i.not.i.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit.i

iwl_mvm_add_sta_cmd_size.exit.i:                  ; preds = %lor.lhs.false.i.i, %if.then23.critedge.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 48, %if.then23.critedge.iwl_mvm_add_sta_cmd_size.exit.i_crit_edge ], [ %phi.cast.i, %lor.lhs.false.i.i ]
  %call5.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 24, i32 noundef 1, i16 noundef zeroext %retval.0.i.i, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_sta_modify_disable_tx.exit_crit_edge, label %do.end.i

iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_sta_modify_disable_tx.exit_crit_edge: ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_sta_modify_disable_tx.exit

do.end.i:                                         ; preds = %iwl_mvm_add_sta_cmd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %37, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %call5.i) #10
  br label %iwl_mvm_sta_modify_disable_tx.exit

iwl_mvm_sta_modify_disable_tx.exit:               ; preds = %do.end.i, %iwl_mvm_add_sta_cmd_size.exit.i.iwl_mvm_sta_modify_disable_tx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #10
  br label %if.end24

if.end24:                                         ; preds = %iwl_mvm_sta_modify_disable_tx.exit, %do.end
  %call.i33 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i33, label %if.end24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

if.end24.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %if.end24
  %call1.i34 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %if.end24.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %38 = call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i40 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_add_pasn_sta(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr nocapture noundef %sta, ptr noundef %addr, i32 noundef %cipher, ptr nocapture noundef readonly %key, i32 noundef %key_len) local_unnamed_addr #0 align 64 {
entry:
  %queue = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %queue) #10
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %queue, align 2, !annotation !335
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %1 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status.i, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp.i = icmp eq i32 %5, 255
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call1.i = tail call fastcc i32 @iwl_mvm_find_free_sta_id(ptr noundef %mvm, i32 noundef 0) #10
  %6 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1.i)
  %cmp4.i = icmp eq i32 %call1.i, 255
  br i1 %cmp4.i, label %land.rhs.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs.i:                                       ; preds = %if.then.i
  %.b81.i = load i1, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  br i1 %.b81.i, label %land.rhs.i.cleanup_crit_edge, label %if.then12.i, !prof !336

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_allocate_int_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1933, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %tfd_queue_msk.i = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 2
  %7 = ptrtoint ptr %tfd_queue_msk.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tfd_queue_msk.i, align 4
  %type45.i = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 1
  %8 = ptrtoint ptr %type45.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type45.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !343
  %9 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sta, align 4
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id, align 4
  %conv = zext i16 %13 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %14 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %color, align 2
  %conv2 = zext i16 %15 to i32
  %call3 = call fastcc i32 @iwl_mvm_add_int_sta_with_queue(ptr noundef %mvm, i32 noundef %conv, i32 noundef %conv2, ptr noundef %addr, ptr noundef %sta, ptr noundef nonnull %queue, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i.i:                                      ; preds = %if.end
  %add = add i32 %key_len, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.out_crit_edge, label %if.end10

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cipher11 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %cipher11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cipher, ptr %cipher11, align 8
  %key12 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %call9.i.i, i32 0, i32 8
  %17 = call ptr @memcpy(ptr %key12, ptr %key, i32 %key_len)
  %conv13 = trunc i32 %key_len to i8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %call9.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %keylen to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %keylen, align 2
  %19 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sta, align 4
  %call14 = tail call fastcc i32 @iwl_mvm_send_sta_key(ptr noundef %mvm, i32 noundef %20, ptr noundef nonnull %call9.i.i, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, i1 noundef zeroext true)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

out:                                              ; preds = %if.end8.i.i.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ -105, %if.end8.i.i.out_crit_edge ]
  %21 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sta, align 4
  %arrayidx.i35 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %22
  %23 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %arrayidx.i35, align 4
  %24 = ptrtoint ptr %type45.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %type45.i, align 4
  store i32 255, ptr %sta, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end10, %if.then12.i, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end10 ], [ -28, %if.then12.i ], [ -28, %land.rhs.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %queue) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_redirect_queue(ptr noundef %mvm, i32 noundef %queue, i32 noundef %tid, i32 noundef %ac, i32 noundef %ssn, i32 noundef %wdg_timeout, i1 noundef zeroext %force, ptr nocapture noundef writeonly %txq) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_scd_txq_cfg_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cmd, align 1
  %conv = trunc i32 %queue to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %2, align 1
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %3, align 1
  %8 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %13 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.i.not = icmp eq i16 %13, 0
  br i1 %tobool.i.not, label %if.end23, label %do.end, !prof !336

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 616, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %14 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %mac80211_ac = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %queue, i32 2
  %15 = ptrtoint ptr %mac80211_ac to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mac80211_ac, align 2
  %conv24 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %ac)
  %cmp.not = icmp slt i32 %conv24, %ac
  %brmerge = or i1 %cmp.not, %force
  br i1 %brmerge, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_redirect_queue, ptr noundef nonnull @.str.53, i32 noundef %queue) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %arrayidx = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %queue
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %0, align 1
  %arrayidx39 = getelementptr [0 x i8], ptr @iwl_mvm_ac_to_tx_fifo, i32 0, i32 %conv24
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx39, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %4, align 1
  %txq_tid = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %queue, i32 3
  %25 = ptrtoint ptr %txq_tid to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %txq_tid, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %1, align 1
  %tid_bitmap = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %14, i32 0, i32 %queue, i32 4
  %28 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tid_bitmap, align 4
  %conv218 = zext i16 %29 to i32
  %call.i = tail call i32 @__sw_hweight16(i32 noundef %conv218) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp220 = icmp ugt i32 %call.i, 1
  %30 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mvm, align 8
  %arrayidx228 = getelementptr [0 x i8], ptr @iwl_mvm_ac_to_tx_fifo, i32 0, i32 %ac
  %32 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %33 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_redirect_queue, ptr noundef nonnull @.str.54, i32 noundef %queue, i32 noundef %conv229) #10
  %stopped = getelementptr inbounds %struct.iwl_mvm_txq, ptr %txq, i32 0, i32 3
  %34 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %stopped, align 4
  %35 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans.i, align 4
  %shl = shl nuw i32 1, %queue
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %wait_tx_queues_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %wait_tx_queues_empty.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wait_tx_queues_empty.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end34
  %.b58.i = load i1, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.do.end238_crit_edge, label %if.then.i, !prof !336

land.rhs.i.do.end238_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end238

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1307, i32 noundef 9, ptr noundef null) #10
  br label %do.end238

if.end39.i:                                       ; preds = %if.end34
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 6
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.not.i = icmp eq i32 %42, 2
  br i1 %cmp.not.i, label %iwl_trans_wait_tx_queues_empty.exit, label %do.end44.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 8
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %44, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_wait_tx_queues_empty, i32 noundef %42) #10
  br label %do.end238

iwl_trans_wait_tx_queues_empty.exit:              ; preds = %if.end39.i
  %call.i366 = tail call i32 %40(ptr noundef %36, i32 noundef %shl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %tobool233.not = icmp eq i32 %call.i366, 0
  br i1 %tobool233.not, label %if.end242, label %iwl_trans_wait_tx_queues_empty.exit.do.end238_crit_edge

iwl_trans_wait_tx_queues_empty.exit.do.end238_crit_edge: ; preds = %iwl_trans_wait_tx_queues_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end238

do.end238:                                        ; preds = %iwl_trans_wait_tx_queues_empty.exit.do.end238_crit_edge, %do.end44.i, %if.then.i, %land.rhs.i.do.end238_crit_edge
  %45 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %queue) #10
  br label %out

if.end242:                                        ; preds = %iwl_trans_wait_tx_queues_empty.exit
  %47 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans.i, align 4
  %ops.i367 = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ops.i367 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i367, align 4
  %txq_disable.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %txq_disable.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %txq_disable.i, align 4
  tail call void %52(ptr noundef %48, i32 noundef %queue, i1 noundef zeroext false) #10
  %call244 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 29, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end242.if.end254_crit_edge, label %do.end250

if.end242.if.end254_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

do.end250:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %queue, i32 noundef %call244) #10
  br label %if.end254

if.end254:                                        ; preds = %do.end250, %if.end242.if.end254_crit_edge
  %55 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %trans.i, align 4
  %conv256 = trunc i32 %ssn to i16
  call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1191) #10
  %state.i368 = getelementptr inbounds %struct.iwl_trans, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %state.i368 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i368, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp.not.i369 = icmp eq i32 %58, 2
  br i1 %cmp.not.i369, label %if.end48.i376, label %land.rhs.i370

land.rhs.i370:                                    ; preds = %if.end254
  %.b1.i = load i1, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i370.do.end44.i373_crit_edge, label %if.then.i371, !prof !336

land.rhs.i370.do.end44.i373_crit_edge:            ; preds = %land.rhs.i370
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i373

if.then.i371:                                     ; preds = %land.rhs.i370
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 1193, i32 noundef 9, ptr noundef null) #10
  br label %do.end44.i373

do.end44.i373:                                    ; preds = %if.then.i371, %land.rhs.i370.do.end44.i373_crit_edge
  %dev.i372 = getelementptr inbounds %struct.iwl_trans, ptr %56, i32 0, i32 8
  %59 = ptrtoint ptr %dev.i372 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i372, align 8
  %61 = ptrtoint ptr %state.i368 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i368, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %60, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.iwl_trans_txq_enable_cfg, i32 noundef %62) #10
  br label %iwl_trans_txq_enable_cfg.exit

if.end48.i376:                                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i374 = getelementptr inbounds %struct.iwl_trans, ptr %56, i32 0, i32 1
  %63 = ptrtoint ptr %ops.i374 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i374, align 4
  %txq_enable.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %txq_enable.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %txq_enable.i, align 4
  %call.i375 = call zeroext i1 %66(ptr noundef %56, i32 noundef %queue, i16 noundef zeroext %conv256, ptr noundef null, i32 noundef %wdg_timeout) #10
  br label %iwl_trans_txq_enable_cfg.exit

iwl_trans_txq_enable_cfg.exit:                    ; preds = %if.end48.i376, %do.end44.i373
  %conv258 = trunc i32 %tid to i8
  %67 = ptrtoint ptr %txq_tid to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv258, ptr %txq_tid, align 1
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %0, align 1
  %conv264 = zext i8 %69 to i32
  %call266 = call i32 @iwl_mvm_reconfig_scd(ptr noundef %mvm, i32 noundef %queue, i32 noundef %conv229, i32 noundef %conv264, i32 noundef %tid, i32 noundef 64, i16 noundef zeroext %conv256) #10
  %conv267 = trunc i32 %ac to i8
  %70 = ptrtoint ptr %mac80211_ac to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv267, ptr %mac80211_ac, align 2
  br i1 %cmp220, label %if.then271, label %iwl_trans_txq_enable_cfg.exit.out_crit_edge

iwl_trans_txq_enable_cfg.exit.out_crit_edge:      ; preds = %iwl_trans_txq_enable_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then271:                                       ; preds = %iwl_trans_txq_enable_cfg.exit
  %71 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trans.i, align 4
  %ops.i378 = getelementptr inbounds %struct.iwl_trans, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %ops.i378 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i378, align 4
  %txq_set_shared_mode.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %txq_set_shared_mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %txq_set_shared_mode.i, align 4
  %tobool.not.i379 = icmp eq ptr %76, null
  br i1 %tobool.not.i379, label %if.then271.out_crit_edge, label %if.then.i380

if.then271.out_crit_edge:                         ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i380:                                     ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #12
  call void %76(ptr noundef %72, i32 noundef %queue, i1 noundef zeroext true) #10
  br label %out

out:                                              ; preds = %if.then.i380, %if.then271.out_crit_edge, %iwl_trans_txq_enable_cfg.exit.out_crit_edge, %do.end238
  %ret.0 = phi i32 [ -5, %do.end238 ], [ %call244, %iwl_trans_txq_enable_cfg.exit.out_crit_edge ], [ %call244, %if.then271.out_crit_edge ], [ %call244, %if.then.i380 ]
  %77 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %stopped, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ], [ 0, %do.end31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_invalidate_sta_queue(ptr noundef %mvm, i32 noundef %queue, i32 noundef %disable_agg_tids, i1 noundef zeroext %remove_queue) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_add_sta_cmd, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %1 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %6 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not = icmp eq i16 %6, 0
  br i1 %tobool.i.not, label %if.end21, label %do.end, !prof !336

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end21:                                         ; preds = %entry
  %7 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %arrayidx = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %7, i32 0, i32 %queue
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !339
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end21.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end21.rcu_read_lock.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 696, ptr noundef nonnull @.str.105) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end21.rcu_read_lock.exit_crit_edge
  %idxprom = zext i8 %9 to i32
  %arrayidx26 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx26, align 4
  %call28 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end37_crit_edge

rcu_read_lock.exit.do.end37_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b2 = load i1, ptr @iwl_mvm_invalidate_sta_queue.__warned, align 1
  br i1 %.b2, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_invalidate_sta_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 287, ptr noundef nonnull @.str.44) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %rcu_read_lock.exit.do.end37_crit_edge
  %tobool.not.i4 = icmp eq ptr %15, null
  %cmp.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i4, %cmp.i
  br i1 %spec.select.i, label %land.rhs, label %if.end92

land.rhs:                                         ; preds = %do.end37
  %.b1351 = load i1, ptr @iwl_mvm_invalidate_sta_queue.__already_done, align 1
  br i1 %.b1351, label %land.rhs.if.then91_crit_edge, label %if.then55, !prof !336

land.rhs.if.then91_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.then55:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_invalidate_sta_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #10
  br label %if.then91

if.then91:                                        ; preds = %if.then55, %land.rhs.if.then91_crit_edge
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i5, label %if.then91.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.then91.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.then91
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.then91.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %16 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i12 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

if.end92:                                         ; preds = %do.end37
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %15, i32 0, i32 29
  %tid_disable_agg = getelementptr inbounds %struct.ieee80211_sta, ptr %15, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %tid_disable_agg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tid_disable_agg, align 4
  %22 = trunc i32 %disable_agg_tids to i16
  %conv94 = or i16 %21, %22
  store i16 %conv94, ptr %tid_disable_agg, align 4
  %mac_id_n_color = getelementptr inbounds %struct.ieee80211_sta, ptr %15, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_id_n_color, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %mac_id_n_color95 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 3
  %26 = ptrtoint ptr %mac_id_n_color95 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %mac_id_n_color95, align 1
  %27 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drv_priv.i, align 8
  %conv97 = trunc i32 %28 to i8
  %sta_id98 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 6
  %29 = ptrtoint ptr %sta_id98 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv97, ptr %sta_id98, align 1
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %cmd, align 1
  %modify_mask = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_agg_tids)
  %tobool99.not = icmp eq i32 %disable_agg_tids, 0
  %spec.select = select i1 %tobool99.not, i8 -128, i8 -126
  %31 = zext i1 %remove_queue to i8
  %spec.select26 = or i8 %spec.select, %31
  %32 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select26, ptr %modify_mask, align 1
  %tfd_queue_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %15, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tfd_queue_msk, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %tfd_queue_msk113 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 19
  %36 = ptrtoint ptr %tfd_queue_msk113 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %tfd_queue_msk113, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv94)
  %tid_disable_tx = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, ptr %cmd, i32 0, i32 2
  %38 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %tid_disable_tx, align 1
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i14, label %if.end92.rcu_read_unlock.exit24_crit_edge, label %land.lhs.true.i17

if.end92.rcu_read_unlock.exit24_crit_edge:        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit24

land.lhs.true.i17:                                ; preds = %if.end92
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit24

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit24

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 724, ptr noundef nonnull @.str.108) #10
  br label %rcu_read_unlock.exit24

rcu_read_unlock.exit24:                           ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge, %if.end92.rcu_read_unlock.exit24_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !340
  %39 = tail call i32 @llvm.read_register.i32(metadata !325) #10
  %and.i.i.i.i.i21 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i23 = add i32 %42, -1
  store volatile i32 %sub.i.i.i23, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %status, align 4
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %44 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %45, i32 0, i32 5, i32 8, i32 2
  %46 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %48 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.i.not.i = icmp eq i32 %48, 0
  br i1 %tobool.i.i.not.i, label %lor.lhs.false.i, label %rcu_read_unlock.exit24.iwl_mvm_add_sta_cmd_size.exit_crit_edge

rcu_read_unlock.exit24.iwl_mvm_add_sta_cmd_size.exit_crit_edge: ; preds = %rcu_read_unlock.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_add_sta_cmd_size.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %45, i32 0, i32 5, i32 7
  %49 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %_api.i.i, align 4
  %51 = and i32 %50, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not.i = icmp eq i32 %51, 0
  %phi.cast = select i1 %tobool.i.not.i, i16 44, i16 48
  br label %iwl_mvm_add_sta_cmd_size.exit

iwl_mvm_add_sta_cmd_size.exit:                    ; preds = %lor.lhs.false.i, %rcu_read_unlock.exit24.iwl_mvm_add_sta_cmd_size.exit_crit_edge
  %retval.0.i = phi i16 [ 48, %rcu_read_unlock.exit24.iwl_mvm_add_sta_cmd_size.exit_crit_edge ], [ %phi.cast, %lor.lhs.false.i ]
  %call117 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 24, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %cmd, ptr noundef nonnull %status) #10
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_add_sta_cmd_size.exit, %rcu_read_unlock.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_next_antenna(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_ba_timer_expired(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_reorder_timer_expired(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_key_rx_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_rx_p1k(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !84, !86, !87, !89, !91, !93, !95, !96, !98, !100, !102, !104, !105, !107, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !135, !137, !139, !141, !143, !145, !146, !148, !150, !152, !154, !156, !157, !159, !161, !163, !165, !167, !169, !170, !172, !174, !176, !177, !179, !181, !182, !184, !186, !188, !190, !192, !193, !195, !197, !199, !200, !201, !203, !205, !207, !209, !211, !213, !215, !216, !218, !220, !221, !223, !225, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !247, !249, !251, !253, !255, !257, !258, !260, !261, !263, !265, !267, !269, !271, !273, !275, !277, !278, !280, !281, !283, !284, !286, !288, !290, !292, !293, !294, !295, !296, !298, !300, !302, !303, !305, !307, !308, !309, !311, !312, !314, !316, !317, !319, !321, !323}
!llvm.named.register.sp = !{!325}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332, !333}
!llvm.ident = !{!334}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 85, i32 4}
!2 = !{ptr @__func__.iwl_mvm_sta_send_to_fw, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 211, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 215, i32 3}
!7 = !{ptr @iwl_mvm_add_sta.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1578, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @iwl_mvm_add_sta.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1679, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.iwl_mvm_drain_sta, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1729, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1734, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1872, i32 7}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1895, i32 6}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1933, i32 7}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2065, i32 6}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2071, i32 3}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2082, i32 6}
!30 = !{ptr @iwl_mvm_send_add_bcast_sta._baddr, !31, !"_baddr", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2111, i32 18}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2134, i32 4}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2146, i32 6}
!36 = !{ptr @iwl_mvm_add_mcast_sta._maddr, !37, !"_maddr", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2301, i32 18}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2541, i32 3}
!40 = !{ptr @__func__.iwl_mvm_sta_rx_agg, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2608, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2612, i32 3}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2617, i32 3}
!49 = !{ptr @iwl_mvm_sta_rx_agg.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2643, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2661, i32 3}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2686, i32 3}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2744, i32 3}
!58 = !{ptr @tid_to_mac80211_ac, !59, !"tid_to_mac80211_ac", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2752, i32 10}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2784, i32 6}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2789, i32 3}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2820, i32 4}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2830, i32 3}
!68 = !{ptr @__func__.iwl_mvm_sta_tx_agg_start, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2837, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2843, i32 2}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2852, i32 2}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2903, i32 6}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2959, i32 4}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2968, i32 4}
!81 = !{ptr @__func__.iwl_mvm_sta_tx_agg_oper, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3000, i32 2}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__func__.iwl_mvm_sta_tx_agg_stop, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3051, i32 2}
!86 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3062, i32 3}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3089, i32 3}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3092, i32 3}
!93 = !{ptr @__func__.iwl_mvm_sta_tx_agg_flush, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3116, i32 2}
!95 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3131, i32 5}
!98 = !{ptr @iwl_mvm_set_sta_key.zero_addr, !99, !"zero_addr", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3532, i32 33}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3541, i32 4}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3552, i32 10}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3556, i32 5}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3561, i32 7}
!109 = !{ptr @__func__.iwl_mvm_set_sta_key, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3618, i32 2}
!111 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @__func__.iwl_mvm_remove_sta_key, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3644, i32 2}
!114 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3653, i32 3}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3666, i32 3}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3695, i32 6}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3720, i32 3}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3814, i32 6}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3818, i32 8}
!127 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3902, i32 9}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1133, i32 9}
!132 = !{ptr @__func__.iwl_mvm_remove_inactive_tids, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1013, i32 3}
!134 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1043, i32 3}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1048, i32 2}
!139 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1061, i32 3}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 923, i32 3}
!143 = !{ptr @__func__.iwl_mvm_unshare_queue, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 928, i32 2}
!145 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 931, i32 8}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 934, i32 6}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 947, i32 3}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 967, i32 4}
!154 = !{ptr @__func__.iwl_mvm_redirect_queue, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 628, i32 3}
!156 = !{ptr @.str.53, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 639, i32 2}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 647, i32 3}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 657, i32 3}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1191, i32 2}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1193, i32 6}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1194, i32 3}
!169 = !{ptr @__func__.iwl_trans_txq_enable_cfg, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.59, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 880, i32 6}
!172 = !{ptr @.str.60, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 890, i32 3}
!174 = !{ptr @__func__.iwl_mvm_change_queue_tid, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 896, i32 2}
!176 = !{ptr @.str.61, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.62, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 517, i32 3}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1203, i32 8}
!181 = !{ptr @.str.63, !180, !"<string literal>", i1 false, i1 false}
!182 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 444, i32 8}
!184 = distinct !{null, !185, !"__already_done", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 446, i32 6}
!186 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 287, i32 8}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 289, i32 6}
!190 = !{ptr @__func__.iwl_mvm_sta_alloc_queue, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1213, i32 4}
!192 = !{ptr @.str.64, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.65, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1224, i32 3}
!195 = !{ptr @.str.66, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1256, i32 3}
!197 = !{ptr @.str.67, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1270, i32 2}
!199 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1280, i32 4}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 592, i32 3}
!205 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 402, i32 8}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 405, i32 6}
!209 = distinct !{null, !210, !"__already_done", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 34, i32 2}
!211 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 47, i32 8}
!213 = !{ptr @__func__.iwl_mvm_add_int_sta_common, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1545, i32 3}
!215 = !{ptr @.str.72, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.73, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1549, i32 3}
!218 = !{ptr @__func__.iwl_mvm_realloc_queues_after_restart, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1465, i32 4}
!220 = !{ptr @.str.74, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.75, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1495, i32 4}
!223 = !{ptr @.str.76, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1416, i32 4}
!225 = !{ptr @__func__.iwl_mvm_reserve_sta_stream, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1424, i32 2}
!227 = !{ptr @.str.77, !226, !"<string literal>", i1 false, i1 false}
!228 = distinct !{null, !229, !"__already_done", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1321, i32 6}
!230 = distinct !{null, !231, !"__already_done", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1324, i32 6}
!232 = !{ptr @__func__.iwl_trans_wait_txq_empty, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1325, i32 3}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1307, i32 6}
!236 = !{ptr @__func__.iwl_trans_wait_tx_queues_empty, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1312, i32 3}
!238 = distinct !{null, !239, !"__warned", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1755, i32 8}
!240 = !{ptr @.str.79, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 1767, i32 3}
!242 = !{ptr @__func__.iwl_mvm_disable_txq, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 345, i32 2}
!244 = !{ptr @.str.80, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.81, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 358, i32 2}
!247 = !{ptr @.str.82, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 380, i32 3}
!249 = distinct !{null, !250, !"__already_done", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1215, i32 6}
!251 = !{ptr @.str.83, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 857, i32 2}
!253 = !{ptr @.str.84, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 792, i32 3}
!255 = !{ptr @__func__.iwl_mvm_update_txq_mapping, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 821, i32 2}
!257 = !{ptr @.str.85, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @__func__.iwl_mvm_tvqm_enable_txq, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 736, i32 4}
!260 = !{ptr @.str.86, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.87, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 745, i32 2}
!263 = distinct !{null, !264, !"__already_done", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1229, i32 6}
!265 = distinct !{null, !266, !"__already_done", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1232, i32 6}
!267 = !{ptr @__func__.iwl_trans_txq_alloc, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1233, i32 3}
!269 = !{ptr @.str.89, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2196, i32 3}
!271 = distinct !{null, !272, !"__warned", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 234, i32 12}
!273 = distinct !{null, !274, !"__warned", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 249, i32 8}
!275 = !{ptr @iwl_mvm_init_reorder_buffer.__key, !276, !"__key", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2518, i32 3}
!277 = !{ptr @.str.91, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @iwl_mvm_init_reorder_buffer.__key.92, !279, !"__key", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2520, i32 3}
!280 = !{ptr @.str.93, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @__func__.iwl_mvm_sta_alloc_queue_tvqm, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 764, i32 2}
!283 = !{ptr @.str.94, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.95, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 775, i32 2}
!286 = !{ptr @.str.96, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 698, i32 6}
!288 = distinct !{null, !289, !"__warned", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3192, i32 9}
!290 = !{ptr @__func__.iwl_mvm_send_sta_igtk, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3435, i32 2}
!292 = !{ptr @.str.97, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.98, !291, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.99, !291, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.100, !291, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.101, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3503, i32 3}
!298 = distinct !{null, !299, !"__warned", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3470, i32 9}
!300 = !{ptr @__func__.__iwl_mvm_remove_sta_key, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2413, i32 3}
!302 = !{ptr @.str.102, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.103, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2417, i32 3}
!305 = distinct !{null, !306, !"__warned", i1 false, i1 false}
!306 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!307 = !{ptr @.str.104, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.105, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @__func__.iwl_mvm_send_sta_key, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3366, i32 3}
!311 = !{ptr @.str.106, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.107, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 3370, i32 3}
!314 = distinct !{null, !315, !"__warned", i1 false, i1 false}
!315 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!316 = !{ptr @.str.108, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @tid_to_ucode_ac, !318, !"tid_to_ucode_ac", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sta.c", i32 2764, i32 17}
!319 = distinct !{null, !320, !"__already_done", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1295, i32 6}
!321 = !{ptr @__func__.iwl_trans_block_txq_ptrs, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1296, i32 3}
!323 = distinct !{null, !324, !"__warned", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1186, i32 8}
!325 = !{!"sp"}
!326 = !{i32 1, !"wchar_size", i32 2}
!327 = !{i32 1, !"min_enum_size", i32 4}
!328 = !{i32 8, !"branch-target-enforcement", i32 0}
!329 = !{i32 8, !"sign-return-address", i32 0}
!330 = !{i32 8, !"sign-return-address-all", i32 0}
!331 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!332 = !{i32 7, !"uwtable", i32 1}
!333 = !{i32 7, !"frame-pointer", i32 2}
!334 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!335 = !{!"auto-init"}
!336 = !{!"branch_weights", i32 2000, i32 1}
!337 = !{i8 0, i8 2}
!338 = !{!"branch_weights", i32 1, i32 2000}
!339 = !{i64 2150031974}
!340 = !{i64 2150032240}
!341 = !{!"branch_weights", i32 2002, i32 2000}
!342 = !{i64 2160235753}
!343 = !{i64 2160273403}
!344 = !{i64 2160343759}
!345 = !{!"branch_weights", i32 1, i32 4001}
