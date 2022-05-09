; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/rs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/rs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rs_tx_column = type { i32, i8, i8, [7 x i32], [3 x ptr] }
%struct.iwl_rs_rate_info = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_mvm_mod_params = type { i8, i32 }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.rs_init_rate_info = type { i8, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.iwl_mvm_sta = type { i32, i32, i32, i16, i16, i32, i32, i8, i8, %struct.spinlock, [9 x %struct.iwl_mvm_tid_data], [8 x i8], %union.anon.160, ptr, [4 x ptr], ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.iwl_mvm_tid_data = type { i16, i16, i32, i8, i8, i32, i16, i16, i16, i32, i32, i32 }
%union.anon.160 = type { %struct.iwl_lq_sta }
%struct.iwl_lq_sta = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, %struct.rs_rate, i32, ptr, i32, i8, %struct.iwl_lq_cmd, [2 x %struct.iwl_scale_tbl_info], i8, i32, i8, i32, %struct.lq_sta_pers }
%struct.rs_rate = type { i32, i32, i8, i32, i8, i8, i8, i8 }
%struct.iwl_lq_cmd = type { i8, i8, i16, i8, i8, i8, i8, [4 x i8], i16, i8, i8, i32, [16 x i32], i32 }
%struct.iwl_scale_tbl_info = type { %struct.rs_rate, i32, ptr, [17 x %struct.iwl_rate_scale_data], [16 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32 }
%struct.lq_sta_pers = type { i32, i8, i32, i8, [4 x i8], i8, [8 x [17 x %struct.rs_rate_stats]], ptr, %struct.spinlock }
%struct.rs_rate_stats = type { i64, i64 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.166, [32 x i8] }
%struct.anon.166 = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.139, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.139 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.118 }>
%struct.anon.118 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.120 = type { i64, i64, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.rs_bfer_active_iter_data = type { ptr, ptr }
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
%struct.iwl_op_mode = type { ptr, [0 x i8] }
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
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/rs.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Legacy | ANT: %s Rate: %s Mbps\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BAD\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VHT\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HE\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"0x%x: %s | ANT: %s BW: %s MCS: %d NSS: %d %s%s%s%s%s\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SGI \00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NGI \00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STBC \00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDPC \00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCM \00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BF \00", [28 x i8] zeroinitializer }, align 32
@rs_mvm_ops_drv = internal constant { %struct.rate_control_ops, [40 x i8] } { %struct.rate_control_ops { i32 1, ptr @.str.159, ptr @rs_alloc, ptr null, ptr @rs_free, ptr @rs_drv_alloc_sta, ptr @rs_rate_init_ops, ptr @rs_drv_rate_update, ptr @rs_free_sta, ptr null, ptr @rs_drv_mac80211_tx_status, ptr @rs_drv_get_rate, ptr @rs_drv_add_sta_debugfs, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.__iwl_mvm_rs_tx_status = private unnamed_addr constant [23 x i8] c"__iwl_mvm_rs_tx_status\00", align 1
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Rate scaling not initialized yet.\0A\00", [61 x i8] zeroinitializer }, align 32
@__iwl_mvm_rs_tx_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__iwl_mvm_rs_tx_status.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't map rate 0x%x to column\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Fixed rate 0x%x success %d attempts %d\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Tx idle for too long. reinit rs\0A\00", [63 x i8] zeroinitializer }, align 32
@__iwl_mvm_rs_tx_status.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tx resp color 0x%x does not match 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Too many rates mismatch. Send sync LQ. rs_state %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__iwl_mvm_rs_tx_status.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Neither active nor search matches tx rate\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SEARCH\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTUAL\00", [25 x i8] zeroinitializer }, align 32
@__iwl_mvm_rs_tx_status.__already_done.29 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reduced txpower: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rs_rate_from_ucode_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stbc %d bfer %d\00", [16 x i8] zeroinitializer }, align 32
@rs_rate_from_ucode_rate.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.34 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.35 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.36 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.37 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.38 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.39 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_rate_from_ucode_rate.__already_done.40 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.rs_dump_rate = private unnamed_addr constant [13 x i8] c"rs_dump_rate\00", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s BW: %d SGI: %d LDPC: %d STBC: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rs_pretty_rate.buf = internal global { [40 x i8], [56 x i8] } zeroinitializer, align 32
@rs_pretty_rate.legacy_rates = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1M\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2M\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5.5M\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11M\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6M\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9M\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12M\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"18M\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24M\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"36M\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"48M\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"54M\00", [28 x i8] zeroinitializer }, align 32
@rs_pretty_rate.ht_vht_rates = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.54, ptr null, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS0\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS1\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS2\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS3\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS4\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS5\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS6\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS7\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS8\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS9\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD_RATE\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(%s|%s|%s)\00", [21 x i8] zeroinitializer }, align 32
@rs_pretty_lq_type.lq_types = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LEGACY_G\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LEGACY_A\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HT SISO\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HT MIMO\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VHT SISO\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VHT MIMO\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HE SISO\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HE MIMO\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@__func__.rs_stay_in_table = private unnamed_addr constant [17 x i8] c"rs_stay_in_table\00", align 1
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LQ: stay is expired %d %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Moving to RS_STATE_SEARCH_CYCLE_STARTED\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LQ: stay in table clear win\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rs_rate_scale_clear_tbl_windows = private unnamed_addr constant [32 x i8] c"rs_rate_scale_clear_tbl_windows\00", align 1
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Clearing up window stats\0A\00", [38 x i8] zeroinitializer }, align 32
@rs_collect_tpc_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.rs_rate_scale_perform = private unnamed_addr constant [22 x i8] c"rs_rate_scale_perform\00", align 1
@.str.80 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Aggregation changed: prev %d current %d. Update expected TPT table\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Current Rate is not valid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tbl->expected_tpt is NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Test Window: succ %d total %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"SWITCHING TO NEW TABLE SR: %d cur-tpt %d old-tpt %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"GOING BACK TO THE OLD TABLE: SR %d cur-tpt %d old-tpt %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: cur_tpt %d SR %d low %d high %d low_tpt %d high_tpt %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BT Coex forbids MIMO. Search for new config\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"At the bottom rate. Can't decrease\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"At the top rate. Can't increase\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Start Search: update_lq %d done_search %d rs_state %d win->counter %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"No more columns to explore in search cycle. Go to RS_STATE_SEARCH_CYCLE_ENDED\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to SEARCH TABLE:\00", [40 x i8] zeroinitializer }, align 32
@rs_tx_columns = internal constant { [8 x %struct.rs_tx_column], [96 x i8] } { [8 x %struct.rs_tx_column] [%struct.rs_tx_column { i32 1, i8 1, i8 0, [7 x i32] [i32 1, i32 2, i32 6, i32 9, i32 9, i32 9, i32 9], [3 x ptr] [ptr @rs_ant_allow, ptr null, ptr null] }, %struct.rs_tx_column { i32 1, i8 2, i8 0, [7 x i32] [i32 0, i32 3, i32 6, i32 9, i32 9, i32 9, i32 9], [3 x ptr] [ptr @rs_ant_allow, ptr null, ptr null] }, %struct.rs_tx_column { i32 2, i8 1, i8 0, [7 x i32] [i32 3, i32 6, i32 4, i32 0, i32 1, i32 9, i32 9], [3 x ptr] [ptr @rs_siso_allow, ptr @rs_ant_allow, ptr null] }, %struct.rs_tx_column { i32 2, i8 2, i8 0, [7 x i32] [i32 2, i32 6, i32 5, i32 0, i32 1, i32 9, i32 9], [3 x ptr] [ptr @rs_siso_allow, ptr @rs_ant_allow, ptr null] }, %struct.rs_tx_column { i32 2, i8 1, i8 1, [7 x i32] [i32 5, i32 7, i32 2, i32 0, i32 1, i32 9, i32 9], [3 x ptr] [ptr @rs_siso_allow, ptr @rs_ant_allow, ptr @rs_sgi_allow] }, %struct.rs_tx_column { i32 2, i8 2, i8 1, [7 x i32] [i32 4, i32 7, i32 3, i32 0, i32 1, i32 9, i32 9], [3 x ptr] [ptr @rs_siso_allow, ptr @rs_ant_allow, ptr @rs_sgi_allow] }, %struct.rs_tx_column { i32 3, i8 3, i8 0, [7 x i32] [i32 2, i32 7, i32 0, i32 1, i32 9, i32 9, i32 9], [3 x ptr] [ptr @rs_mimo_allow, ptr null, ptr null] }, %struct.rs_tx_column { i32 3, i8 3, i8 1, [7 x i32] [i32 4, i32 6, i32 0, i32 1, i32 9, i32 9, i32 9], [3 x ptr] [ptr @rs_mimo_allow, ptr @rs_sgi_allow, ptr null] }], [96 x i8] zeroinitializer }, align 32
@rs_get_expected_tpt_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@expected_tpt_legacy = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 7, i16 13, i16 35, i16 58, i16 40, i16 57, i16 72, i16 98, i16 121, i16 154, i16 177, i16 186, i16 0, i16 0, i16 0, i16 0, i16 0], [62 x i8] zeroinitializer }, align 32
@expected_tpt_mimo2_20MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 74, i16 0, i16 123, i16 155, i16 179, i16 213, i16 235, i16 243, i16 250, i16 261, i16 0, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 81, i16 0, i16 131, i16 164, i16 187, i16 221, i16 242, i16 250, i16 256, i16 267, i16 0, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 98, i16 0, i16 193, i16 286, i16 375, i16 550, i16 718, i16 799, i16 878, i16 1032, i16 0, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 109, i16 0, i16 214, i16 316, i16 414, i16 607, i16 790, i16 879, i16 965, i16 1132, i16 0, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_siso_20MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 42, i16 0, i16 76, i16 102, i16 124, i16 159, i16 183, i16 193, i16 202, i16 216, i16 0, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 46, i16 0, i16 82, i16 110, i16 132, i16 168, i16 192, i16 202, i16 210, i16 225, i16 0, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 49, i16 0, i16 97, i16 145, i16 192, i16 285, i16 375, i16 420, i16 464, i16 551, i16 0, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 54, i16 0, i16 108, i16 160, i16 213, i16 315, i16 415, i16 465, i16 513, i16 608, i16 0, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_siso_40MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 77, i16 0, i16 127, i16 160, i16 184, i16 220, i16 242, i16 250, i16 257, i16 269, i16 275, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 83, i16 0, i16 135, i16 169, i16 193, i16 229, i16 250, i16 257, i16 264, i16 275, i16 280, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 101, i16 0, i16 199, i16 295, i16 389, i16 570, i16 744, i16 828, i16 911, i16 1070, i16 1173, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 112, i16 0, i16 220, i16 326, i16 429, i16 629, i16 819, i16 912, i16 1000, i16 1173, i16 1284, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_siso_80MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 130, i16 0, i16 191, i16 223, i16 244, i16 273, i16 288, i16 294, i16 298, i16 305, i16 308, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 138, i16 0, i16 200, i16 231, i16 251, i16 279, i16 293, i16 298, i16 302, i16 308, i16 312, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 217, i16 0, i16 429, i16 634, i16 834, i16 1220, i16 1585, i16 1760, i16 1931, i16 2258, i16 2466, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 241, i16 0, i16 475, i16 701, i16 921, i16 1343, i16 1741, i16 1931, i16 2117, i16 2468, i16 2691, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_siso_160MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 191, i16 0, i16 244, i16 288, i16 298, i16 308, i16 313, i16 318, i16 323, i16 328, i16 330, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 200, i16 0, i16 251, i16 293, i16 302, i16 312, i16 317, i16 322, i16 327, i16 332, i16 334, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 439, i16 0, i16 875, i16 1307, i16 1736, i16 2584, i16 3419, i16 3831, i16 4240, i16 5049, i16 5581, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 488, i16 0, i16 972, i16 1451, i16 1925, i16 2864, i16 3785, i16 4240, i16 4691, i16 5581, i16 6165, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@rs_get_expected_tpt_table.__already_done.93 = internal unnamed_addr global i1 false, section ".data.once", align 1
@expected_tpt_mimo2_40MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 123, i16 0, i16 182, i16 214, i16 235, i16 264, i16 279, i16 285, i16 289, i16 296, i16 300, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 131, i16 0, i16 191, i16 222, i16 242, i16 270, i16 284, i16 289, i16 293, i16 300, i16 303, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 200, i16 0, i16 390, i16 571, i16 741, i16 1067, i16 1365, i16 1505, i16 1640, i16 1894, i16 2053, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 221, i16 0, i16 430, i16 630, i16 816, i16 1169, i16 1490, i16 1641, i16 1784, i16 2053, i16 2221, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_mimo2_80MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 182, i16 0, i16 240, i16 264, i16 278, i16 299, i16 308, i16 311, i16 313, i16 317, i16 319, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 190, i16 0, i16 247, i16 269, i16 282, i16 302, i16 310, i16 313, i16 315, i16 319, i16 320, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 428, i16 0, i16 833, i16 1215, i16 1577, i16 2254, i16 2863, i16 3147, i16 3418, i16 3913, i16 4219, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 474, i16 0, i16 920, i16 1338, i16 1732, i16 2464, i16 3116, i16 3418, i16 3705, i16 4225, i16 4545, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_mimo2_160MHz = internal constant { [4 x [17 x i16]], [56 x i8] } { [4 x [17 x i16]] [[17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 240, i16 0, i16 278, i16 308, i16 313, i16 319, i16 322, i16 324, i16 328, i16 330, i16 334, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 247, i16 0, i16 282, i16 310, i16 315, i16 320, i16 323, i16 325, i16 329, i16 332, i16 338, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 875, i16 0, i16 1735, i16 2582, i16 3414, i16 5043, i16 6619, i16 7389, i16 8147, i16 9629, i16 10592, i16 0, i16 0], [17 x i16] [i16 0, i16 0, i16 0, i16 0, i16 971, i16 0, i16 1925, i16 2861, i16 3779, i16 5574, i16 7304, i16 8147, i16 8976, i16 10592, i16 11640, i16 0, i16 0]], [56 x i8] zeroinitializer }, align 32
@rs_get_expected_tpt_table.__already_done.94 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_get_expected_tpt_table.__already_done.95 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_get_supported_rates.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_fill_lq_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_build_rates_table_from_fixed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_build_rates_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_rates = internal constant { [17 x %struct.iwl_rs_rate_info], [41 x i8] } { [17 x %struct.iwl_rs_rate_info] [%struct.iwl_rs_rate_info { i8 10, i8 26, i8 26, i8 26, i8 26, i8 17, i8 1 }, %struct.iwl_rs_rate_info { i8 20, i8 26, i8 26, i8 26, i8 26, i8 0, i8 2 }, %struct.iwl_rs_rate_info { i8 55, i8 26, i8 26, i8 26, i8 26, i8 1, i8 3 }, %struct.iwl_rs_rate_info { i8 110, i8 26, i8 26, i8 26, i8 26, i8 5, i8 6 }, %struct.iwl_rs_rate_info { i8 13, i8 0, i8 8, i8 0, i8 16, i8 2, i8 3 }, %struct.iwl_rs_rate_info { i8 15, i8 26, i8 26, i8 26, i8 26, i8 4, i8 3 }, %struct.iwl_rs_rate_info { i8 5, i8 1, i8 9, i8 1, i8 17, i8 3, i8 7 }, %struct.iwl_rs_rate_info { i8 7, i8 2, i8 10, i8 2, i8 18, i8 6, i8 8 }, %struct.iwl_rs_rate_info { i8 9, i8 3, i8 11, i8 3, i8 19, i8 7, i8 9 }, %struct.iwl_rs_rate_info { i8 11, i8 4, i8 12, i8 4, i8 20, i8 8, i8 10 }, %struct.iwl_rs_rate_info { i8 1, i8 5, i8 13, i8 5, i8 21, i8 9, i8 11 }, %struct.iwl_rs_rate_info { i8 3, i8 6, i8 14, i8 6, i8 22, i8 10, i8 17 }, %struct.iwl_rs_rate_info { i8 -1, i8 7, i8 15, i8 7, i8 23, i8 17, i8 17 }, %struct.iwl_rs_rate_info { i8 -1, i8 26, i8 26, i8 8, i8 24, i8 17, i8 17 }, %struct.iwl_rs_rate_info { i8 -1, i8 26, i8 26, i8 9, i8 25, i8 17, i8 17 }, %struct.iwl_rs_rate_info zeroinitializer, %struct.iwl_rs_rate_info zeroinitializer], [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid HT rate index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ucode_rate_from_rs_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid VHT rate index %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ucode_rate_from_rs_rate.__already_done.98 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid rate->type %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ant_toggle_lookup = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\02\01\03", [28 x i8] zeroinitializer }, align 32
@rs_get_lower_rate_down_column.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_ht_to_legacy = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\00\00\00\00\04\00\05\06\07\08\09\0A\0B\0B\0B", [17 x i8] zeroinitializer }, align 32
@__func__.rs_set_lq_ss_params = private unnamed_addr constant [20 x i8] c"rs_set_lq_ss_params\00", align 1
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Forcing single stream Tx decision %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No sta with BFER allowed found. Allow\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Found existing sta %d with BFER activated\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Lower priority BFER sta found (%d). Switch BFER\0A\00", [47 x i8] zeroinitializer }, align 32
@rs_bfer_active_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_bfer_priority.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"viftype %d sta_id %d\00", [43 x i8] zeroinitializer }, align 32
@__func__.rs_get_rate_action = private unnamed_addr constant [19 x i8] c"rs_get_rate_action\00", align 1
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Decrease rate because of low SR\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No data about high/low rates. Increase rate\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"No data about high rate and low rate is worse. Increase rate\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Higher rate is better. Increate rate\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Both high and low are worse. Maintain rate\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Lower rate is better\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No data about lower rate\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maintain rate\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SR is above NO DECREASE. Avoid downscale\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Current TPT is higher than max expected in low rate. Avoid downscale\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Decrease rate\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.rs_tpc_perform = private unnamed_addr constant [15 x i8] c"rs_tpc_perform\00", align 1
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fixed tpc: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@rs_tpc_perform.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tpc is not allowed. remove txp restrictions\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"(TPC: %d): cur_tpt %d SR %d weak %d strong %d weak_tpt %d strong_tpt %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"already in highest txp, stay\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.124 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwlmvm_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mvm_mod_params, align 4
@__func__.rs_tpc_allowed = private unnamed_addr constant [15 x i8] c"rs_tpc_allowed\00", align 1
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cam: %d sta_ps_disabled %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"check rate, table type: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rs_tpc_allowed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.rs_get_tpc_action = private unnamed_addr constant [18 x i8] c"rs_get_tpc_action\00", align 1
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no current tpt. stay.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"increase txp because of weak SR\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"no weak txp measurement. decrease txp\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lower txp has better tpt. decrease txp\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"higher txp has better tpt. increase txp\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lower txp has worse tpt. increase txp\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no need to increase or decrease txp - stay\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.rs_tweak_rate_tbl = private unnamed_addr constant [18 x i8] c"rs_tweak_rate_tbl\00", align 1
@.str.134 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Switch 80Mhz SISO MCS0 -> 20Mhz MCS4\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Switch 20Mhz SISO MCS5 -> 80Mhz MCS1\0A\00", [58 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__.rs_get_next_column = private unnamed_addr constant [19 x i8] c"rs_get_next_column\00", align 1
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Skip already visited column %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Skip column %d as ANT config isn't supported by chip. valid_ants 0x%x column ant 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Skip column %d: not allowed (check %d failed)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Skip column %d: no rate is allowed in this column\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Skip column %d: can't beat current TPT. Max expected %d current %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Found potential column %d. Max expected %d current %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rs_get_max_allowed_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rs_switch_to_column.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad column mode\00", [16 x i8] zeroinitializer }, align 32
@__func__.rs_switch_to_column = private unnamed_addr constant [20 x i8] c"rs_switch_to_column\00", align 1
@.str.143 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can not switch with index %d rate mask %lx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Switched to column %d: Index %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rs_get_best_rate = private unnamed_addr constant [17 x i8] c"rs_get_best_rate\00", align 1
@.str.145 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"SR %d high. Find rate exceeding EXPECTED_CURRENT %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"SR %d not that good. Find rate exceeding ACTUAL_TPT %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Best rate found %d target_tp %d expected_new %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rs_tl_turn_on_agg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.148 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tid exceeds max TID count: %d/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.rs_tl_turn_on_agg = private unnamed_addr constant [18 x i8] c"rs_tl_turn_on_agg\00", align 1
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"try to aggregate tid %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rs_tl_turn_on_agg_for_tid = private unnamed_addr constant [26 x i8] c"rs_tl_turn_on_agg_for_tid\00", align 1
@.str.150 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Starting Tx agg: STA: %pM tid: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Fail start Tx agg on tid: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rs_set_stay_in_table = private unnamed_addr constant [21 x i8] c"rs_set_stay_in_table\00", align 1
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Moving to RS_STATE_STAY_IN_COLUMN\0A\00", [61 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__func__.rs_drv_rate_init = private unnamed_addr constant [17 x i8] c"rs_drv_rate_init\00", align 1
@.str.153 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"LQ: *** rate scale station global init for station %d ***\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"LEGACY=%lX SISO=%lX MIMO2=%lX VHT=%d LDPC=%d STBC=%d BFER=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MAX RATE: LEGACY=%d SISO=%d MIMO2=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@rs_initialize_lq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.156 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ant: 0x%x, chains 0x%x, fw tx ant: 0x%x, nvm tx ant: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rs_get_initial_rate = private unnamed_addr constant [20 x i8] c"rs_get_initial_rate\00", align 1
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Best ANT: %s Best RSSI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rs_optimal_rates_5ghz_legacy = internal constant { [8 x %struct.rs_init_rate_info], [16 x i8] } { [8 x %struct.rs_init_rate_info] [%struct.rs_init_rate_info { i8 -60, i8 11 }, %struct.rs_init_rate_info { i8 -64, i8 10 }, %struct.rs_init_rate_info { i8 -72, i8 9 }, %struct.rs_init_rate_info { i8 -80, i8 8 }, %struct.rs_init_rate_info { i8 -84, i8 7 }, %struct.rs_init_rate_info { i8 -85, i8 6 }, %struct.rs_init_rate_info { i8 -87, i8 5 }, %struct.rs_init_rate_info { i8 -128, i8 4 }], [16 x i8] zeroinitializer }, align 32
@rs_optimal_rates_24ghz_legacy = internal constant { [10 x %struct.rs_init_rate_info], [44 x i8] } { [10 x %struct.rs_init_rate_info] [%struct.rs_init_rate_info { i8 -60, i8 11 }, %struct.rs_init_rate_info { i8 -64, i8 10 }, %struct.rs_init_rate_info { i8 -68, i8 9 }, %struct.rs_init_rate_info { i8 -80, i8 8 }, %struct.rs_init_rate_info { i8 -84, i8 7 }, %struct.rs_init_rate_info { i8 -85, i8 6 }, %struct.rs_init_rate_info { i8 -86, i8 3 }, %struct.rs_init_rate_info { i8 -88, i8 2 }, %struct.rs_init_rate_info { i8 -90, i8 1 }, %struct.rs_init_rate_info { i8 -128, i8 0 }], [44 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INITIAL\00", [24 x i8] zeroinitializer }, align 32
@rs_optimal_rates_vht_20mhz = internal constant { [9 x %struct.rs_init_rate_info], [46 x i8] } { [9 x %struct.rs_init_rate_info] [%struct.rs_init_rate_info { i8 -60, i8 13 }, %struct.rs_init_rate_info { i8 -64, i8 12 }, %struct.rs_init_rate_info { i8 -68, i8 11 }, %struct.rs_init_rate_info { i8 -72, i8 10 }, %struct.rs_init_rate_info { i8 -80, i8 9 }, %struct.rs_init_rate_info { i8 -84, i8 8 }, %struct.rs_init_rate_info { i8 -85, i8 7 }, %struct.rs_init_rate_info { i8 -87, i8 6 }, %struct.rs_init_rate_info { i8 -128, i8 4 }], [46 x i8] zeroinitializer }, align 32
@rs_optimal_rates_vht = internal constant { [10 x %struct.rs_init_rate_info], [44 x i8] } { [10 x %struct.rs_init_rate_info] [%struct.rs_init_rate_info { i8 -60, i8 14 }, %struct.rs_init_rate_info { i8 -64, i8 13 }, %struct.rs_init_rate_info { i8 -68, i8 12 }, %struct.rs_init_rate_info { i8 -72, i8 11 }, %struct.rs_init_rate_info { i8 -80, i8 10 }, %struct.rs_init_rate_info { i8 -84, i8 9 }, %struct.rs_init_rate_info { i8 -85, i8 8 }, %struct.rs_init_rate_info { i8 -87, i8 7 }, %struct.rs_init_rate_info { i8 -88, i8 6 }, %struct.rs_init_rate_info { i8 -128, i8 4 }], [44 x i8] zeroinitializer }, align 32
@rs_optimal_rates_ht = internal constant { [8 x %struct.rs_init_rate_info], [16 x i8] } { [8 x %struct.rs_init_rate_info] [%struct.rs_init_rate_info { i8 -60, i8 12 }, %struct.rs_init_rate_info { i8 -64, i8 11 }, %struct.rs_init_rate_info { i8 -68, i8 10 }, %struct.rs_init_rate_info { i8 -72, i8 9 }, %struct.rs_init_rate_info { i8 -80, i8 8 }, %struct.rs_init_rate_info { i8 -84, i8 7 }, %struct.rs_init_rate_info { i8 -85, i8 6 }, %struct.rs_init_rate_info { i8 -128, i8 4 }], [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwl-mvm-rs\00", [21 x i8] zeroinitializer }, align 32
@__func__.rs_drv_alloc_sta = private unnamed_addr constant [17 x i8] c"rs_drv_alloc_sta\00", align 1
@.str.160 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"create station rate scale window\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.rs_free_sta = private unnamed_addr constant [12 x i8] c"rs_free_sta\00", align 1
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"leave\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_scale_table\00", [47 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_scale_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rs_sta_dbgfs_scale_table_read, ptr @rs_sta_dbgfs_scale_table_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_stats_table\00", [47 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_stats_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rs_sta_dbgfs_stats_table_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drv_tx_stats\00", [19 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_drv_tx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rs_sta_dbgfs_drv_tx_stats_read, ptr @rs_sta_dbgfs_drv_tx_stats_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_agg_tid_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reduced_tpc\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ss_force\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ss_force_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_ss_force_read, ptr @_iwl_dbgfs_ss_force_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sta_id %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed=%d success=%d rate=0%lX\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fixed rate 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"valid_tx_ant %s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_A,\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_B,\00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lq type %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SISO\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIMO2\00", [26 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"80MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"160MHz\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BAD BW\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" %s %s %s %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SGI\00", [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NGI\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDPC\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BCC\00", [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AGG on\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AMSDU on\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last tx rate=0x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"general: flags=0x%X mimo-d=%d s-ant=0x%x d-ant=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"agg: time_limit=%d dist_start_th=%d frame_cnt_limit=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reduced tpc=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"single stream params: %s%s%s%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VALID\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", BFER\00", [25 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", STBC\00", [25 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", FORCE\00", [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Start idx [0]=0x%x [1]=0x%x [2]=0x%x [3]=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" rate[%d] 0x%X \00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.204 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.rs_program_fix_rate = private unnamed_addr constant [20 x i8] c"rs_program_fix_rate\00", align 1
@.str.208 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sta_id %d rate 0x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s type=%d SGI=%d BW=%s DUP=0\0Aindex=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ERR\00", [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"counter=%d success=%d %%=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_drv_tx_stats_read.column_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.179, ptr @.str.220], [32 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LEGACY_ANT_A\00", [19 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LEGACY_ANT_B\00", [19 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SISO_ANT_A\00", [21 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SISO_ANT_B\00", [21 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SISO_ANT_A_SGI\00", [17 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SISO_ANT_B_SGI\00", [17 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIMO2_SGI\00", [22 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6M|MCS0\00", [24 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"12M|MCS1\00", [23 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"18M|MCS2\00", [23 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"24M|MCS3\00", [23 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"36M|MCS4\00", [23 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"48M|MCS5\00", [23 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"54M|MCS6\00", [23 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MCS10\00", [26 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MCS11\00", [26 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COLUMN,\00", [24 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s,\00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llu/%llu,\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ss_force_read.ss_force_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237], [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stbc\00", [27 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bfer\00", [27 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"siso\00", [27 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't force STBC. peer doesn't support\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't force BFER. peer doesn't support\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"valid values none|siso|stbc|bfer\0A\00", [62 x i8] zeroinitializer }, align 32
@switch.table.rs_get_expected_tpt_table = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @expected_tpt_siso_20MHz, ptr @expected_tpt_siso_40MHz, ptr @expected_tpt_siso_80MHz, ptr @expected_tpt_siso_160MHz], [16 x i8] zeroinitializer }, align 32
@switch.table.rs_get_expected_tpt_table.242 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @expected_tpt_mimo2_20MHz, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_80MHz, ptr @expected_tpt_mimo2_160MHz], [16 x i8] zeroinitializer }, align 32
@switch.table.rs_fill_lq_cmd = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0F\00\0F\00\0F", [27 x i8] zeroinitializer }, align 32
@switch.table.rs_fill_lq_cmd.243 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.rs_fill_lq_cmd.244 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.rs_fill_lq_cmd.245 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.rs_fill_lq_cmd.246 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.248 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.250 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.253 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.254 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4096]
@__sancov_gen_cov_switch_values.257 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.259 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.260 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.262 = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 10, i64 11, i64 13, i64 15, i64 20, i64 55, i64 110, i64 255]
@__sancov_gen_cov_switch_values.263 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 14]
@__sancov_gen_cov_switch_values.265 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 14]
@__sancov_gen_cov_switch_values.267 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.268 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.269 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.270 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.274 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.275 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.276 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.277 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.278 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.279 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.280 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.281 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.284 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.285 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.286 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.287 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.288 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.289 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2048, i64 4096]
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2880, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3659, i32 32 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3661, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3666, i32 10 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3671, i32 10 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3676, i32 10 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3681, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3685, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3687, i32 36 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3687, i32 45 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3688, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3688, i32 44 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3689, i32 37 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3690, i32 46 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3691, i32 32 }
@___asan_gen_.335 = private unnamed_addr constant [15 x i8] c"rs_mvm_ops_drv\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4087, i32 38 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3042, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3067, i32 7 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3083, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3092, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3117, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3128, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3149, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3152, i32 37 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3154, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3155, i32 31 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3248, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 890, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 527, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 481, i32 14 }
@___asan_gen_.380 = private unnamed_addr constant [13 x i8] c"legacy_rates\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 482, i32 28 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 483, i32 25 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 484, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 485, i32 25 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 486, i32 26 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 487, i32 25 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 488, i32 25 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 489, i32 26 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 490, i32 26 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 491, i32 26 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 492, i32 26 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 493, i32 26 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 494, i32 26 }
@___asan_gen_.419 = private unnamed_addr constant [13 x i8] c"ht_vht_rates\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 496, i32 27 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 497, i32 28 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 498, i32 28 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 499, i32 28 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 500, i32 28 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 501, i32 28 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 502, i32 28 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 503, i32 28 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 504, i32 28 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 505, i32 28 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 506, i32 28 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 517, i32 14 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 519, i32 15 }
@___asan_gen_.458 = private unnamed_addr constant [9 x i8] c"lq_types\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 461, i32 28 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 462, i32 15 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 464, i32 19 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 463, i32 19 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 465, i32 18 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 466, i32 19 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 467, i32 19 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 468, i32 20 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 469, i32 18 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 470, i32 19 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 474, i32 10 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1447, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1455, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1474, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 547, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2090, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2104, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2117, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2134, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2155, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2167, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2213, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2224, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2237, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2248, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2288, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2300, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2315, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant [14 x i8] c"rs_tx_columns\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 189, i32 34 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c"expected_tpt_legacy\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 394, i32 18 }
@___asan_gen_.548 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo2_20MHz\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 429, i32 18 }
@___asan_gen_.551 = private unnamed_addr constant [24 x i8] c"expected_tpt_siso_20MHz\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 401, i32 18 }
@___asan_gen_.554 = private unnamed_addr constant [24 x i8] c"expected_tpt_siso_40MHz\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 408, i32 18 }
@___asan_gen_.557 = private unnamed_addr constant [24 x i8] c"expected_tpt_siso_80MHz\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 415, i32 18 }
@___asan_gen_.560 = private unnamed_addr constant [25 x i8] c"expected_tpt_siso_160MHz\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 422, i32 18 }
@___asan_gen_.563 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo2_40MHz\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 436, i32 18 }
@___asan_gen_.566 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo2_80MHz\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 443, i32 18 }
@___asan_gen_.569 = private unnamed_addr constant [26 x i8] c"expected_tpt_mimo2_160MHz\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 450, i32 18 }
@___asan_gen_.572 = private unnamed_addr constant [10 x i8] c"iwl_rates\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 78, i32 38 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 798, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 811, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 823, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant [18 x i8] c"ant_toggle_lookup\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 45, i32 17 }
@___asan_gen_.587 = private unnamed_addr constant [16 x i8] c"rs_ht_to_legacy\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 32, i32 11 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3522, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3544, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3550, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3564, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3474, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1759, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1767, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1776, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1783, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1792, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1799, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1807, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1813, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1818, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1822, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1826, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1977, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1985, i32 17 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1993, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2010, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2025, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 695, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 723, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1868, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1878, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1904, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1911, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1921, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1927, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1939, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1947, i32 4 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1953, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1559, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1575, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1608, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1616, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1630, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1645, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1653, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1659, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1706, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1728, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1739, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1342, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1347, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1364, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 595, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 607, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 566, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 577, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 1195, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2945, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2976, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2983, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2658, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2509, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant [29 x i8] c"rs_optimal_rates_5ghz_legacy\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2349, i32 39 }
@___asan_gen_.764 = private unnamed_addr constant [30 x i8] c"rs_optimal_rates_24ghz_legacy\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2336, i32 39 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2596, i32 26 }
@___asan_gen_.770 = private unnamed_addr constant [27 x i8] c"rs_optimal_rates_vht_20mhz\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2374, i32 39 }
@___asan_gen_.773 = private unnamed_addr constant [21 x i8] c"rs_optimal_rates_vht\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2386, i32 39 }
@___asan_gen_.776 = private unnamed_addr constant [20 x i8] c"rs_optimal_rates_ht\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2360, i32 39 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4088, i32 10 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 2719, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3641, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3642, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4059, i32 22 }
@___asan_gen_.794 = private unnamed_addr constant [29 x i8] c"rs_sta_dbgfs_scale_table_ops\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3842, i32 37 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4061, i32 22 }
@___asan_gen_.800 = private unnamed_addr constant [29 x i8] c"rs_sta_dbgfs_stats_table_ops\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3890, i32 37 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4063, i32 22 }
@___asan_gen_.806 = private unnamed_addr constant [30 x i8] c"rs_sta_dbgfs_drv_tx_stats_ops\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3979, i32 37 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4065, i32 20 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4067, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4070, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_ss_force_ops\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4046, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3765, i32 6 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3767, i32 6 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3770, i32 47 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3772, i32 47 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3773, i32 48 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3774, i32 48 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3775, i32 47 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3776, i32 26 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3779, i32 48 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3780, i32 24 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3780, i32 33 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3782, i32 23 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3783, i32 23 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3784, i32 23 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3785, i32 24 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3785, i32 35 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3786, i32 48 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3787, i32 19 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3787, i32 27 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3788, i32 20 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3788, i32 29 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3789, i32 24 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3790, i32 31 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3792, i32 47 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3795, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3802, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3807, i32 47 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3811, i32 4 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3813, i32 4 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3813, i32 14 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3815, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3817, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3819, i32 4 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3821, i32 4 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3831, i32 7 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3732, i32 18 }
@___asan_gen_.930 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 156, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3708, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3867, i32 5 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3869, i32 31 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3869, i32 37 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3875, i32 33 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3879, i32 5 }
@___asan_gen_.950 = private unnamed_addr constant [12 x i8] c"column_name\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3900, i32 28 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3901, i32 30 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3902, i32 30 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3903, i32 28 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3904, i32 28 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3905, i32 32 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3906, i32 32 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3908, i32 27 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3916, i32 25 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3918, i32 26 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3919, i32 26 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3920, i32 26 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3921, i32 26 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3922, i32 26 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3923, i32 26 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3927, i32 29 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3928, i32 29 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3945, i32 38 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3947, i32 39 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3948, i32 38 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3957, i32 7 }
@___asan_gen_.1013 = private unnamed_addr constant [14 x i8] c"ss_force_name\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3994, i32 28 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3995, i32 24 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3996, i32 24 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3997, i32 24 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 3998, i32 24 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4001, i32 39 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4020, i32 4 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4028, i32 4 }
@___asan_gen_.1037 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1038 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1038, i32 4033, i32 3 }
@___asan_gen_.1040 = private unnamed_addr constant [39 x i8] c"switch.table.rs_get_expected_tpt_table\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant [43 x i8] c"switch.table.rs_get_expected_tpt_table.242\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant [28 x i8] c"switch.table.rs_fill_lq_cmd\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant [32 x i8] c"switch.table.rs_fill_lq_cmd.243\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant [32 x i8] c"switch.table.rs_fill_lq_cmd.244\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant [32 x i8] c"switch.table.rs_fill_lq_cmd.245\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant [32 x i8] c"switch.table.rs_fill_lq_cmd.246\00", align 1
@llvm.compiler.used = appending global [257 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rs_mvm_ops_drv, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.41, ptr @rs_pretty_rate.buf, ptr @rs_pretty_rate.legacy_rates, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @rs_pretty_rate.ht_vht_rates, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @rs_pretty_lq_type.lq_types, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @rs_tx_columns, ptr @expected_tpt_legacy, ptr @expected_tpt_mimo2_20MHz, ptr @expected_tpt_siso_20MHz, ptr @expected_tpt_siso_40MHz, ptr @expected_tpt_siso_80MHz, ptr @expected_tpt_siso_160MHz, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_80MHz, ptr @expected_tpt_mimo2_160MHz, ptr @iwl_rates, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @ant_toggle_lookup, ptr @rs_ht_to_legacy, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @rs_optimal_rates_5ghz_legacy, ptr @rs_optimal_rates_24ghz_legacy, ptr @.str.158, ptr @rs_optimal_rates_vht_20mhz, ptr @rs_optimal_rates_vht, ptr @rs_optimal_rates_ht, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @rs_sta_dbgfs_scale_table_ops, ptr @.str.164, ptr @rs_sta_dbgfs_stats_table_ops, ptr @.str.165, ptr @rs_sta_dbgfs_drv_tx_stats_ops, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @iwl_dbgfs_ss_force_ops, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @rs_sta_dbgfs_drv_tx_stats_read.column_name, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @iwl_dbgfs_ss_force_read.ss_force_name, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @switch.table.rs_get_expected_tpt_table, ptr @switch.table.rs_get_expected_tpt_table.242, ptr @switch.table.rs_fill_lq_cmd, ptr @switch.table.rs_fill_lq_cmd.243, ptr @switch.table.rs_fill_lq_cmd.244, ptr @switch.table.rs_fill_lq_cmd.245, ptr @switch.table.rs_fill_lq_cmd.246], section "llvm.metadata"
@0 = internal global [257 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_mvm_ops_drv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_pretty_rate.buf to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_pretty_rate.legacy_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_pretty_rate.ht_vht_rates to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_pretty_lq_type.lq_types to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_tx_columns to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_legacy to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_20MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso_20MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso_40MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso_80MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso_160MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_40MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_80MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_160MHz to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_rates to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ant_toggle_lookup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_ht_to_legacy to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_optimal_rates_5ghz_legacy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_optimal_rates_24ghz_legacy to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_optimal_rates_vht_20mhz to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_optimal_rates_vht to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_optimal_rates_ht to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_scale_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_stats_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_drv_tx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ss_force_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_drv_tx_stats_read.column_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ss_force_read.ss_force_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_get_expected_tpt_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_get_expected_tpt_table.242 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_fill_lq_cmd to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_fill_lq_cmd.243 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_fill_lq_cmd.244 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_fill_lq_cmd.245 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_fill_lq_cmd.246 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs_update_last_rssi(ptr nocapture noundef readnone %mvm, ptr nocapture noundef %mvmsta, ptr nocapture noundef readonly %rx_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chains = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 14
  %0 = ptrtoint ptr %chains to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chains, align 1
  %chains2 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 3
  %2 = ptrtoint ptr %chains2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %chains2, align 4
  %chain_signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 15
  %3 = ptrtoint ptr %chain_signal to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chain_signal, align 8
  %chain_signal4 = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 4
  %5 = ptrtoint ptr %chain_signal4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %chain_signal4, align 1
  %arrayidx7 = getelementptr %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %arrayidx10 = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx10, align 1
  %last_rssi = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 5
  %9 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %last_rssi, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %chain_signal4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chain_signal4, align 1
  %12 = ptrtoint ptr %last_rssi to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %last_rssi, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp21 = icmp sgt i8 %11, %13
  br i1 %cmp21, label %if.then23, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %last_rssi, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %and.1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 1
  %17 = ptrtoint ptr %last_rssi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %last_rssi, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp21.1 = icmp sgt i8 %16, %18
  br i1 %cmp21.1, label %if.then23.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then23.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %last_rssi, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then23.1, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %arrayidx16.2 = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16.2, align 1
  %22 = ptrtoint ptr %last_rssi to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %last_rssi, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp21.2 = icmp sgt i8 %21, %23
  br i1 %cmp21.2, label %if.then23.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then23.2:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %last_rssi, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then23.2, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %arrayidx16.3 = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 4, i32 3
  %25 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.3, align 1
  %27 = ptrtoint ptr %last_rssi to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %last_rssi, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp21.3 = icmp sgt i8 %26, %28
  br i1 %cmp21.3, label %if.then23.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.then23.3:                                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %last_rssi, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then23.3, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_reset_frame_stats(ptr noundef %mvm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_stats_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %drv_stats_lock) #15
  %drv_rx_stats = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83
  %0 = call ptr @memset(ptr %drv_rx_stats, i32 0, i32 96)
  tail call void @_raw_spin_unlock_bh(ptr noundef %drv_stats_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_update_frame_stats(ptr noundef %mvm, i32 noundef %rate, i1 noundef zeroext %agg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_stats_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 84
  tail call void @_raw_spin_lock(ptr noundef %drv_stats_lock) #15
  br i1 %agg, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %agg_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 11
  %0 = ptrtoint ptr %agg_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %agg_frames, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %agg_frames, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %drv_rx_stats1 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83
  %success_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 13
  %2 = ptrtoint ptr %success_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %success_frames, align 4
  %inc2 = add i32 %3, 1
  store i32 %inc2, ptr %success_frames, align 4
  %and = lshr i32 %rate, 11
  %4 = and i32 %and, 3
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb8
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bw_20_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 3
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bw_40_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bw_80_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bw_160_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 6
  br label %sw.epilog

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb
  %bw_160_frames.sink127 = phi ptr [ %bw_160_frames, %sw.bb11 ], [ %bw_80_frames, %sw.bb8 ], [ %bw_40_frames, %sw.bb5 ], [ %bw_20_frames, %sw.bb ]
  %6 = ptrtoint ptr %bw_160_frames.sink127 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bw_160_frames.sink127, align 4
  %inc13 = add i32 %7, 1
  store i32 %inc13, ptr %bw_160_frames.sink127, align 4
  %and49 = and i32 %rate, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %ht_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 1
  br label %if.end68

if.else:                                          ; preds = %sw.epilog
  %and55 = and i32 %rate, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else.if.end82.sink.split_crit_edge, label %if.then57

if.else.if.end82.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82.sink.split

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %vht_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 2
  br label %if.end68

if.end68:                                         ; preds = %if.then57, %if.then51
  %vht_frames.sink129 = phi ptr [ %vht_frames, %if.then57 ], [ %ht_frames, %if.then51 ]
  %.sink = phi i32 [ 4, %if.then57 ], [ 3, %if.then51 ]
  %8 = ptrtoint ptr %vht_frames.sink129 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vht_frames.sink129, align 4
  %inc59 = add i32 %9, 1
  store i32 %inc59, ptr %vht_frames.sink129, align 4
  %and60 = lshr i32 %rate, %.sink
  %nss.0.in = and i32 %and60, 3
  %10 = zext i32 %nss.0.in to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %nss.0.in, label %if.end68.if.end82_crit_edge [
    i32 0, label %if.then71
    i32 1, label %if.then78
  ]

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  %siso_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 9
  br label %if.end82.sink.split

if.then78:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  %mimo2_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 10
  br label %if.end82.sink.split

if.end82.sink.split:                              ; preds = %if.then78, %if.then71, %if.else.if.end82.sink.split_crit_edge
  %drv_rx_stats1.sink131 = phi ptr [ %mimo2_frames, %if.then78 ], [ %siso_frames, %if.then71 ], [ %drv_rx_stats1, %if.else.if.end82.sink.split_crit_edge ]
  %11 = ptrtoint ptr %drv_rx_stats1.sink131 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drv_rx_stats1.sink131, align 4
  %inc66 = add i32 %12, 1
  store i32 %inc66, ptr %drv_rx_stats1.sink131, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %if.end68.if.end82_crit_edge
  %and83 = and i32 %rate, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %ngi_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 8
  %sgi_frames = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 7
  %ngi_frames.sink133 = select i1 %tobool84.not, ptr %ngi_frames, ptr %sgi_frames
  %13 = ptrtoint ptr %ngi_frames.sink133 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ngi_frames.sink133, align 4
  %inc90 = add i32 %14, 1
  store i32 %inc90, ptr %ngi_frames.sink133, align 4
  %last_frame_idx = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 16
  %15 = ptrtoint ptr %last_frame_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_frame_idx, align 4
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 15, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rate, ptr %arrayidx, align 4
  %18 = load i32, ptr %last_frame_idx, align 4
  %add96 = add i32 %18, 1
  %rem = and i32 %add96, 7
  store i32 %rem, ptr %last_frame_idx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %drv_stats_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rs_tx_status(ptr noundef %mvm, ptr noundef %sta, i32 noundef %tid, ptr nocapture noundef %info, i1 noundef zeroext %ndp) local_unnamed_addr #2 align 64 {
entry:
  %vht_cap1.i.i235 = alloca %struct.ieee80211_vht_cap, align 4
  %rate_mask.addr.i.i = alloca i32, align 4
  %vht_cap1.i.i = alloca %struct.ieee80211_vht_cap, align 4
  %vht_cap1.i.i.i = alloca %struct.ieee80211_vht_cap, align 4
  %lq_rate.i = alloca %struct.rs_rate, align 4
  %tx_resp_rate.i = alloca %struct.rs_rate, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 27, i32 1
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %lq_rate.i) #15
  %0 = call ptr @memset(ptr %lq_rate.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_resp_rate.i) #15
  %1 = call ptr @memset(ptr %tx_resp_rate.i, i32 255, i32 20)
  %2 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %status_driver_data.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 16
  %3 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %status_driver_data.i, align 8
  %5 = ptrtoint ptr %4 to i32
  %conv.i = trunc i32 %5 to i8
  %and1.i = lshr i32 %5, 8
  %conv2.i = and i32 %and1.i, 7
  %arrayidx4.i = getelementptr %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 20
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %lq_sta5.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 15
  %pers.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 14
  %drv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 27
  %9 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_rs_tx_status, ptr noundef nonnull @.str.16) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 8
  %15 = and i32 %14, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %if.end.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %if.end15.i

if.end.i.__iwl_mvm_rs_tx_status.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.end15.i:                                       ; preds = %if.end.i
  %band.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %call16.i = call fastcc i32 @rs_rate_from_ucode_rate(i32 noundef %8, i32 noundef %bf.lshr.i, ptr noundef nonnull %tx_resp_rate.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end58.i, label %land.end.i

land.end.i:                                       ; preds = %if.end15.i
  %.b702.i = load i1, ptr @__iwl_mvm_rs_tx_status.__already_done, align 1
  br i1 %.b702.i, label %land.end.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %if.then25.i, !prof !618

land.end.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then25.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__iwl_mvm_rs_tx_status.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3053, i32 noundef 9, ptr noundef null) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end58.i:                                       ; preds = %if.end15.i
  %18 = ptrtoint ptr %pers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool60.not.i = icmp eq i32 %19, 0
  br i1 %tobool60.not.i, label %if.end161.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end58.i
  %20 = ptrtoint ptr %tx_resp_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_resp_rate.i, align 4
  %type.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 1
  %22 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %23, label %if.then61.i.land.rhs73.i_crit_edge [
    i32 1, label %if.then61.i.if.then.i.i_crit_edge
    i32 2, label %if.then61.i.if.then.i.i_crit_edge359
    i32 3, label %if.then61.i.if.then24.i.i_crit_edge
    i32 5, label %if.then61.i.if.then24.i.i_crit_edge360
    i32 7, label %if.then61.i.if.then24.i.i_crit_edge361
    i32 4, label %if.then61.i.if.then60.i.i_crit_edge
    i32 6, label %if.then61.i.if.then60.i.i_crit_edge362
    i32 8, label %if.then61.i.if.then60.i.i_crit_edge363
  ]

if.then61.i.if.then60.i.i_crit_edge363:           ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i.i

if.then61.i.if.then60.i.i_crit_edge362:           ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i.i

if.then61.i.if.then60.i.i_crit_edge:              ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i.i

if.then61.i.if.then24.i.i_crit_edge361:           ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i.i

if.then61.i.if.then24.i.i_crit_edge360:           ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i.i

if.then61.i.if.then24.i.i_crit_edge:              ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i.i

if.then61.i.if.then.i.i_crit_edge359:             ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then61.i.if.then.i.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then61.i.land.rhs73.i_crit_edge:               ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs73.i

if.then.i.i:                                      ; preds = %if.then61.i.if.then.i.i_crit_edge, %if.then61.i.if.then.i.i_crit_edge359
  %ant.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 2
  %25 = ptrtoint ptr %ant.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ant.i.i, align 4
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.249)
  switch i8 %26, label %if.then.i.i.land.rhs73.i_crit_edge [
    i8 1, label %if.then.i.i.if.end121.i_crit_edge
    i8 2, label %if.end121.fold.split.i
  ]

if.then.i.i.if.end121.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i

if.then.i.i.land.rhs73.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs73.i

if.then24.i.i:                                    ; preds = %if.then61.i.if.then24.i.i_crit_edge, %if.then61.i.if.then24.i.i_crit_edge360, %if.then61.i.if.then24.i.i_crit_edge361
  %ant25.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 2
  %28 = ptrtoint ptr %ant25.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ant25.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp27.i.i = icmp eq i8 %29, 1
  br i1 %cmp27.i.i, label %if.then24.i.i.if.then34.i.i_crit_edge, label %lor.lhs.false29.i.i

if.then24.i.i.if.then34.i.i_crit_edge:            ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i

lor.lhs.false29.i.i:                              ; preds = %if.then24.i.i
  %stbc.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 6
  %30 = ptrtoint ptr %stbc.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stbc.i.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false31.i.i, label %lor.lhs.false29.i.i.if.then34.i.i_crit_edge

lor.lhs.false29.i.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i

lor.lhs.false31.i.i:                              ; preds = %lor.lhs.false29.i.i
  %bfer.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 7
  %32 = ptrtoint ptr %bfer.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bfer.i.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool32.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool32.not.i.i, label %if.end37.i.i, label %lor.lhs.false31.i.i.if.then34.i.i_crit_edge

lor.lhs.false31.i.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i

if.then34.i.i:                                    ; preds = %lor.lhs.false31.i.i.if.then34.i.i_crit_edge, %lor.lhs.false29.i.i.if.then34.i.i_crit_edge, %if.then24.i.i.if.then34.i.i_crit_edge
  %sgi.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 4
  %34 = ptrtoint ptr %sgi.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sgi.i.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool35.not.i.i = icmp eq i8 %35, 0
  %cond.i.i = select i1 %tobool35.not.i.i, i32 2, i32 4
  br label %if.end121.i

if.end37.i.i:                                     ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp40.i.i = icmp eq i8 %29, 2
  br i1 %cmp40.i.i, label %if.then42.i.i, label %if.end37.i.i.land.rhs73.i_crit_edge

if.end37.i.i.land.rhs73.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs73.i

if.then42.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sgi43.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 4
  %36 = ptrtoint ptr %sgi43.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sgi43.i.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool44.not.i.i = icmp eq i8 %37, 0
  %cond46.i.i = select i1 %tobool44.not.i.i, i32 3, i32 5
  br label %if.end121.i

if.then60.i.i:                                    ; preds = %if.then61.i.if.then60.i.i_crit_edge, %if.then61.i.if.then60.i.i_crit_edge362, %if.then61.i.if.then60.i.i_crit_edge363
  %sgi61.i.i = getelementptr inbounds %struct.rs_rate, ptr %tx_resp_rate.i, i32 0, i32 4
  %38 = ptrtoint ptr %sgi61.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sgi61.i.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool62.not.i.i = icmp eq i8 %39, 0
  %cond64.i.i = select i1 %tobool62.not.i.i, i32 6, i32 7
  br label %if.end121.i

land.rhs73.i:                                     ; preds = %if.end37.i.i.land.rhs73.i_crit_edge, %if.then.i.i.land.rhs73.i_crit_edge, %if.then61.i.land.rhs73.i_crit_edge
  %.b694701.i = load i1, ptr @__iwl_mvm_rs_tx_status.__already_done.17, align 1
  br i1 %.b694701.i, label %land.rhs73.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %if.then84.i, !prof !618

land.rhs73.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %land.rhs73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then84.i:                                      ; preds = %land.rhs73.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__iwl_mvm_rs_tx_status.__already_done.17, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3069, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %8) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end121.fold.split.i:                           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end121.fold.split.i, %if.then60.i.i, %if.then42.i.i, %if.then34.i.i, %if.then.i.i.if.end121.i_crit_edge
  %retval.0.i707.i = phi i32 [ %cond64.i.i, %if.then60.i.i ], [ %cond46.i.i, %if.then42.i.i ], [ %cond.i.i, %if.then34.i.i ], [ 0, %if.then.i.i.if.end121.i_crit_edge ], [ 1, %if.end121.fold.split.i ]
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %info, align 8
  %and123.i = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  br i1 %tobool124.not.i, label %if.else.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #17
  %ampdu_len.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 9
  %42 = ptrtoint ptr %ampdu_len.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ampdu_len.i, align 1
  %conv126.i = zext i8 %43 to i32
  %ampdu_ack_len.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %44 = ptrtoint ptr %ampdu_ack_len.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ampdu_ack_len.i, align 8
  %conv127.i = zext i8 %45 to i32
  br label %if.end139.i

if.else.i:                                        ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #17
  %count.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %2, i32 0, i32 1
  %46 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load129.i = load i16, ptr %count.i, align 1
  %bf.lshr130.i = lshr i16 %bf.load129.i, 11
  %conv131.i = zext i16 %bf.lshr130.i to i32
  %and133.i = lshr i32 %41, 9
  %and133.lobit.i = and i32 %and133.i, 1
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.else.i, %if.then125.i
  %attempts.0.i = phi i32 [ %conv126.i, %if.then125.i ], [ %conv131.i, %if.else.i ]
  %success.0.i = phi i32 [ %conv127.i, %if.then125.i ], [ %and133.lobit.i, %if.else.i ]
  %47 = zext i32 %attempts.0.i to i64
  %arrayidx143.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 35, i32 6, i32 %retval.0.i707.i, i32 %21
  %total.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 35, i32 6, i32 %retval.0.i707.i, i32 %21, i32 1
  %48 = ptrtoint ptr %total.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %total.i, align 8
  %add.i = add i64 %49, %47
  store i64 %add.i, ptr %total.i, align 8
  %50 = zext i32 %success.0.i to i64
  %51 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx143.i, align 8
  %add150.i = add i64 %52, %50
  store i64 %add150.i, ptr %arrayidx143.i, align 8
  %53 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %54, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_rs_tx_status, ptr noundef nonnull @.str.19, i32 noundef %8, i32 noundef %success.0.i, i32 noundef %attempts.0.i) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end161.i:                                      ; preds = %if.end58.i
  %last_tx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 15
  %55 = ptrtoint ptr %last_tx.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %last_tx.i, align 8
  %57 = trunc i64 %56 to i32
  %conv163.i = add i32 %57, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %conv163.i, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp164.i = icmp slt i32 %sub.i, 0
  br i1 %cmp164.i, label %do.end170.i, label %if.end177.i

do.end170.i:                                      ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_rs_tx_status, ptr noundef nonnull @.str.20) #15
  %61 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load175.i = load i32, ptr %band.i, align 4
  %bf.lshr176.i = lshr i32 %bf.load175.i, 29
  call fastcc void @rs_drv_rate_init(ptr noundef %mvm, ptr noundef %sta, i32 noundef %bf.lshr176.i) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end177.i:                                      ; preds = %if.end161.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %conv178.i = zext i32 %62 to i64
  %63 = ptrtoint ptr %last_tx.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv178.i, ptr %last_tx.i, align 8
  %lq.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 14
  %rs_table.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 3, i32 0, i32 2
  %64 = ptrtoint ptr %rs_table.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rs_table.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #15
  %67 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load182.i = load i32, ptr %band.i, align 4
  %bf.lshr183.i = lshr i32 %bf.load182.i, 29
  %call184.i = call fastcc i32 @rs_rate_from_ucode_rate(i32 noundef %66, i32 noundef %bf.lshr183.i, ptr noundef nonnull %lq_rate.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184.i)
  %tobool185.not.i = icmp eq i32 %call184.i, 0
  br i1 %tobool185.not.i, label %if.end236.i, label %land.end194.i

land.end194.i:                                    ; preds = %if.end177.i
  %.b695700.i = load i1, ptr @__iwl_mvm_rs_tx_status.__already_done.21, align 1
  br i1 %.b695700.i, label %land.end194.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %if.then201.i, !prof !618

land.end194.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %land.end194.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then201.i:                                     ; preds = %land.end194.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__iwl_mvm_rs_tx_status.__already_done.21, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3111, i32 noundef 9, ptr noundef null) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end236.i:                                      ; preds = %if.end177.i
  %flags238.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 15
  %68 = ptrtoint ptr %flags238.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flags238.i, align 4
  %70 = lshr i8 %69, 1
  %71 = and i8 %70, 7
  %72 = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %72)
  %cmp242.not.i = icmp eq i32 %conv2.i, %72
  br i1 %cmp242.not.i, label %if.end274.i, label %do.end248.i

do.end248.i:                                      ; preds = %if.end236.i
  %73 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %74, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_rs_tx_status, ptr noundef nonnull @.str.22, i32 noundef %conv2.i, i32 noundef %72) #15
  %missed_rate_counter.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 13
  %75 = ptrtoint ptr %missed_rate_counter.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %missed_rate_counter.i, align 8
  %inc.i = add i8 %76, 1
  store i8 %inc.i, ptr %missed_rate_counter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i)
  %cmp259.i = icmp ugt i8 %inc.i, 15
  br i1 %cmp259.i, label %if.then261.i, label %do.end248.i.__iwl_mvm_rs_tx_status.exit_crit_edge

do.end248.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %do.end248.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then261.i:                                     ; preds = %do.end248.i
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %missed_rate_counter.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %missed_rate_counter.i, align 8
  %78 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mvm, align 8
  %rs_state.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 1
  %80 = ptrtoint ptr %rs_state.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rs_state.i, align 1
  %conv268.i = zext i8 %81 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %79, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_rs_tx_status, ptr noundef nonnull @.str.23, i32 noundef %conv268.i) #15
  %call272.i = call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq.i) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end274.i:                                      ; preds = %if.end236.i
  %missed_rate_counter275.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 13
  %82 = ptrtoint ptr %missed_rate_counter275.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %missed_rate_counter275.i, align 8
  %search_better_tbl.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 2
  %83 = ptrtoint ptr %search_better_tbl.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %search_better_tbl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool276.not.i = icmp eq i8 %84, 0
  %85 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %lq_sta5.i, align 8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  %..i = select i1 %tobool276.not.i, i8 %88, i8 %86
  %.718.i = select i1 %tobool276.not.i, i8 %86, i8 %88
  %idxprom292.pn.i = zext i8 %..i to i32
  %other_tbl.0.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 %idxprom292.pn.i
  %idxprom288.pn.i = zext i8 %.718.i to i32
  %curr_tbl.0.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 %idxprom288.pn.i
  %stbc.i142 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 6
  %89 = ptrtoint ptr %stbc.i142 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %stbc.i142, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i143 = icmp eq i8 %90, 0
  br i1 %tobool.not.i143, label %lor.lhs.false.i146, label %if.end274.i.if.then.i148_crit_edge

if.end274.i.if.then.i148_crit_edge:               ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i148

lor.lhs.false.i146:                               ; preds = %if.end274.i
  %bfer.i144 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 7
  %91 = ptrtoint ptr %bfer.i144 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bfer.i144, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool1.not.i145 = icmp eq i8 %92, 0
  br i1 %tobool1.not.i145, label %if.else.i152, label %lor.lhs.false.i146.if.then.i148_crit_edge

lor.lhs.false.i146.if.then.i148_crit_edge:        ; preds = %lor.lhs.false.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i148

if.then.i148:                                     ; preds = %lor.lhs.false.i146.if.then.i148_crit_edge, %if.end274.i.if.then.i148_crit_edge
  %ant.i147 = getelementptr inbounds %struct.rs_rate, ptr %curr_tbl.0.i, i32 0, i32 2
  %93 = ptrtoint ptr %ant.i147 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ant.i147, align 4
  %95 = add i8 %94, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %96 = icmp ult i8 %95, 2
  br label %if.end.i157

if.else.i152:                                     ; preds = %lor.lhs.false.i146
  call void @__sanitizer_cov_trace_pc() #17
  %ant7.i149 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 2
  %97 = ptrtoint ptr %ant7.i149 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ant7.i149, align 4
  %ant9.i150 = getelementptr inbounds %struct.rs_rate, ptr %curr_tbl.0.i, i32 0, i32 2
  %99 = ptrtoint ptr %ant9.i150 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ant9.i150, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %98, i8 %100)
  %cmp11.i151 = icmp eq i8 %98, %100
  br label %if.end.i157

if.end.i157:                                      ; preds = %if.else.i152, %if.then.i148
  %ant_match.0.in.i153 = phi i1 [ %96, %if.then.i148 ], [ %cmp11.i151, %if.else.i152 ]
  %type.i154 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 1
  %101 = ptrtoint ptr %type.i154 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type.i154, align 4
  %type14.i155 = getelementptr inbounds %struct.rs_rate, ptr %curr_tbl.0.i, i32 0, i32 1
  %103 = ptrtoint ptr %type14.i155 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %type14.i155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp15.i156 = icmp eq i32 %102, %104
  br i1 %cmp15.i156, label %land.lhs.true.i161, label %if.end.i157.land.rhs306.i_crit_edge

if.end.i157.land.rhs306.i_crit_edge:              ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs306.i

land.lhs.true.i161:                               ; preds = %if.end.i157
  %bw.i158 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 3
  %105 = ptrtoint ptr %bw.i158 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bw.i158, align 4
  %bw17.i159 = getelementptr inbounds %struct.rs_rate, ptr %curr_tbl.0.i, i32 0, i32 3
  %107 = ptrtoint ptr %bw17.i159 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bw17.i159, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp18.i160 = icmp eq i32 %106, %108
  br i1 %cmp18.i160, label %rs_rate_column_match.exit168, label %land.lhs.true.i161.land.rhs306.i_crit_edge

land.lhs.true.i161.land.rhs306.i_crit_edge:       ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs306.i

rs_rate_column_match.exit168:                     ; preds = %land.lhs.true.i161
  %sgi.i162 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 4
  %109 = ptrtoint ptr %sgi.i162 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sgi.i162, align 4, !range !619
  %sgi23.i163 = getelementptr inbounds %struct.rs_rate, ptr %curr_tbl.0.i, i32 0, i32 4
  %111 = ptrtoint ptr %sgi23.i163 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sgi23.i163, align 4, !range !619
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %112)
  %cmp26.i164 = icmp eq i8 %110, %112
  %spec.select40.i165 = select i1 %cmp26.i164, i1 %ant_match.0.in.i153, i1 false
  br i1 %spec.select40.i165, label %if.end372.i, label %rs_rate_column_match.exit168.land.rhs306.i_crit_edge

rs_rate_column_match.exit168.land.rhs306.i_crit_edge: ; preds = %rs_rate_column_match.exit168
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs306.i

land.rhs306.i:                                    ; preds = %rs_rate_column_match.exit168.land.rhs306.i_crit_edge, %land.lhs.true.i161.land.rhs306.i_crit_edge, %if.end.i157.land.rhs306.i_crit_edge
  %.b696699.i = load i1, ptr @__iwl_mvm_rs_tx_status.__already_done.24, align 1
  br i1 %.b696699.i, label %land.rhs306.i.do.end357.i_crit_edge, label %if.then317.i, !prof !618

land.rhs306.i.do.end357.i_crit_edge:              ; preds = %land.rhs306.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end357.i

if.then317.i:                                     ; preds = %land.rhs306.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__iwl_mvm_rs_tx_status.__already_done.24, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3148, i32 noundef 9, ptr noundef null) #15
  br label %do.end357.i

do.end357.i:                                      ; preds = %if.then317.i, %land.rhs306.i.do.end357.i_crit_edge
  %113 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %114, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_rs_tx_status, ptr noundef nonnull @.str.25) #15
  %115 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %lq_sta5.i, align 8
  %idxprom363.i = zext i8 %116 to i32
  %arrayidx364.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 %idxprom363.i
  %117 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mvm, align 8
  %type.i.i111 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx364.i, i32 0, i32 1
  %119 = ptrtoint ptr %type.i.i111 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %type.i.i111, align 4
  %.off.i.i112 = add i32 %120, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i112)
  %switch.i.i113 = icmp ult i32 %.off.i.i112, 2
  br i1 %switch.i.i113, label %land.lhs.true.i.i115, label %if.else.i.i120

land.lhs.true.i.i115:                             ; preds = %do.end357.i
  %121 = ptrtoint ptr %arrayidx364.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx364.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %122)
  %cmp3.i.i114 = icmp slt i32 %122, 12
  br i1 %cmp3.i.i114, label %if.then.i.i117, label %land.lhs.true.i.i115.if.end.i.i.i130_crit_edge

land.lhs.true.i.i115.if.end.i.i.i130_crit_edge:   ; preds = %land.lhs.true.i.i115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i130

if.then.i.i117:                                   ; preds = %land.lhs.true.i.i115
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i116 = getelementptr [12 x ptr], ptr @rs_pretty_rate.legacy_rates, i32 0, i32 %122
  br label %if.end.i.sink.split.i.i127

if.else.i.i120:                                   ; preds = %do.end357.i
  %.off1.i.i118 = add i32 %120, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1.i.i118)
  %switch2.i.i119 = icmp ult i32 %.off1.i.i118, 4
  br i1 %switch2.i.i119, label %land.lhs.true16.i.i121, label %if.end26.i.i125

land.lhs.true16.i.i121:                           ; preds = %if.else.i.i120
  %123 = ptrtoint ptr %arrayidx364.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx364.i, align 4
  %125 = add i32 %124, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %125)
  %126 = icmp ult i32 %125, 11
  br i1 %126, label %if.then22.i.i123, label %land.lhs.true16.i.i121.if.end.i.i.i130_crit_edge

land.lhs.true16.i.i121.if.end.i.i.i130_crit_edge: ; preds = %land.lhs.true16.i.i121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i130

if.then22.i.i123:                                 ; preds = %land.lhs.true16.i.i121
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx24.i.i122 = getelementptr [15 x ptr], ptr @rs_pretty_rate.ht_vht_rates, i32 0, i32 %124
  br label %if.end.i.sink.split.i.i127

if.end26.i.i125:                                  ; preds = %if.else.i.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %120)
  %cmp1.i.i.i124 = icmp ugt i32 %120, 8
  br i1 %cmp1.i.i.i124, label %if.end26.i.i125.rs_dump_rate.exit141_crit_edge, label %if.end26.i.i125.if.end.i.i.i130_crit_edge

if.end26.i.i125.if.end.i.i.i130_crit_edge:        ; preds = %if.end26.i.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i130

if.end26.i.i125.rs_dump_rate.exit141_crit_edge:   ; preds = %if.end26.i.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_dump_rate.exit141

if.end.i.sink.split.i.i127:                       ; preds = %if.then22.i.i123, %if.then.i.i117
  %arrayidx.sink.i.i126 = phi ptr [ %arrayidx.i.i116, %if.then.i.i117 ], [ %arrayidx24.i.i122, %if.then22.i.i123 ]
  %127 = ptrtoint ptr %arrayidx.sink.i.i126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.sink.i.i126, align 4
  br label %if.end.i.i.i130

if.end.i.i.i130:                                  ; preds = %if.end.i.sink.split.i.i127, %if.end26.i.i125.if.end.i.i.i130_crit_edge, %land.lhs.true16.i.i121.if.end.i.i.i130_crit_edge, %land.lhs.true.i.i115.if.end.i.i.i130_crit_edge
  %rate_str.07.i.i128 = phi ptr [ @.str.64, %if.end26.i.i125.if.end.i.i.i130_crit_edge ], [ @.str.64, %land.lhs.true16.i.i121.if.end.i.i.i130_crit_edge ], [ @.str.64, %land.lhs.true.i.i115.if.end.i.i.i130_crit_edge ], [ %128, %if.end.i.sink.split.i.i127 ]
  %arrayidx.i.i.i129 = getelementptr [9 x ptr], ptr @rs_pretty_lq_type.lq_types, i32 0, i32 %120
  %129 = ptrtoint ptr %arrayidx.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i.i129, align 4
  br label %rs_dump_rate.exit141

rs_dump_rate.exit141:                             ; preds = %if.end.i.i.i130, %if.end26.i.i125.rs_dump_rate.exit141_crit_edge
  %rate_str.08.i.i131 = phi ptr [ %rate_str.07.i.i128, %if.end.i.i.i130 ], [ @.str.64, %if.end26.i.i125.rs_dump_rate.exit141_crit_edge ]
  %retval.0.i.i.i132 = phi ptr [ %130, %if.end.i.i.i130 ], [ @.str.75, %if.end26.i.i125.rs_dump_rate.exit141_crit_edge ]
  %ant.i.i133 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx364.i, i32 0, i32 2
  %131 = ptrtoint ptr %ant.i.i133 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ant.i.i133, align 4
  %call28.i.i134 = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %132) #15
  %call29.i.i135 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rs_pretty_rate.buf, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i.i132, ptr noundef %call28.i.i134, ptr noundef %rate_str.08.i.i131) #15
  %bw.i136 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx364.i, i32 0, i32 3
  %133 = ptrtoint ptr %bw.i136 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bw.i136, align 4
  %sgi.i137 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx364.i, i32 0, i32 4
  %135 = ptrtoint ptr %sgi.i137 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %sgi.i137, align 4, !range !619
  %137 = zext i8 %136 to i32
  %ldpc.i138 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx364.i, i32 0, i32 5
  %138 = ptrtoint ptr %ldpc.i138 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %ldpc.i138, align 1, !range !619
  %140 = zext i8 %139 to i32
  %stbc.i139 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx364.i, i32 0, i32 6
  %141 = ptrtoint ptr %stbc.i139 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %stbc.i139, align 2, !range !619
  %143 = zext i8 %142 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %118, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dump_rate, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.26, ptr noundef nonnull @rs_pretty_rate.buf, i32 noundef %134, i32 noundef %137, i32 noundef %140, i32 noundef %143) #15
  %144 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %lq_sta5.i, align 8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  %idxprom369.i = zext i8 %147 to i32
  %arrayidx370.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 %idxprom369.i
  %148 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mvm, align 8
  %type.i.i80 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx370.i, i32 0, i32 1
  %150 = ptrtoint ptr %type.i.i80 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %type.i.i80, align 4
  %.off.i.i81 = add i32 %151, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i81)
  %switch.i.i82 = icmp ult i32 %.off.i.i81, 2
  br i1 %switch.i.i82, label %land.lhs.true.i.i84, label %if.else.i.i89

land.lhs.true.i.i84:                              ; preds = %rs_dump_rate.exit141
  %152 = ptrtoint ptr %arrayidx370.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx370.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %153)
  %cmp3.i.i83 = icmp slt i32 %153, 12
  br i1 %cmp3.i.i83, label %if.then.i.i86, label %land.lhs.true.i.i84.if.end.i.i.i99_crit_edge

land.lhs.true.i.i84.if.end.i.i.i99_crit_edge:     ; preds = %land.lhs.true.i.i84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i99

if.then.i.i86:                                    ; preds = %land.lhs.true.i.i84
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i85 = getelementptr [12 x ptr], ptr @rs_pretty_rate.legacy_rates, i32 0, i32 %153
  br label %if.end.i.sink.split.i.i96

if.else.i.i89:                                    ; preds = %rs_dump_rate.exit141
  %.off1.i.i87 = add i32 %151, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1.i.i87)
  %switch2.i.i88 = icmp ult i32 %.off1.i.i87, 4
  br i1 %switch2.i.i88, label %land.lhs.true16.i.i90, label %if.end26.i.i94

land.lhs.true16.i.i90:                            ; preds = %if.else.i.i89
  %154 = ptrtoint ptr %arrayidx370.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx370.i, align 4
  %156 = add i32 %155, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %156)
  %157 = icmp ult i32 %156, 11
  br i1 %157, label %if.then22.i.i92, label %land.lhs.true16.i.i90.if.end.i.i.i99_crit_edge

land.lhs.true16.i.i90.if.end.i.i.i99_crit_edge:   ; preds = %land.lhs.true16.i.i90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i99

if.then22.i.i92:                                  ; preds = %land.lhs.true16.i.i90
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx24.i.i91 = getelementptr [15 x ptr], ptr @rs_pretty_rate.ht_vht_rates, i32 0, i32 %155
  br label %if.end.i.sink.split.i.i96

if.end26.i.i94:                                   ; preds = %if.else.i.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %151)
  %cmp1.i.i.i93 = icmp ugt i32 %151, 8
  br i1 %cmp1.i.i.i93, label %if.end26.i.i94.rs_dump_rate.exit110_crit_edge, label %if.end26.i.i94.if.end.i.i.i99_crit_edge

if.end26.i.i94.if.end.i.i.i99_crit_edge:          ; preds = %if.end26.i.i94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i99

if.end26.i.i94.rs_dump_rate.exit110_crit_edge:    ; preds = %if.end26.i.i94
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_dump_rate.exit110

if.end.i.sink.split.i.i96:                        ; preds = %if.then22.i.i92, %if.then.i.i86
  %arrayidx.sink.i.i95 = phi ptr [ %arrayidx.i.i85, %if.then.i.i86 ], [ %arrayidx24.i.i91, %if.then22.i.i92 ]
  %158 = ptrtoint ptr %arrayidx.sink.i.i95 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.sink.i.i95, align 4
  br label %if.end.i.i.i99

if.end.i.i.i99:                                   ; preds = %if.end.i.sink.split.i.i96, %if.end26.i.i94.if.end.i.i.i99_crit_edge, %land.lhs.true16.i.i90.if.end.i.i.i99_crit_edge, %land.lhs.true.i.i84.if.end.i.i.i99_crit_edge
  %rate_str.07.i.i97 = phi ptr [ @.str.64, %if.end26.i.i94.if.end.i.i.i99_crit_edge ], [ @.str.64, %land.lhs.true16.i.i90.if.end.i.i.i99_crit_edge ], [ @.str.64, %land.lhs.true.i.i84.if.end.i.i.i99_crit_edge ], [ %159, %if.end.i.sink.split.i.i96 ]
  %arrayidx.i.i.i98 = getelementptr [9 x ptr], ptr @rs_pretty_lq_type.lq_types, i32 0, i32 %151
  %160 = ptrtoint ptr %arrayidx.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i.i98, align 4
  br label %rs_dump_rate.exit110

rs_dump_rate.exit110:                             ; preds = %if.end.i.i.i99, %if.end26.i.i94.rs_dump_rate.exit110_crit_edge
  %rate_str.08.i.i100 = phi ptr [ %rate_str.07.i.i97, %if.end.i.i.i99 ], [ @.str.64, %if.end26.i.i94.rs_dump_rate.exit110_crit_edge ]
  %retval.0.i.i.i101 = phi ptr [ %161, %if.end.i.i.i99 ], [ @.str.75, %if.end26.i.i94.rs_dump_rate.exit110_crit_edge ]
  %ant.i.i102 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx370.i, i32 0, i32 2
  %162 = ptrtoint ptr %ant.i.i102 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %ant.i.i102, align 4
  %call28.i.i103 = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %163) #15
  %call29.i.i104 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rs_pretty_rate.buf, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i.i101, ptr noundef %call28.i.i103, ptr noundef %rate_str.08.i.i100) #15
  %bw.i105 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx370.i, i32 0, i32 3
  %164 = ptrtoint ptr %bw.i105 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %bw.i105, align 4
  %sgi.i106 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx370.i, i32 0, i32 4
  %166 = ptrtoint ptr %sgi.i106 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %sgi.i106, align 4, !range !619
  %168 = zext i8 %167 to i32
  %ldpc.i107 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx370.i, i32 0, i32 5
  %169 = ptrtoint ptr %ldpc.i107 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ldpc.i107, align 1, !range !619
  %171 = zext i8 %170 to i32
  %stbc.i108 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx370.i, i32 0, i32 6
  %172 = ptrtoint ptr %stbc.i108 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %stbc.i108, align 2, !range !619
  %174 = zext i8 %173 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %149, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dump_rate, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.27, ptr noundef nonnull @rs_pretty_rate.buf, i32 noundef %165, i32 noundef %168, i32 noundef %171, i32 noundef %174) #15
  %175 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mvm, align 8
  %177 = ptrtoint ptr %type.i154 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %type.i154, align 4
  %.off.i.i52 = add i32 %178, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i52)
  %switch.i.i53 = icmp ult i32 %.off.i.i52, 2
  br i1 %switch.i.i53, label %land.lhs.true.i.i55, label %if.else.i.i60

land.lhs.true.i.i55:                              ; preds = %rs_dump_rate.exit110
  %179 = ptrtoint ptr %lq_rate.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %lq_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %180)
  %cmp3.i.i54 = icmp slt i32 %180, 12
  br i1 %cmp3.i.i54, label %if.then.i.i57, label %land.lhs.true.i.i55.if.end.i.i.i70_crit_edge

land.lhs.true.i.i55.if.end.i.i.i70_crit_edge:     ; preds = %land.lhs.true.i.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i70

if.then.i.i57:                                    ; preds = %land.lhs.true.i.i55
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i56 = getelementptr [12 x ptr], ptr @rs_pretty_rate.legacy_rates, i32 0, i32 %180
  br label %if.end.i.sink.split.i.i67

if.else.i.i60:                                    ; preds = %rs_dump_rate.exit110
  %.off1.i.i58 = add i32 %178, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1.i.i58)
  %switch2.i.i59 = icmp ult i32 %.off1.i.i58, 4
  br i1 %switch2.i.i59, label %land.lhs.true16.i.i61, label %if.end26.i.i65

land.lhs.true16.i.i61:                            ; preds = %if.else.i.i60
  %181 = ptrtoint ptr %lq_rate.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %lq_rate.i, align 4
  %183 = add i32 %182, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %183)
  %184 = icmp ult i32 %183, 11
  br i1 %184, label %if.then22.i.i63, label %land.lhs.true16.i.i61.if.end.i.i.i70_crit_edge

land.lhs.true16.i.i61.if.end.i.i.i70_crit_edge:   ; preds = %land.lhs.true16.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i70

if.then22.i.i63:                                  ; preds = %land.lhs.true16.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx24.i.i62 = getelementptr [15 x ptr], ptr @rs_pretty_rate.ht_vht_rates, i32 0, i32 %182
  br label %if.end.i.sink.split.i.i67

if.end26.i.i65:                                   ; preds = %if.else.i.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %178)
  %cmp1.i.i.i64 = icmp ugt i32 %178, 8
  br i1 %cmp1.i.i.i64, label %if.end26.i.i65.rs_dump_rate.exit_crit_edge, label %if.end26.i.i65.if.end.i.i.i70_crit_edge

if.end26.i.i65.if.end.i.i.i70_crit_edge:          ; preds = %if.end26.i.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i70

if.end26.i.i65.rs_dump_rate.exit_crit_edge:       ; preds = %if.end26.i.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_dump_rate.exit

if.end.i.sink.split.i.i67:                        ; preds = %if.then22.i.i63, %if.then.i.i57
  %arrayidx.sink.i.i66 = phi ptr [ %arrayidx.i.i56, %if.then.i.i57 ], [ %arrayidx24.i.i62, %if.then22.i.i63 ]
  %185 = ptrtoint ptr %arrayidx.sink.i.i66 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.sink.i.i66, align 4
  br label %if.end.i.i.i70

if.end.i.i.i70:                                   ; preds = %if.end.i.sink.split.i.i67, %if.end26.i.i65.if.end.i.i.i70_crit_edge, %land.lhs.true16.i.i61.if.end.i.i.i70_crit_edge, %land.lhs.true.i.i55.if.end.i.i.i70_crit_edge
  %rate_str.07.i.i68 = phi ptr [ @.str.64, %if.end26.i.i65.if.end.i.i.i70_crit_edge ], [ @.str.64, %land.lhs.true16.i.i61.if.end.i.i.i70_crit_edge ], [ @.str.64, %land.lhs.true.i.i55.if.end.i.i.i70_crit_edge ], [ %186, %if.end.i.sink.split.i.i67 ]
  %arrayidx.i.i.i69 = getelementptr [9 x ptr], ptr @rs_pretty_lq_type.lq_types, i32 0, i32 %178
  %187 = ptrtoint ptr %arrayidx.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i.i.i69, align 4
  br label %rs_dump_rate.exit

rs_dump_rate.exit:                                ; preds = %if.end.i.i.i70, %if.end26.i.i65.rs_dump_rate.exit_crit_edge
  %rate_str.08.i.i71 = phi ptr [ %rate_str.07.i.i68, %if.end.i.i.i70 ], [ @.str.64, %if.end26.i.i65.rs_dump_rate.exit_crit_edge ]
  %retval.0.i.i.i72 = phi ptr [ %188, %if.end.i.i.i70 ], [ @.str.75, %if.end26.i.i65.rs_dump_rate.exit_crit_edge ]
  %ant.i.i73 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 2
  %189 = ptrtoint ptr %ant.i.i73 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %ant.i.i73, align 4
  %call28.i.i74 = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %190) #15
  %call29.i.i75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rs_pretty_rate.buf, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i.i72, ptr noundef %call28.i.i74, ptr noundef %rate_str.08.i.i71) #15
  %bw.i76 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 3
  %191 = ptrtoint ptr %bw.i76 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %bw.i76, align 4
  %sgi.i77 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 4
  %193 = ptrtoint ptr %sgi.i77 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %sgi.i77, align 4, !range !619
  %195 = zext i8 %194 to i32
  %ldpc.i = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 5
  %196 = ptrtoint ptr %ldpc.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %ldpc.i, align 1, !range !619
  %198 = zext i8 %197 to i32
  %199 = ptrtoint ptr %stbc.i142 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %stbc.i142, align 2, !range !619
  %201 = zext i8 %200 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %176, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dump_rate, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.28, ptr noundef nonnull @rs_pretty_rate.buf, i32 noundef %192, i32 noundef %195, i32 noundef %198, i32 noundef %201) #15
  call fastcc void @rs_stay_in_table(ptr noundef %lq_sta5.i, i1 noundef zeroext true) #15
  br label %done.i

if.end372.i:                                      ; preds = %rs_rate_column_match.exit168
  %202 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %info, align 8
  %and374.i = and i32 %203, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374.i)
  %tobool375.not.i = icmp eq i32 %and374.i, 0
  br i1 %tobool375.not.i, label %if.else412.i, label %if.then376.i

if.then376.i:                                     ; preds = %if.end372.i
  %204 = ptrtoint ptr %tx_resp_rate.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %tx_resp_rate.i, align 4
  %ampdu_len378.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 9
  %206 = ptrtoint ptr %ampdu_len378.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %ampdu_len378.i, align 1
  %conv379.i = zext i8 %207 to i32
  %ampdu_ack_len380.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %208 = ptrtoint ptr %ampdu_ack_len380.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %ampdu_ack_len380.i, align 8
  %conv381.i = zext i8 %209 to i32
  call fastcc void @rs_collect_tpc_data(ptr noundef %curr_tbl.0.i, i32 noundef %205, i32 noundef %conv379.i, i32 noundef %conv381.i, i8 noundef zeroext %conv.i) #15
  %210 = ptrtoint ptr %ampdu_ack_len380.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %ampdu_ack_len380.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %cmp385.i = icmp eq i8 %211, 0
  br i1 %cmp385.i, label %if.then387.i, label %if.then376.i.if.end389.i_crit_edge

if.then376.i.if.end389.i_crit_edge:               ; preds = %if.then376.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end389.i

if.then387.i:                                     ; preds = %if.then376.i
  call void @__sanitizer_cov_trace_pc() #17
  %212 = ptrtoint ptr %ampdu_len378.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %ampdu_len378.i, align 1
  br label %if.end389.i

if.end389.i:                                      ; preds = %if.then387.i, %if.then376.i.if.end389.i_crit_edge
  %conv390.i = trunc i32 %tid to i8
  %213 = ptrtoint ptr %tx_resp_rate.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %tx_resp_rate.i, align 4
  %215 = ptrtoint ptr %ampdu_len378.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %ampdu_len378.i, align 1
  %conv393.i = zext i8 %216 to i32
  %conv395.i = zext i8 %211 to i32
  call fastcc void @rs_collect_tlc_data(ptr noundef %drv_priv.i, i8 noundef zeroext %conv390.i, ptr noundef %curr_tbl.0.i, i32 noundef %214, i32 noundef %conv393.i, i32 noundef %conv395.i) #15
  %rs_state397.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 1
  %217 = ptrtoint ptr %rs_state397.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %rs_state397.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %218)
  %cmp399.i = icmp eq i8 %218, 2
  br i1 %cmp399.i, label %if.then401.i, label %if.end389.i.if.end530.i_crit_edge

if.end389.i.if.end530.i_crit_edge:                ; preds = %if.end389.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end530.i

if.then401.i:                                     ; preds = %if.end389.i
  call void @__sanitizer_cov_trace_pc() #17
  %219 = ptrtoint ptr %ampdu_ack_len380.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ampdu_ack_len380.i, align 8
  %conv403.i = zext i8 %220 to i32
  %total_success.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 5
  %221 = ptrtoint ptr %total_success.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %total_success.i, align 4
  %add404.i = add i32 %222, %conv403.i
  store i32 %add404.i, ptr %total_success.i, align 4
  %223 = ptrtoint ptr %ampdu_len378.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %ampdu_len378.i, align 1
  %conv406.i = zext i8 %224 to i32
  %225 = load i8, ptr %ampdu_ack_len380.i, align 8
  %conv408.i = zext i8 %225 to i32
  %sub409.i = sub nsw i32 %conv406.i, %conv408.i
  br label %if.end530.sink.split.i

if.else412.i:                                     ; preds = %if.end372.i
  %count415.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %2, i32 0, i32 1
  %226 = ptrtoint ptr %count415.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 2)
  %bf.load416.i = load i16, ptr %count415.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load416.i)
  %cmp421.i = icmp sgt i16 %bf.load416.i, -1
  %bf.lshr417.i = lshr i16 %bf.load416.i, 11
  %conv418.i = zext i16 %bf.lshr417.i to i32
  %sub419.i = add nsw i32 %conv418.i, -1
  %cond.i = select i1 %cmp421.i, i32 %sub419.i, i32 15
  %and424.i = lshr i32 %203, 9
  %and424.lobit.i = and i32 %and424.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp430.not713.i = icmp slt i32 %cond.i, 0
  br i1 %cmp430.not713.i, label %if.else412.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.else412.i.for.end.i_crit_edge:                 ; preds = %if.else412.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else412.i
  %conv508.i = trunc i32 %tid to i8
  %bfer.i26 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 7
  %ant.i29 = getelementptr inbounds %struct.rs_rate, ptr %curr_tbl.0.i, i32 0, i32 2
  %ant7.i31 = getelementptr inbounds %struct.rs_rate, ptr %lq_rate.i, i32 0, i32 2
  %ant.i = getelementptr inbounds %struct.rs_rate, ptr %other_tbl.0.i, i32 0, i32 2
  %type14.i = getelementptr inbounds %struct.rs_rate, ptr %other_tbl.0.i, i32 0, i32 1
  %bw17.i = getelementptr inbounds %struct.rs_rate, ptr %other_tbl.0.i, i32 0, i32 3
  %sgi23.i = getelementptr inbounds %struct.rs_rate, ptr %other_tbl.0.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0714.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc517.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx433.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 29, i32 12, i32 %i.0714.i
  %227 = ptrtoint ptr %arrayidx433.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx433.i, align 4
  %229 = call i32 @llvm.bswap.i32(i32 %228) #15
  %230 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %bf.load435.i = load i32, ptr %band.i, align 4
  %bf.lshr436.i = lshr i32 %bf.load435.i, 29
  %call437.i = call fastcc i32 @rs_rate_from_ucode_rate(i32 noundef %229, i32 noundef %bf.lshr436.i, ptr noundef nonnull %lq_rate.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437.i)
  %tobool438.not.i = icmp eq i32 %call437.i, 0
  br i1 %tobool438.not.i, label %if.end489.i, label %land.end447.i

land.end447.i:                                    ; preds = %for.body.i
  %.b697698.i = load i1, ptr @__iwl_mvm_rs_tx_status.__already_done.29, align 1
  br i1 %.b697698.i, label %land.end447.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %if.then454.i, !prof !618

land.end447.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %land.end447.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then454.i:                                     ; preds = %land.end447.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__iwl_mvm_rs_tx_status.__already_done.29, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3216, i32 noundef 9, ptr noundef null) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end489.i:                                      ; preds = %for.body.i
  %231 = ptrtoint ptr %stbc.i142 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %stbc.i142, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i25 = icmp eq i8 %232, 0
  br i1 %tobool.not.i25, label %lor.lhs.false.i28, label %if.end489.i.if.then.i30_crit_edge

if.end489.i.if.then.i30_crit_edge:                ; preds = %if.end489.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i30

lor.lhs.false.i28:                                ; preds = %if.end489.i
  %233 = ptrtoint ptr %bfer.i26 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bfer.i26, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool1.not.i27 = icmp eq i8 %234, 0
  br i1 %tobool1.not.i27, label %if.else.i34, label %lor.lhs.false.i28.if.then.i30_crit_edge

lor.lhs.false.i28.if.then.i30_crit_edge:          ; preds = %lor.lhs.false.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i30

if.then.i30:                                      ; preds = %lor.lhs.false.i28.if.then.i30_crit_edge, %if.end489.i.if.then.i30_crit_edge
  %235 = ptrtoint ptr %ant.i29 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %ant.i29, align 4
  %237 = add i8 %236, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %237)
  %238 = icmp ult i8 %237, 2
  br label %if.end.i39

if.else.i34:                                      ; preds = %lor.lhs.false.i28
  call void @__sanitizer_cov_trace_pc() #17
  %239 = ptrtoint ptr %ant7.i31 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %ant7.i31, align 4
  %241 = ptrtoint ptr %ant.i29 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %ant.i29, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %240, i8 %242)
  %cmp11.i33 = icmp eq i8 %240, %242
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.else.i34, %if.then.i30
  %ant_match.0.in.i35 = phi i1 [ %238, %if.then.i30 ], [ %cmp11.i33, %if.else.i34 ]
  %243 = ptrtoint ptr %type.i154 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %type.i154, align 4
  %245 = ptrtoint ptr %type14.i155 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %type14.i155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %246)
  %cmp15.i38 = icmp eq i32 %244, %246
  br i1 %cmp15.i38, label %land.lhs.true.i43, label %if.end.i39.if.else493.i_crit_edge

if.end.i39.if.else493.i_crit_edge:                ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else493.i

land.lhs.true.i43:                                ; preds = %if.end.i39
  %247 = ptrtoint ptr %bw.i158 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %bw.i158, align 4
  %249 = ptrtoint ptr %bw17.i159 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %bw17.i159, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %250)
  %cmp18.i42 = icmp eq i32 %248, %250
  br i1 %cmp18.i42, label %rs_rate_column_match.exit50, label %land.lhs.true.i43.if.else493.i_crit_edge

land.lhs.true.i43.if.else493.i_crit_edge:         ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else493.i

rs_rate_column_match.exit50:                      ; preds = %land.lhs.true.i43
  %251 = ptrtoint ptr %sgi.i162 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %sgi.i162, align 4, !range !619
  %253 = ptrtoint ptr %sgi23.i163 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %sgi23.i163, align 4, !range !619
  call void @__sanitizer_cov_trace_cmp1(i8 %252, i8 %254)
  %cmp26.i46 = icmp eq i8 %252, %254
  %spec.select40.i47 = select i1 %cmp26.i46, i1 %ant_match.0.in.i35, i1 false
  br i1 %spec.select40.i47, label %rs_rate_column_match.exit50.if.end499.i_crit_edge, label %rs_rate_column_match.exit50.if.else493.i_crit_edge

rs_rate_column_match.exit50.if.else493.i_crit_edge: ; preds = %rs_rate_column_match.exit50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else493.i

rs_rate_column_match.exit50.if.end499.i_crit_edge: ; preds = %rs_rate_column_match.exit50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end499.i

if.else493.i:                                     ; preds = %rs_rate_column_match.exit50.if.else493.i_crit_edge, %land.lhs.true.i43.if.else493.i_crit_edge, %if.end.i39.if.else493.i_crit_edge
  br i1 %tobool.not.i25, label %lor.lhs.false.i, label %if.else493.i.if.then.i_crit_edge

if.else493.i.if.then.i_crit_edge:                 ; preds = %if.else493.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else493.i
  %255 = ptrtoint ptr %bfer.i26 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %bfer.i26, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool1.not.i = icmp eq i8 %256, 0
  br i1 %tobool1.not.i, label %if.else.i21, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else493.i.if.then.i_crit_edge
  %257 = ptrtoint ptr %ant.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %ant.i, align 4
  %259 = add i8 %258, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %259)
  %260 = icmp ult i8 %259, 2
  br label %if.end.i22

if.else.i21:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %261 = ptrtoint ptr %ant7.i31 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %ant7.i31, align 4
  %263 = ptrtoint ptr %ant.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %ant.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %262, i8 %264)
  %cmp11.i = icmp eq i8 %262, %264
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.else.i21, %if.then.i
  %ant_match.0.in.i = phi i1 [ %260, %if.then.i ], [ %cmp11.i, %if.else.i21 ]
  %265 = ptrtoint ptr %type14.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %type14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %266)
  %cmp15.i = icmp eq i32 %244, %266
  br i1 %cmp15.i, label %land.lhs.true.i, label %if.end.i22.for.inc.i_crit_edge

if.end.i22.for.inc.i_crit_edge:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i22
  %267 = ptrtoint ptr %bw.i158 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %bw.i158, align 4
  %269 = ptrtoint ptr %bw17.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %bw17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %268, i32 %270)
  %cmp18.i = icmp eq i32 %268, %270
  br i1 %cmp18.i, label %rs_rate_column_match.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

rs_rate_column_match.exit:                        ; preds = %land.lhs.true.i
  %271 = ptrtoint ptr %sgi.i162 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %sgi.i162, align 4, !range !619
  %273 = ptrtoint ptr %sgi23.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %sgi23.i, align 4, !range !619
  call void @__sanitizer_cov_trace_cmp1(i8 %272, i8 %274)
  %cmp26.i = icmp eq i8 %272, %274
  %spec.select40.i = select i1 %cmp26.i, i1 %ant_match.0.in.i, i1 false
  br i1 %spec.select40.i, label %rs_rate_column_match.exit.if.end499.i_crit_edge, label %rs_rate_column_match.exit.for.inc.i_crit_edge

rs_rate_column_match.exit.for.inc.i_crit_edge:    ; preds = %rs_rate_column_match.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

rs_rate_column_match.exit.if.end499.i_crit_edge:  ; preds = %rs_rate_column_match.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end499.i

if.end499.i:                                      ; preds = %rs_rate_column_match.exit.if.end499.i_crit_edge, %rs_rate_column_match.exit50.if.end499.i_crit_edge
  %tmp_tbl.0.i = phi ptr [ %curr_tbl.0.i, %rs_rate_column_match.exit50.if.end499.i_crit_edge ], [ %other_tbl.0.i, %rs_rate_column_match.exit.if.end499.i_crit_edge ]
  %275 = ptrtoint ptr %tx_resp_rate.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %tx_resp_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0714.i, i32 %cond.i)
  %cmp501.i = icmp slt i32 %i.0714.i, %cond.i
  %spec.select.i = select i1 %cmp501.i, i32 0, i32 %and424.lobit.i
  call fastcc void @rs_collect_tpc_data(ptr noundef %tmp_tbl.0.i, i32 noundef %276, i32 noundef 1, i32 noundef %spec.select.i, i8 noundef zeroext %conv.i) #15
  %277 = ptrtoint ptr %tx_resp_rate.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %tx_resp_rate.i, align 4
  call fastcc void @rs_collect_tlc_data(ptr noundef %drv_priv.i, i8 noundef zeroext %conv508.i, ptr noundef %tmp_tbl.0.i, i32 noundef %278, i32 noundef 1, i32 noundef %spec.select.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end499.i, %rs_rate_column_match.exit.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i22.for.inc.i_crit_edge
  %inc517.i = add nuw nsw i32 %i.0714.i, 1
  %exitcond.i = icmp eq i32 %i.0714.i, %cond.i
  br i1 %exitcond.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else412.i.for.end.i_crit_edge
  %lq_hwrate.0.lcssa.i = phi i32 [ %66, %if.else412.i.for.end.i_crit_edge ], [ %229, %for.inc.i.for.end.i_crit_edge ]
  %rs_state518.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 1
  %279 = ptrtoint ptr %rs_state518.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %rs_state518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %280)
  %cmp520.i = icmp eq i8 %280, 2
  br i1 %cmp520.i, label %if.then522.i, label %for.end.i.if.end530.i_crit_edge

for.end.i.if.end530.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end530.i

if.then522.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %total_success523.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 5
  %281 = ptrtoint ptr %total_success523.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %total_success523.i, align 4
  %add524.i = add i32 %282, %and424.lobit.i
  store i32 %add524.i, ptr %total_success523.i, align 4
  %sub525.i = xor i32 %and424.lobit.i, 1
  %add526.i = add nsw i32 %cond.i, %sub525.i
  br label %if.end530.sink.split.i

if.end530.sink.split.i:                           ; preds = %if.then522.i, %if.then401.i
  %add526.sink.i = phi i32 [ %add526.i, %if.then522.i ], [ %sub409.i, %if.then401.i ]
  %lq_hwrate.1.ph.i = phi i32 [ %lq_hwrate.0.lcssa.i, %if.then522.i ], [ %66, %if.then401.i ]
  %total_failed.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 3
  %283 = ptrtoint ptr %total_failed.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %total_failed.i, align 8
  %add528.i = add i32 %284, %add526.sink.i
  store i32 %add528.i, ptr %total_failed.i, align 8
  br label %if.end530.i

if.end530.i:                                      ; preds = %if.end530.sink.split.i, %for.end.i.if.end530.i_crit_edge, %if.end389.i.if.end530.i_crit_edge
  %lq_hwrate.1.i = phi i32 [ %66, %if.end389.i.if.end530.i_crit_edge ], [ %lq_hwrate.0.lcssa.i, %for.end.i.if.end530.i_crit_edge ], [ %lq_hwrate.1.ph.i, %if.end530.sink.split.i ]
  %last_rate_n_flags.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 6, i32 3, i32 22
  %285 = ptrtoint ptr %last_rate_n_flags.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %lq_hwrate.1.i, ptr %last_rate_n_flags.i, align 4
  %286 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mvm, align 8
  %conv536.i = and i32 %5, 255
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %287, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_rs_tx_status, ptr noundef nonnull @.str.30, i32 noundef %conv536.i) #15
  br label %done.i

done.i:                                           ; preds = %if.end530.i, %rs_dump_rate.exit
  %288 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %bf.load540.i = load i32, ptr %band.i, align 4
  %bf.lshr541.i = lshr i32 %bf.load540.i, 29
  %arrayidx542.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %bf.lshr541.i
  %289 = ptrtoint ptr %arrayidx542.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx542.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool543.not.i = icmp eq i32 %290, 0
  br i1 %tobool543.not.i, label %done.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %if.then544.i

done.i.__iwl_mvm_rs_tx_status.exit_crit_edge:     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then544.i:                                     ; preds = %done.i
  %is_agg.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 33
  %291 = ptrtoint ptr %is_agg.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %is_agg.i, align 8
  %agg_tids.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 24
  %293 = ptrtoint ptr %agg_tids.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %agg_tids.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool.i = icmp ne i8 %294, 0
  %conv.i9 = zext i1 %tobool.i to i8
  %295 = ptrtoint ptr %is_agg.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv.i9, ptr %is_agg.i, align 8
  %search_better_tbl.i10 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 2
  %296 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %search_better_tbl.i10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool3.not.i = icmp eq i8 %297, 0
  %298 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %lq_sta5.i, align 8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  %active_tbl.0.i = select i1 %tobool3.not.i, i8 %299, i8 %301
  %idxprom.i = zext i8 %active_tbl.0.i to i32
  %arrayidx.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i
  call void @__sanitizer_cov_trace_cmp1(i8 %292, i8 %conv.i9)
  %cmp.not.i = icmp eq i8 %292, %conv.i9
  br i1 %cmp.not.i, label %if.then544.i.if.end19.i_crit_edge, label %do.end.i11

if.then544.i.if.end19.i_crit_edge:                ; preds = %if.then544.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

do.end.i11:                                       ; preds = %if.then544.i
  %conv10.i = zext i1 %tobool.i to i32
  %conv8.i = zext i8 %292 to i32
  %302 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %303, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.80, i32 noundef %conv8.i, i32 noundef %conv10.i) #15
  %column2.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 1
  %304 = ptrtoint ptr %column2.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %column2.i.i, align 4
  %arrayidx.i.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %305
  %bw.i.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i, i32 0, i32 3
  %306 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %bw.i.i, align 4
  %call.i.i = call fastcc ptr @rs_get_expected_tpt_table(ptr noundef %lq_sta5.i, ptr noundef %arrayidx.i.i, i32 noundef %307) #15
  %expected_tpt.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 2
  %308 = ptrtoint ptr %expected_tpt.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %call.i.i, ptr %expected_tpt.i.i, align 8
  %309 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %310, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_clear_tbl_windows, ptr noundef nonnull @.str.79) #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end.i11
  %i.021.i.i = phi i32 [ 0, %do.end.i11 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i467.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %i.021.i.i
  %311 = ptrtoint ptr %arrayidx.i467.i to i32
  call void @__asan_store8_noabort(i32 %311)
  store i64 0, ptr %arrayidx.i467.i, align 8
  %success_counter.i.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %i.021.i.i, i32 1
  %312 = ptrtoint ptr %success_counter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %success_counter.i.i.i, align 8
  %success_ratio.i.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %i.021.i.i, i32 2
  %313 = ptrtoint ptr %success_ratio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 -1, ptr %success_ratio.i.i.i, align 4
  %counter.i.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %i.021.i.i, i32 3
  %314 = ptrtoint ptr %counter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 0, ptr %counter.i.i.i, align 8
  %average_tpt.i.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %i.021.i.i, i32 4
  %315 = ptrtoint ptr %average_tpt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 -1, ptr %average_tpt.i.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 17
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.body6.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.for.body6.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.body.i.i.for.body6.i.i_crit_edge
  %i.122.i.i = phi i32 [ %inc9.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ 0, %for.body.i.i.for.body6.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 4, i32 %i.122.i.i
  %316 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 0, ptr %arrayidx7.i.i, align 8
  %success_counter.i17.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 4, i32 %i.122.i.i, i32 1
  %317 = ptrtoint ptr %success_counter.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 0, ptr %success_counter.i17.i.i, align 8
  %success_ratio.i18.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 4, i32 %i.122.i.i, i32 2
  %318 = ptrtoint ptr %success_ratio.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 -1, ptr %success_ratio.i18.i.i, align 4
  %counter.i19.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 4, i32 %i.122.i.i, i32 3
  %319 = ptrtoint ptr %counter.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 0, ptr %counter.i19.i.i, align 8
  %average_tpt.i20.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 4, i32 %i.122.i.i, i32 4
  %320 = ptrtoint ptr %average_tpt.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -1, ptr %average_tpt.i20.i.i, align 4
  %inc9.i.i = add nuw nsw i32 %i.122.i.i, 1
  %exitcond23.not.i.i = icmp eq i32 %inc9.i.i, 16
  br i1 %exitcond23.not.i.i, label %for.body6.i.i.if.end19.i_crit_edge, label %for.body6.i.i.for.body6.i.i_crit_edge

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i.i

for.body6.i.i.if.end19.i_crit_edge:               ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.body6.i.i.if.end19.i_crit_edge, %if.then544.i.if.end19.i_crit_edge
  %321 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx.i, align 4
  %type.i.i12 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i, i32 0, i32 1
  %323 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %type.i.i12, align 4
  %325 = zext i32 %324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %325, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %324, label %land.end.i.i [
    i32 1, label %if.end19.i.if.then.i.i13_crit_edge
    i32 2, label %if.end19.i.if.then.i.i13_crit_edge364
    i32 3, label %if.end19.i.if.then14.i.i_crit_edge
    i32 5, label %if.end19.i.if.then14.i.i_crit_edge365
    i32 7, label %if.end19.i.if.then14.i.i_crit_edge366
    i32 4, label %if.end19.i.if.then28.i.i_crit_edge
    i32 6, label %if.end19.i.if.then28.i.i_crit_edge367
    i32 8, label %if.end19.i.if.then28.i.i_crit_edge368
  ]

if.end19.i.if.then28.i.i_crit_edge368:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.end19.i.if.then28.i.i_crit_edge367:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.end19.i.if.then28.i.i_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.end19.i.if.then14.i.i_crit_edge366:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

if.end19.i.if.then14.i.i_crit_edge365:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

if.end19.i.if.then14.i.i_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

if.end19.i.if.then.i.i13_crit_edge364:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i13

if.end19.i.if.then.i.i13_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i13

if.then.i.i13:                                    ; preds = %if.end19.i.if.then.i.i13_crit_edge, %if.end19.i.if.then.i.i13_crit_edge364
  %active_legacy_rate.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 1
  %326 = ptrtoint ptr %active_legacy_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %active_legacy_rate.i.i, align 8
  %conv.i.i = trunc i32 %327 to i16
  br label %rs_get_supported_rates.exit.i

if.then14.i.i:                                    ; preds = %if.end19.i.if.then14.i.i_crit_edge, %if.end19.i.if.then14.i.i_crit_edge365, %if.end19.i.if.then14.i.i_crit_edge366
  %active_siso_rate.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 2
  %328 = ptrtoint ptr %active_siso_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %active_siso_rate.i.i, align 4
  %conv15.i.i = trunc i32 %329 to i16
  br label %rs_get_supported_rates.exit.i

if.then28.i.i:                                    ; preds = %if.end19.i.if.then28.i.i_crit_edge, %if.end19.i.if.then28.i.i_crit_edge367, %if.end19.i.if.then28.i.i_crit_edge368
  %active_mimo2_rate.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 3
  %330 = ptrtoint ptr %active_mimo2_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %active_mimo2_rate.i.i, align 8
  %conv29.i.i = trunc i32 %331 to i16
  br label %rs_get_supported_rates.exit.i

land.end.i.i:                                     ; preds = %if.end19.i
  %.b78.i.i = load i1, ptr @rs_get_supported_rates.__already_done, align 1
  br i1 %.b78.i.i, label %land.end.i.i.rs_get_supported_rates.exit.i_crit_edge, label %if.then37.i.i, !prof !618

land.end.i.i.rs_get_supported_rates.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_supported_rates.exit.i

if.then37.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_supported_rates.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 969, i32 noundef 9, ptr noundef null) #15
  br label %rs_get_supported_rates.exit.i

rs_get_supported_rates.exit.i:                    ; preds = %if.then37.i.i, %land.end.i.i.rs_get_supported_rates.exit.i_crit_edge, %if.then28.i.i, %if.then14.i.i, %if.then.i.i13
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.then.i.i13 ], [ %conv15.i.i, %if.then14.i.i ], [ %conv29.i.i, %if.then28.i.i ], [ 0, %if.then37.i.i ], [ 0, %land.end.i.i.rs_get_supported_rates.exit.i_crit_edge ]
  %shl.i = shl nuw i32 1, %322
  %conv22.i = zext i16 %retval.0.i.i to i32
  %and.i = and i32 %shl.i, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %do.end28.i, label %if.end41.i

do.end28.i:                                       ; preds = %rs_get_supported_rates.exit.i
  %332 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %333, i32 noundef 0, ptr noundef nonnull @.str.81) #15
  %334 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %search_better_tbl.i10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool33.not.i = icmp eq i8 %335, 0
  br i1 %tobool33.not.i, label %do.end28.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %if.then34.i

do.end28.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then34.i:                                      ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  %336 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 0, ptr %type.i.i12, align 4
  %337 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 0, ptr %search_better_tbl.i10, align 2
  %338 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %lq_sta5.i, align 8
  %idxprom38.i = zext i8 %339 to i32
  %arrayidx39.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom38.i
  call fastcc void @rs_fill_lq_cmd(ptr noundef %mvm, ptr noundef %sta, ptr noundef %lq_sta5.i, ptr noundef %arrayidx39.i) #15
  %call.i468.i = call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq.i) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end41.i:                                       ; preds = %rs_get_supported_rates.exit.i
  %expected_tpt.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 2
  %340 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %expected_tpt.i, align 8
  %tobool42.not.i = icmp eq ptr %341, null
  br i1 %tobool42.not.i, label %do.end47.i, label %if.end51.i

do.end47.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  %342 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %343, i32 noundef 0, ptr noundef nonnull @.str.82) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end51.i:                                       ; preds = %if.end41.i
  %counter.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %322, i32 3
  %344 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %counter.i, align 8
  %success_counter.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %322, i32 1
  %346 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %success_counter.i, align 8
  %sub.i14 = sub i32 %345, %347
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i14)
  %cmp53.i = icmp ult i32 %sub.i14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %347)
  %cmp56.i = icmp slt i32 %347, 8
  %or.cond.i = and i1 %cmp56.i, %cmp53.i
  br i1 %or.cond.i, label %do.end62.i, label %if.end69.i

do.end62.i:                                       ; preds = %if.end51.i
  %348 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mvm, align 8
  %350 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %type.i.i12, align 4
  %.off.i.i = add i32 %351, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %land.lhs.true.i.i, label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %do.end62.i
  %352 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %353)
  %cmp3.i.i = icmp slt i32 %353, 12
  br i1 %cmp3.i.i, label %if.then.i471.i, label %land.lhs.true.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i471.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i470.i = getelementptr [12 x ptr], ptr @rs_pretty_rate.legacy_rates, i32 0, i32 %353
  br label %if.end.i.sink.split.i.i

if.else.i.i:                                      ; preds = %do.end62.i
  %.off1.i.i = add i32 %351, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1.i.i)
  %switch2.i.i = icmp ult i32 %.off1.i.i, 4
  br i1 %switch2.i.i, label %land.lhs.true16.i.i, label %if.end26.i.i

land.lhs.true16.i.i:                              ; preds = %if.else.i.i
  %354 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx.i, align 4
  %356 = add i32 %355, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %356)
  %357 = icmp ult i32 %356, 11
  br i1 %357, label %if.then22.i.i, label %land.lhs.true16.i.i.if.end.i.i.i_crit_edge

land.lhs.true16.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx24.i.i = getelementptr [15 x ptr], ptr @rs_pretty_rate.ht_vht_rates, i32 0, i32 %355
  br label %if.end.i.sink.split.i.i

if.end26.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %351)
  %cmp1.i.i.i = icmp ugt i32 %351, 8
  br i1 %cmp1.i.i.i, label %if.end26.i.i.rs_pretty_rate.exit.i_crit_edge, label %if.end26.i.i.if.end.i.i.i_crit_edge

if.end26.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.end26.i.i.rs_pretty_rate.exit.i_crit_edge:     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_pretty_rate.exit.i

if.end.i.sink.split.i.i:                          ; preds = %if.then22.i.i, %if.then.i471.i
  %arrayidx.sink.i.i = phi ptr [ %arrayidx.i470.i, %if.then.i471.i ], [ %arrayidx24.i.i, %if.then22.i.i ]
  %358 = ptrtoint ptr %arrayidx.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %arrayidx.sink.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.sink.split.i.i, %if.end26.i.i.if.end.i.i.i_crit_edge, %land.lhs.true16.i.i.if.end.i.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i.i_crit_edge
  %rate_str.07.i.i = phi ptr [ @.str.64, %if.end26.i.i.if.end.i.i.i_crit_edge ], [ @.str.64, %land.lhs.true16.i.i.if.end.i.i.i_crit_edge ], [ @.str.64, %land.lhs.true.i.i.if.end.i.i.i_crit_edge ], [ %359, %if.end.i.sink.split.i.i ]
  %arrayidx.i.i.i = getelementptr [9 x ptr], ptr @rs_pretty_lq_type.lq_types, i32 0, i32 %351
  %360 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %rs_pretty_rate.exit.i

rs_pretty_rate.exit.i:                            ; preds = %if.end.i.i.i, %if.end26.i.i.rs_pretty_rate.exit.i_crit_edge
  %rate_str.08.i.i = phi ptr [ %rate_str.07.i.i, %if.end.i.i.i ], [ @.str.64, %if.end26.i.i.rs_pretty_rate.exit.i_crit_edge ]
  %retval.0.i.i.i = phi ptr [ %361, %if.end.i.i.i ], [ @.str.75, %if.end26.i.i.rs_pretty_rate.exit.i_crit_edge ]
  %ant.i.i15 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i, i32 0, i32 2
  %362 = ptrtoint ptr %ant.i.i15 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %ant.i.i15, align 4
  %call28.i.i = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %363) #15
  %call29.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rs_pretty_rate.buf, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i.i, ptr noundef %call28.i.i, ptr noundef %rate_str.08.i.i) #15
  %364 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %success_counter.i, align 8
  %366 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %counter.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %349, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.83, ptr noundef nonnull @rs_pretty_rate.buf, i32 noundef %365, i32 noundef %367) #15
  %average_tpt.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %322, i32 4
  %368 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 -1, ptr %average_tpt.i, align 4
  call fastcc void @rs_stay_in_table(ptr noundef %lq_sta5.i, i1 noundef zeroext false) #15
  br label %__iwl_mvm_rs_tx_status.exit

if.end69.i:                                       ; preds = %if.end51.i
  %369 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %search_better_tbl.i10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %tobool71.not.i = icmp eq i8 %370, 0
  br i1 %tobool71.not.i, label %if.end109.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end69.i
  %average_tpt73.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %322, i32 4
  %371 = ptrtoint ptr %average_tpt73.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %average_tpt73.i, align 4
  %last_tpt.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 16
  %373 = ptrtoint ptr %last_tpt.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %last_tpt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %372, i32 %374)
  %cmp74.i = icmp sgt i32 %372, %374
  %375 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %mvm, align 8
  %success_ratio.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %322, i32 2
  %377 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %success_ratio.i, align 4
  br i1 %cmp74.i, label %land.lhs.true203.critedge.thread570.i, label %lq_update.thread562.i

if.end109.i:                                      ; preds = %if.end69.i
  %conv110.i = trunc i32 %322 to i8
  %379 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %type.i.i12, align 4
  %call112.i = call fastcc zeroext i16 @rs_get_adjacent_rate(i8 noundef zeroext %conv110.i, i16 noundef zeroext %retval.0.i.i, i32 noundef %380) #15
  %conv113.i = zext i16 %call112.i to i32
  %and114.i = and i32 %conv113.i, 255
  %381 = lshr i32 %conv113.i, 8
  %success_ratio117.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %322, i32 2
  %382 = ptrtoint ptr %success_ratio117.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %success_ratio117.i, align 4
  %average_tpt118.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %322, i32 4
  %384 = ptrtoint ptr %average_tpt118.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %average_tpt118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and114.i)
  %cmp119.not.i = icmp eq i32 %and114.i, 17
  br i1 %cmp119.not.i, label %if.end109.i.if.end125.i_crit_edge, label %if.then121.i

if.end109.i.if.end125.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125.i

if.then121.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #17
  %average_tpt124.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %and114.i, i32 4
  %386 = ptrtoint ptr %average_tpt124.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %average_tpt124.i, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then121.i, %if.end109.i.if.end125.i_crit_edge
  %low_tpt.0.i = phi i32 [ %387, %if.then121.i ], [ -1, %if.end109.i.if.end125.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %381)
  %cmp126.not.i = icmp eq i32 %381, 17
  br i1 %cmp126.not.i, label %if.end125.i.do.end136.i_crit_edge, label %if.then128.i

if.end125.i.do.end136.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end136.i

if.then128.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #17
  %average_tpt131.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 3, i32 %381, i32 4
  %388 = ptrtoint ptr %average_tpt131.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %average_tpt131.i, align 4
  br label %do.end136.i

do.end136.i:                                      ; preds = %if.then128.i, %if.end125.i.do.end136.i_crit_edge
  %high_tpt.0.i = phi i32 [ %389, %if.then128.i ], [ -1, %if.end125.i.do.end136.i_crit_edge ]
  %390 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %mvm, align 8
  %.off.i473.i = add i32 %380, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i473.i)
  %switch.i474.i = icmp ult i32 %.off.i473.i, 2
  br i1 %switch.i474.i, label %land.lhs.true.i476.i, label %if.else.i481.i

land.lhs.true.i476.i:                             ; preds = %do.end136.i
  %392 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %393)
  %cmp3.i475.i = icmp slt i32 %393, 12
  br i1 %cmp3.i475.i, label %if.then.i478.i, label %land.lhs.true.i476.i.if.end.i.i491.i_crit_edge

land.lhs.true.i476.i.if.end.i.i491.i_crit_edge:   ; preds = %land.lhs.true.i476.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i491.i

if.then.i478.i:                                   ; preds = %land.lhs.true.i476.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i477.i = getelementptr [12 x ptr], ptr @rs_pretty_rate.legacy_rates, i32 0, i32 %393
  br label %if.end.i.sink.split.i488.i

if.else.i481.i:                                   ; preds = %do.end136.i
  %.off1.i479.i = add i32 %380, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1.i479.i)
  %switch2.i480.i = icmp ult i32 %.off1.i479.i, 4
  br i1 %switch2.i480.i, label %land.lhs.true16.i482.i, label %if.end26.i486.i

land.lhs.true16.i482.i:                           ; preds = %if.else.i481.i
  %394 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx.i, align 4
  %396 = add i32 %395, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %396)
  %397 = icmp ult i32 %396, 11
  br i1 %397, label %if.then22.i484.i, label %land.lhs.true16.i482.i.if.end.i.i491.i_crit_edge

land.lhs.true16.i482.i.if.end.i.i491.i_crit_edge: ; preds = %land.lhs.true16.i482.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i491.i

if.then22.i484.i:                                 ; preds = %land.lhs.true16.i482.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx24.i483.i = getelementptr [15 x ptr], ptr @rs_pretty_rate.ht_vht_rates, i32 0, i32 %395
  br label %if.end.i.sink.split.i488.i

if.end26.i486.i:                                  ; preds = %if.else.i481.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %380)
  %cmp1.i.i485.i = icmp ugt i32 %380, 8
  br i1 %cmp1.i.i485.i, label %if.end26.i486.i.rs_pretty_rate.exit497.i_crit_edge, label %if.end26.i486.i.if.end.i.i491.i_crit_edge

if.end26.i486.i.if.end.i.i491.i_crit_edge:        ; preds = %if.end26.i486.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i491.i

if.end26.i486.i.rs_pretty_rate.exit497.i_crit_edge: ; preds = %if.end26.i486.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_pretty_rate.exit497.i

if.end.i.sink.split.i488.i:                       ; preds = %if.then22.i484.i, %if.then.i478.i
  %arrayidx.sink.i487.i = phi ptr [ %arrayidx.i477.i, %if.then.i478.i ], [ %arrayidx24.i483.i, %if.then22.i484.i ]
  %398 = ptrtoint ptr %arrayidx.sink.i487.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %arrayidx.sink.i487.i, align 4
  br label %if.end.i.i491.i

if.end.i.i491.i:                                  ; preds = %if.end.i.sink.split.i488.i, %if.end26.i486.i.if.end.i.i491.i_crit_edge, %land.lhs.true16.i482.i.if.end.i.i491.i_crit_edge, %land.lhs.true.i476.i.if.end.i.i491.i_crit_edge
  %rate_str.07.i489.i = phi ptr [ @.str.64, %if.end26.i486.i.if.end.i.i491.i_crit_edge ], [ @.str.64, %land.lhs.true16.i482.i.if.end.i.i491.i_crit_edge ], [ @.str.64, %land.lhs.true.i476.i.if.end.i.i491.i_crit_edge ], [ %399, %if.end.i.sink.split.i488.i ]
  %arrayidx.i.i490.i = getelementptr [9 x ptr], ptr @rs_pretty_lq_type.lq_types, i32 0, i32 %380
  %400 = ptrtoint ptr %arrayidx.i.i490.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %arrayidx.i.i490.i, align 4
  br label %rs_pretty_rate.exit497.i

rs_pretty_rate.exit497.i:                         ; preds = %if.end.i.i491.i, %if.end26.i486.i.rs_pretty_rate.exit497.i_crit_edge
  %rate_str.08.i492.i = phi ptr [ %rate_str.07.i489.i, %if.end.i.i491.i ], [ @.str.64, %if.end26.i486.i.rs_pretty_rate.exit497.i_crit_edge ]
  %retval.0.i.i493.i = phi ptr [ %401, %if.end.i.i491.i ], [ @.str.75, %if.end26.i486.i.rs_pretty_rate.exit497.i_crit_edge ]
  %ant.i494.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i, i32 0, i32 2
  %402 = ptrtoint ptr %ant.i494.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %ant.i494.i, align 4
  %call28.i495.i = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %403) #15
  %call29.i496.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rs_pretty_rate.buf, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i493.i, ptr noundef %call28.i495.i, ptr noundef %rate_str.08.i492.i) #15
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %391, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.86, ptr noundef nonnull @rs_pretty_rate.buf, i32 noundef %385, i32 noundef %383, i32 noundef %and114.i, i32 noundef %381, i32 noundef %low_tpt.0.i, i32 noundef %high_tpt.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %383)
  %cmp.i.i = icmp slt i32 %383, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %cmp1.i.i = icmp eq i32 %385, 0
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %rs_pretty_rate.exit497.i
  call void @__sanitizer_cov_trace_pc() #17
  %404 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %405, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.105) #15
  br label %rs_get_rate_action.exit.i

if.end.i.i:                                       ; preds = %rs_pretty_rate.exit497.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %low_tpt.0.i)
  %cmp5.i.i = icmp eq i32 %low_tpt.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %high_tpt.0.i)
  %cmp6.i.i = icmp eq i32 %high_tpt.0.i, -1
  %406 = and i32 %high_tpt.0.i, %low_tpt.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %406)
  %407 = icmp ne i32 %406, -1
  %or.cond161.i.i = or i1 %cmp126.not.i, %407
  br i1 %or.cond161.i.i, label %if.end17.i.i, label %do.end13.i.i

do.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %408 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %409, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.106) #15
  br label %rs_get_rate_action.exit.i

if.end17.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %high_tpt.0.i)
  %cmp18.i.i = icmp ne i32 %high_tpt.0.i, -1
  %or.cond162.i.i = or i1 %cmp126.not.i, %cmp18.i.i
  %or.cond163.i.i = or i1 %cmp5.i.i, %or.cond162.i.i
  %or.cond163.not.i.i = xor i1 %or.cond163.i.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0.i, i32 %385)
  %cmp24.i.i = icmp slt i32 %low_tpt.0.i, %385
  %or.cond164.i.i = and i1 %cmp24.i.i, %or.cond163.not.i.i
  br i1 %or.cond164.i.i, label %do.end29.i.i, label %if.end33.i.i

do.end29.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %410 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %411, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.107) #15
  br label %rs_get_rate_action.exit.i

if.end33.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0.i, i32 %385)
  %cmp36.i.i = icmp sle i32 %high_tpt.0.i, %385
  %412 = or i1 %cmp6.i.i, %cmp36.i.i
  br i1 %412, label %if.end45.i.i, label %do.end41.i.i

do.end41.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %413 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %414, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.108) #15
  br label %rs_get_rate_action.exit.i

if.end45.i.i:                                     ; preds = %if.end33.i.i
  %brmerge.i.i = or i1 %cmp5.i.i, %cmp6.i.i
  %brmerge.not.i.i = xor i1 %brmerge.i.i, true
  %or.cond166.i.i = and i1 %cmp24.i.i, %brmerge.not.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0.i, i32 %385)
  %cmp52.i.i = icmp slt i32 %high_tpt.0.i, %385
  %or.cond167.i.i = and i1 %cmp52.i.i, %or.cond166.i.i
  br i1 %or.cond167.i.i, label %do.end57.i.i, label %if.end61.i.i

do.end57.i.i:                                     ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %415 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %416, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.109) #15
  br label %rs_get_rate_action.exit.i

if.end61.i.i:                                     ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0.i, i32 %385)
  %cmp64.i.i = icmp sle i32 %low_tpt.0.i, %385
  %417 = or i1 %cmp5.i.i, %cmp64.i.i
  br i1 %417, label %if.end73.i.i, label %land.lhs.true94.i.i

if.end73.i.i:                                     ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and114.i)
  %cmp76.not.i.i = icmp ne i32 %and114.i, 17
  %418 = and i1 %cmp76.not.i.i, %cmp5.i.i
  %419 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %mvm, align 8
  br i1 %418, label %land.lhs.true94.thread.i.i, label %do.end89.i.i

land.lhs.true94.thread.i.i:                       ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %420, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.111) #15
  br label %if.then96.i.i

do.end89.i.i:                                     ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %420, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.112) #15
  br label %rs_get_rate_action.exit.i

land.lhs.true94.i.i:                              ; preds = %if.end61.i.i
  %421 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %422, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.110) #15
  br i1 %cmp119.not.i, label %land.lhs.true94.i.i.rs_get_rate_action.exit.i_crit_edge, label %land.lhs.true94.i.i.if.then96.i.i_crit_edge

land.lhs.true94.i.i.if.then96.i.i_crit_edge:      ; preds = %land.lhs.true94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96.i.i

land.lhs.true94.i.i.rs_get_rate_action.exit.i_crit_edge: ; preds = %land.lhs.true94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_rate_action.exit.i

if.then96.i.i:                                    ; preds = %land.lhs.true94.i.i.if.then96.i.i_crit_edge, %land.lhs.true94.thread.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10879, i32 %383)
  %cmp97.i.i = icmp ugt i32 %383, 10879
  br i1 %cmp97.i.i, label %do.end102.i.i, label %if.else.i501.i

do.end102.i.i:                                    ; preds = %if.then96.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %423 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %424, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.113) #15
  br label %rs_get_rate_action.exit.i

if.else.i501.i:                                   ; preds = %if.then96.i.i
  %425 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %expected_tpt.i, align 8
  %arrayidx.i499.i = getelementptr i16, ptr %426, i32 %and114.i
  %427 = ptrtoint ptr %arrayidx.i499.i to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %arrayidx.i499.i, align 2
  %conv.i500.i = zext i16 %428 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i500.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %385)
  %cmp106.i.i = icmp slt i32 %mul.i.i, %385
  %429 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %mvm, align 8
  br i1 %cmp106.i.i, label %do.end112.i.i, label %do.end120.i.i

do.end112.i.i:                                    ; preds = %if.else.i501.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %430, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.114) #15
  br label %rs_get_rate_action.exit.i

do.end120.i.i:                                    ; preds = %if.else.i501.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %430, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate_action, ptr noundef nonnull @.str.115) #15
  br label %rs_get_rate_action.exit.i

rs_get_rate_action.exit.i:                        ; preds = %do.end120.i.i, %do.end112.i.i, %do.end102.i.i, %land.lhs.true94.i.i.rs_get_rate_action.exit.i_crit_edge, %do.end89.i.i, %do.end57.i.i, %do.end41.i.i, %do.end29.i.i, %do.end13.i.i, %do.end.i.i
  %retval.0.i502.i = phi i32 [ -1, %do.end.i.i ], [ 1, %do.end13.i.i ], [ 1, %do.end29.i.i ], [ 1, %do.end41.i.i ], [ 0, %do.end57.i.i ], [ 0, %do.end102.i.i ], [ 0, %do.end112.i.i ], [ -1, %do.end120.i.i ], [ -1, %land.lhs.true94.i.i.rs_get_rate_action.exit.i_crit_edge ], [ 0, %do.end89.i.i ]
  %431 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %type.i.i12, align 4
  %433 = zext i32 %432 to i64
  call void @__sanitizer_cov_trace_switch(i64 %433, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %432, label %rs_get_rate_action.exit.i.if.end162.i_crit_edge [
    i32 4, label %rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge
    i32 6, label %rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge369
    i32 8, label %rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge370
  ]

rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge370: ; preds = %rs_get_rate_action.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true152.i

rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge369: ; preds = %rs_get_rate_action.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true152.i

rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge: ; preds = %rs_get_rate_action.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true152.i

rs_get_rate_action.exit.i.if.end162.i_crit_edge:  ; preds = %rs_get_rate_action.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162.i

land.lhs.true152.i:                               ; preds = %rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge, %rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge369, %rs_get_rate_action.exit.i.land.lhs.true152.i_crit_edge370
  %call153.i = call zeroext i1 @iwl_mvm_bt_coex_is_mimo_allowed(ptr noundef %mvm, ptr noundef %sta) #15
  br i1 %call153.i, label %land.lhs.true152.i.if.end162.i_crit_edge, label %do.end158.i

land.lhs.true152.i.if.end162.i_crit_edge:         ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162.i

do.end158.i:                                      ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #17
  %434 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %435, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.87) #15
  call fastcc void @rs_stay_in_table(ptr noundef %lq_sta5.i, i1 noundef zeroext true) #15
  br label %land.lhs.true205.i

if.end162.i:                                      ; preds = %land.lhs.true152.i.if.end162.i_crit_edge, %rs_get_rate_action.exit.i.if.end162.i_crit_edge
  %436 = zext i32 %retval.0.i502.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %436, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %retval.0.i502.i, label %if.end162.i.land.lhs.true205.i_crit_edge [
    i32 -1, label %sw.bb.i
    i32 1, label %sw.bb175.i
    i32 0, label %sw.bb188.i
  ]

if.end162.i.land.lhs.true205.i_crit_edge:         ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true205.i

sw.bb.i:                                          ; preds = %if.end162.i
  br i1 %cmp119.not.i, label %do.end170.i16, label %sw.bb.i.if.then197.i_crit_edge

sw.bb.i.if.then197.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then197.i

do.end170.i16:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %437 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %438, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.88) #15
  br label %land.lhs.true205.i

sw.bb175.i:                                       ; preds = %if.end162.i
  br i1 %cmp126.not.i, label %do.end183.i, label %sw.bb175.i.if.then197.i_crit_edge

sw.bb175.i.if.then197.i_crit_edge:                ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then197.i

do.end183.i:                                      ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #17
  %439 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %440, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.89) #15
  br label %land.lhs.true205.i

sw.bb188.i:                                       ; preds = %if.end162.i
  %rs_state.i17 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 1
  %441 = ptrtoint ptr %rs_state.i17 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %rs_state.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %442)
  %cmp190.i = icmp eq i8 %442, 2
  br i1 %cmp190.i, label %lq_update.i, label %sw.bb188.i.land.lhs.true205.i_crit_edge

sw.bb188.i.land.lhs.true205.i_crit_edge:          ; preds = %sw.bb188.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true205.i

lq_update.i:                                      ; preds = %sw.bb188.i
  %vif1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %443 = ptrtoint ptr %vif1.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %vif1.i, align 8
  %reduced_tpc.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 29, i32 1
  %445 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %reduced_tpc.i, align 1
  %dbg_fixed_txp_reduction.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 15
  %447 = ptrtoint ptr %dbg_fixed_txp_reduction.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %dbg_fixed_txp_reduction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %448)
  %cmp.i270 = icmp ult i8 %448, 16
  br i1 %cmp.i270, label %do.end.i273, label %if.end.i275

do.end.i273:                                      ; preds = %lq_update.i
  %conv.i271 = zext i8 %448 to i32
  %449 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %450, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tpc_perform, ptr noundef nonnull @.str.116, i32 noundef %conv.i271) #15
  %451 = ptrtoint ptr %dbg_fixed_txp_reduction.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %dbg_fixed_txp_reduction.i, align 4
  %453 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %452, ptr %reduced_tpc.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %446, i8 %452)
  %cmp18.i272.not = icmp eq i8 %446, %452
  br i1 %cmp18.i272.not, label %do.end.i273.land.lhs.true205.i_crit_edge, label %do.end.i273.if.then197.i_crit_edge

do.end.i273.if.then197.i_crit_edge:               ; preds = %do.end.i273
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then197.i

do.end.i273.land.lhs.true205.i_crit_edge:         ; preds = %do.end.i273
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true205.i

if.end.i275:                                      ; preds = %lq_update.i
  %454 = call i32 @llvm.read_register.i32(metadata !608) #15
  %and.i.i.i.i.i.i = and i32 %454, -16384
  %455 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %455, i32 0, i32 1
  %456 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %457, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !620
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i274 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i274, label %if.end.i275.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i278

if.end.i275.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i278:                             ; preds = %if.end.i275
  %call1.i.i276 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i276)
  %tobool.not.i.i277 = icmp eq i32 %call1.i.i276, 0
  br i1 %tobool.not.i.i277, label %land.lhs.true.i.i278.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i278.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i278
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i278
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i279

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i279:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.122, i32 noundef 696, ptr noundef nonnull @.str.123) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i279, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i278.rcu_read_lock.exit.i_crit_edge, %if.end.i275.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf23.i = getelementptr inbounds %struct.ieee80211_vif, ptr %444, i32 0, i32 9
  %458 = ptrtoint ptr %chanctx_conf23.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load volatile ptr, ptr %chanctx_conf23.i, align 4
  %call25.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool.not.i280 = icmp eq i32 %call25.i, 0
  br i1 %tobool.not.i280, label %land.lhs.true.i281, label %rcu_read_lock.exit.i.do.end33.i_crit_edge

rcu_read_lock.exit.i.do.end33.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33.i

land.lhs.true.i281:                               ; preds = %rcu_read_lock.exit.i
  %call26.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i281.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true.i281.do.end33.i_crit_edge:          ; preds = %land.lhs.true.i281
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i281
  %.b195.i = load i1, ptr @rs_tpc_perform.__warned, align 1
  br i1 %.b195.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_tpc_perform.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1985, ptr noundef nonnull @.str.117) #15
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true.i281.do.end33.i_crit_edge, %rcu_read_lock.exit.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %459, null
  br i1 %tobool35.not.i, label %do.end48.i, label %if.else.i282, !prof !621

do.end48.i:                                       ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1986, i32 noundef 9, ptr noundef null) #15
  br label %if.end65.i

if.else.i282:                                     ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %459, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %461, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else.i282, %do.end48.i
  %band.0.i = phi i32 [ 6, %do.end48.i ], [ %463, %if.else.i282 ]
  %call.i197.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i197.i, label %if.end65.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i200.i

if.end65.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true.i200.i:                             ; preds = %if.end65.i
  %call1.i198.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i198.i)
  %tobool.not.i199.i = icmp eq i32 %call1.i198.i, 0
  br i1 %tobool.not.i199.i, label %land.lhs.true.i200.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i202.i

land.lhs.true.i200.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i200.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i202.i:                            ; preds = %land.lhs.true.i200.i
  %.b4.i201.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i201.i, label %land.lhs.true2.i202.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i203.i

land.lhs.true2.i202.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i202.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

if.then.i203.i:                                   ; preds = %land.lhs.true2.i202.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.122, i32 noundef 724, ptr noundef nonnull @.str.124) #15
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i203.i, %land.lhs.true2.i202.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i200.i.rcu_read_unlock.exit.i_crit_edge, %if.end65.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !622
  %464 = call i32 @llvm.read_register.i32(metadata !608) #15
  %and.i.i.i.i.i204.i = and i32 %464, -16384
  %465 = inttoptr i32 %and.i.i.i.i.i204.i to ptr
  %preempt_count.i.i.i.i205.i = getelementptr inbounds %struct.thread_info, ptr %465, i32 0, i32 1
  %466 = ptrtoint ptr %preempt_count.i.i.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load volatile i32, ptr %preempt_count.i.i.i.i205.i, align 4
  %sub.i.i.i.i = add i32 %467, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i205.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %468 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %470 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %470)
  %cmp.i.i283 = icmp eq i32 %470, 1
  %471 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %444, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %472)
  %cmp2.i.i = icmp eq i32 %472, 2
  br i1 %cmp2.i.i, label %land.rhs.i.i284, label %rcu_read_unlock.exit.i.land.end.i.i287_crit_edge

rcu_read_unlock.exit.i.land.end.i.i287_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i287

land.rhs.i.i284:                                  ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %ps.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %444, i32 0, i32 1, i32 38
  %473 = ptrtoint ptr %ps.i.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %ps.i.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %474)
  %tobool.not.i206.i = icmp eq i8 %474, 0
  br label %land.end.i.i287

land.end.i.i287:                                  ; preds = %land.rhs.i.i284, %rcu_read_unlock.exit.i.land.end.i.i287_crit_edge
  %475 = phi i1 [ false, %rcu_read_unlock.exit.i.land.end.i.i287_crit_edge ], [ %tobool.not.i206.i, %land.rhs.i.i284 ]
  %476 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %mvm, align 8
  %conv.i.i285 = zext i1 %cmp.i.i283 to i32
  %conv7.i.i = zext i1 %475 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %477, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tpc_allowed, ptr noundef nonnull @.str.125, i32 noundef %conv.i.i285, i32 noundef %conv7.i.i) #15
  %brmerge.i.i286 = select i1 %cmp.i.i283, i1 true, i1 %475
  br i1 %brmerge.i.i286, label %land.lhs.true.i208.i, label %land.end.i.i287.do.end17.i.i_crit_edge

land.end.i.i287.do.end17.i.i_crit_edge:           ; preds = %land.end.i.i287
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17.i.i

land.lhs.true.i208.i:                             ; preds = %land.end.i.i287
  %call.i207.i = call zeroext i1 @iwl_mvm_bt_coex_is_tpc_allowed(ptr noundef %mvm, i32 noundef %band.0.i) #15
  br i1 %call.i207.i, label %land.lhs.true.i208.i.do.end17.i.i_crit_edge, label %land.lhs.true.i208.i.rs_tpc_perform.exit_crit_edge

land.lhs.true.i208.i.rs_tpc_perform.exit_crit_edge: ; preds = %land.lhs.true.i208.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tpc_perform.exit

land.lhs.true.i208.i.do.end17.i.i_crit_edge:      ; preds = %land.lhs.true.i208.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %land.lhs.true.i208.i.do.end17.i.i_crit_edge, %land.end.i.i287.do.end17.i.i_crit_edge
  %478 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %mvm, align 8
  %480 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %type.i.i12, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %479, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tpc_allowed, ptr noundef nonnull @.str.126, i32 noundef %481) #15
  %482 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %type.i.i12, align 4
  %484 = zext i32 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %484, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %483, label %land.end60.i.i [
    i32 1, label %do.end17.i.i.if.then29.i.i_crit_edge
    i32 2, label %do.end17.i.i.if.then29.i.i_crit_edge371
    i32 3, label %do.end17.i.i.if.then40.i.i_crit_edge
    i32 4, label %do.end17.i.i.if.then40.i.i_crit_edge372
    i32 5, label %do.end17.i.i.rs_tpc_allowed.exit.i_crit_edge
    i32 6, label %do.end17.i.i.rs_tpc_allowed.exit.i_crit_edge373
  ]

do.end17.i.i.rs_tpc_allowed.exit.i_crit_edge373:  ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tpc_allowed.exit.i

do.end17.i.i.rs_tpc_allowed.exit.i_crit_edge:     ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tpc_allowed.exit.i

do.end17.i.i.if.then40.i.i_crit_edge372:          ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40.i.i

do.end17.i.i.if.then40.i.i_crit_edge:             ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40.i.i

do.end17.i.i.if.then29.i.i_crit_edge371:          ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i.i

do.end17.i.i.if.then29.i.i_crit_edge:             ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i.i

if.then29.i.i:                                    ; preds = %do.end17.i.i.if.then29.i.i_crit_edge, %do.end17.i.i.if.then29.i.i_crit_edge371
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %469)
  %cmp30.i.i = icmp eq i32 %469, 11
  br i1 %cmp30.i.i, label %if.then29.i.i.if.end80.i_crit_edge, label %if.then29.i.i.rs_tpc_perform.exit_crit_edge

if.then29.i.i.rs_tpc_perform.exit_crit_edge:      ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tpc_perform.exit

if.then29.i.i.if.end80.i_crit_edge:               ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80.i

if.then40.i.i:                                    ; preds = %do.end17.i.i.if.then40.i.i_crit_edge, %do.end17.i.i.if.then40.i.i_crit_edge372
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %469)
  %cmp41.i.i = icmp eq i32 %469, 12
  br i1 %cmp41.i.i, label %if.then40.i.i.if.end80.i_crit_edge, label %if.then40.i.i.rs_tpc_perform.exit_crit_edge

if.then40.i.i.rs_tpc_perform.exit_crit_edge:      ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tpc_perform.exit

if.then40.i.i.if.end80.i_crit_edge:               ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80.i

land.end60.i.i:                                   ; preds = %do.end17.i.i
  %.b115.i.i = load i1, ptr @rs_tpc_allowed.__already_done, align 1
  br i1 %.b115.i.i, label %land.end60.i.i.rs_tpc_perform.exit_crit_edge, label %if.then64.i.i, !prof !618

land.end60.i.i.rs_tpc_perform.exit_crit_edge:     ; preds = %land.end60.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tpc_perform.exit

if.then64.i.i:                                    ; preds = %land.end60.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_tpc_allowed.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1886, i32 noundef 9, ptr noundef null) #15
  br label %rs_tpc_perform.exit

rs_tpc_allowed.exit.i:                            ; preds = %do.end17.i.i.rs_tpc_allowed.exit.i_crit_edge, %do.end17.i.i.rs_tpc_allowed.exit.i_crit_edge373
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %469)
  %cmp52.i.i288 = icmp eq i32 %469, 14
  br i1 %cmp52.i.i288, label %rs_tpc_allowed.exit.i.if.end80.i_crit_edge, label %rs_tpc_allowed.exit.i.rs_tpc_perform.exit_crit_edge

rs_tpc_allowed.exit.i.rs_tpc_perform.exit_crit_edge: ; preds = %rs_tpc_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tpc_perform.exit

rs_tpc_allowed.exit.i.if.end80.i_crit_edge:       ; preds = %rs_tpc_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80.i

if.end80.i:                                       ; preds = %rs_tpc_allowed.exit.i.if.end80.i_crit_edge, %if.then40.i.i.if.end80.i_crit_edge, %if.then29.i.i.if.end80.i_crit_edge
  %conv81.i = zext i8 %446 to i32
  %add.i.i = add nuw nsw i32 %conv81.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %446)
  %cmp.i209.i = icmp ugt i8 %446, 12
  %spec.select.i.i289 = select i1 %cmp.i209.i, i32 255, i32 %add.i.i
  %sub.i.i = add nsw i32 %conv81.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %446)
  %cmp1.i.i290 = icmp ult i8 %446, 3
  %storemerge.i.i = select i1 %cmp1.i.i290, i32 255, i32 %sub.i.i
  %tpc_win.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 4
  %success_ratio.i291 = getelementptr %struct.iwl_rate_scale_data, ptr %tpc_win.i, i32 %conv81.i, i32 2
  %485 = ptrtoint ptr %success_ratio.i291 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %success_ratio.i291, align 4
  %average_tpt.i292 = getelementptr %struct.iwl_rate_scale_data, ptr %tpc_win.i, i32 %conv81.i, i32 4
  %487 = ptrtoint ptr %average_tpt.i292 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %average_tpt.i292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spec.select.i.i289)
  %cmp84.not.i = icmp eq i32 %spec.select.i.i289, 255
  br i1 %cmp84.not.i, label %if.end80.i.if.end89.i_crit_edge, label %if.then86.i

if.end80.i.if.end89.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89.i

if.then86.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #17
  %average_tpt88.i = getelementptr %struct.iwl_rate_scale_data, ptr %tpc_win.i, i32 %spec.select.i.i289, i32 4
  %489 = ptrtoint ptr %average_tpt88.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %average_tpt88.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then86.i, %if.end80.i.if.end89.i_crit_edge
  %weak_tpt.0.i = phi i32 [ %490, %if.then86.i ], [ -1, %if.end80.i.if.end89.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %storemerge.i.i)
  %cmp90.not.i = icmp eq i32 %storemerge.i.i, 255
  br i1 %cmp90.not.i, label %if.end89.i.do.end99.i_crit_edge, label %if.then92.i

if.end89.i.do.end99.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end99.i

if.then92.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #17
  %average_tpt94.i = getelementptr %struct.iwl_rate_scale_data, ptr %tpc_win.i, i32 %storemerge.i.i, i32 4
  %491 = ptrtoint ptr %average_tpt94.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %average_tpt94.i, align 4
  br label %do.end99.i

do.end99.i:                                       ; preds = %if.then92.i, %if.end89.i.do.end99.i_crit_edge
  %strong_tpt.0.i = phi i32 [ %492, %if.then92.i ], [ -1, %if.end89.i.do.end99.i_crit_edge ]
  %493 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %494, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tpc_perform, ptr noundef nonnull @.str.119, i32 noundef %conv81.i, i32 noundef %488, i32 noundef %486, i32 noundef %spec.select.i.i289, i32 noundef %storemerge.i.i, i32 noundef %weak_tpt.0.i, i32 noundef %strong_tpt.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %488)
  %cmp.i210.i = icmp eq i32 %488, -1
  br i1 %cmp.i210.i, label %do.end99.i.if.else118.i_crit_edge, label %if.end.i.i295

do.end99.i.if.else118.i_crit_edge:                ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else118.i

if.end.i.i295:                                    ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9601, i32 %486)
  %cmp3.i.i293 = icmp slt i32 %486, 9601
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %cmp4.i.i = icmp eq i32 %488, 0
  %or.cond.i.i294 = or i1 %cmp3.i.i293, %cmp4.i.i
  br i1 %or.cond.i.i294, label %if.end.i.i295.if.else118.i_crit_edge, label %if.end11.i.i

if.end.i.i295.if.else118.i_crit_edge:             ; preds = %if.end.i.i295
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else118.i

if.end11.i.i:                                     ; preds = %if.end.i.i295
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %486)
  %cmp12.i.i = icmp ult i32 %486, 10880
  %or.cond92.i.i = or i1 %cmp84.not.i, %cmp12.i.i
  br i1 %or.cond92.i.i, label %if.end35.i.i, label %if.then14.i.i296

if.then14.i.i296:                                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %weak_tpt.0.i)
  %cmp15.i.i = icmp eq i32 %weak_tpt.0.i, -1
  br i1 %cmp15.i.i, label %land.lhs.true16.i.i297, label %if.then14.i.i296.if.end26.i.i299_crit_edge

if.then14.i.i296.if.end26.i.i299_crit_edge:       ; preds = %if.then14.i.i296
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i299

land.lhs.true16.i.i297:                           ; preds = %if.then14.i.i296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %strong_tpt.0.i)
  %cmp17.i.i = icmp ne i32 %strong_tpt.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %488, i32 %strong_tpt.0.i)
  %cmp19.not.i.i = icmp slt i32 %488, %strong_tpt.0.i
  %or.cond93.i.i = and i1 %cmp17.i.i, %cmp19.not.i.i
  br i1 %or.cond93.i.i, label %land.lhs.true16.i.i297.if.end26.i.i299_crit_edge, label %land.lhs.true16.i.i297.rs_get_tpc_action.exit.i_crit_edge

land.lhs.true16.i.i297.rs_get_tpc_action.exit.i_crit_edge: ; preds = %land.lhs.true16.i.i297
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_tpc_action.exit.i

land.lhs.true16.i.i297.if.end26.i.i299_crit_edge: ; preds = %land.lhs.true16.i.i297
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i299

if.end26.i.i299:                                  ; preds = %land.lhs.true16.i.i297.if.end26.i.i299_crit_edge, %if.then14.i.i296.if.end26.i.i299_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %weak_tpt.0.i, i32 %488)
  %cmp27.i.i298 = icmp sgt i32 %weak_tpt.0.i, %488
  br i1 %cmp27.i.i298, label %if.end26.i.i299.rs_get_tpc_action.exit.i_crit_edge, label %if.end26.i.i299.do.end67.i.i_crit_edge

if.end26.i.i299.do.end67.i.i_crit_edge:           ; preds = %if.end26.i.i299
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67.i.i

if.end26.i.i299.rs_get_tpc_action.exit.i_crit_edge: ; preds = %if.end26.i.i299
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_tpc_action.exit.i

if.end35.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10879, i32 %486)
  %cmp36.i.i300 = icmp ugt i32 %486, 10879
  %or.cond94.i.i = or i1 %cmp90.not.i, %cmp36.i.i300
  br i1 %or.cond94.i.i, label %if.end35.i.i.do.end67.i.i_crit_edge, label %if.then39.i.i

if.end35.i.i.do.end67.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67.i.i

if.then39.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %weak_tpt.0.i)
  %cmp40.i.i301 = icmp ne i32 %weak_tpt.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %strong_tpt.0.i)
  %cmp42.not.i.i = icmp eq i32 %strong_tpt.0.i, -1
  %or.cond95.i.i = or i1 %cmp40.i.i301, %cmp42.not.i.i
  %or.cond95.not.i.i = xor i1 %or.cond95.i.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %488, i32 %strong_tpt.0.i)
  %cmp44.i.i = icmp slt i32 %488, %strong_tpt.0.i
  %or.cond96.i.i = and i1 %cmp44.i.i, %or.cond95.not.i.i
  br i1 %or.cond96.i.i, label %if.then39.i.i.if.else118.i_crit_edge, label %if.end51.i.i302

if.then39.i.i.if.else118.i_crit_edge:             ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else118.i

if.end51.i.i302:                                  ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %weak_tpt.0.i, i32 %488)
  %cmp52.i211.i = icmp slt i32 %weak_tpt.0.i, %488
  %or.cond97.i.i = or i1 %cmp42.not.i.i, %cmp44.i.i
  %or.cond101.i.i = and i1 %cmp52.i211.i, %or.cond97.i.i
  br i1 %or.cond101.i.i, label %if.end51.i.i302.if.else118.i_crit_edge, label %if.end51.i.i302.do.end67.i.i_crit_edge

if.end51.i.i302.do.end67.i.i_crit_edge:           ; preds = %if.end51.i.i302
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67.i.i

if.end51.i.i302.if.else118.i_crit_edge:           ; preds = %if.end51.i.i302
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else118.i

do.end67.i.i:                                     ; preds = %if.end51.i.i302.do.end67.i.i_crit_edge, %if.end35.i.i.do.end67.i.i_crit_edge, %if.end26.i.i299.do.end67.i.i_crit_edge
  br label %if.else118.i

rs_get_tpc_action.exit.i:                         ; preds = %if.end26.i.i299.rs_get_tpc_action.exit.i_crit_edge, %land.lhs.true16.i.i297.rs_get_tpc_action.exit.i_crit_edge
  %.str.133.sink.i.i = phi ptr [ @.str.129, %land.lhs.true16.i.i297.rs_get_tpc_action.exit.i_crit_edge ], [ @.str.130, %if.end26.i.i299.rs_get_tpc_action.exit.i_crit_edge ]
  %495 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %496, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_tpc_action, ptr noundef nonnull %.str.133.sink.i.i) #15
  br label %sw.bb.i303

if.else118.i:                                     ; preds = %do.end67.i.i, %if.end51.i.i302.if.else118.i_crit_edge, %if.then39.i.i.if.else118.i_crit_edge, %if.end.i.i295.if.else118.i_crit_edge, %do.end99.i.if.else118.i_crit_edge
  %.str.133.sink.i.ph.i = phi ptr [ @.str.132, %if.end51.i.i302.if.else118.i_crit_edge ], [ @.str.131, %if.then39.i.i.if.else118.i_crit_edge ], [ @.str.128, %if.end.i.i295.if.else118.i_crit_edge ], [ @.str.127, %do.end99.i.if.else118.i_crit_edge ], [ @.str.133, %do.end67.i.i ]
  %retval.0.i212.ph.i = phi i32 [ 2, %if.end51.i.i302.if.else118.i_crit_edge ], [ 2, %if.then39.i.i.if.else118.i_crit_edge ], [ 3, %if.end.i.i295.if.else118.i_crit_edge ], [ 0, %do.end99.i.if.else118.i_crit_edge ], [ 0, %do.end67.i.i ]
  %497 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %498, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_tpc_action, ptr noundef nonnull %.str.133.sink.i.ph.i) #15
  %499 = and i32 %retval.0.i212.ph.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %499)
  %switch.i = icmp ne i32 %499, 0
  %or.cond196.i = and i1 %cmp90.not.i, %switch.i
  br i1 %or.cond196.i, label %do.end130.i, label %if.end135.i

do.end130.i:                                      ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #17
  %500 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %501, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tpc_perform, ptr noundef nonnull @.str.121) #15
  br label %land.lhs.true205.i

if.end135.i:                                      ; preds = %if.else118.i
  %502 = zext i32 %retval.0.i212.ph.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %502, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %retval.0.i212.ph.i, label %if.end135.i.land.lhs.true205.i_crit_edge [
    i32 1, label %if.end135.i.sw.bb.i303_crit_edge
    i32 2, label %sw.bb139.i
    i32 3, label %sw.bb143.i
  ]

if.end135.i.sw.bb.i303_crit_edge:                 ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i303

if.end135.i.land.lhs.true205.i_crit_edge:         ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true205.i

sw.bb.i303:                                       ; preds = %if.end135.i.sw.bb.i303_crit_edge, %rs_get_tpc_action.exit.i
  %conv136.i = trunc i32 %spec.select.i.i289 to i8
  %503 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 %conv136.i, ptr %reduced_tpc.i, align 1
  br label %if.then197.i

sw.bb139.i:                                       ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv140.i = trunc i32 %storemerge.i.i to i8
  %504 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %conv140.i, ptr %reduced_tpc.i, align 1
  br label %if.then197.i

sw.bb143.i:                                       ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #17
  %505 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 0, ptr %reduced_tpc.i, align 1
  br label %if.then197.i

rs_tpc_perform.exit:                              ; preds = %rs_tpc_allowed.exit.i.rs_tpc_perform.exit_crit_edge, %if.then64.i.i, %land.end60.i.i.rs_tpc_perform.exit_crit_edge, %if.then40.i.i.rs_tpc_perform.exit_crit_edge, %if.then29.i.i.rs_tpc_perform.exit_crit_edge, %land.lhs.true.i208.i.rs_tpc_perform.exit_crit_edge
  %506 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %507, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tpc_perform, ptr noundef nonnull @.str.118) #15
  %508 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 0, ptr %reduced_tpc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %cmp78.i.not = icmp eq i8 %446, 0
  br i1 %cmp78.i.not, label %rs_tpc_perform.exit.land.lhs.true205.i_crit_edge, label %rs_tpc_perform.exit.if.then197.i_crit_edge

rs_tpc_perform.exit.if.then197.i_crit_edge:       ; preds = %rs_tpc_perform.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then197.i

rs_tpc_perform.exit.land.lhs.true205.i_crit_edge: ; preds = %rs_tpc_perform.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true205.i

lq_update.thread562.i:                            ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %376, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.85, i32 noundef %378, i32 noundef %372, i32 noundef %374) #15
  %509 = ptrtoint ptr %type.i.i12 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 0, ptr %type.i.i12, align 4
  %510 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %lq_sta5.i, align 8
  %idxprom102.i = zext i8 %511 to i32
  %arrayidx103.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom102.i
  %512 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx103.i, align 8
  %514 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 0, ptr %search_better_tbl.i10, align 2
  br label %if.then197.i

land.lhs.true203.critedge.thread570.i:            ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %376, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.84, i32 noundef %378, i32 noundef %372, i32 noundef %374) #15
  %515 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %active_tbl.0.i, ptr %lq_sta5.i, align 8
  %516 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 0, ptr %search_better_tbl.i10, align 2
  call fastcc void @rs_stay_in_table(ptr noundef %lq_sta5.i, i1 noundef zeroext false) #15
  br label %if.end259.i

if.then197.i:                                     ; preds = %lq_update.thread562.i, %rs_tpc_perform.exit.if.then197.i_crit_edge, %sw.bb143.i, %sw.bb139.i, %sw.bb.i303, %do.end.i273.if.then197.i_crit_edge, %sw.bb175.i.if.then197.i_crit_edge, %sw.bb.i.if.then197.i_crit_edge
  %done_search.0557.i = phi i32 [ 0, %rs_tpc_perform.exit.if.then197.i_crit_edge ], [ 1, %lq_update.thread562.i ], [ 0, %sw.bb.i.if.then197.i_crit_edge ], [ 0, %sw.bb175.i.if.then197.i_crit_edge ], [ 0, %do.end.i273.if.then197.i_crit_edge ], [ 0, %sw.bb143.i ], [ 0, %sw.bb139.i ], [ 0, %sw.bb.i303 ]
  %tbl.1556.i = phi ptr [ %arrayidx.i, %rs_tpc_perform.exit.if.then197.i_crit_edge ], [ %arrayidx103.i, %lq_update.thread562.i ], [ %arrayidx.i, %sw.bb.i.if.then197.i_crit_edge ], [ %arrayidx.i, %sw.bb175.i.if.then197.i_crit_edge ], [ %arrayidx.i, %do.end.i273.if.then197.i_crit_edge ], [ %arrayidx.i, %sw.bb143.i ], [ %arrayidx.i, %sw.bb139.i ], [ %arrayidx.i, %sw.bb.i303 ]
  %cmp26.i.i = phi i1 [ true, %rs_tpc_perform.exit.if.then197.i_crit_edge ], [ true, %lq_update.thread562.i ], [ false, %sw.bb.i.if.then197.i_crit_edge ], [ false, %sw.bb175.i.if.then197.i_crit_edge ], [ true, %do.end.i273.if.then197.i_crit_edge ], [ true, %sw.bb143.i ], [ true, %sw.bb139.i ], [ true, %sw.bb.i303 ]
  %cmp31.i.i = phi i1 [ false, %rs_tpc_perform.exit.if.then197.i_crit_edge ], [ false, %lq_update.thread562.i ], [ false, %sw.bb.i.if.then197.i_crit_edge ], [ true, %sw.bb175.i.if.then197.i_crit_edge ], [ false, %do.end.i273.if.then197.i_crit_edge ], [ false, %sw.bb143.i ], [ false, %sw.bb139.i ], [ false, %sw.bb.i303 ]
  %cmp9.i.i = phi i1 [ false, %rs_tpc_perform.exit.if.then197.i_crit_edge ], [ false, %lq_update.thread562.i ], [ true, %sw.bb.i.if.then197.i_crit_edge ], [ false, %sw.bb175.i.if.then197.i_crit_edge ], [ false, %do.end.i273.if.then197.i_crit_edge ], [ false, %sw.bb143.i ], [ false, %sw.bb139.i ], [ false, %sw.bb.i303 ]
  %scale_action.0555.i = phi i32 [ 0, %rs_tpc_perform.exit.if.then197.i_crit_edge ], [ 0, %lq_update.thread562.i ], [ -1, %sw.bb.i.if.then197.i_crit_edge ], [ 1, %sw.bb175.i.if.then197.i_crit_edge ], [ 0, %do.end.i273.if.then197.i_crit_edge ], [ 0, %sw.bb143.i ], [ 0, %sw.bb139.i ], [ 0, %sw.bb.i303 ]
  %index.1554.i = phi i32 [ %322, %rs_tpc_perform.exit.if.then197.i_crit_edge ], [ %513, %lq_update.thread562.i ], [ %and114.i, %sw.bb.i.if.then197.i_crit_edge ], [ %381, %sw.bb175.i.if.then197.i_crit_edge ], [ %322, %do.end.i273.if.then197.i_crit_edge ], [ %322, %sw.bb143.i ], [ %322, %sw.bb139.i ], [ %322, %sw.bb.i303 ]
  %517 = ptrtoint ptr %tbl.1556.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %index.1554.i, ptr %tbl.1556.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  %518 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap1.i.i.i, i32 0, i32 1
  %cap.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %519 = ptrtoint ptr %cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %cap.i.i.i, align 4
  %521 = call i32 @llvm.bswap.i32(i32 %520) #15
  %522 = ptrtoint ptr %vht_cap1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %521, ptr %vht_cap1.i.i.i, align 4
  %vht_mcs.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %523 = ptrtoint ptr %vht_mcs.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %523, i32 8)
  %524 = load i64, ptr %vht_mcs.i.i.i, align 4
  %525 = ptrtoint ptr %518 to i32
  call void @__asan_storeN_noabort(i32 %525, i32 8)
  store i64 %524, ptr %518, align 4
  %bandwidth.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %526 = ptrtoint ptr %bandwidth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %bandwidth.i.i.i, align 4
  %528 = zext i32 %527 to i64
  call void @__sanitizer_cov_trace_switch(i64 %528, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %527, label %if.then197.i.rs_bw_from_sta_bw.exit.thread.i.i_crit_edge [
    i32 3, label %sw.bb.i.i.i
    i32 2, label %if.then197.i.if.end.i505.i_crit_edge
  ]

if.then197.i.if.end.i505.i_crit_edge:             ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i505.i

if.then197.i.rs_bw_from_sta_bw.exit.thread.i.i_crit_edge: ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_bw_from_sta_bw.exit.thread.i.i

sw.bb.i.i.i:                                      ; preds = %if.then197.i
  %rx_nss.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %529 = ptrtoint ptr %rx_nss.i.i.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %rx_nss.i.i.i, align 1
  %conv.i.i.i = zext i8 %530 to i32
  %call.i.i.i = call i32 @ieee80211_get_vht_max_nss(ptr noundef nonnull %vht_cap1.i.i.i, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true, i32 noundef %conv.i.i.i) #15
  %531 = ptrtoint ptr %rx_nss.i.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %rx_nss.i.i.i, align 1
  %conv3.i.i.i = zext i8 %532 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %conv3.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, %conv3.i.i.i
  br i1 %cmp.i.i.i, label %sw.bb.i.i.i.if.end.i505.i_crit_edge, label %sw.bb.i.i.i.rs_bw_from_sta_bw.exit.thread.i.i_crit_edge

sw.bb.i.i.i.rs_bw_from_sta_bw.exit.thread.i.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_bw_from_sta_bw.exit.thread.i.i

sw.bb.i.i.i.if.end.i505.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i505.i

rs_bw_from_sta_bw.exit.thread.i.i:                ; preds = %sw.bb.i.i.i.rs_bw_from_sta_bw.exit.thread.i.i_crit_edge, %if.then197.i.rs_bw_from_sta_bw.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  br label %rs_tweak_rate_tbl.exit.i

if.end.i505.i:                                    ; preds = %sw.bb.i.i.i.if.end.i505.i_crit_edge, %if.then197.i.if.end.i505.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  %type.i503.i = getelementptr inbounds %struct.rs_rate, ptr %tbl.1556.i, i32 0, i32 1
  %533 = ptrtoint ptr %type.i503.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %type.i503.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %534)
  %cmp1.i504.i = icmp eq i32 %534, 5
  br i1 %cmp1.i504.i, label %if.end3.i.i, label %if.end.i505.i.rs_tweak_rate_tbl.exit.i_crit_edge

if.end.i505.i.rs_tweak_rate_tbl.exit.i_crit_edge: ; preds = %if.end.i505.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tweak_rate_tbl.exit.i

if.end3.i.i:                                      ; preds = %if.end.i505.i
  %bw.i506.i = getelementptr inbounds %struct.rs_rate, ptr %tbl.1556.i, i32 0, i32 3
  %535 = ptrtoint ptr %bw.i506.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %bw.i506.i, align 4
  %537 = zext i32 %536 to i64
  call void @__sanitizer_cov_trace_switch(i64 %537, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %536, label %if.end3.i.i.rs_tweak_rate_tbl.exit.i_crit_edge [
    i32 4096, label %land.lhs.true.i508.i
    i32 0, label %land.lhs.true21.i.i
  ]

if.end3.i.i.rs_tweak_rate_tbl.exit.i_crit_edge:   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tweak_rate_tbl.exit.i

land.lhs.true.i508.i:                             ; preds = %if.end3.i.i
  %538 = ptrtoint ptr %tbl.1556.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %tbl.1556.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %539)
  %cmp7.i.i = icmp eq i32 %539, 4
  %or.cond.i507.i = and i1 %cmp9.i.i, %cmp7.i.i
  br i1 %or.cond.i507.i, label %land.lhs.true.i508.i.tweaked.i.i_crit_edge, label %land.lhs.true.i508.i.rs_tweak_rate_tbl.exit.i_crit_edge

land.lhs.true.i508.i.rs_tweak_rate_tbl.exit.i_crit_edge: ; preds = %land.lhs.true.i508.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tweak_rate_tbl.exit.i

land.lhs.true.i508.i.tweaked.i.i_crit_edge:       ; preds = %land.lhs.true.i508.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tweaked.i.i

land.lhs.true21.i.i:                              ; preds = %if.end3.i.i
  %540 = ptrtoint ptr %tbl.1556.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %tbl.1556.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %541)
  %cmp24.i509.i = icmp eq i32 %541, 10
  %or.cond1.i.i = and i1 %cmp26.i.i, %cmp24.i509.i
  br i1 %or.cond1.i.i, label %land.lhs.true21.i.i.tweaked.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true21.i.i.tweaked.i.i_crit_edge:        ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tweaked.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %541)
  %cmp29.i.i = icmp sgt i32 %541, 10
  %or.cond2.i.i = and i1 %cmp31.i.i, %cmp29.i.i
  br i1 %or.cond2.i.i, label %lor.lhs.false.i.i.tweaked.i.i_crit_edge, label %lor.lhs.false.i.i.rs_tweak_rate_tbl.exit.i_crit_edge

lor.lhs.false.i.i.rs_tweak_rate_tbl.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tweak_rate_tbl.exit.i

lor.lhs.false.i.i.tweaked.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tweaked.i.i

tweaked.i.i:                                      ; preds = %lor.lhs.false.i.i.tweaked.i.i_crit_edge, %land.lhs.true21.i.i.tweaked.i.i_crit_edge, %land.lhs.true.i508.i.tweaked.i.i_crit_edge
  %scale_action.0538.i = phi i32 [ -1, %land.lhs.true.i508.i.tweaked.i.i_crit_edge ], [ 1, %lor.lhs.false.i.i.tweaked.i.i_crit_edge ], [ 0, %land.lhs.true21.i.i.tweaked.i.i_crit_edge ]
  %.sink8.i.i = phi i32 [ 0, %land.lhs.true.i508.i.tweaked.i.i_crit_edge ], [ 4096, %lor.lhs.false.i.i.tweaked.i.i_crit_edge ], [ 4096, %land.lhs.true21.i.i.tweaked.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 9, %land.lhs.true.i508.i.tweaked.i.i_crit_edge ], [ 6, %lor.lhs.false.i.i.tweaked.i.i_crit_edge ], [ 6, %land.lhs.true21.i.i.tweaked.i.i_crit_edge ]
  %.str.135.sink.i.i = phi ptr [ @.str.134, %land.lhs.true.i508.i.tweaked.i.i_crit_edge ], [ @.str.135, %lor.lhs.false.i.i.tweaked.i.i_crit_edge ], [ @.str.135, %land.lhs.true21.i.i.tweaked.i.i_crit_edge ]
  %542 = ptrtoint ptr %bw.i506.i to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 %.sink8.i.i, ptr %bw.i506.i, align 4
  %543 = ptrtoint ptr %tbl.1556.i to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 %.sink.i.i, ptr %tbl.1556.i, align 8
  %544 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %545, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tweak_rate_tbl, ptr noundef nonnull %.str.135.sink.i.i) #15
  %column2.i.i.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 1
  %546 = ptrtoint ptr %column2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %column2.i.i.i, align 4
  %arrayidx.i.i510.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %547
  %548 = ptrtoint ptr %bw.i506.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %bw.i506.i, align 4
  %call.i3.i.i = call fastcc ptr @rs_get_expected_tpt_table(ptr noundef %lq_sta5.i, ptr noundef %arrayidx.i.i510.i, i32 noundef %549) #15
  %expected_tpt.i.i.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 2
  %550 = ptrtoint ptr %expected_tpt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr %call.i3.i.i, ptr %expected_tpt.i.i.i, align 8
  %551 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %552, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_clear_tbl_windows, ptr noundef nonnull @.str.79) #15
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %tweaked.i.i
  %i.021.i.i.i = phi i32 [ 0, %tweaked.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i4.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 3, i32 %i.021.i.i.i
  %553 = ptrtoint ptr %arrayidx.i4.i.i to i32
  call void @__asan_store8_noabort(i32 %553)
  store i64 0, ptr %arrayidx.i4.i.i, align 8
  %success_counter.i.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 3, i32 %i.021.i.i.i, i32 1
  %554 = ptrtoint ptr %success_counter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 0, ptr %success_counter.i.i.i.i, align 8
  %success_ratio.i.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 3, i32 %i.021.i.i.i, i32 2
  %555 = ptrtoint ptr %success_ratio.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 -1, ptr %success_ratio.i.i.i.i, align 4
  %counter.i.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 3, i32 %i.021.i.i.i, i32 3
  %556 = ptrtoint ptr %counter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 0, ptr %counter.i.i.i.i, align 8
  %average_tpt.i.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 3, i32 %i.021.i.i.i, i32 4
  %557 = ptrtoint ptr %average_tpt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 -1, ptr %average_tpt.i.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.021.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 17
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.body6.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.body.i.i.i.for.body6.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  br label %for.body6.i.i.i

for.body6.i.i.i:                                  ; preds = %for.body6.i.i.i.for.body6.i.i.i_crit_edge, %for.body.i.i.i.for.body6.i.i.i_crit_edge
  %i.122.i.i.i = phi i32 [ %inc9.i.i.i, %for.body6.i.i.i.for.body6.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.for.body6.i.i.i_crit_edge ]
  %arrayidx7.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 4, i32 %i.122.i.i.i
  %558 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %558)
  store i64 0, ptr %arrayidx7.i.i.i, align 8
  %success_counter.i17.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 4, i32 %i.122.i.i.i, i32 1
  %559 = ptrtoint ptr %success_counter.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 0, ptr %success_counter.i17.i.i.i, align 8
  %success_ratio.i18.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 4, i32 %i.122.i.i.i, i32 2
  %560 = ptrtoint ptr %success_ratio.i18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 -1, ptr %success_ratio.i18.i.i.i, align 4
  %counter.i19.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 4, i32 %i.122.i.i.i, i32 3
  %561 = ptrtoint ptr %counter.i19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 0, ptr %counter.i19.i.i.i, align 8
  %average_tpt.i20.i.i.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl.1556.i, i32 0, i32 4, i32 %i.122.i.i.i, i32 4
  %562 = ptrtoint ptr %average_tpt.i20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 -1, ptr %average_tpt.i20.i.i.i, align 4
  %inc9.i.i.i = add nuw nsw i32 %i.122.i.i.i, 1
  %exitcond23.not.i.i.i = icmp eq i32 %inc9.i.i.i, 16
  br i1 %exitcond23.not.i.i.i, label %for.body6.i.i.i.rs_tweak_rate_tbl.exit.i_crit_edge, label %for.body6.i.i.i.for.body6.i.i.i_crit_edge

for.body6.i.i.i.for.body6.i.i.i_crit_edge:        ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i.i.i

for.body6.i.i.i.rs_tweak_rate_tbl.exit.i_crit_edge: ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_tweak_rate_tbl.exit.i

rs_tweak_rate_tbl.exit.i:                         ; preds = %for.body6.i.i.i.rs_tweak_rate_tbl.exit.i_crit_edge, %lor.lhs.false.i.i.rs_tweak_rate_tbl.exit.i_crit_edge, %land.lhs.true.i508.i.rs_tweak_rate_tbl.exit.i_crit_edge, %if.end3.i.i.rs_tweak_rate_tbl.exit.i_crit_edge, %if.end.i505.i.rs_tweak_rate_tbl.exit.i_crit_edge, %rs_bw_from_sta_bw.exit.thread.i.i
  %scale_action.0537.i = phi i32 [ %scale_action.0555.i, %rs_bw_from_sta_bw.exit.thread.i.i ], [ %scale_action.0555.i, %if.end.i505.i.rs_tweak_rate_tbl.exit.i_crit_edge ], [ %scale_action.0555.i, %if.end3.i.i.rs_tweak_rate_tbl.exit.i_crit_edge ], [ %scale_action.0555.i, %land.lhs.true.i508.i.rs_tweak_rate_tbl.exit.i_crit_edge ], [ %scale_action.0555.i, %lor.lhs.false.i.i.rs_tweak_rate_tbl.exit.i_crit_edge ], [ %scale_action.0538.i, %for.body6.i.i.i.rs_tweak_rate_tbl.exit.i_crit_edge ]
  %call1.i.i = call zeroext i16 @rs_fw_get_max_amsdu_len(ptr noundef %sta) #15
  %max_amsdu_len.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 21
  %563 = ptrtoint ptr %max_amsdu_len.i.i to i32
  call void @__asan_store2_noabort(i32 %563)
  store i16 %call1.i.i, ptr %max_amsdu_len.i.i, align 4
  %type.i511.i = getelementptr inbounds %struct.rs_rate, ptr %tbl.1556.i, i32 0, i32 1
  %564 = ptrtoint ptr %type.i511.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %type.i511.i, align 4
  %.off.i512.i = add i32 %565, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i512.i)
  %switch.i513.i = icmp ult i32 %.off.i512.i, 4
  br i1 %switch.i513.i, label %lor.lhs.false12.i.i, label %rs_tweak_rate_tbl.exit.i.if.end.i515.i_crit_edge

rs_tweak_rate_tbl.exit.i.if.end.i515.i_crit_edge: ; preds = %rs_tweak_rate_tbl.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i515.i

lor.lhs.false12.i.i:                              ; preds = %rs_tweak_rate_tbl.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %566 = ptrtoint ptr %tbl.1556.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %tbl.1556.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %567)
  %cmp14.i.i = icmp sgt i32 %567, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %scale_action.0537.i)
  %cmp16.i.i = icmp ne i32 %scale_action.0537.i, -1
  %not.or.cond.i.i = and i1 %cmp16.i.i, %cmp14.i.i
  %spec.select.i.i = sext i1 %not.or.cond.i.i to i16
  br label %if.end.i515.i

if.end.i515.i:                                    ; preds = %lor.lhs.false12.i.i, %rs_tweak_rate_tbl.exit.i.if.end.i515.i_crit_edge
  %.sink.i514.i = phi i16 [ 0, %rs_tweak_rate_tbl.exit.i.if.end.i515.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false12.i.i ]
  %amsdu_enabled17.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 18
  %568 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 %.sink.i514.i, ptr %amsdu_enabled17.i.i, align 4
  %vif.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %569 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %vif.i.i, align 8
  %he_support.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %570, i32 0, i32 1, i32 5
  %571 = ptrtoint ptr %he_support.i.i to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %he_support.i.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool.not.i.i18 = icmp eq i8 %572, 0
  br i1 %tobool.not.i.i18, label %if.end.i515.i.if.else23.i.i_crit_edge, label %land.lhs.true18.i.i

if.end.i515.i.if.else23.i.i_crit_edge:            ; preds = %if.end.i515.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else23.i.i

land.lhs.true18.i.i:                              ; preds = %if.end.i515.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12) to i32))
  %573 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12), align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %573)
  %tobool19.not.i.i = icmp eq i8 %573, 0
  br i1 %tobool19.not.i.i, label %land.lhs.true18.i.i.if.end29.i.i_crit_edge, label %land.lhs.true18.i.i.if.else23.i.i_crit_edge

land.lhs.true18.i.i.if.else23.i.i_crit_edge:      ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else23.i.i

land.lhs.true18.i.i.if.end29.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

if.else23.i.i:                                    ; preds = %land.lhs.true18.i.i.if.else23.i.i_crit_edge, %if.end.i515.i.if.else23.i.i_crit_edge
  %574 = call i16 @llvm.umin.i16(i16 %call1.i.i, i16 8500) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else23.i.i, %land.lhs.true18.i.i.if.end29.i.i_crit_edge
  %.sink88.i.i = phi i16 [ %574, %if.else23.i.i ], [ %call1.i.i, %land.lhs.true18.i.i.if.end29.i.i_crit_edge ]
  %max_amsdu_len28.i.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 21
  %575 = ptrtoint ptr %max_amsdu_len28.i.i to i32
  call void @__asan_store2_noabort(i32 %575)
  store i16 %.sink88.i.i, ptr %max_amsdu_len28.i.i, align 2
  %max_rc_amsdu_len.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 24
  %576 = ptrtoint ptr %max_rc_amsdu_len.i.i to i32
  call void @__asan_store2_noabort(i32 %576)
  store i16 %.sink88.i.i, ptr %max_rc_amsdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.sink.i514.i)
  %tobool34.not.i.i = icmp eq i16 %.sink.i514.i, 0
  br i1 %tobool34.not.i.i, label %for.inc.thread.i.i, label %for.inc.i.i

for.inc.thread.i.i:                               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %577 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 0
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_store2_noabort(i32 %578)
  store i16 1, ptr %577, align 2
  br label %for.inc.1.thread.i.i

for.inc.i.i:                                      ; preds = %if.end29.i.i
  %call36.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 0) #15
  %conv37.i.i = trunc i32 %call36.i.i to i16
  %579 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_load2_noabort(i32 %579)
  %.pr.i.i = load i16, ptr %amsdu_enabled17.i.i, align 4
  %580 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 0
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_store2_noabort(i32 %581)
  store i16 %conv37.i.i, ptr %580, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i.i)
  %tobool34.not.1.i.i = icmp eq i16 %.pr.i.i, 0
  br i1 %tobool34.not.1.i.i, label %for.inc.i.i.for.inc.1.thread.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.for.inc.1.thread.i.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.thread.i.i

for.inc.1.thread.i.i:                             ; preds = %for.inc.i.i.for.inc.1.thread.i.i_crit_edge, %for.inc.thread.i.i
  %582 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 1
  %583 = ptrtoint ptr %582 to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 1, ptr %582, align 2
  br label %for.inc.2.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %call36.1.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 1) #15
  %conv37.1.i.i = trunc i32 %call36.1.i.i to i16
  %584 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_load2_noabort(i32 %584)
  %.pr70.i.i = load i16, ptr %amsdu_enabled17.i.i, align 4
  %585 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 1
  %586 = ptrtoint ptr %585 to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %conv37.1.i.i, ptr %585, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr70.i.i)
  %tobool34.not.2.i.i = icmp eq i16 %.pr70.i.i, 0
  br i1 %tobool34.not.2.i.i, label %for.inc.2.thread.i.i, label %if.then35.2.i.i

for.inc.2.thread.i.i:                             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %587 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 2
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_store2_noabort(i32 %588)
  store i16 1, ptr %587, align 2
  br label %for.inc.3.i.i

if.then35.2.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call36.2.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 2) #15
  %conv37.2.i.i = trunc i32 %call36.2.i.i to i16
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then35.2.i.i, %for.inc.1.thread.i.i
  %conv37.2.sink.ph.i.i = phi i16 [ 1, %for.inc.1.thread.i.i ], [ %conv37.2.i.i, %if.then35.2.i.i ]
  %589 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_load2_noabort(i32 %589)
  %.pr73.i.i = load i16, ptr %amsdu_enabled17.i.i, align 4
  %590 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 2
  %591 = ptrtoint ptr %590 to i32
  call void @__asan_store2_noabort(i32 %591)
  store i16 %conv37.2.sink.ph.i.i, ptr %590, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr73.i.i)
  %tobool34.not.3.i.i = icmp eq i16 %.pr73.i.i, 0
  br i1 %tobool34.not.3.i.i, label %for.inc.3.thread.i.i, label %if.then35.3.i.i

for.inc.3.thread.i.i:                             ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %592 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 3
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_store2_noabort(i32 %593)
  store i16 1, ptr %592, align 2
  br label %for.inc.4.i.i

if.then35.3.i.i:                                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call36.3.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 3) #15
  %conv37.3.i.i = trunc i32 %call36.3.i.i to i16
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then35.3.i.i, %for.inc.2.thread.i.i
  %conv37.3.sink.ph.i.i = phi i16 [ 1, %for.inc.2.thread.i.i ], [ %conv37.3.i.i, %if.then35.3.i.i ]
  %594 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_load2_noabort(i32 %594)
  %.pr76.i.i = load i16, ptr %amsdu_enabled17.i.i, align 4
  %595 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 3
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_store2_noabort(i32 %596)
  store i16 %conv37.3.sink.ph.i.i, ptr %595, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr76.i.i)
  %tobool34.not.4.i.i = icmp eq i16 %.pr76.i.i, 0
  br i1 %tobool34.not.4.i.i, label %for.inc.4.thread.i.i, label %if.then35.4.i.i

for.inc.4.thread.i.i:                             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %597 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 4
  %598 = ptrtoint ptr %597 to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 1, ptr %597, align 2
  br label %for.inc.5.i.i

if.then35.4.i.i:                                  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call36.4.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 4) #15
  %conv37.4.i.i = trunc i32 %call36.4.i.i to i16
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then35.4.i.i, %for.inc.3.thread.i.i
  %conv37.4.sink.ph.i.i = phi i16 [ 1, %for.inc.3.thread.i.i ], [ %conv37.4.i.i, %if.then35.4.i.i ]
  %599 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_load2_noabort(i32 %599)
  %.pr79.i.i = load i16, ptr %amsdu_enabled17.i.i, align 4
  %600 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 4
  %601 = ptrtoint ptr %600 to i32
  call void @__asan_store2_noabort(i32 %601)
  store i16 %conv37.4.sink.ph.i.i, ptr %600, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr79.i.i)
  %tobool34.not.5.i.i = icmp eq i16 %.pr79.i.i, 0
  br i1 %tobool34.not.5.i.i, label %for.inc.5.thread.i.i, label %if.then35.5.i.i

for.inc.5.thread.i.i:                             ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %602 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 5
  %603 = ptrtoint ptr %602 to i32
  call void @__asan_store2_noabort(i32 %603)
  store i16 1, ptr %602, align 2
  br label %for.inc.6.i.i

if.then35.5.i.i:                                  ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call36.5.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 5) #15
  %conv37.5.i.i = trunc i32 %call36.5.i.i to i16
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.then35.5.i.i, %for.inc.4.thread.i.i
  %conv37.5.sink.ph.i.i = phi i16 [ 1, %for.inc.4.thread.i.i ], [ %conv37.5.i.i, %if.then35.5.i.i ]
  %604 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_load2_noabort(i32 %604)
  %.pr82.i.i = load i16, ptr %amsdu_enabled17.i.i, align 4
  %605 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 5
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store2_noabort(i32 %606)
  store i16 %conv37.5.sink.ph.i.i, ptr %605, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr82.i.i)
  %tobool34.not.6.i.i = icmp eq i16 %.pr82.i.i, 0
  br i1 %tobool34.not.6.i.i, label %for.inc.6.thread.i.i, label %if.then35.6.i.i

for.inc.6.thread.i.i:                             ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %607 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 6
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_store2_noabort(i32 %608)
  store i16 1, ptr %607, align 2
  br label %rs_set_amsdu_len.exit.i

if.then35.6.i.i:                                  ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call36.6.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 6) #15
  %conv37.6.i.i = trunc i32 %call36.6.i.i to i16
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.then35.6.i.i, %for.inc.5.thread.i.i
  %conv37.6.sink.ph.i.i = phi i16 [ 1, %for.inc.5.thread.i.i ], [ %conv37.6.i.i, %if.then35.6.i.i ]
  %609 = ptrtoint ptr %amsdu_enabled17.i.i to i32
  call void @__asan_load2_noabort(i32 %609)
  %.pr85.i.i = load i16, ptr %amsdu_enabled17.i.i, align 4
  %610 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 6
  %611 = ptrtoint ptr %610 to i32
  call void @__asan_store2_noabort(i32 %611)
  store i16 %conv37.6.sink.ph.i.i, ptr %610, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr85.i.i)
  %tobool34.not.7.i.i = icmp eq i16 %.pr85.i.i, 0
  br i1 %tobool34.not.7.i.i, label %for.inc.6.i.i.rs_set_amsdu_len.exit.i_crit_edge, label %if.then35.7.i.i

for.inc.6.i.i.rs_set_amsdu_len.exit.i_crit_edge:  ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_set_amsdu_len.exit.i

if.then35.7.i.i:                                  ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call36.7.i.i = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef %sta, i32 noundef 7) #15
  %conv37.7.i.i = trunc i32 %call36.7.i.i to i16
  br label %rs_set_amsdu_len.exit.i

rs_set_amsdu_len.exit.i:                          ; preds = %if.then35.7.i.i, %for.inc.6.i.i.rs_set_amsdu_len.exit.i_crit_edge, %for.inc.6.thread.i.i
  %conv37.7.sink.i.i = phi i16 [ %conv37.7.i.i, %if.then35.7.i.i ], [ 1, %for.inc.6.thread.i.i ], [ 1, %for.inc.6.i.i.rs_set_amsdu_len.exit.i_crit_edge ]
  %612 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 25, i32 7
  %613 = ptrtoint ptr %612 to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 %conv37.7.sink.i.i, ptr %612, align 2
  call fastcc void @rs_fill_lq_cmd(ptr noundef %mvm, ptr noundef %sta, ptr noundef %lq_sta5.i, ptr noundef %tbl.1556.i) #15
  %call.i517.i = call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq.i) #15
  call fastcc void @rs_stay_in_table(ptr noundef %lq_sta5.i, i1 noundef zeroext false) #15
  br label %if.end259.i

land.lhs.true205.i:                               ; preds = %rs_tpc_perform.exit.land.lhs.true205.i_crit_edge, %if.end135.i.land.lhs.true205.i_crit_edge, %do.end130.i, %do.end.i273.land.lhs.true205.i_crit_edge, %sw.bb188.i.land.lhs.true205.i_crit_edge, %do.end183.i, %do.end170.i16, %if.end162.i.land.lhs.true205.i_crit_edge, %do.end158.i
  call fastcc void @rs_stay_in_table(ptr noundef %lq_sta5.i, i1 noundef zeroext false) #15
  %rs_state206.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 1
  %614 = ptrtoint ptr %rs_state206.i to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %rs_state206.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %615)
  %cmp208.i = icmp eq i8 %615, 0
  br i1 %cmp208.i, label %land.lhs.true210.i, label %land.lhs.true205.i.if.end259.i_crit_edge

land.lhs.true205.i.if.end259.i_crit_edge:         ; preds = %land.lhs.true205.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259.i

land.lhs.true210.i:                               ; preds = %land.lhs.true205.i
  %616 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %counter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %617)
  %tobool212.not.i = icmp eq i32 %617, 0
  br i1 %tobool212.not.i, label %land.lhs.true210.i.if.end259.i_crit_edge, label %if.then213.i

land.lhs.true210.i.if.end259.i_crit_edge:         ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259.i

if.then213.i:                                     ; preds = %land.lhs.true210.i
  %last_tpt214.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 16
  %618 = ptrtoint ptr %last_tpt214.i to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 %385, ptr %last_tpt214.i, align 4
  %619 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %620, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.90, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %617) #15
  %column.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i, i32 1
  %621 = ptrtoint ptr %column.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %column.i, align 4
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %623 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i236 = icmp eq ptr %624, null
  br i1 %tobool.not.i.i236, label %if.then213.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i237

if.then213.i.cond.false.i.i_crit_edge:            ; preds = %if.then213.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i

land.lhs.true.i.i237:                             ; preds = %if.then213.i
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %624, i32 0, i32 20
  %625 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %626)
  %tobool2.not.i.i = icmp eq i8 %626, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i237.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i237.cond.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i237
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i237
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %627 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %fw.i.i, align 8
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %628, i32 0, i32 15
  %629 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i238 = and i8 %630, %626
  br label %iwl_mvm_get_valid_tx_ant.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i237.cond.false.i.i_crit_edge, %if.then213.i.cond.false.i.i_crit_edge
  %fw8.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %631 = ptrtoint ptr %fw8.i.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %fw8.i.i, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %632, i32 0, i32 15
  %633 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i

iwl_mvm_get_valid_tx_ant.exit.i:                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i239 = phi i8 [ %and.i.i238, %cond.true.i.i ], [ %634, %cond.false.i.i ]
  %visited_columns.i240 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 11
  %conv.i241 = zext i8 %cond.i.i239 to i32
  %635 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap1.i.i235, i32 0, i32 1
  %cap.i.i243 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %vht_mcs.i.i244 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %bandwidth.i.i245 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %rx_nss.i.i246 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %max_mimo2_rate_idx.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 23
  %max_siso_rate_idx.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 22
  %max_legacy_rate_idx.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 4
  br label %for.body.i247

for.body.i247:                                    ; preds = %for.inc128.i.for.body.i247_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.i
  %i.0203.i = phi i32 [ 0, %iwl_mvm_get_valid_tx_ant.exit.i ], [ %inc129.i, %for.inc128.i.for.body.i247_crit_edge ]
  %arrayidx1.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %622, i32 3, i32 %i.0203.i
  %636 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %637)
  %cmp2.i = icmp eq i32 %637, 9
  br i1 %cmp2.i, label %for.body.i247.for.inc128.i_crit_edge, label %if.end.i251

for.body.i247.for.inc128.i_crit_edge:             ; preds = %for.body.i247
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc128.i

if.end.i251:                                      ; preds = %for.body.i247
  %638 = ptrtoint ptr %visited_columns.i240 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %visited_columns.i240, align 8
  %shl.i248 = shl nuw i32 1, %637
  %and.i249 = and i32 %639, %shl.i248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i250 = icmp eq i32 %and.i249, 0
  br i1 %tobool.not.i250, label %if.end7.i, label %do.end.i252

do.end.i252:                                      ; preds = %if.end.i251
  call void @__sanitizer_cov_trace_pc() #17
  %640 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %641, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_next_column, ptr noundef nonnull @.str.136, i32 noundef %637) #15
  br label %for.inc128.i

if.end7.i:                                        ; preds = %if.end.i251
  %arrayidx8.i253 = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %637
  %ant.i254 = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %637, i32 1
  %642 = ptrtoint ptr %ant.i254 to i32
  call void @__asan_load1_noabort(i32 %642)
  %643 = load i8, ptr %ant.i254, align 4
  %and6.i.i = and i8 %643, %cond.i.i239
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %643)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %643
  br i1 %cmp.i.not.i, label %land.lhs.true.i255, label %do.end15.i

do.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %644 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %mvm, align 8
  %conv18.i = zext i8 %643 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %645, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_next_column, ptr noundef nonnull @.str.137, i32 noundef %637, i32 noundef %conv.i241, i32 noundef %conv18.i) #15
  br label %for.inc128.i

land.lhs.true.i255:                               ; preds = %if.end7.i
  %arrayidx26.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %637, i32 4, i32 0
  %646 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %arrayidx26.i, align 4
  %call28.i = call zeroext i1 %647(ptr noundef %mvm, ptr noundef %sta, ptr noundef %arrayidx.i, ptr noundef %arrayidx8.i253) #15
  br i1 %call28.i, label %for.inc.i256, label %land.lhs.true.i255.do.end37.i_crit_edge

land.lhs.true.i255.do.end37.i_crit_edge:          ; preds = %land.lhs.true.i255
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37.i

for.inc.i256:                                     ; preds = %land.lhs.true.i255
  %648 = and i32 %637, 268435455
  %649 = lshr i32 67, %648
  %650 = and i32 %649, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %650)
  %tobool27.not.1.not.i = icmp eq i32 %650, 0
  br i1 %tobool27.not.1.not.i, label %land.lhs.true.1.i, label %for.inc.i256.for.inc.1.i_crit_edge

for.inc.i256.for.inc.1.i_crit_edge:               ; preds = %for.inc.i256
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i256
  %arrayidx26.1.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %637, i32 4, i32 1
  %651 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %arrayidx26.1.i, align 4
  %call28.1.i = call zeroext i1 %652(ptr noundef %mvm, ptr noundef %sta, ptr noundef %arrayidx.i, ptr noundef %arrayidx8.i253) #15
  br i1 %call28.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.do.end37.i_crit_edge

land.lhs.true.1.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37.i

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i256.for.inc.1.i_crit_edge
  %653 = add nsw i32 %648, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %653)
  %654 = icmp ult i32 %653, -2
  br i1 %654, label %for.inc.1.i.if.end41.i257_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.if.end41.i257_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i257

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx26.2.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %637, i32 4, i32 2
  %655 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %arrayidx26.2.i, align 4
  %call28.2.i = call zeroext i1 %656(ptr noundef %mvm, ptr noundef %sta, ptr noundef %arrayidx.i, ptr noundef %arrayidx8.i253) #15
  br i1 %call28.2.i, label %land.lhs.true.2.i.if.end41.i257_crit_edge, label %land.lhs.true.2.i.do.end37.i_crit_edge

land.lhs.true.2.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37.i

land.lhs.true.2.i.if.end41.i257_crit_edge:        ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i257

do.end37.i:                                       ; preds = %land.lhs.true.2.i.do.end37.i_crit_edge, %land.lhs.true.1.i.do.end37.i_crit_edge, %land.lhs.true.i255.do.end37.i_crit_edge
  %j.0200.lcssa.i = phi i32 [ 0, %land.lhs.true.i255.do.end37.i_crit_edge ], [ 1, %land.lhs.true.1.i.do.end37.i_crit_edge ], [ 2, %land.lhs.true.2.i.do.end37.i_crit_edge ]
  %657 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %658, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_next_column, ptr noundef nonnull @.str.138, i32 noundef %637, i32 noundef %j.0200.lcssa.i) #15
  br label %for.inc128.i

if.end41.i257:                                    ; preds = %land.lhs.true.2.i.if.end41.i257_crit_edge, %for.inc.1.i.if.end41.i257_crit_edge
  %659 = ptrtoint ptr %last_tpt214.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %last_tpt214.i, align 4
  %div.i = sdiv i32 %660, 100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vht_cap1.i.i235) #15
  %661 = ptrtoint ptr %cap.i.i243 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %cap.i.i243, align 4
  %663 = call i32 @llvm.bswap.i32(i32 %662) #15
  %664 = ptrtoint ptr %vht_cap1.i.i235 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 %663, ptr %vht_cap1.i.i235, align 4
  %665 = ptrtoint ptr %vht_mcs.i.i244 to i32
  call void @__asan_loadN_noabort(i32 %665, i32 8)
  %666 = load i64, ptr %vht_mcs.i.i244, align 4
  %667 = ptrtoint ptr %635 to i32
  call void @__asan_storeN_noabort(i32 %667, i32 8)
  store i64 %666, ptr %635, align 4
  %668 = ptrtoint ptr %bandwidth.i.i245 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %bandwidth.i.i245, align 4
  %670 = zext i32 %669 to i64
  call void @__sanitizer_cov_trace_switch(i64 %670, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %669, label %sw.default.i.i264 [
    i32 3, label %sw.bb.i.i262
    i32 2, label %if.end41.i257.if.end90.critedge.i_crit_edge
    i32 1, label %sw.bb6.i.i263
  ]

if.end41.i257.if.end90.critedge.i_crit_edge:      ; preds = %if.end41.i257
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90.critedge.i

sw.bb.i.i262:                                     ; preds = %if.end41.i257
  call void @__sanitizer_cov_trace_pc() #17
  %671 = ptrtoint ptr %rx_nss.i.i246 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %rx_nss.i.i246, align 1
  %conv.i.i258 = zext i8 %672 to i32
  %call.i.i259 = call i32 @ieee80211_get_vht_max_nss(ptr noundef nonnull %vht_cap1.i.i235, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true, i32 noundef %conv.i.i258) #15
  %673 = ptrtoint ptr %rx_nss.i.i246 to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %rx_nss.i.i246, align 1
  %conv3.i.i260 = zext i8 %674 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i259, i32 %conv3.i.i260)
  %cmp.i191.i = icmp slt i32 %call.i.i259, %conv3.i.i260
  %..i.i261 = select i1 %cmp.i191.i, i32 4096, i32 6144
  br label %if.end90.critedge.i

sw.bb6.i.i263:                                    ; preds = %if.end41.i257
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90.critedge.i

sw.default.i.i264:                                ; preds = %if.end41.i257
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90.critedge.i

if.end90.critedge.i:                              ; preds = %sw.default.i.i264, %sw.bb6.i.i263, %sw.bb.i.i262, %if.end41.i257.if.end90.critedge.i_crit_edge
  %retval.0.i.i265 = phi i32 [ 0, %sw.default.i.i264 ], [ 2048, %sw.bb6.i.i263 ], [ %..i.i261, %sw.bb.i.i262 ], [ 4096, %if.end41.i257.if.end90.critedge.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i235) #15
  %call44.i = call fastcc ptr @rs_get_expected_tpt_table(ptr noundef %lq_sta5.i, ptr noundef %arrayidx8.i253, i32 noundef %retval.0.i.i265) #15
  %675 = ptrtoint ptr %arrayidx8.i253 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %arrayidx8.i253, align 4
  %677 = zext i32 %676 to i64
  call void @__sanitizer_cov_trace_switch(i64 %677, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %676, label %land.end.i.i266 [
    i32 1, label %if.end90.critedge.i.rs_get_max_allowed_rate.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb3.i.i
  ]

if.end90.critedge.i.rs_get_max_allowed_rate.exit.i_crit_edge: ; preds = %if.end90.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_max_allowed_rate.exit.i

sw.bb1.i.i:                                       ; preds = %if.end90.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_max_allowed_rate.exit.i

sw.bb3.i.i:                                       ; preds = %if.end90.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_max_allowed_rate.exit.i

land.end.i.i266:                                  ; preds = %if.end90.critedge.i
  %.b45.i.i = load i1, ptr @rs_get_max_allowed_rate.__already_done, align 1
  br i1 %.b45.i.i, label %land.end.i.i266.rs_get_max_allowed_rate.exit.i_crit_edge, label %if.then.i.i267, !prof !618

land.end.i.i266.rs_get_max_allowed_rate.exit.i_crit_edge: ; preds = %land.end.i.i266
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_max_allowed_rate.exit.i

if.then.i.i267:                                   ; preds = %land.end.i.i266
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_max_allowed_rate.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1231, i32 noundef 9, ptr noundef null) #15
  br label %rs_get_max_allowed_rate.exit.i

rs_get_max_allowed_rate.exit.i:                   ; preds = %if.then.i.i267, %land.end.i.i266.rs_get_max_allowed_rate.exit.i_crit_edge, %sw.bb3.i.i, %sw.bb1.i.i, %if.end90.critedge.i.rs_get_max_allowed_rate.exit.i_crit_edge
  %retval.0.in.in.i.i = phi ptr [ %max_mimo2_rate_idx.i.i, %sw.bb3.i.i ], [ %max_siso_rate_idx.i.i, %sw.bb1.i.i ], [ %max_legacy_rate_idx.i.i, %if.end90.critedge.i.rs_get_max_allowed_rate.exit.i_crit_edge ], [ %max_legacy_rate_idx.i.i, %if.then.i.i267 ], [ %max_legacy_rate_idx.i.i, %land.end.i.i266.rs_get_max_allowed_rate.exit.i_crit_edge ]
  %678 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %678)
  %retval.0.in.i.i = load i8, ptr %retval.0.in.in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %retval.0.in.i.i)
  %cmp92.i = icmp eq i8 %retval.0.in.i.i, 17
  br i1 %cmp92.i, label %do.end98.i, label %if.end102.i

do.end98.i:                                       ; preds = %rs_get_max_allowed_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %679 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %680, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_next_column, ptr noundef nonnull @.str.139, i32 noundef %637) #15
  br label %for.inc128.i

if.end102.i:                                      ; preds = %rs_get_max_allowed_rate.exit.i
  %retval.0.i193.i = zext i8 %retval.0.in.i.i to i32
  %arrayidx103.i268 = getelementptr i16, ptr %call44.i, i32 %retval.0.i193.i
  %681 = ptrtoint ptr %arrayidx103.i268 to i32
  call void @__asan_load2_noabort(i32 %681)
  %682 = load i16, ptr %arrayidx103.i268, align 2
  %conv104.i = and i32 %div.i, 65535
  %conv105.i = zext i16 %682 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv104.i, i32 %conv105.i)
  %cmp106.not.i = icmp ult i32 %conv104.i, %conv105.i
  br i1 %cmp106.not.i, label %for.end130.i, label %do.end112.i

do.end112.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #17
  %683 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %684, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_next_column, ptr noundef nonnull @.str.140, i32 noundef %637, i32 noundef %conv105.i, i32 noundef %conv104.i) #15
  br label %for.inc128.i

for.inc128.i:                                     ; preds = %do.end112.i, %do.end98.i, %do.end37.i, %do.end15.i, %do.end.i252, %for.body.i247.for.inc128.i_crit_edge
  %inc129.i = add nuw nsw i32 %i.0203.i, 1
  %exitcond.not.i269 = icmp eq i32 %inc129.i, 7
  br i1 %exitcond.not.i269, label %for.inc128.i.do.end240.i_crit_edge, label %for.inc128.i.for.body.i247_crit_edge

for.inc128.i.for.body.i247_crit_edge:             ; preds = %for.inc128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i247

for.inc128.i.do.end240.i_crit_edge:               ; preds = %for.inc128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end240.i

for.end130.i:                                     ; preds = %if.end102.i
  %conv105.i.le = zext i16 %682 to i32
  %685 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %686, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_next_column, ptr noundef nonnull @.str.141, i32 noundef %637, i32 noundef %conv105.i.le, i32 noundef %conv104.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0203.i)
  %cmp131.i = icmp eq i32 %i.0203.i, 7
  br i1 %cmp131.i, label %for.end130.i.do.end240.i_crit_edge, label %if.then230.i

for.end130.i.do.end240.i_crit_edge:               ; preds = %for.end130.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end240.i

if.then230.i:                                     ; preds = %for.end130.i
  %687 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %lq_sta5.i, align 8
  %idxprom.i206 = zext i8 %688 to i32
  %arrayidx.i207 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i206
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  %idxprom3.i = zext i8 %690 to i32
  %arrayidx4.i208 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom3.i
  %column7.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i206, i32 1
  %691 = ptrtoint ptr %column7.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %column7.i, align 4
  %arrayidx8.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %692
  %693 = call ptr @memcpy(ptr %arrayidx4.i208, ptr %arrayidx.i207, i32 32)
  %694 = lshr i32 176, %648
  %sgi9.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = ptrtoint ptr %sgi9.i to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 %696, ptr %sgi9.i, align 4
  %698 = ptrtoint ptr %ant.i254 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %ant.i254, align 4
  %ant10.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 2
  %700 = ptrtoint ptr %ant10.i to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 %699, ptr %ant10.i, align 4
  %701 = ptrtoint ptr %arrayidx8.i253 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %arrayidx8.i253, align 4
  %703 = zext i32 %702 to i64
  call void @__sanitizer_cov_trace_switch(i64 %703, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %702, label %land.end.i217 [
    i32 1, label %if.then.i215
    i32 2, label %if.then17.i
    i32 3, label %if.then23.i
  ]

if.then.i215:                                     ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #17
  %band.i210 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28
  %704 = ptrtoint ptr %band.i210 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %band.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %705)
  %cmp11.i211 = icmp eq i32 %705, 1
  %spec.select.i212 = select i1 %cmp11.i211, i32 2, i32 1
  %706 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 1
  %707 = ptrtoint ptr %706 to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 %spec.select.i212, ptr %706, align 4
  %bw.i213 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 3
  %708 = ptrtoint ptr %bw.i213 to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 0, ptr %bw.i213, align 4
  %ldpc.i214 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 5
  %709 = ptrtoint ptr %ldpc.i214 to i32
  call void @__asan_store1_noabort(i32 %709)
  store i8 0, ptr %ldpc.i214, align 1
  %active_legacy_rate.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 1
  %710 = ptrtoint ptr %active_legacy_rate.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %active_legacy_rate.i, align 8
  br label %if.end76.i

if.then17.i:                                      ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #17
  %is_vht.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 27, i32 1
  %712 = ptrtoint ptr %is_vht.i to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %is_vht.i, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %713)
  %tobool18.not.i = icmp eq i8 %713, 0
  %cond.i216 = select i1 %tobool18.not.i, i32 3, i32 5
  %type19.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 1
  %714 = ptrtoint ptr %type19.i to i32
  call void @__asan_store4_noabort(i32 %714)
  store i32 %cond.i216, ptr %type19.i, align 4
  %active_siso_rate.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 2
  %715 = ptrtoint ptr %active_siso_rate.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %active_siso_rate.i, align 4
  br label %if.then69.i

if.then23.i:                                      ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #17
  %is_vht24.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 27, i32 1
  %717 = ptrtoint ptr %is_vht24.i to i32
  call void @__asan_load1_noabort(i32 %717)
  %718 = load i8, ptr %is_vht24.i, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %718)
  %tobool25.not.i = icmp eq i8 %718, 0
  %cond26.i = select i1 %tobool25.not.i, i32 4, i32 6
  %type27.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 1
  %719 = ptrtoint ptr %type27.i to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 %cond26.i, ptr %type27.i, align 4
  %active_mimo2_rate.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 3
  %720 = ptrtoint ptr %active_mimo2_rate.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %active_mimo2_rate.i, align 8
  br label %if.then69.i

land.end.i217:                                    ; preds = %if.then230.i
  %.b161.i = load i1, ptr @rs_switch_to_column.__already_done, align 1
  br i1 %.b161.i, label %land.end.i217.if.then69.i_crit_edge, label %if.then34.i218, !prof !618

land.end.i217.if.then69.i_crit_edge:              ; preds = %land.end.i217
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

if.then34.i218:                                   ; preds = %land.end.i217
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_switch_to_column.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1706, i32 noundef 9, ptr noundef nonnull @.str.142) #15
  br label %if.then69.i

if.then69.i:                                      ; preds = %if.then34.i218, %land.end.i217.if.then69.i_crit_edge, %if.then23.i, %if.then17.i
  %rate_mask.0.ph.i = phi i32 [ 0, %land.end.i217.if.then69.i_crit_edge ], [ 0, %if.then34.i218 ], [ %721, %if.then23.i ], [ %716, %if.then17.i ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vht_cap1.i.i) #15
  %722 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap1.i.i, i32 0, i32 1
  %723 = ptrtoint ptr %cap.i.i243 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %cap.i.i243, align 4
  %725 = call i32 @llvm.bswap.i32(i32 %724) #15
  %726 = ptrtoint ptr %vht_cap1.i.i to i32
  call void @__asan_store4_noabort(i32 %726)
  store i32 %725, ptr %vht_cap1.i.i, align 4
  %727 = ptrtoint ptr %vht_mcs.i.i244 to i32
  call void @__asan_loadN_noabort(i32 %727, i32 8)
  %728 = load i64, ptr %vht_mcs.i.i244, align 4
  %729 = ptrtoint ptr %722 to i32
  call void @__asan_storeN_noabort(i32 %729, i32 8)
  store i64 %728, ptr %722, align 4
  %730 = ptrtoint ptr %bandwidth.i.i245 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %bandwidth.i.i245, align 4
  %732 = zext i32 %731 to i64
  call void @__sanitizer_cov_trace_switch(i64 %732, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %731, label %sw.default.i.i [
    i32 3, label %sw.bb.i.i
    i32 2, label %if.then69.i.rs_bw_from_sta_bw.exit.i_crit_edge
    i32 1, label %sw.bb6.i.i
  ]

if.then69.i.rs_bw_from_sta_bw.exit.i_crit_edge:   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_bw_from_sta_bw.exit.i

sw.bb.i.i:                                        ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #17
  %733 = ptrtoint ptr %rx_nss.i.i246 to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %rx_nss.i.i246, align 1
  %conv.i.i219 = zext i8 %734 to i32
  %call.i.i220 = call i32 @ieee80211_get_vht_max_nss(ptr noundef nonnull %vht_cap1.i.i, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true, i32 noundef %conv.i.i219) #15
  %735 = ptrtoint ptr %rx_nss.i.i246 to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %rx_nss.i.i246, align 1
  %conv3.i.i = zext i8 %736 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i220, i32 %conv3.i.i)
  %cmp.i.i221 = icmp slt i32 %call.i.i220, %conv3.i.i
  %..i.i = select i1 %cmp.i.i221, i32 4096, i32 6144
  br label %rs_bw_from_sta_bw.exit.i

sw.bb6.i.i:                                       ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_bw_from_sta_bw.exit.i

sw.default.i.i:                                   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_bw_from_sta_bw.exit.i

rs_bw_from_sta_bw.exit.i:                         ; preds = %sw.default.i.i, %sw.bb6.i.i, %sw.bb.i.i, %if.then69.i.rs_bw_from_sta_bw.exit.i_crit_edge
  %retval.0.i.i222 = phi i32 [ 0, %sw.default.i.i ], [ 2048, %sw.bb6.i.i ], [ %..i.i, %sw.bb.i.i ], [ 4096, %if.then69.i.rs_bw_from_sta_bw.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i) #15
  %bw71.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 3
  %737 = ptrtoint ptr %bw71.i to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 %retval.0.i.i222, ptr %bw71.i, align 4
  %ldpc72.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 14
  %738 = ptrtoint ptr %ldpc72.i to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %ldpc72.i, align 1, !range !619
  %ldpc74.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 5
  %740 = ptrtoint ptr %ldpc74.i to i32
  call void @__asan_store1_noabort(i32 %740)
  store i8 %739, ptr %ldpc74.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %rs_bw_from_sta_bw.exit.i, %if.then.i215
  %rate_mask.0170.i = phi i32 [ %rate_mask.0.ph.i, %rs_bw_from_sta_bw.exit.i ], [ %711, %if.then.i215 ]
  %column77.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom3.i, i32 1
  %741 = ptrtoint ptr %column77.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 %637, ptr %column77.i, align 4
  %bw.i.i223 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 3
  %742 = ptrtoint ptr %bw.i.i223 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %bw.i.i223, align 4
  %call.i162.i = call fastcc ptr @rs_get_expected_tpt_table(ptr noundef %lq_sta5.i, ptr noundef %arrayidx8.i253, i32 noundef %743) #15
  %expected_tpt.i.i224 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom3.i, i32 2
  %744 = ptrtoint ptr %expected_tpt.i.i224 to i32
  call void @__asan_store4_noabort(i32 %744)
  store ptr %call.i162.i, ptr %expected_tpt.i.i224, align 8
  %745 = ptrtoint ptr %visited_columns.i240 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load i32, ptr %visited_columns.i240, align 8
  %or.i = or i32 %746, %shl.i248
  store i32 %or.i, ptr %visited_columns.i240, align 8
  %747 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %748, i32 %702)
  %cmp80.not.i = icmp eq i32 %748, %702
  br i1 %cmp80.not.i, label %if.end76.i.if.end245.thread.i_crit_edge, label %if.then81.i

if.end76.i.if.end245.thread.i_crit_edge:          ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end245.thread.i

if.then81.i:                                      ; preds = %if.end76.i
  %749 = ptrtoint ptr %arrayidx4.i208 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %arrayidx4.i208, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_mask.addr.i.i) #15
  %751 = ptrtoint ptr %rate_mask.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %751)
  store i32 %rate_mask.0170.i, ptr %rate_mask.addr.i.i, align 4
  %752 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %lq_sta5.i, align 8
  %idxprom.i.i = zext i8 %753 to i32
  %sext.i = shl i32 %750, 24
  %idxprom2.i.i = ashr exact i32 %sext.i, 24
  %success_ratio4.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i.i, i32 3, i32 %idxprom2.i.i, i32 2
  %754 = ptrtoint ptr %success_ratio4.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %success_ratio4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10879, i32 %755)
  %cmp.i163.i = icmp sgt i32 %755, 10879
  br i1 %cmp.i163.i, label %if.then.i.i227, label %if.else.i.i228

if.then.i.i227:                                   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #17
  %expected_tpt.i164.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom.i.i, i32 2
  %756 = ptrtoint ptr %expected_tpt.i164.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %expected_tpt.i164.i, align 8
  %arrayidx6.i.i = getelementptr i16, ptr %757, i32 %idxprom2.i.i
  %758 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load2_noabort(i32 %758)
  %759 = load i16, ptr %arrayidx6.i.i, align 2
  %conv.i165.i = zext i16 %759 to i32
  %mul.i.i226 = mul nuw nsw i32 %conv.i165.i, 100
  %760 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %761, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_best_rate, ptr noundef nonnull @.str.145, i32 noundef %755, i32 noundef %mul.i.i226) #15
  br label %if.end.i.i229

if.else.i.i228:                                   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #17
  %762 = ptrtoint ptr %last_tpt214.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load i32, ptr %last_tpt214.i, align 4
  %764 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %765, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_best_rate, ptr noundef nonnull @.str.146, i32 noundef %755, i32 noundef %763) #15
  br label %if.end.i.i229

if.end.i.i229:                                    ; preds = %if.else.i.i228, %if.then.i.i227
  %target_tpt.0.i.i = phi i32 [ %mul.i.i226, %if.then.i.i227 ], [ %763, %if.else.i.i228 ]
  %call.i166.i = call i32 @_find_first_bit_be(ptr noundef nonnull %rate_mask.addr.i.i, i32 noundef 32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call.i166.i)
  %cmp18.not65.i.i = icmp eq i32 %call.i166.i, 17
  br i1 %cmp18.not65.i.i, label %if.end.i.i229.rs_get_best_rate.exit.thread.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i229.rs_get_best_rate.exit.thread.i_crit_edge: ; preds = %if.end.i.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_best_rate.exit.thread.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i229
  %type.i.i230 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end26.i.i232.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %rate_idx.066.i.i = phi i32 [ %call.i166.i, %while.body.lr.ph.i.i ], [ %773, %if.end26.i.i232.while.body.i.i_crit_edge ]
  %arrayidx20.i.i = getelementptr i16, ptr %call.i162.i, i32 %rate_idx.066.i.i
  %766 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load2_noabort(i32 %766)
  %767 = load i16, ptr %arrayidx20.i.i, align 2
  %conv21.i.i = zext i16 %767 to i32
  %mul22.i.i = mul nuw nsw i32 %conv21.i.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %target_tpt.0.i.i, i32 %mul22.i.i)
  %cmp23.i.i = icmp ult i32 %target_tpt.0.i.i, %mul22.i.i
  br i1 %cmp23.i.i, label %rs_get_best_rate.exit.i, label %if.end26.i.i232

if.end26.i.i232:                                  ; preds = %while.body.i.i
  %conv27.i.i = trunc i32 %rate_idx.066.i.i to i8
  %768 = ptrtoint ptr %rate_mask.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %rate_mask.addr.i.i, align 4
  %conv28.i.i = trunc i32 %769 to i16
  %770 = ptrtoint ptr %type.i.i230 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %type.i.i230, align 4
  %call29.i.i231 = call fastcc zeroext i16 @rs_get_adjacent_rate(i8 noundef zeroext %conv27.i.i, i16 noundef zeroext %conv28.i.i, i32 noundef %771) #15
  %772 = lshr i16 %call29.i.i231, 8
  %773 = zext i16 %772 to i32
  %cmp18.not.i.i = icmp eq i16 %772, 17
  br i1 %cmp18.not.i.i, label %if.end26.i.i232.rs_get_best_rate.exit.thread.i_crit_edge, label %if.end26.i.i232.while.body.i.i_crit_edge

if.end26.i.i232.while.body.i.i_crit_edge:         ; preds = %if.end26.i.i232
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.end26.i.i232.rs_get_best_rate.exit.thread.i_crit_edge: ; preds = %if.end26.i.i232
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_best_rate.exit.thread.i

rs_get_best_rate.exit.thread.i:                   ; preds = %if.end26.i.i232.rs_get_best_rate.exit.thread.i_crit_edge, %if.end.i.i229.rs_get_best_rate.exit.thread.i_crit_edge
  %774 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %775, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_best_rate, ptr noundef nonnull @.str.147, i32 noundef 17, i32 noundef %target_tpt.0.i.i, i32 noundef -1) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_mask.addr.i.i) #15
  br label %rs_switch_to_column.exit

rs_get_best_rate.exit.i:                          ; preds = %while.body.i.i
  %776 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %777, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_best_rate, ptr noundef nonnull @.str.147, i32 noundef %rate_idx.066.i.i, i32 noundef %target_tpt.0.i.i, i32 noundef %mul22.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_mask.addr.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %rate_idx.066.i.i)
  %cmp83.i = icmp eq i32 %rate_idx.066.i.i, 17
  br i1 %cmp83.i, label %rs_get_best_rate.exit.i.rs_switch_to_column.exit_crit_edge, label %lor.lhs.false.i234

rs_get_best_rate.exit.i.rs_switch_to_column.exit_crit_edge: ; preds = %rs_get_best_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_switch_to_column.exit

lor.lhs.false.i234:                               ; preds = %rs_get_best_rate.exit.i
  %shl85.i = shl nuw i32 1, %rate_idx.066.i.i
  %and.i233 = and i32 %shl85.i, %rate_mask.0170.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i233)
  %tobool86.not.i = icmp eq i32 %and.i233, 0
  br i1 %tobool86.not.i, label %lor.lhs.false.i234.rs_switch_to_column.exit_crit_edge, label %if.end94.i

lor.lhs.false.i234.rs_switch_to_column.exit_crit_edge: ; preds = %lor.lhs.false.i234
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_switch_to_column.exit

if.end94.i:                                       ; preds = %lor.lhs.false.i234
  call void @__sanitizer_cov_trace_pc() #17
  %778 = ptrtoint ptr %arrayidx4.i208 to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 %rate_idx.066.i.i, ptr %arrayidx4.i208, align 4
  br label %if.end245.thread.i

rs_switch_to_column.exit:                         ; preds = %lor.lhs.false.i234.rs_switch_to_column.exit_crit_edge, %rs_get_best_rate.exit.i.rs_switch_to_column.exit_crit_edge, %rs_get_best_rate.exit.thread.i
  %rate_idx.064.i174.i = phi i32 [ 17, %rs_get_best_rate.exit.thread.i ], [ %rate_idx.066.i.i, %lor.lhs.false.i234.rs_switch_to_column.exit_crit_edge ], [ 17, %rs_get_best_rate.exit.i.rs_switch_to_column.exit_crit_edge ]
  %779 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %780, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_column, ptr noundef nonnull @.str.143, i32 noundef %rate_idx.064.i174.i, i32 noundef %rate_mask.0170.i) #15
  %type105.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx4.i208, i32 0, i32 1
  %781 = ptrtoint ptr %type105.i to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 0, ptr %type105.i, align 4
  br label %if.end245.i

if.end245.thread.i:                               ; preds = %if.end94.i, %if.end76.i.if.end245.thread.i_crit_edge
  %782 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %mvm, align 8
  %784 = ptrtoint ptr %arrayidx4.i208 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %arrayidx4.i208, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %783, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_column, ptr noundef nonnull @.str.144, i32 noundef %637, i32 noundef %785) #15
  %786 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_store1_noabort(i32 %786)
  store i8 1, ptr %search_better_tbl.i10, align 2
  br label %if.then248.i

do.end240.i:                                      ; preds = %for.end130.i.do.end240.i_crit_edge, %for.inc128.i.do.end240.i_crit_edge
  %787 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %788, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.91) #15
  %789 = ptrtoint ptr %rs_state206.i to i32
  call void @__asan_store1_noabort(i32 %789)
  store i8 1, ptr %rs_state206.i, align 1
  br label %if.end245.i

if.end245.i:                                      ; preds = %do.end240.i, %rs_switch_to_column.exit
  %790 = ptrtoint ptr %search_better_tbl.i10 to i32
  call void @__asan_load1_noabort(i32 %790)
  %.pr.i = load i8, ptr %search_better_tbl.i10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool247.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool247.not.i, label %if.end245.i.if.end259.i_crit_edge, label %if.end245.i.if.then248.i_crit_edge

if.end245.i.if.then248.i_crit_edge:               ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then248.i

if.end245.i.if.end259.i_crit_edge:                ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end259.i

if.then248.i:                                     ; preds = %if.end245.i.if.then248.i_crit_edge, %if.end245.thread.i
  %791 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %lq_sta5.i, align 8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  %idxprom252.i = zext i8 %794 to i32
  %795 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %796, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_clear_tbl_windows, ptr noundef nonnull @.str.79) #15
  br label %for.body.i205

for.body.i205:                                    ; preds = %for.body.i205.for.body.i205_crit_edge, %if.then248.i
  %i.021.i = phi i32 [ 0, %if.then248.i ], [ %inc.i204, %for.body.i205.for.body.i205_crit_edge ]
  %arrayidx.i203 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 3, i32 %i.021.i
  %797 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_store8_noabort(i32 %797)
  store i64 0, ptr %arrayidx.i203, align 8
  %success_counter.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 3, i32 %i.021.i, i32 1
  %798 = ptrtoint ptr %success_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 0, ptr %success_counter.i.i, align 8
  %success_ratio.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 3, i32 %i.021.i, i32 2
  %799 = ptrtoint ptr %success_ratio.i.i to i32
  call void @__asan_store4_noabort(i32 %799)
  store i32 -1, ptr %success_ratio.i.i, align 4
  %counter.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 3, i32 %i.021.i, i32 3
  %800 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_store4_noabort(i32 %800)
  store i32 0, ptr %counter.i.i, align 8
  %average_tpt.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 3, i32 %i.021.i, i32 4
  %801 = ptrtoint ptr %average_tpt.i.i to i32
  call void @__asan_store4_noabort(i32 %801)
  store i32 -1, ptr %average_tpt.i.i, align 4
  %inc.i204 = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i204, 17
  br i1 %exitcond.not.i, label %for.body.i205.for.body6.i_crit_edge, label %for.body.i205.for.body.i205_crit_edge

for.body.i205.for.body.i205_crit_edge:            ; preds = %for.body.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i205

for.body.i205.for.body6.i_crit_edge:              ; preds = %for.body.i205
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body.i205.for.body6.i_crit_edge
  %i.122.i = phi i32 [ %inc9.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.body.i205.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 4, i32 %i.122.i
  %802 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %802)
  store i64 0, ptr %arrayidx7.i, align 8
  %success_counter.i17.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 4, i32 %i.122.i, i32 1
  %803 = ptrtoint ptr %success_counter.i17.i to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 0, ptr %success_counter.i17.i, align 8
  %success_ratio.i18.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 4, i32 %i.122.i, i32 2
  %804 = ptrtoint ptr %success_ratio.i18.i to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 -1, ptr %success_ratio.i18.i, align 4
  %counter.i19.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 4, i32 %i.122.i, i32 3
  %805 = ptrtoint ptr %counter.i19.i to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 0, ptr %counter.i19.i, align 8
  %average_tpt.i20.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i, i32 4, i32 %i.122.i, i32 4
  %806 = ptrtoint ptr %average_tpt.i20.i to i32
  call void @__asan_store4_noabort(i32 %806)
  store i32 -1, ptr %average_tpt.i20.i, align 4
  %inc9.i = add nuw nsw i32 %i.122.i, 1
  %exitcond23.not.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond23.not.i, label %rs_rate_scale_clear_tbl_windows.exit, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i

rs_rate_scale_clear_tbl_windows.exit:             ; preds = %for.body6.i
  %arrayidx253.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom252.i
  %807 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %mvm, align 8
  %type.i.i172 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx253.i, i32 0, i32 1
  %809 = ptrtoint ptr %type.i.i172 to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load i32, ptr %type.i.i172, align 4
  %.off.i.i173 = add i32 %810, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i173)
  %switch.i.i174 = icmp ult i32 %.off.i.i173, 2
  br i1 %switch.i.i174, label %land.lhs.true.i.i176, label %if.else.i.i181

land.lhs.true.i.i176:                             ; preds = %rs_rate_scale_clear_tbl_windows.exit
  %811 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %arrayidx253.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %812)
  %cmp3.i.i175 = icmp slt i32 %812, 12
  br i1 %cmp3.i.i175, label %if.then.i.i178, label %land.lhs.true.i.i176.if.end.i.i.i191_crit_edge

land.lhs.true.i.i176.if.end.i.i.i191_crit_edge:   ; preds = %land.lhs.true.i.i176
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i191

if.then.i.i178:                                   ; preds = %land.lhs.true.i.i176
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i177 = getelementptr [12 x ptr], ptr @rs_pretty_rate.legacy_rates, i32 0, i32 %812
  br label %if.end.i.sink.split.i.i188

if.else.i.i181:                                   ; preds = %rs_rate_scale_clear_tbl_windows.exit
  %.off1.i.i179 = add i32 %810, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1.i.i179)
  %switch2.i.i180 = icmp ult i32 %.off1.i.i179, 4
  br i1 %switch2.i.i180, label %land.lhs.true16.i.i182, label %if.end26.i.i186

land.lhs.true16.i.i182:                           ; preds = %if.else.i.i181
  %813 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %arrayidx253.i, align 4
  %815 = add i32 %814, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %815)
  %816 = icmp ult i32 %815, 11
  br i1 %816, label %if.then22.i.i184, label %land.lhs.true16.i.i182.if.end.i.i.i191_crit_edge

land.lhs.true16.i.i182.if.end.i.i.i191_crit_edge: ; preds = %land.lhs.true16.i.i182
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i191

if.then22.i.i184:                                 ; preds = %land.lhs.true16.i.i182
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx24.i.i183 = getelementptr [15 x ptr], ptr @rs_pretty_rate.ht_vht_rates, i32 0, i32 %814
  br label %if.end.i.sink.split.i.i188

if.end26.i.i186:                                  ; preds = %if.else.i.i181
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %810)
  %cmp1.i.i.i185 = icmp ugt i32 %810, 8
  br i1 %cmp1.i.i.i185, label %if.end26.i.i186.rs_dump_rate.exit202_crit_edge, label %if.end26.i.i186.if.end.i.i.i191_crit_edge

if.end26.i.i186.if.end.i.i.i191_crit_edge:        ; preds = %if.end26.i.i186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i191

if.end26.i.i186.rs_dump_rate.exit202_crit_edge:   ; preds = %if.end26.i.i186
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_dump_rate.exit202

if.end.i.sink.split.i.i188:                       ; preds = %if.then22.i.i184, %if.then.i.i178
  %arrayidx.sink.i.i187 = phi ptr [ %arrayidx.i.i177, %if.then.i.i178 ], [ %arrayidx24.i.i183, %if.then22.i.i184 ]
  %817 = ptrtoint ptr %arrayidx.sink.i.i187 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %arrayidx.sink.i.i187, align 4
  br label %if.end.i.i.i191

if.end.i.i.i191:                                  ; preds = %if.end.i.sink.split.i.i188, %if.end26.i.i186.if.end.i.i.i191_crit_edge, %land.lhs.true16.i.i182.if.end.i.i.i191_crit_edge, %land.lhs.true.i.i176.if.end.i.i.i191_crit_edge
  %rate_str.07.i.i189 = phi ptr [ @.str.64, %if.end26.i.i186.if.end.i.i.i191_crit_edge ], [ @.str.64, %land.lhs.true16.i.i182.if.end.i.i.i191_crit_edge ], [ @.str.64, %land.lhs.true.i.i176.if.end.i.i.i191_crit_edge ], [ %818, %if.end.i.sink.split.i.i188 ]
  %arrayidx.i.i.i190 = getelementptr [9 x ptr], ptr @rs_pretty_lq_type.lq_types, i32 0, i32 %810
  %819 = ptrtoint ptr %arrayidx.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %arrayidx.i.i.i190, align 4
  br label %rs_dump_rate.exit202

rs_dump_rate.exit202:                             ; preds = %if.end.i.i.i191, %if.end26.i.i186.rs_dump_rate.exit202_crit_edge
  %rate_str.08.i.i192 = phi ptr [ %rate_str.07.i.i189, %if.end.i.i.i191 ], [ @.str.64, %if.end26.i.i186.rs_dump_rate.exit202_crit_edge ]
  %retval.0.i.i.i193 = phi ptr [ %820, %if.end.i.i.i191 ], [ @.str.75, %if.end26.i.i186.rs_dump_rate.exit202_crit_edge ]
  %ant.i.i194 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx253.i, i32 0, i32 2
  %821 = ptrtoint ptr %ant.i.i194 to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %ant.i.i194, align 4
  %call28.i.i195 = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %822) #15
  %call29.i.i196 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rs_pretty_rate.buf, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i.i193, ptr noundef %call28.i.i195, ptr noundef %rate_str.08.i.i192) #15
  %bw.i197 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx253.i, i32 0, i32 3
  %823 = ptrtoint ptr %bw.i197 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %bw.i197, align 4
  %sgi.i198 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx253.i, i32 0, i32 4
  %825 = ptrtoint ptr %sgi.i198 to i32
  call void @__asan_load1_noabort(i32 %825)
  %826 = load i8, ptr %sgi.i198, align 4, !range !619
  %827 = zext i8 %826 to i32
  %ldpc.i199 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx253.i, i32 0, i32 5
  %828 = ptrtoint ptr %ldpc.i199 to i32
  call void @__asan_load1_noabort(i32 %828)
  %829 = load i8, ptr %ldpc.i199, align 1, !range !619
  %830 = zext i8 %829 to i32
  %stbc.i200 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx253.i, i32 0, i32 6
  %831 = ptrtoint ptr %stbc.i200 to i32
  call void @__asan_load1_noabort(i32 %831)
  %832 = load i8, ptr %stbc.i200, align 2, !range !619
  %833 = zext i8 %832 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %808, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dump_rate, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.92, ptr noundef nonnull @rs_pretty_rate.buf, i32 noundef %824, i32 noundef %827, i32 noundef %830, i32 noundef %833) #15
  call fastcc void @rs_fill_lq_cmd(ptr noundef %mvm, ptr noundef %sta, ptr noundef %lq_sta5.i, ptr noundef %arrayidx253.i) #15
  %call.i519.i = call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq.i) #15
  br label %if.end259.i

if.end259.i:                                      ; preds = %rs_dump_rate.exit202, %if.end245.i.if.end259.i_crit_edge, %land.lhs.true210.i.if.end259.i_crit_edge, %land.lhs.true205.i.if.end259.i_crit_edge, %rs_set_amsdu_len.exit.i, %land.lhs.true203.critedge.thread570.i
  %done_search.2.i = phi i32 [ 0, %land.lhs.true210.i.if.end259.i_crit_edge ], [ 0, %land.lhs.true205.i.if.end259.i_crit_edge ], [ %done_search.0557.i, %rs_set_amsdu_len.exit.i ], [ 0, %rs_dump_rate.exit202 ], [ 1, %if.end245.i.if.end259.i_crit_edge ], [ 1, %land.lhs.true203.critedge.thread570.i ]
  br i1 %ndp, label %if.end259.i.if.end263.i_crit_edge, label %if.then261.i19

if.end259.i.if.end263.i_crit_edge:                ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end263.i

if.then261.i19:                                   ; preds = %if.end259.i
  %conv262.i = trunc i32 %tid to i8
  %conv.i520.i = and i32 %tid, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv262.i)
  %cmp.i521.i = icmp ugt i8 %conv262.i, 8
  br i1 %cmp.i521.i, label %land.rhs.i.i, label %if.else.i523.i

land.rhs.i.i:                                     ; preds = %if.then261.i19
  %.b93.i.i = load i1, ptr @rs_tl_turn_on_agg.__already_done, align 1
  br i1 %.b93.i.i, label %land.rhs.i.i.do.end42.i.i_crit_edge, label %if.then.i522.i, !prof !618

land.rhs.i.i.do.end42.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42.i.i

if.then.i522.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_tl_turn_on_agg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #15
  br label %do.end42.i.i

do.end42.i.i:                                     ; preds = %if.then.i522.i, %land.rhs.i.i.do.end42.i.i_crit_edge
  %834 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %835, i32 noundef 0, ptr noundef nonnull @.str.148, i32 noundef %conv.i520.i, i32 noundef 8) #15
  br label %if.end263.i

if.else.i523.i:                                   ; preds = %if.then261.i19
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv262.i)
  %cmp47.i.i = icmp eq i8 %conv262.i, 8
  br i1 %cmp47.i.i, label %if.else.i523.i.if.end263.i_crit_edge, label %if.end51.i.i

if.else.i523.i.if.end263.i_crit_edge:             ; preds = %if.else.i523.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end263.i

if.end51.i.i:                                     ; preds = %if.else.i523.i
  %sta_state.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 5
  %836 = ptrtoint ptr %sta_state.i.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load i32, ptr %sta_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %837)
  %cmp53.i.i = icmp ugt i32 %837, 3
  br i1 %cmp53.i.i, label %land.lhs.true.i524.i, label %if.end51.i.i.if.end263.i_crit_edge

if.end51.i.i.if.end263.i_crit_edge:               ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end263.i

land.lhs.true.i524.i:                             ; preds = %if.end51.i.i
  %state.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv.i520.i, i32 5
  %838 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %839)
  %cmp55.i.i = icmp eq i32 %839, 0
  br i1 %cmp55.i.i, label %land.lhs.true57.i.i, label %land.lhs.true.i524.i.if.end263.i_crit_edge

land.lhs.true.i524.i.if.end263.i_crit_edge:       ; preds = %land.lhs.true.i524.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end263.i

land.lhs.true57.i.i:                              ; preds = %land.lhs.true.i524.i
  %tx_agg_tid_en.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 6, i32 3, i32 18
  %840 = ptrtoint ptr %tx_agg_tid_en.i.i to i32
  call void @__asan_load1_noabort(i32 %840)
  %841 = load i8, ptr %tx_agg_tid_en.i.i, align 8
  %conv58.i.i = zext i8 %841 to i32
  %shl.i.i = shl nuw i32 1, %conv.i520.i
  %and.i.i = and i32 %shl.i.i, %conv58.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool60.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool60.not.i.i, label %land.lhs.true57.i.i.if.end263.i_crit_edge, label %land.lhs.true61.i.i

land.lhs.true57.i.i.if.end263.i_crit_edge:        ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end263.i

land.lhs.true61.i.i:                              ; preds = %land.lhs.true57.i.i
  %tx_count_last.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv.i520.i, i32 10
  %842 = ptrtoint ptr %tx_count_last.i.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %tx_count_last.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %843)
  %cmp62.i.i = icmp ugt i32 %843, 9
  br i1 %cmp62.i.i, label %do.end68.i.i, label %land.lhs.true61.i.i.if.end263.i_crit_edge

land.lhs.true61.i.i.if.end263.i_crit_edge:        ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end263.i

do.end68.i.i:                                     ; preds = %land.lhs.true61.i.i
  %844 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %845, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tl_turn_on_agg, ptr noundef nonnull @.str.149, i32 noundef %conv.i520.i) #15
  %846 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %mvm, align 8
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %847, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tl_turn_on_agg_for_tid, ptr noundef nonnull @.str.150, ptr noundef %addr.i, i32 noundef %conv.i520.i) #15
  %848 = trunc i32 %tid to i16
  %conv4.i = and i16 %848, 255
  %call.i170 = call i32 @ieee80211_start_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %conv4.i, i16 noundef zeroext 0) #15
  %849 = zext i32 %call.i170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %849, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %call.i170, label %do.end68.i.i.if.end263.i_crit_edge [
    i32 -11, label %rs_tl_turn_on_agg_for_tid.exit.thread
    i32 0, label %if.then75.i.i
  ]

do.end68.i.i.if.end263.i_crit_edge:               ; preds = %do.end68.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end263.i

rs_tl_turn_on_agg_for_tid.exit.thread:            ; preds = %do.end68.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %850 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %851, i32 noundef 0, ptr noundef nonnull @.str.151, i32 noundef %conv.i520.i) #15
  %call15.i = call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %conv4.i) #15
  br label %if.end263.i

if.then75.i.i:                                    ; preds = %do.end68.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %852 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %852)
  store i32 1, ptr %state.i.i, align 4
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.then75.i.i, %rs_tl_turn_on_agg_for_tid.exit.thread, %do.end68.i.i.if.end263.i_crit_edge, %land.lhs.true61.i.i.if.end263.i_crit_edge, %land.lhs.true57.i.i.if.end263.i_crit_edge, %land.lhs.true.i524.i.if.end263.i_crit_edge, %if.end51.i.i.if.end263.i_crit_edge, %if.else.i523.i.if.end263.i_crit_edge, %do.end42.i.i, %if.end259.i.if.end263.i_crit_edge
  %conv264.i = and i32 %done_search.2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv264.i)
  %tobool265.not.i = icmp eq i32 %conv264.i, 0
  br i1 %tobool265.not.i, label %if.end263.i.__iwl_mvm_rs_tx_status.exit_crit_edge, label %land.lhs.true266.i

if.end263.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

land.lhs.true266.i:                               ; preds = %if.end263.i
  %rs_state267.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 1
  %853 = ptrtoint ptr %rs_state267.i to i32
  call void @__asan_load1_noabort(i32 %853)
  %854 = load i8, ptr %rs_state267.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %854)
  %cmp269.i = icmp eq i8 %854, 1
  br i1 %cmp269.i, label %if.then271.i, label %land.lhs.true266.i.__iwl_mvm_rs_tx_status.exit_crit_edge

land.lhs.true266.i.__iwl_mvm_rs_tx_status.exit_crit_edge: ; preds = %land.lhs.true266.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__iwl_mvm_rs_tx_status.exit

if.then271.i:                                     ; preds = %land.lhs.true266.i
  call void @__sanitizer_cov_trace_pc() #17
  %855 = ptrtoint ptr %lq_sta5.i to i32
  call void @__asan_load1_noabort(i32 %855)
  %856 = load i8, ptr %lq_sta5.i, align 8
  %idxprom274.i = zext i8 %856 to i32
  %type277.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5.i, i32 0, i32 30, i32 %idxprom274.i, i32 0, i32 1
  %857 = ptrtoint ptr %type277.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %type277.i, align 4
  %859 = add i32 %858, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %859)
  %860 = icmp ult i32 %859, -2
  %861 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %862, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_set_stay_in_table, ptr noundef nonnull @.str.152) #15
  %863 = ptrtoint ptr %rs_state267.i to i32
  call void @__asan_store1_noabort(i32 %863)
  store i8 2, ptr %rs_state267.i, align 1
  %.sink18.i.i = select i1 %860, i32 1500, i32 160
  %.sink17.i.i = select i1 %860, i32 400, i32 160
  %.sink.i527.i = select i1 %860, i32 4500, i32 480
  %864 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 17
  %865 = ptrtoint ptr %864 to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 %.sink18.i.i, ptr %864, align 8
  %866 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 21
  %867 = ptrtoint ptr %866 to i32
  call void @__asan_store4_noabort(i32 %867)
  store i32 %.sink17.i.i, ptr %866, align 4
  %868 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 24
  %869 = ptrtoint ptr %868 to i32
  call void @__asan_store4_noabort(i32 %869)
  store i32 %.sink.i527.i, ptr %868, align 8
  %table_count.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 1
  %870 = ptrtoint ptr %table_count.i.i to i32
  call void @__asan_store4_noabort(i32 %870)
  store i32 0, ptr %table_count.i.i, align 4
  %total_failed.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 3
  %871 = ptrtoint ptr %total_failed.i.i to i32
  call void @__asan_store4_noabort(i32 %871)
  store i32 0, ptr %total_failed.i.i, align 8
  %total_success.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 5
  %872 = ptrtoint ptr %total_success.i.i to i32
  call void @__asan_store4_noabort(i32 %872)
  store i32 0, ptr %total_success.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %873 = load volatile i32, ptr @jiffies, align 128
  %conv.i528.i = zext i32 %873 to i64
  %flush_timer.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 7
  %874 = ptrtoint ptr %flush_timer.i.i to i32
  call void @__asan_store8_noabort(i32 %874)
  store i64 %conv.i528.i, ptr %flush_timer.i.i, align 8
  %visited_columns.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 11
  %875 = ptrtoint ptr %visited_columns.i.i to i32
  call void @__asan_store4_noabort(i32 %875)
  store i32 0, ptr %visited_columns.i.i, align 8
  br label %__iwl_mvm_rs_tx_status.exit

__iwl_mvm_rs_tx_status.exit:                      ; preds = %if.then271.i, %land.lhs.true266.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %if.end263.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %rs_pretty_rate.exit.i, %do.end47.i, %if.then34.i, %do.end28.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %done.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %if.then454.i, %land.end447.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %if.then261.i, %do.end248.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %if.then201.i, %land.end194.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %do.end170.i, %if.end139.i, %if.then84.i, %land.rhs73.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %if.then25.i, %land.end.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %if.end.i.__iwl_mvm_rs_tx_status.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_resp_rate.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %lq_rate.i) #15
  call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %__iwl_mvm_rs_tx_status.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs_pretty_print_rate_v1(ptr noundef %buf, i32 noundef %bufsz, i32 noundef %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %rate, 14
  %0 = trunc i32 %and to i8
  %conv = and i8 %0, 3
  %and1 = lshr i32 %rate, 11
  %shr2 = and i32 %and1, 3
  %and3 = and i32 %rate, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %and7 = and i32 %rate, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %1 = and i32 %rate, 67110144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %rate)
  %call9 = tail call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %conv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call)
  %cmp = icmp eq i32 %call, 17
  br i1 %cmp, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call ptr @iwl_rate_mcs(i32 noundef %call) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %call11, %cond.false ], [ @.str.3, %if.then.cond.end_crit_edge ]
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.2, ptr noundef %call9, ptr noundef %cond) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %rate, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %and16 = and i32 %rate, 15
  %and18 = lshr i32 %rate, 4
  %shr19 = and i32 %and18, 3
  %add = add nuw nsw i32 %shr19, 1
  br label %if.end43

if.else:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.else30, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %and24 = and i32 %rate, 63
  %and26 = lshr i32 %rate, 3
  %shr27 = and i32 %and26, 3
  %add28 = add nuw nsw i32 %shr27, 1
  br label %if.end43

if.else30:                                        ; preds = %if.else
  br i1 %tobool8.not, label %if.else30.if.end43_crit_edge, label %if.then33

if.else30.if.end43_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #17
  %and34 = and i32 %rate, 15
  %and36 = lshr i32 %rate, 4
  %shr37 = and i32 %and36, 3
  %add38 = add nuw nsw i32 %shr37, 1
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.else30.if.end43_crit_edge, %if.then23, %if.then15
  %type.0 = phi ptr [ @.str.4, %if.then15 ], [ @.str.5, %if.then23 ], [ @.str.6, %if.then33 ], [ @.str.7, %if.else30.if.end43_crit_edge ]
  %mcs.0 = phi i32 [ %and16, %if.then15 ], [ %and24, %if.then23 ], [ %and34, %if.then33 ], [ 0, %if.else30.if.end43_crit_edge ]
  %nss.0 = phi i32 [ %add, %if.then15 ], [ %add28, %if.then23 ], [ %add38, %if.then33 ], [ 0, %if.else30.if.end43_crit_edge ]
  %call44 = tail call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %conv) #15
  %call45 = tail call ptr @iwl_rs_pretty_bw(i32 noundef %shr2) #15
  %and48 = and i32 %rate, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.10, ptr @.str.9
  %and51 = and i32 %rate, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.12, ptr @.str.11
  %and54 = and i32 %rate, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.12, ptr @.str.13
  %and57 = and i32 %rate, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.12, ptr @.str.14
  %and60 = and i32 %rate, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %cond62 = select i1 %tobool61.not, ptr @.str.12, ptr @.str.15
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.8, i32 noundef %rate, ptr noundef nonnull %type.0, ptr noundef %call44, ptr noundef %call45, i32 noundef %mcs.0, i32 noundef %nss.0, ptr noundef nonnull %cond50, ptr noundef nonnull %cond53, ptr noundef nonnull %cond56, ptr noundef nonnull %cond59, ptr noundef nonnull %cond62) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %cond.end
  %retval.0 = phi i32 [ %call63, %if.end43 ], [ %call12, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %rate_n_flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and1 = and i32 %rate_n_flags, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  %add3 = add nuw nsw i32 %and1, 5
  %spec.select = select i1 %cmp.not, i32 4, i32 %add3
  br label %cleanup39

if.else:                                          ; preds = %entry
  %and10 = and i32 %rate_n_flags, 1024
  %0 = and i32 %rate_n_flags, 67109888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.else29, label %if.then12

if.then12:                                        ; preds = %if.else
  %and13 = and i32 %rate_n_flags, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp15.not = icmp eq i32 %and13, 0
  %inc = add nuw nsw i32 %and13, 5
  %spec.select63 = select i1 %cmp15.not, i32 4, i32 %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select63)
  %cmp20 = icmp ult i32 %spec.select63, 15
  br i1 %cmp20, label %if.then12.cleanup39_crit_edge, label %if.end22

if.then12.cleanup39_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

if.end22:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool24.not = icmp ne i32 %and10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %spec.select63)
  %cmp26 = icmp ult i32 %spec.select63, 17
  %or.cond64 = select i1 %tobool24.not, i1 %cmp26, i1 false
  br i1 %or.cond64, label %if.end22.cleanup39_crit_edge, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.end22.cleanup39_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

if.else29:                                        ; preds = %if.else
  %conv.i = trunc i32 %rate_n_flags to i8
  %2 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.262)
  switch i8 %conv.i, label %if.else29.if.end38_crit_edge [
    i8 10, label %if.else29.cleanup39_crit_edge
    i8 20, label %cleanup39.fold.split
    i8 55, label %cleanup39.fold.split68
    i8 110, label %cleanup39.fold.split69
    i8 13, label %cleanup39.fold.split70
    i8 15, label %cleanup39.fold.split71
    i8 5, label %cleanup39.fold.split72
    i8 7, label %cleanup39.fold.split73
    i8 9, label %cleanup39.fold.split74
    i8 11, label %cleanup39.fold.split75
    i8 1, label %cleanup39.fold.split76
    i8 3, label %cleanup39.fold.split77
    i8 -1, label %cleanup39.fold.split78
    i8 0, label %cleanup39.fold.split79
  ]

if.else29.cleanup39_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

if.else29.if.end38_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.end38:                                         ; preds = %if.else29.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  br label %cleanup39

cleanup39.fold.split:                             ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split68:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split69:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split70:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split71:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split72:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split73:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split74:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split75:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split76:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split77:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split78:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39.fold.split79:                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup39.fold.split79, %cleanup39.fold.split78, %cleanup39.fold.split77, %cleanup39.fold.split76, %cleanup39.fold.split75, %cleanup39.fold.split74, %cleanup39.fold.split73, %cleanup39.fold.split72, %cleanup39.fold.split71, %cleanup39.fold.split70, %cleanup39.fold.split69, %cleanup39.fold.split68, %cleanup39.fold.split, %if.end38, %if.else29.cleanup39_crit_edge, %if.end22.cleanup39_crit_edge, %if.then12.cleanup39_crit_edge, %if.then
  %retval.1 = phi i32 [ %spec.select, %if.then ], [ 17, %if.end38 ], [ %spec.select63, %if.then12.cleanup39_crit_edge ], [ %inc, %if.end22.cleanup39_crit_edge ], [ 0, %if.else29.cleanup39_crit_edge ], [ 1, %cleanup39.fold.split ], [ 2, %cleanup39.fold.split68 ], [ 3, %cleanup39.fold.split69 ], [ 4, %cleanup39.fold.split70 ], [ 5, %cleanup39.fold.split71 ], [ 6, %cleanup39.fold.split72 ], [ 7, %cleanup39.fold.split73 ], [ 8, %cleanup39.fold.split74 ], [ 9, %cleanup39.fold.split75 ], [ 10, %cleanup39.fold.split76 ], [ 11, %cleanup39.fold.split77 ], [ 12, %cleanup39.fold.split78 ], [ 15, %cleanup39.fold.split79 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_rs_pretty_ant(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_rate_mcs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_rs_pretty_bw(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rs_rate_init(ptr noundef %mvm, ptr noundef %sta, i32 noundef %band, i1 noundef zeroext %update) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rs_fw_rate_init(ptr noundef %mvm, ptr noundef %sta, i32 noundef %band, i1 noundef zeroext %update) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 27, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  tail call fastcc void @rs_drv_rate_init(ptr noundef %mvm, ptr noundef %sta, i32 noundef %band)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs_fw_rate_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_drv_rate_init(ptr noundef %mvm, ptr noundef %sta, i32 noundef %band) unnamed_addr #2 align 64 {
entry:
  %vht_cap1.i.i.i = alloca %struct.ieee80211_vht_cap, align 4
  %supp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %ht_cap2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %vht_cap3 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %lq_sta4 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supp) #15
  %2 = ptrtoint ptr %supp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %supp, align 4, !annotation !623
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 3
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !621

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2928, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = call ptr @memset(ptr %lq_sta4, i32 0, i32 1872)
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 %band
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %drv_priv.i, align 8
  %conv = trunc i32 %10 to i8
  %lq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 14
  %11 = ptrtoint ptr %lq to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %lq, align 4
  %amsdu_enabled = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 18
  %12 = ptrtoint ptr %amsdu_enabled to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %amsdu_enabled, align 4
  %max_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 21
  %13 = ptrtoint ptr %max_amsdu_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_amsdu_len, align 4
  %max_amsdu_len31 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 21
  %15 = ptrtoint ptr %max_amsdu_len31 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %max_amsdu_len31, align 2
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_clear_tbl_windows, ptr noundef nonnull @.str.79) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.021.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 3, i32 %i.021.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %arrayidx.i, align 8
  %success_counter.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 3, i32 %i.021.i, i32 1
  %19 = ptrtoint ptr %success_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %success_counter.i.i, align 8
  %success_ratio.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 3, i32 %i.021.i, i32 2
  %20 = ptrtoint ptr %success_ratio.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %success_ratio.i.i, align 4
  %counter.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 3, i32 %i.021.i, i32 3
  %21 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %counter.i.i, align 8
  %average_tpt.i.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 3, i32 %i.021.i, i32 4
  %22 = ptrtoint ptr %average_tpt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %average_tpt.i.i, align 4
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %for.body.i.for.body6.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %i.122.i = phi i32 [ %inc9.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.body.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 4, i32 %i.122.i
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %arrayidx7.i, align 8
  %success_counter.i17.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 4, i32 %i.122.i, i32 1
  %24 = ptrtoint ptr %success_counter.i17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %success_counter.i17.i, align 8
  %success_ratio.i18.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 4, i32 %i.122.i, i32 2
  %25 = ptrtoint ptr %success_ratio.i18.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %success_ratio.i18.i, align 4
  %counter.i19.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 4, i32 %i.122.i, i32 3
  %26 = ptrtoint ptr %counter.i19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %counter.i19.i, align 8
  %average_tpt.i20.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 0, i32 4, i32 %i.122.i, i32 4
  %27 = ptrtoint ptr %average_tpt.i20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %average_tpt.i20.i, align 4
  %inc9.i = add nuw nsw i32 %i.122.i, 1
  %exitcond23.not.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond23.not.i, label %rs_rate_scale_clear_tbl_windows.exit, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i

rs_rate_scale_clear_tbl_windows.exit:             ; preds = %for.body6.i
  %28 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_clear_tbl_windows, ptr noundef nonnull @.str.79) #15
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %rs_rate_scale_clear_tbl_windows.exit
  %i.021.i.1 = phi i32 [ 0, %rs_rate_scale_clear_tbl_windows.exit ], [ %inc.i.1, %for.body.i.1.for.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 3, i32 %i.021.i.1
  %30 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %arrayidx.i.1, align 8
  %success_counter.i.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 3, i32 %i.021.i.1, i32 1
  %31 = ptrtoint ptr %success_counter.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %success_counter.i.i.1, align 8
  %success_ratio.i.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 3, i32 %i.021.i.1, i32 2
  %32 = ptrtoint ptr %success_ratio.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %success_ratio.i.i.1, align 4
  %counter.i.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 3, i32 %i.021.i.1, i32 3
  %33 = ptrtoint ptr %counter.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %counter.i.i.1, align 8
  %average_tpt.i.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 3, i32 %i.021.i.1, i32 4
  %34 = ptrtoint ptr %average_tpt.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %average_tpt.i.i.1, align 4
  %inc.i.1 = add nuw nsw i32 %i.021.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 17
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.body6.i.1_crit_edge, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.1

for.body.i.1.for.body6.i.1_crit_edge:             ; preds = %for.body.i.1
  br label %for.body6.i.1

for.body6.i.1:                                    ; preds = %for.body6.i.1.for.body6.i.1_crit_edge, %for.body.i.1.for.body6.i.1_crit_edge
  %i.122.i.1 = phi i32 [ %inc9.i.1, %for.body6.i.1.for.body6.i.1_crit_edge ], [ 0, %for.body.i.1.for.body6.i.1_crit_edge ]
  %arrayidx7.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 4, i32 %i.122.i.1
  %35 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %arrayidx7.i.1, align 8
  %success_counter.i17.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 4, i32 %i.122.i.1, i32 1
  %36 = ptrtoint ptr %success_counter.i17.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %success_counter.i17.i.1, align 8
  %success_ratio.i18.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 4, i32 %i.122.i.1, i32 2
  %37 = ptrtoint ptr %success_ratio.i18.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %success_ratio.i18.i.1, align 4
  %counter.i19.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 4, i32 %i.122.i.1, i32 3
  %38 = ptrtoint ptr %counter.i19.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %counter.i19.i.1, align 8
  %average_tpt.i20.i.1 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 30, i32 1, i32 4, i32 %i.122.i.1, i32 4
  %39 = ptrtoint ptr %average_tpt.i20.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %average_tpt.i20.i.1, align 4
  %inc9.i.1 = add nuw nsw i32 %i.122.i.1, 1
  %exitcond23.not.i.1 = icmp eq i32 %inc9.i.1, 16
  br i1 %exitcond23.not.i.1, label %rs_rate_scale_clear_tbl_windows.exit.1, label %for.body6.i.1.for.body6.i.1_crit_edge

for.body6.i.1.for.body6.i.1_crit_edge:            ; preds = %for.body6.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i.1

rs_rate_scale_clear_tbl_windows.exit.1:           ; preds = %for.body6.i.1
  %flush_timer = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 7
  %40 = ptrtoint ptr %flush_timer to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %flush_timer, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %conv35 = zext i32 %41 to i64
  %last_tx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 25, i32 15
  %42 = ptrtoint ptr %last_tx to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv35, ptr %last_tx, align 8
  %43 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mvm, align 8
  %45 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %drv_priv.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %44, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_drv_rate_init, ptr noundef nonnull @.str.153, i32 noundef %46) #15
  %missed_rate_counter = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 13
  %47 = ptrtoint ptr %missed_rate_counter to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 15, ptr %missed_rate_counter, align 8
  %band43 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %8, i32 0, i32 2
  %48 = ptrtoint ptr %band43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %band43, align 4
  %band44 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28
  %50 = ptrtoint ptr %band44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %band44, align 4
  %51 = load i32, ptr %band43, align 4
  %arrayidx46 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46, align 4
  %54 = ptrtoint ptr %supp to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %supp, align 4
  %active_legacy_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 1
  %55 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %active_legacy_rate, align 8
  %call47 = call i32 @_find_next_bit_be(ptr noundef nonnull %supp, i32 noundef 32, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call47)
  %cmp49227 = icmp slt i32 %call47, 32
  br i1 %cmp49227, label %for.body51.lr.ph, label %rs_rate_scale_clear_tbl_windows.exit.1.for.end57_crit_edge

rs_rate_scale_clear_tbl_windows.exit.1.for.end57_crit_edge: ; preds = %rs_rate_scale_clear_tbl_windows.exit.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end57

for.body51.lr.ph:                                 ; preds = %rs_rate_scale_clear_tbl_windows.exit.1
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %8, i32 0, i32 1
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.lr.ph
  %i.0228 = phi i32 [ %call47, %for.body51.lr.ph ], [ %call56, %for.body51.for.body51_crit_edge ]
  %56 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bitrates, align 4
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %57, i32 %i.0228, i32 2
  %58 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hw_value, align 2
  %conv53 = zext i16 %59 to i32
  %shl = shl nuw i32 1, %conv53
  %60 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %active_legacy_rate, align 8
  %or = or i32 %shl, %61
  store i32 %or, ptr %active_legacy_rate, align 8
  %add = add nsw i32 %i.0228, 1
  %call56 = call i32 @_find_next_bit_be(ptr noundef nonnull %supp, i32 noundef 32, i32 noundef %add) #15
  %cmp49 = icmp slt i32 %call56, 32
  br i1 %cmp49, label %for.body51.for.body51_crit_edge, label %for.body51.for.end57_crit_edge

for.body51.for.end57_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end57

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body51

for.end57:                                        ; preds = %for.body51.for.end57_crit_edge, %rs_rate_scale_clear_tbl_windows.exit.1.for.end57_crit_edge
  %tobool58.not = icmp eq ptr %vht_cap3, null
  br i1 %tobool58.not, label %for.end57.if.then60_crit_edge, label %lor.lhs.false

for.end57.if.then60_crit_edge:                    ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60

lor.lhs.false:                                    ; preds = %for.end57
  %62 = ptrtoint ptr %vht_cap3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vht_cap3, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool59.not = icmp eq i8 %63, 0
  br i1 %tobool59.not, label %lor.lhs.false.if.then60_crit_edge, label %if.else

lor.lhs.false.if.then60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60

if.then60:                                        ; preds = %lor.lhs.false.if.then60_crit_edge, %for.end57.if.then60_crit_edge
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mcs.i, align 1
  %conv.i = zext i8 %65 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %active_siso_rate.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 2
  %66 = and i8 %65, 1
  %and.i = zext i8 %66 to i32
  %shl.masked.i = and i32 %shl.i, 508
  %and7.i = or i32 %shl.masked.i, %and.i
  %shl9.i = shl nuw nsw i32 %and7.i, 4
  %67 = ptrtoint ptr %active_siso_rate.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shl9.i, ptr %active_siso_rate.i, align 4
  %arrayidx12.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %69 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 1
  %active_mimo2_rate.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 3
  %70 = and i8 %69, 1
  %and19.i = zext i8 %70 to i32
  %shl14.masked.i = and i32 %shl14.i, 508
  %and23.i = or i32 %shl14.masked.i, %and19.i
  %shl25.i = shl nuw nsw i32 %and23.i, 4
  %71 = ptrtoint ptr %active_mimo2_rate.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl25.i, ptr %active_mimo2_rate.i, align 8
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %72 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i, align 4
  %ht_params.i = getelementptr inbounds %struct.iwl_cfg, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %ht_params.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ht_params.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i = load i8, ptr %75, align 1
  %77 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i, label %if.then60.if.end.i_crit_edge, label %land.lhs.true.i

if.then60.if.end.i_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then60
  %78 = ptrtoint ptr %ht_cap2 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ht_cap2, align 2
  %80 = and i16 %79, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool29.not.i = icmp eq i16 %80, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %ldpc.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 14
  %81 = ptrtoint ptr %ldpc.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %ldpc.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then60.if.end.i_crit_edge
  %82 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i, align 4
  %ht_params31.i = getelementptr inbounds %struct.iwl_cfg, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %ht_params31.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ht_params31.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load32.i = load i8, ptr %85, align 1
  %87 = and i8 %bf.load32.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool36.not.i = icmp eq i8 %87, 0
  br i1 %tobool36.not.i, label %if.end.i.if.end61_crit_edge, label %land.lhs.true37.i

if.end.i.if.end61_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

land.lhs.true37.i:                                ; preds = %if.end.i
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %88 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %land.lhs.true37.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true37.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true37.i
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %89, i32 0, i32 20
  %90 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool2.not.i.i = icmp eq i8 %91, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %92 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fw.i.i, align 8
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i = and i8 %95, %91
  br label %iwl_mvm_get_valid_tx_ant.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %land.lhs.true37.i.cond.false.i.i_crit_edge
  %fw8.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %96 = ptrtoint ptr %fw8.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fw8.i.i, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %97, i32 0, i32 15
  %98 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i

iwl_mvm_get_valid_tx_ant.exit.i:                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %99, %cond.false.i.i ]
  %and.i1.i = and i8 %cond.i.i, 1
  %and3.i.i = lshr i8 %cond.i.i, 1
  %and3.lobit.i.i = and i8 %and3.i.i, 1
  %add.i.i = add nuw nsw i8 %and3.lobit.i.i, %and.i1.i
  %and10.i.i = lshr i8 %cond.i.i, 2
  %and10.lobit.i.i = and i8 %and10.i.i, 1
  %add16.i.i = add nuw nsw i8 %add.i.i, %and10.lobit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i.i)
  %cmp.i = icmp ugt i8 %add16.i.i, 1
  br i1 %cmp.i, label %land.lhs.true41.i, label %iwl_mvm_get_valid_tx_ant.exit.i.if.end61_crit_edge

iwl_mvm_get_valid_tx_ant.exit.i.if.end61_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

land.lhs.true41.i:                                ; preds = %iwl_mvm_get_valid_tx_ant.exit.i
  %100 = ptrtoint ptr %ht_cap2 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ht_cap2, align 2
  %102 = and i16 %101, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool45.not.i = icmp eq i16 %102, 0
  br i1 %tobool45.not.i, label %land.lhs.true41.i.if.end61_crit_edge, label %if.then46.i

land.lhs.true41.i.if.end61_crit_edge:             ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then46.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #17
  %stbc_capable.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 15
  %103 = ptrtoint ptr %stbc_capable.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %stbc_capable.i, align 2
  br label %if.end61

if.else:                                          ; preds = %lor.lhs.false
  %vht_mcs.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %104 = ptrtoint ptr %vht_mcs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vht_mcs.i.i.i, align 4
  %106 = lshr i16 %105, 8
  %conv1.i.i.i = and i16 %106, 3
  %conv4.i.i.i = zext i16 %conv1.i.i.i to i32
  %107 = zext i32 %conv4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %conv4.i.i.i, label %entry.unreachabledefault.i.i [
    i32 0, label %if.else.rs_vht_highest_rx_mcs_index.exit.i.i_crit_edge
    i32 1, label %if.then11.i.i.i
    i32 2, label %if.then16.i.i.i
    i32 3, label %if.else.if.end8.i.i_crit_edge
  ]

if.else.if.end8.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.else.rs_vht_highest_rx_mcs_index.exit.i.i_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_highest_rx_mcs_index.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_highest_rx_mcs_index.exit.i.i

if.then16.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_highest_rx_mcs_index.exit.i.i

entry.unreachabledefault.i.i:                     ; preds = %if.else
  unreachable

rs_vht_highest_rx_mcs_index.exit.i.i:             ; preds = %if.then16.i.i.i, %if.then11.i.i.i, %if.else.rs_vht_highest_rx_mcs_index.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 14, %if.then11.i.i.i ], [ 15, %if.then16.i.i.i ], [ 13, %if.else.rs_vht_highest_rx_mcs_index.exit.i.i_crit_edge ]
  %bandwidth.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %active_siso_rate.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rs_vht_highest_rx_mcs_index.exit.i.i
  %i.071.i.i = phi i32 [ 4, %rs_vht_highest_rx_mcs_index.exit.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %108 = zext i32 %i.071.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %i.071.i.i, label %for.body.i.i.if.end7.i.i_crit_edge [
    i32 5, label %for.body.i.i.for.inc.i.i_crit_edge
    i32 14, label %land.lhs.true.i.i167
  ]

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.body.i.i.if.end7.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

land.lhs.true.i.i167:                             ; preds = %for.body.i.i
  %109 = ptrtoint ptr %bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bandwidth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp5.i.i = icmp eq i32 %110, 0
  br i1 %cmp5.i.i, label %land.lhs.true.i.i167.for.inc.i.i_crit_edge, label %land.lhs.true.i.i167.if.end7.i.i_crit_edge

land.lhs.true.i.i167.if.end7.i.i_crit_edge:       ; preds = %land.lhs.true.i.i167
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

land.lhs.true.i.i167.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true.i.i167
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i167.if.end7.i.i_crit_edge, %for.body.i.i.if.end7.i.i_crit_edge
  %shl.i.i = shl nuw i32 1, %i.071.i.i
  %111 = ptrtoint ptr %active_siso_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %active_siso_rate.i.i, align 4
  %or.i.i = or i32 %112, %shl.i.i
  store i32 %or.i.i, ptr %active_siso_rate.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i, %land.lhs.true.i.i167.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.071.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, %retval.0.i.i.i
  br i1 %exitcond.i.i, label %for.inc.i.i.if.end8.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end8.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc.i.i.if.end8.i.i_crit_edge, %if.else.if.end8.i.i_crit_edge
  %rx_nss.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %113 = ptrtoint ptr %rx_nss.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rx_nss.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %114)
  %cmp9.i.i = icmp ult i8 %114, 2
  br i1 %cmp9.i.i, label %if.end8.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge, label %if.end12.i.i

if.end8.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_set_enabled_rates.exit.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %115 = ptrtoint ptr %vht_mcs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %vht_mcs.i.i.i, align 4
  %117 = lshr i16 %116, 10
  %conv1.i57.i.i = and i16 %117, 3
  %shr.i.i.i = zext i16 %conv1.i57.i.i to i32
  %118 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %shr.i.i.i, label %if.end12.unreachabledefault.i.i [
    i32 0, label %if.end12.i.i.rs_vht_highest_rx_mcs_index.exit66.i.i_crit_edge
    i32 1, label %if.then11.i59.i.i
    i32 2, label %if.then16.i60.i.i
    i32 3, label %if.end12.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge
  ]

if.end12.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_set_enabled_rates.exit.i

if.end12.i.i.rs_vht_highest_rx_mcs_index.exit66.i.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_highest_rx_mcs_index.exit66.i.i

if.then11.i59.i.i:                                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_highest_rx_mcs_index.exit66.i.i

if.then16.i60.i.i:                                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_highest_rx_mcs_index.exit66.i.i

if.end12.unreachabledefault.i.i:                  ; preds = %if.end12.i.i
  unreachable

rs_vht_highest_rx_mcs_index.exit66.i.i:           ; preds = %if.then16.i60.i.i, %if.then11.i59.i.i, %if.end12.i.i.rs_vht_highest_rx_mcs_index.exit66.i.i_crit_edge
  %retval.0.i65.i.i = phi i32 [ 14, %if.then11.i59.i.i ], [ 15, %if.then16.i60.i.i ], [ 13, %if.end12.i.i.rs_vht_highest_rx_mcs_index.exit66.i.i_crit_edge ]
  %bandwidth28.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %active_mimo2_rate.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 3
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.inc35.i.i.for.body20.i.i_crit_edge, %rs_vht_highest_rx_mcs_index.exit66.i.i
  %i.173.i.i = phi i32 [ 4, %rs_vht_highest_rx_mcs_index.exit66.i.i ], [ %inc36.i.i, %for.inc35.i.i.for.body20.i.i_crit_edge ]
  %119 = zext i32 %i.173.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %i.173.i.i, label %for.body20.i.i.if.end32.i.i_crit_edge [
    i32 5, label %for.body20.i.i.for.inc35.i.i_crit_edge
    i32 14, label %land.lhs.true27.i.i
  ]

for.body20.i.i.for.inc35.i.i_crit_edge:           ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35.i.i

for.body20.i.i.if.end32.i.i_crit_edge:            ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

land.lhs.true27.i.i:                              ; preds = %for.body20.i.i
  %120 = ptrtoint ptr %bandwidth28.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bandwidth28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp29.i.i = icmp eq i32 %121, 0
  br i1 %cmp29.i.i, label %land.lhs.true27.i.i.for.inc35.i.i_crit_edge, label %land.lhs.true27.i.i.if.end32.i.i_crit_edge

land.lhs.true27.i.i.if.end32.i.i_crit_edge:       ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

land.lhs.true27.i.i.for.inc35.i.i_crit_edge:      ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35.i.i

if.end32.i.i:                                     ; preds = %land.lhs.true27.i.i.if.end32.i.i_crit_edge, %for.body20.i.i.if.end32.i.i_crit_edge
  %shl33.i.i = shl nuw i32 1, %i.173.i.i
  %122 = ptrtoint ptr %active_mimo2_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %active_mimo2_rate.i.i, align 8
  %or34.i.i = or i32 %123, %shl33.i.i
  store i32 %or34.i.i, ptr %active_mimo2_rate.i.i, align 8
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %if.end32.i.i, %land.lhs.true27.i.i.for.inc35.i.i_crit_edge, %for.body20.i.i.for.inc35.i.i_crit_edge
  %inc36.i.i = add nuw nsw i32 %i.173.i.i, 1
  %exitcond75.i.i = icmp eq i32 %inc36.i.i, %retval.0.i65.i.i
  br i1 %exitcond75.i.i, label %for.inc35.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge, label %for.inc35.i.i.for.body20.i.i_crit_edge

for.inc35.i.i.for.body20.i.i_crit_edge:           ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body20.i.i

for.inc35.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge: ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_vht_set_enabled_rates.exit.i

rs_vht_set_enabled_rates.exit.i:                  ; preds = %for.inc35.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge, %if.end12.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge, %if.end8.i.i.rs_vht_set_enabled_rates.exit.i_crit_edge
  %cfg.i168 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %124 = ptrtoint ptr %cfg.i168 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfg.i168, align 4
  %ht_params.i169 = getelementptr inbounds %struct.iwl_cfg, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %ht_params.i169 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ht_params.i169, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i170 = load i8, ptr %127, align 1
  %129 = and i8 %bf.load.i170, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i171 = icmp eq i8 %129, 0
  br i1 %tobool.not.i171, label %rs_vht_set_enabled_rates.exit.i.if.end.i176_crit_edge, label %land.lhs.true.i173

rs_vht_set_enabled_rates.exit.i.if.end.i176_crit_edge: ; preds = %rs_vht_set_enabled_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i176

land.lhs.true.i173:                               ; preds = %rs_vht_set_enabled_rates.exit.i
  %cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %130 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cap.i, align 4
  %and.i172 = and i32 %131, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool1.not.i = icmp eq i32 %and.i172, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i173.if.end.i176_crit_edge, label %if.then.i175

land.lhs.true.i173.if.end.i176_crit_edge:         ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i176

if.then.i175:                                     ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #17
  %ldpc.i174 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 14
  %132 = ptrtoint ptr %ldpc.i174 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %ldpc.i174, align 1
  br label %if.end.i176

if.end.i176:                                      ; preds = %if.then.i175, %land.lhs.true.i173.if.end.i176_crit_edge, %rs_vht_set_enabled_rates.exit.i.if.end.i176_crit_edge
  %133 = ptrtoint ptr %cfg.i168 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cfg.i168, align 4
  %ht_params3.i = getelementptr inbounds %struct.iwl_cfg, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %ht_params3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ht_params3.i, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load4.i = load i8, ptr %136, align 1
  %138 = and i8 %bf.load4.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool8.not.i = icmp eq i8 %138, 0
  br i1 %tobool8.not.i, label %if.end.i176.if.end18.i_crit_edge, label %land.lhs.true9.i

if.end.i176.if.end18.i_crit_edge:                 ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

land.lhs.true9.i:                                 ; preds = %if.end.i176
  %nvm_data.i.i177 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %139 = ptrtoint ptr %nvm_data.i.i177 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %nvm_data.i.i177, align 8
  %tobool.not.i.i178 = icmp eq ptr %140, null
  br i1 %tobool.not.i.i178, label %land.lhs.true9.i.cond.false.i.i187_crit_edge, label %land.lhs.true.i44.i

land.lhs.true9.i.cond.false.i.i187_crit_edge:     ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i187

land.lhs.true.i44.i:                              ; preds = %land.lhs.true9.i
  %valid_tx_ant.i.i179 = getelementptr inbounds %struct.iwl_nvm_data, ptr %140, i32 0, i32 20
  %141 = ptrtoint ptr %valid_tx_ant.i.i179 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %valid_tx_ant.i.i179, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool2.not.i.i180 = icmp eq i8 %142, 0
  br i1 %tobool2.not.i.i180, label %land.lhs.true.i44.i.cond.false.i.i187_crit_edge, label %cond.true.i.i184

land.lhs.true.i44.i.cond.false.i.i187_crit_edge:  ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i187

cond.true.i.i184:                                 ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i.i181 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %143 = ptrtoint ptr %fw.i.i181 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %fw.i.i181, align 8
  %valid_tx_ant3.i.i182 = getelementptr inbounds %struct.iwl_fw, ptr %144, i32 0, i32 15
  %145 = ptrtoint ptr %valid_tx_ant3.i.i182 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %valid_tx_ant3.i.i182, align 4
  %and.i.i183 = and i8 %146, %142
  br label %iwl_mvm_get_valid_tx_ant.exit.i196

cond.false.i.i187:                                ; preds = %land.lhs.true.i44.i.cond.false.i.i187_crit_edge, %land.lhs.true9.i.cond.false.i.i187_crit_edge
  %fw8.i.i185 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %147 = ptrtoint ptr %fw8.i.i185 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fw8.i.i185, align 8
  %valid_tx_ant9.i.i186 = getelementptr inbounds %struct.iwl_fw, ptr %148, i32 0, i32 15
  %149 = ptrtoint ptr %valid_tx_ant9.i.i186 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %valid_tx_ant9.i.i186, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i196

iwl_mvm_get_valid_tx_ant.exit.i196:               ; preds = %cond.false.i.i187, %cond.true.i.i184
  %cond.i.i188 = phi i8 [ %and.i.i183, %cond.true.i.i184 ], [ %150, %cond.false.i.i187 ]
  %and.i45.i = and i8 %cond.i.i188, 1
  %and3.i.i189 = lshr i8 %cond.i.i188, 1
  %and3.lobit.i.i190 = and i8 %and3.i.i189, 1
  %add.i.i191 = add nuw nsw i8 %and3.lobit.i.i190, %and.i45.i
  %and10.i.i192 = lshr i8 %cond.i.i188, 2
  %and10.lobit.i.i193 = and i8 %and10.i.i192, 1
  %add16.i.i194 = add nuw nsw i8 %add.i.i191, %and10.lobit.i.i193
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i.i194)
  %cmp.i195 = icmp ugt i8 %add16.i.i194, 1
  br i1 %cmp.i195, label %land.lhs.true13.i, label %iwl_mvm_get_valid_tx_ant.exit.i196.if.end18.i_crit_edge

iwl_mvm_get_valid_tx_ant.exit.i196.if.end18.i_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.i196
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

land.lhs.true13.i:                                ; preds = %iwl_mvm_get_valid_tx_ant.exit.i196
  %cap14.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %151 = ptrtoint ptr %cap14.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cap14.i, align 4
  %and15.i = and i32 %152, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true13.i.if.end18.i_crit_edge, label %if.then17.i

land.lhs.true13.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then17.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #17
  %stbc_capable.i197 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 15
  %153 = ptrtoint ptr %stbc_capable.i197 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %stbc_capable.i197, align 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %land.lhs.true13.i.if.end18.i_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.i196.if.end18.i_crit_edge, %if.end.i176.if.end18.i_crit_edge
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %154 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fw.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %155, i32 0, i32 5, i32 8
  %156 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %_capa.i.i, align 4
  %158 = and i32 %157, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.i.not.i = icmp eq i32 %158, 0
  br i1 %tobool.i.not.i, label %if.end18.i.if.end61_crit_edge, label %land.lhs.true21.i

if.end18.i.if.end61_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

land.lhs.true21.i:                                ; preds = %if.end18.i
  %nvm_data.i46.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %159 = ptrtoint ptr %nvm_data.i46.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %nvm_data.i46.i, align 8
  %tobool.not.i47.i = icmp eq ptr %160, null
  br i1 %tobool.not.i47.i, label %land.lhs.true21.i.cond.false.i57.i_crit_edge, label %land.lhs.true.i50.i

land.lhs.true21.i.cond.false.i57.i_crit_edge:     ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i57.i

land.lhs.true.i50.i:                              ; preds = %land.lhs.true21.i
  %valid_tx_ant.i48.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %160, i32 0, i32 20
  %161 = ptrtoint ptr %valid_tx_ant.i48.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %valid_tx_ant.i48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool2.not.i49.i = icmp eq i8 %162, 0
  br i1 %tobool2.not.i49.i, label %land.lhs.true.i50.i.cond.false.i57.i_crit_edge, label %cond.true.i54.i

land.lhs.true.i50.i.cond.false.i57.i_crit_edge:   ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i57.i

cond.true.i54.i:                                  ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #17
  %valid_tx_ant3.i52.i = getelementptr inbounds %struct.iwl_fw, ptr %155, i32 0, i32 15
  %163 = ptrtoint ptr %valid_tx_ant3.i52.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %valid_tx_ant3.i52.i, align 4
  %and.i53.i = and i8 %164, %162
  br label %iwl_mvm_get_valid_tx_ant.exit59.i

cond.false.i57.i:                                 ; preds = %land.lhs.true.i50.i.cond.false.i57.i_crit_edge, %land.lhs.true21.i.cond.false.i57.i_crit_edge
  %valid_tx_ant9.i56.i = getelementptr inbounds %struct.iwl_fw, ptr %155, i32 0, i32 15
  %165 = ptrtoint ptr %valid_tx_ant9.i56.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %valid_tx_ant9.i56.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit59.i

iwl_mvm_get_valid_tx_ant.exit59.i:                ; preds = %cond.false.i57.i, %cond.true.i54.i
  %cond.i58.i = phi i8 [ %and.i53.i, %cond.true.i54.i ], [ %166, %cond.false.i57.i ]
  %and.i60.i = and i8 %cond.i58.i, 1
  %and3.i61.i = lshr i8 %cond.i58.i, 1
  %and3.lobit.i62.i = and i8 %and3.i61.i, 1
  %add.i63.i = add nuw nsw i8 %and3.lobit.i62.i, %and.i60.i
  %and10.i64.i = lshr i8 %cond.i58.i, 2
  %and10.lobit.i65.i = and i8 %and10.i64.i, 1
  %add16.i66.i = add nuw nsw i8 %add.i63.i, %and10.lobit.i65.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i66.i)
  %cmp25.i = icmp ugt i8 %add16.i66.i, 1
  br i1 %cmp25.i, label %land.lhs.true27.i, label %iwl_mvm_get_valid_tx_ant.exit59.i.if.end61_crit_edge

iwl_mvm_get_valid_tx_ant.exit59.i.if.end61_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit59.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

land.lhs.true27.i:                                ; preds = %iwl_mvm_get_valid_tx_ant.exit59.i
  %cap28.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %167 = ptrtoint ptr %cap28.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cap28.i, align 4
  %and29.i = and i32 %168, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true27.i.if.end61_crit_edge, label %if.then31.i

land.lhs.true27.i.if.end61_crit_edge:             ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then31.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #17
  %bfer_capable.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 16
  %169 = ptrtoint ptr %bfer_capable.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %bfer_capable.i, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then31.i, %land.lhs.true27.i.if.end61_crit_edge, %iwl_mvm_get_valid_tx_ant.exit59.i.if.end61_crit_edge, %if.end18.i.if.end61_crit_edge, %if.then46.i, %land.lhs.true41.i.if.end61_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.i.if.end61_crit_edge, %if.end.i.if.end61_crit_edge
  %.sink = phi i8 [ 0, %if.end.i.if.end61_crit_edge ], [ 0, %iwl_mvm_get_valid_tx_ant.exit.i.if.end61_crit_edge ], [ 0, %land.lhs.true41.i.if.end61_crit_edge ], [ 0, %if.then46.i ], [ 1, %if.end18.i.if.end61_crit_edge ], [ 1, %iwl_mvm_get_valid_tx_ant.exit59.i.if.end61_crit_edge ], [ 1, %land.lhs.true27.i.if.end61_crit_edge ], [ 1, %if.then31.i ]
  %is_vht.i198 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 27, i32 1
  %170 = ptrtoint ptr %is_vht.i198 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %.sink, ptr %is_vht.i198, align 8
  %171 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %active_legacy_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i199 = icmp eq i32 %172, 0
  %173 = call i32 @llvm.ctlz.i32(i32 %172, i1 false) #15, !range !624
  %174 = trunc i32 %173 to i8
  %175 = sub nsw i8 31, %174
  %conv64 = select i1 %tobool.not.i199, i8 17, i8 %175
  %max_legacy_rate_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 4
  %176 = ptrtoint ptr %max_legacy_rate_idx to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv64, ptr %max_legacy_rate_idx, align 4
  %active_siso_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 2
  %177 = ptrtoint ptr %active_siso_rate to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %active_siso_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i200 = icmp eq i32 %178, 0
  %179 = call i32 @llvm.ctlz.i32(i32 %178, i1 false) #15, !range !624
  %180 = trunc i32 %179 to i8
  %181 = sub nsw i8 31, %180
  %conv66 = select i1 %tobool.not.i200, i8 17, i8 %181
  %max_siso_rate_idx = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 22
  %182 = ptrtoint ptr %max_siso_rate_idx to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv66, ptr %max_siso_rate_idx, align 1
  %active_mimo2_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 3
  %183 = ptrtoint ptr %active_mimo2_rate to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %active_mimo2_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i203 = icmp eq i32 %184, 0
  %185 = call i32 @llvm.ctlz.i32(i32 %184, i1 false) #15, !range !624
  %186 = trunc i32 %185 to i8
  %187 = sub nsw i8 31, %186
  %conv68 = select i1 %tobool.not.i203, i8 17, i8 %187
  %max_mimo2_rate_idx = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 23
  %188 = ptrtoint ptr %max_mimo2_rate_idx to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv68, ptr %max_mimo2_rate_idx, align 2
  %189 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mvm, align 8
  %is_vht = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 27, i32 1
  %191 = ptrtoint ptr %is_vht to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %is_vht, align 8, !range !619
  %193 = zext i8 %192 to i32
  %ldpc = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 14
  %194 = ptrtoint ptr %ldpc to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %ldpc, align 1, !range !619
  %196 = zext i8 %195 to i32
  %stbc_capable = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 15
  %197 = ptrtoint ptr %stbc_capable to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %stbc_capable, align 2, !range !619
  %199 = zext i8 %198 to i32
  %bfer_capable = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 16
  %200 = ptrtoint ptr %bfer_capable to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %bfer_capable, align 1, !range !619
  %202 = zext i8 %201 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %190, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_drv_rate_init, ptr noundef nonnull @.str.154, i32 noundef %172, i32 noundef %178, i32 noundef %184, i32 noundef %193, i32 noundef %196, i32 noundef %199, i32 noundef %202) #15
  %203 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mvm, align 8
  %205 = ptrtoint ptr %max_legacy_rate_idx to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %max_legacy_rate_idx, align 4
  %conv93 = zext i8 %206 to i32
  %207 = ptrtoint ptr %max_siso_rate_idx to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %max_siso_rate_idx, align 1
  %conv95 = zext i8 %208 to i32
  %209 = ptrtoint ptr %max_mimo2_rate_idx to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %max_mimo2_rate_idx, align 2
  %conv97 = zext i8 %210 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %204, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_drv_rate_init, ptr noundef nonnull @.str.155, i32 noundef %conv93, i32 noundef %conv95, i32 noundef %conv97) #15
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %211 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i206 = icmp eq ptr %212, null
  br i1 %tobool.not.i206, label %if.end61.cond.false.i_crit_edge, label %land.lhs.true.i207

if.end61.cond.false.i_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i

land.lhs.true.i207:                               ; preds = %if.end61
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %212, i32 0, i32 20
  %213 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool2.not.i = icmp eq i8 %214, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i207.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i207.cond.false.i_crit_edge:        ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i208 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %215 = ptrtoint ptr %fw.i208 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %fw.i208, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %216, i32 0, i32 15
  %217 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i209 = and i8 %218, %214
  br label %iwl_mvm_get_valid_tx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i207.cond.false.i_crit_edge, %if.end61.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %219 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %220, i32 0, i32 15
  %221 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %valid_tx_ant9.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i209, %cond.true.i ], [ %222, %cond.false.i ]
  %call101 = call zeroext i8 @iwl_mvm_bt_coex_get_single_ant_msk(ptr noundef %mvm, i8 noundef zeroext %cond.i) #15
  %single_stream_ant_msk = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 29, i32 5
  %223 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %call101, ptr %single_stream_ant_msk, align 2
  %dual_stream_ant_msk = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 29, i32 6
  %224 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 3, ptr %dual_stream_ant_msk, align 1
  %tx_agg_tid_en = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 6, i32 3, i32 18
  %225 = ptrtoint ptr %tx_agg_tid_en to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 -1, ptr %tx_agg_tid_en, align 8
  %is_agg = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 33
  %226 = ptrtoint ptr %is_agg to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %is_agg, align 8
  %drv_stats_lock.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 84
  call void @_raw_spin_lock_bh(ptr noundef %drv_stats_lock.i) #15
  %drv_rx_stats.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83
  %227 = call ptr @memset(ptr %drv_rx_stats.i, i32 0, i32 96)
  call void @_raw_spin_unlock_bh(ptr noundef %drv_stats_lock.i) #15
  %tobool.not.i210 = icmp eq ptr %sta, null
  %tobool1.not.i211 = icmp eq ptr %lq_sta4, null
  %or.cond.i = or i1 %tobool.not.i210, %tobool1.not.i211
  br i1 %or.cond.i, label %iwl_mvm_get_valid_tx_ant.exit.rs_initialize_lq.exit_crit_edge, label %if.end.i214

iwl_mvm_get_valid_tx_ant.exit.rs_initialize_lq.exit_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_initialize_lq.exit

if.end.i214:                                      ; preds = %iwl_mvm_get_valid_tx_ant.exit
  %search_better_tbl.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 2
  %228 = ptrtoint ptr %search_better_tbl.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %search_better_tbl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool2.not.i212 = icmp eq i8 %229, 0
  %230 = ptrtoint ptr %lq_sta4 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %lq_sta4, align 8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  %active_tbl.0.i = select i1 %tobool2.not.i212, i8 %231, i8 %233
  %idxprom.i = zext i8 %active_tbl.0.i to i32
  %arrayidx.i213 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 30, i32 %idxprom.i
  %234 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %235, null
  br i1 %tobool.not.i.i.i, label %if.end.i214.cond.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i214.cond.false.i.i.i_crit_edge:           ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i214
  %valid_tx_ant.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %235, i32 0, i32 20
  %236 = ptrtoint ptr %valid_tx_ant.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %valid_tx_ant.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool2.not.i.i.i = icmp eq i8 %237, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %238 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %fw.i.i.i, align 8
  %valid_tx_ant3.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %239, i32 0, i32 15
  %240 = ptrtoint ptr %valid_tx_ant3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %valid_tx_ant3.i.i.i, align 4
  %and.i.i.i = and i8 %241, %237
  br label %iwl_mvm_get_valid_tx_ant.exit.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, %if.end.i214.cond.false.i.i.i_crit_edge
  %fw8.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %242 = ptrtoint ptr %fw8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %fw8.i.i.i, align 8
  %valid_tx_ant9.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %243, i32 0, i32 15
  %244 = ptrtoint ptr %valid_tx_ant9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %valid_tx_ant9.i.i.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i.i

iwl_mvm_get_valid_tx_ant.exit.i.i:                ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i8 [ %and.i.i.i, %cond.true.i.i.i ], [ %245, %cond.false.i.i.i ]
  %chains.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 17
  %246 = ptrtoint ptr %chains.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %chains.i.i, align 4
  %conv.i.i = zext i8 %247 to i32
  %and.i.i215 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215)
  %tobool.not.i.i216 = icmp eq i32 %and.i.i215, 0
  br i1 %tobool.not.i.i216, label %iwl_mvm_get_valid_tx_ant.exit.i.i.for.inc.i.i217_crit_edge, label %if.end.i.i

iwl_mvm_get_valid_tx_ant.exit.i.i.for.inc.i.i217_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i217

if.end.i.i:                                       ; preds = %iwl_mvm_get_valid_tx_ant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 9, i32 18
  %248 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %249)
  %cmp5.not.i.i = icmp ne i8 %249, -128
  %spec.select58.i.i = zext i1 %cmp5.not.i.i to i8
  br label %for.inc.i.i217

for.inc.i.i217:                                   ; preds = %if.end.i.i, %iwl_mvm_get_valid_tx_ant.exit.i.i.for.inc.i.i217_crit_edge
  %best_rssi.1.i.i = phi i8 [ -128, %iwl_mvm_get_valid_tx_ant.exit.i.i.for.inc.i.i217_crit_edge ], [ %249, %if.end.i.i ]
  %best_ant.1.i.i = phi i8 [ 0, %iwl_mvm_get_valid_tx_ant.exit.i.i.for.inc.i.i217_crit_edge ], [ %spec.select58.i.i, %if.end.i.i ]
  %and.1.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i217.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i217.for.inc.1.i.i_crit_edge:           ; preds = %for.inc.i.i217
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i217
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.1.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 9, i32 19
  %250 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %251, i8 %best_rssi.1.i.i)
  %cmp5.1.i.i = icmp sgt i8 %251, %best_rssi.1.i.i
  %252 = call i8 @llvm.smax.i8(i8 %251, i8 %best_rssi.1.i.i) #15
  %spec.select58.1.i.i = select i1 %cmp5.1.i.i, i8 2, i8 %best_ant.1.i.i
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end.1.i.i, %for.inc.i.i217.for.inc.1.i.i_crit_edge
  %best_rssi.1.1.i.i = phi i8 [ %best_rssi.1.i.i, %for.inc.i.i217.for.inc.1.i.i_crit_edge ], [ %252, %if.end.1.i.i ]
  %best_ant.1.1.i.i = phi i8 [ %best_ant.1.i.i, %for.inc.i.i217.for.inc.1.i.i_crit_edge ], [ %spec.select58.1.i.i, %if.end.1.i.i ]
  %and.2.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.2.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 9, i32 20
  %253 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %254, i8 %best_rssi.1.1.i.i)
  %cmp5.2.i.i = icmp sgt i8 %254, %best_rssi.1.1.i.i
  %255 = call i8 @llvm.smax.i8(i8 %254, i8 %best_rssi.1.1.i.i) #15
  %spec.select58.2.i.i = select i1 %cmp5.2.i.i, i8 4, i8 %best_ant.1.1.i.i
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %best_rssi.1.2.i.i = phi i8 [ %best_rssi.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %255, %if.end.2.i.i ]
  %best_ant.1.2.i.i = phi i8 [ %best_ant.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %spec.select58.2.i.i, %if.end.2.i.i ]
  %and.3.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3.i.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.3.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 9, i32 21
  %256 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %257, i8 %best_rssi.1.2.i.i)
  %cmp5.3.i.i = icmp sgt i8 %257, %best_rssi.1.2.i.i
  %258 = call i8 @llvm.smax.i8(i8 %257, i8 %best_rssi.1.2.i.i) #15
  %spec.select58.3.i.i = select i1 %cmp5.3.i.i, i8 8, i8 %best_ant.1.2.i.i
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %best_rssi.1.3.i.i = phi i8 [ %best_rssi.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ], [ %258, %if.end.3.i.i ]
  %best_ant.1.3.i.i = phi i8 [ %best_ant.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ], [ %spec.select58.3.i.i, %if.end.3.i.i ]
  %259 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mvm, align 8
  %call15.i.i = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %best_ant.1.3.i.i) #15
  %conv16.i.i = sext i8 %best_rssi.1.3.i.i to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %260, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_initial_rate, ptr noundef nonnull @.str.157, ptr noundef %call15.i.i, i32 noundef %conv16.i.i) #15
  %best_ant.0.off.i.i = add nsw i8 %best_ant.1.3.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %best_ant.0.off.i.i)
  %switch.i.i = icmp ult i8 %best_ant.0.off.i.i, 2
  br i1 %switch.i.i, label %for.inc.3.i.i.if.end28.i.i_crit_edge, label %if.then25.i.i

for.inc.3.i.i.if.end28.i.i_crit_edge:             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i.i

if.then25.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call26.i.i = call zeroext i8 @first_antenna(i8 noundef zeroext %cond.i.i.i) #15
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then25.i.i, %for.inc.3.i.i.if.end28.i.i_crit_edge
  %call26.sink.i.i = phi i8 [ %call26.i.i, %if.then25.i.i ], [ %best_ant.1.3.i.i, %for.inc.3.i.i.if.end28.i.i_crit_edge ]
  %261 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i213, i32 0, i32 2
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %call26.sink.i.i, ptr %261, align 4
  %sgi.i.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i213, i32 0, i32 4
  %263 = ptrtoint ptr %sgi.i.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %sgi.i.i, align 4
  %ldpc.i.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i213, i32 0, i32 5
  %264 = ptrtoint ptr %ldpc.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %ldpc.i.i, align 1
  %bw.i.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i213, i32 0, i32 3
  %265 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %bw.i.i, align 4
  %call29.i.i = call i32 @_find_first_bit_be(ptr noundef %active_legacy_rate, i32 noundef 32) #15
  %266 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %call29.i.i, ptr %arrayidx.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp30.i.i = icmp eq i32 %band, 1
  %spec.select.i.i = select i1 %cmp30.i.i, i32 2, i32 1
  %267 = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i213, i32 0, i32 1
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %spec.select.i.i, ptr %267, align 4
  %269 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %mvm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call29.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call29.i.i, 12
  br i1 %cmp3.i.i.i.i, label %if.end.i.sink.split.i.i.i.i, label %if.end28.i.i.rs_get_initial_rate.exit.i_crit_edge

if.end28.i.i.rs_get_initial_rate.exit.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_initial_rate.exit.i

if.end.i.sink.split.i.i.i.i:                      ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i.i.i = getelementptr [12 x ptr], ptr @rs_pretty_rate.legacy_rates, i32 0, i32 %call29.i.i
  %271 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  br label %rs_get_initial_rate.exit.i

rs_get_initial_rate.exit.i:                       ; preds = %if.end.i.sink.split.i.i.i.i, %if.end28.i.i.rs_get_initial_rate.exit.i_crit_edge
  %rate_str.07.i.i.i.i = phi ptr [ @.str.64, %if.end28.i.i.rs_get_initial_rate.exit.i_crit_edge ], [ %272, %if.end.i.sink.split.i.i.i.i ]
  %arrayidx.i.i.i.i.i = getelementptr [9 x ptr], ptr @rs_pretty_lq_type.lq_types, i32 0, i32 %spec.select.i.i
  %273 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %275 = ptrtoint ptr %261 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %261, align 4
  %call28.i.i.i.i = call ptr @iwl_rs_pretty_ant(i8 noundef zeroext %276) #15
  %call29.i.i.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @rs_pretty_rate.buf, ptr noundef nonnull @.str.65, ptr noundef %274, ptr noundef %call28.i.i.i.i, ptr noundef %rate_str.07.i.i.i.i) #15
  %277 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %bw.i.i, align 4
  %279 = ptrtoint ptr %sgi.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %sgi.i.i, align 4, !range !619
  %281 = zext i8 %280 to i32
  %282 = ptrtoint ptr %ldpc.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %ldpc.i.i, align 1, !range !619
  %284 = zext i8 %283 to i32
  %stbc.i.i.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i213, i32 0, i32 6
  %285 = ptrtoint ptr %stbc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %stbc.i.i.i, align 2, !range !619
  %287 = zext i8 %286 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %270, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dump_rate, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.158, ptr noundef nonnull @rs_pretty_rate.buf, i32 noundef %278, i32 noundef %281, i32 noundef %284, i32 noundef %287) #15
  %max_mimo2_rate_idx.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 23
  %288 = ptrtoint ptr %max_mimo2_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %max_mimo2_rate_idx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %289)
  %cmp.not.i.i = icmp eq i8 %289, 17
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %rs_get_initial_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %290 = ptrtoint ptr %is_vht to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %is_vht, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool.not.i94.i = icmp eq i8 %291, 0
  %cond.i.i218 = select i1 %tobool.not.i94.i, i32 4, i32 6
  %type.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 6
  %292 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %cond.i.i218, ptr %type.i.i, align 4
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %rs_get_initial_rate.exit.i
  %max_siso_rate_idx.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 22
  %293 = ptrtoint ptr %max_siso_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %max_siso_rate_idx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %294)
  %cmp4.not.i.i = icmp eq i8 %294, 17
  br i1 %cmp4.not.i.i, label %if.else12.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %295 = ptrtoint ptr %is_vht to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %is_vht, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool8.not.i.i = icmp eq i8 %296, 0
  %cond10.i.i = select i1 %tobool8.not.i.i, i32 3, i32 5
  %type11.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 6
  %297 = ptrtoint ptr %type11.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %cond10.i.i, ptr %type11.i.i, align 4
  br label %if.end20.i.i

if.else12.i.i:                                    ; preds = %if.else.i.i
  %298 = ptrtoint ptr %band44 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %band44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %299)
  %cmp13.i.i = icmp eq i32 %299, 1
  %type16.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 6
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.else17.i.i

if.then15.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %300 = ptrtoint ptr %type16.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 2, ptr %type16.i.i, align 4
  br label %if.end20.i.i

if.else17.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %301 = ptrtoint ptr %type16.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 1, ptr %type16.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else17.i.i, %if.then15.i.i, %if.then6.i.i, %if.then.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  %302 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %vht_cap1.i.i.i, i32 0, i32 1
  %cap.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %303 = ptrtoint ptr %cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %cap.i.i.i, align 4
  %305 = call i32 @llvm.bswap.i32(i32 %304) #15
  %306 = ptrtoint ptr %vht_cap1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %vht_cap1.i.i.i, align 4
  %vht_mcs.i.i.i219 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %307 = ptrtoint ptr %vht_mcs.i.i.i219 to i32
  call void @__asan_loadN_noabort(i32 %307, i32 8)
  %308 = load i64, ptr %vht_mcs.i.i.i219, align 4
  %309 = ptrtoint ptr %302 to i32
  call void @__asan_storeN_noabort(i32 %309, i32 8)
  store i64 %308, ptr %302, align 4
  %bandwidth.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %310 = ptrtoint ptr %bandwidth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %bandwidth.i.i.i, align 4
  %312 = zext i32 %311 to i64
  call void @__sanitizer_cov_trace_switch(i64 %312, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %311, label %rs_bw_from_sta_bw.exit.thread.i.i [
    i32 3, label %rs_bw_from_sta_bw.exit.i.i
    i32 2, label %rs_bw_from_sta_bw.exit.thread145.i.i
    i32 1, label %rs_bw_from_sta_bw.exit.thread139.i.i
  ]

rs_bw_from_sta_bw.exit.thread145.i.i:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  %bw147.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 8
  %313 = ptrtoint ptr %bw147.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 4096, ptr %bw147.i.i, align 4
  br label %land.lhs.true16.i.i.i

rs_bw_from_sta_bw.exit.thread139.i.i:             ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  %bw141.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 8
  %314 = ptrtoint ptr %bw141.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 2048, ptr %bw141.i.i, align 4
  %315 = ptrtoint ptr %ht_cap2 to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %ht_cap2, align 2
  %317 = and i16 %316, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %317)
  %tobool10.not.i.i.i = icmp eq i16 %317, 0
  br i1 %tobool10.not.i.i.i, label %rs_bw_from_sta_bw.exit.thread139.i.i.if.end30.i.i.i_crit_edge, label %rs_bw_from_sta_bw.exit.thread139.i.i.rs_sgi_allow.exit.i.i_crit_edge

rs_bw_from_sta_bw.exit.thread139.i.i.rs_sgi_allow.exit.i.i_crit_edge: ; preds = %rs_bw_from_sta_bw.exit.thread139.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_sgi_allow.exit.i.i

rs_bw_from_sta_bw.exit.thread139.i.i.if.end30.i.i.i_crit_edge: ; preds = %rs_bw_from_sta_bw.exit.thread139.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i.i

rs_bw_from_sta_bw.exit.thread.i.i:                ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  %bw133.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 8
  %318 = ptrtoint ptr %bw133.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 0, ptr %bw133.i.i, align 4
  %319 = ptrtoint ptr %ht_cap2 to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %ht_cap2, align 2
  %321 = and i16 %320, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %321)
  %tobool.not.i.i95.i = icmp eq i16 %321, 0
  br i1 %tobool.not.i.i95.i, label %rs_bw_from_sta_bw.exit.thread.i.i.if.end30.i.i.i_crit_edge, label %rs_bw_from_sta_bw.exit.thread.i.i.rs_sgi_allow.exit.i.i_crit_edge

rs_bw_from_sta_bw.exit.thread.i.i.rs_sgi_allow.exit.i.i_crit_edge: ; preds = %rs_bw_from_sta_bw.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_sgi_allow.exit.i.i

rs_bw_from_sta_bw.exit.thread.i.i.if.end30.i.i.i_crit_edge: ; preds = %rs_bw_from_sta_bw.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i.i

rs_bw_from_sta_bw.exit.i.i:                       ; preds = %if.end20.i.i
  %rx_nss.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %322 = ptrtoint ptr %rx_nss.i.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %rx_nss.i.i.i, align 1
  %conv.i.i.i = zext i8 %323 to i32
  %call.i.i.i = call i32 @ieee80211_get_vht_max_nss(ptr noundef nonnull %vht_cap1.i.i.i, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true, i32 noundef %conv.i.i.i) #15
  %324 = ptrtoint ptr %rx_nss.i.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %rx_nss.i.i.i, align 1
  %conv3.i.i.i = zext i8 %325 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %conv3.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, %conv3.i.i.i
  %..i.i.i = select i1 %cmp.i.i.i, i32 4096, i32 6144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vht_cap1.i.i.i) #15
  %bw.i96.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 8
  %326 = ptrtoint ptr %bw.i96.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %..i.i.i, ptr %bw.i96.i, align 4
  br i1 %cmp.i.i.i, label %rs_bw_from_sta_bw.exit.i.i.land.lhs.true16.i.i.i_crit_edge, label %land.lhs.true25.i.i.i

rs_bw_from_sta_bw.exit.i.i.land.lhs.true16.i.i.i_crit_edge: ; preds = %rs_bw_from_sta_bw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true16.i.i.i

land.lhs.true16.i.i.i:                            ; preds = %rs_bw_from_sta_bw.exit.i.i.land.lhs.true16.i.i.i_crit_edge, %rs_bw_from_sta_bw.exit.thread145.i.i
  %327 = ptrtoint ptr %cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %cap.i.i.i, align 4
  %and18.i.i.i = and i32 %328, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %and18.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %land.lhs.true16.i.i.i.if.end30.i.i.i_crit_edge, label %land.lhs.true16.i.i.i.rs_sgi_allow.exit.i.i_crit_edge

land.lhs.true16.i.i.i.rs_sgi_allow.exit.i.i_crit_edge: ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_sgi_allow.exit.i.i

land.lhs.true16.i.i.i.if.end30.i.i.i_crit_edge:   ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i.i

land.lhs.true25.i.i.i:                            ; preds = %rs_bw_from_sta_bw.exit.i.i
  %329 = ptrtoint ptr %cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %cap.i.i.i, align 4
  %and27.i.i.i = and i32 %330, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %and27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %land.lhs.true25.i.i.i.if.end30.i.i.i_crit_edge, label %land.lhs.true25.i.i.i.rs_sgi_allow.exit.i.i_crit_edge

land.lhs.true25.i.i.i.rs_sgi_allow.exit.i.i_crit_edge: ; preds = %land.lhs.true25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_sgi_allow.exit.i.i

land.lhs.true25.i.i.i.if.end30.i.i.i_crit_edge:   ; preds = %land.lhs.true25.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i.i

if.end30.i.i.i:                                   ; preds = %land.lhs.true25.i.i.i.if.end30.i.i.i_crit_edge, %land.lhs.true16.i.i.i.if.end30.i.i.i_crit_edge, %rs_bw_from_sta_bw.exit.thread.i.i.if.end30.i.i.i_crit_edge, %rs_bw_from_sta_bw.exit.thread139.i.i.if.end30.i.i.i_crit_edge
  %retval.0.i136.i.i = phi i32 [ 6144, %land.lhs.true25.i.i.i.if.end30.i.i.i_crit_edge ], [ 4096, %land.lhs.true16.i.i.i.if.end30.i.i.i_crit_edge ], [ 2048, %rs_bw_from_sta_bw.exit.thread139.i.i.if.end30.i.i.i_crit_edge ], [ 0, %rs_bw_from_sta_bw.exit.thread.i.i.if.end30.i.i.i_crit_edge ]
  br label %rs_sgi_allow.exit.i.i

rs_sgi_allow.exit.i.i:                            ; preds = %if.end30.i.i.i, %land.lhs.true25.i.i.i.rs_sgi_allow.exit.i.i_crit_edge, %land.lhs.true16.i.i.i.rs_sgi_allow.exit.i.i_crit_edge, %rs_bw_from_sta_bw.exit.thread.i.i.rs_sgi_allow.exit.i.i_crit_edge, %rs_bw_from_sta_bw.exit.thread139.i.i.rs_sgi_allow.exit.i.i_crit_edge
  %retval.0.i135.i.i = phi i32 [ %retval.0.i136.i.i, %if.end30.i.i.i ], [ 0, %rs_bw_from_sta_bw.exit.thread.i.i.rs_sgi_allow.exit.i.i_crit_edge ], [ 2048, %rs_bw_from_sta_bw.exit.thread139.i.i.rs_sgi_allow.exit.i.i_crit_edge ], [ 2048, %land.lhs.true16.i.i.i.rs_sgi_allow.exit.i.i_crit_edge ], [ 2048, %land.lhs.true25.i.i.i.rs_sgi_allow.exit.i.i_crit_edge ]
  %retval.0.i131.i.i = phi i1 [ false, %if.end30.i.i.i ], [ true, %rs_bw_from_sta_bw.exit.thread.i.i.rs_sgi_allow.exit.i.i_crit_edge ], [ true, %rs_bw_from_sta_bw.exit.thread139.i.i.rs_sgi_allow.exit.i.i_crit_edge ], [ true, %land.lhs.true16.i.i.i.rs_sgi_allow.exit.i.i_crit_edge ], [ true, %land.lhs.true25.i.i.i.rs_sgi_allow.exit.i.i_crit_edge ]
  %sgi.i97.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 9
  %frombool.i.i = zext i1 %retval.0.i131.i.i to i8
  %331 = ptrtoint ptr %sgi.i97.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %frombool.i.i, ptr %sgi.i97.i, align 4
  %type22.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 6
  %332 = ptrtoint ptr %type22.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %type22.i.i, align 4
  %334 = zext i32 %333 to i64
  call void @__sanitizer_cov_trace_switch(i64 %334, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %333, label %if.else47.i.i [
    i32 4, label %rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge
    i32 6, label %rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge229
    i32 8, label %rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge230
    i32 3, label %rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge
    i32 5, label %rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge231
    i32 7, label %rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge232
  ]

rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge232: ; preds = %rs_sgi_allow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45.i.i

rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge231: ; preds = %rs_sgi_allow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45.i.i

rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge:    ; preds = %rs_sgi_allow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then45.i.i

rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge230: ; preds = %rs_sgi_allow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then32.i.i

rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge229: ; preds = %rs_sgi_allow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then32.i.i

rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge:    ; preds = %rs_sgi_allow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then32.i.i

if.then32.i.i:                                    ; preds = %rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge, %rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge229, %rs_sgi_allow.exit.i.i.if.then32.i.i_crit_edge230
  %335 = ptrtoint ptr %active_mimo2_rate to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %active_mimo2_rate, align 8
  %optimal_rate_mask.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 10
  %337 = ptrtoint ptr %optimal_rate_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %336, ptr %optimal_rate_mask.i.i, align 4
  br label %if.end58.i.i

if.then45.i.i:                                    ; preds = %rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge, %rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge231, %rs_sgi_allow.exit.i.i.if.then45.i.i_crit_edge232
  %338 = ptrtoint ptr %active_siso_rate to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %active_siso_rate, align 4
  %optimal_rate_mask46.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 10
  %340 = ptrtoint ptr %optimal_rate_mask46.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %339, ptr %optimal_rate_mask46.i.i, align 4
  br label %if.end58.i.i

if.else47.i.i:                                    ; preds = %rs_sgi_allow.exit.i.i
  %341 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %active_legacy_rate, align 8
  %optimal_rate_mask48.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 10
  %343 = ptrtoint ptr %optimal_rate_mask48.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %optimal_rate_mask48.i.i, align 4
  %344 = ptrtoint ptr %band44 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %band44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %345)
  %cmp50.i.i = icmp eq i32 %345, 1
  %optimal_rates.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 11
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.else53.i.i

if.then52.i.i:                                    ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %346 = ptrtoint ptr %optimal_rates.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr @rs_optimal_rates_5ghz_legacy, ptr %optimal_rates.i.i, align 8
  %optimal_nentries.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 12
  %347 = ptrtoint ptr %optimal_nentries.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 8, ptr %optimal_nentries.i.i, align 4
  br label %if.end58.i.i

if.else53.i.i:                                    ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %348 = ptrtoint ptr %optimal_rates.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr @rs_optimal_rates_24ghz_legacy, ptr %optimal_rates.i.i, align 8
  %optimal_nentries55.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 12
  %349 = ptrtoint ptr %optimal_nentries55.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 10, ptr %optimal_nentries55.i.i, align 4
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.else53.i.i, %if.then52.i.i, %if.then45.i.i, %if.then32.i.i
  %350 = zext i32 %333 to i64
  call void @__sanitizer_cov_trace_switch(i64 %350, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %333, label %if.end58.i.i.rs_init_optimal_rate.exit.i_crit_edge [
    i32 5, label %if.end58.i.i.if.then66.i.i_crit_edge
    i32 6, label %if.end58.i.i.if.then66.i.i_crit_edge233
    i32 3, label %if.end58.i.i.if.then85.i.i_crit_edge
    i32 4, label %if.end58.i.i.if.then85.i.i_crit_edge234
  ]

if.end58.i.i.if.then85.i.i_crit_edge234:          ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then85.i.i

if.end58.i.i.if.then85.i.i_crit_edge:             ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then85.i.i

if.end58.i.i.if.then66.i.i_crit_edge233:          ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then66.i.i

if.end58.i.i.if.then66.i.i_crit_edge:             ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then66.i.i

if.end58.i.i.rs_init_optimal_rate.exit.i_crit_edge: ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_init_optimal_rate.exit.i

if.then66.i.i:                                    ; preds = %if.end58.i.i.if.then66.i.i_crit_edge, %if.end58.i.i.if.then66.i.i_crit_edge233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i135.i.i)
  %cmp68.i.i = icmp eq i32 %retval.0.i135.i.i, 0
  %optimal_rates71.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 11
  br i1 %cmp68.i.i, label %if.then70.i.i, label %if.else73.i.i

if.then70.i.i:                                    ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %351 = ptrtoint ptr %optimal_rates71.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @rs_optimal_rates_vht_20mhz, ptr %optimal_rates71.i.i, align 8
  br label %if.end89.sink.split.i.i

if.else73.i.i:                                    ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %352 = ptrtoint ptr %optimal_rates71.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr @rs_optimal_rates_vht, ptr %optimal_rates71.i.i, align 8
  br label %if.end89.sink.split.i.i

if.then85.i.i:                                    ; preds = %if.end58.i.i.if.then85.i.i_crit_edge, %if.end58.i.i.if.then85.i.i_crit_edge234
  %optimal_rates86.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 11
  %353 = ptrtoint ptr %optimal_rates86.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr @rs_optimal_rates_ht, ptr %optimal_rates86.i.i, align 8
  br label %if.end89.sink.split.i.i

if.end89.sink.split.i.i:                          ; preds = %if.then85.i.i, %if.else73.i.i, %if.then70.i.i
  %.sink.i.i = phi i32 [ 8, %if.then85.i.i ], [ 9, %if.then70.i.i ], [ 10, %if.else73.i.i ]
  %optimal_nentries87.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 12
  %354 = ptrtoint ptr %optimal_nentries87.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %.sink.i.i, ptr %optimal_nentries87.i.i, align 4
  br label %rs_init_optimal_rate.exit.i

rs_init_optimal_rate.exit.i:                      ; preds = %if.end89.sink.split.i.i, %if.end58.i.i.rs_init_optimal_rate.exit.i_crit_edge
  %355 = ptrtoint ptr %261 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %261, align 4
  %357 = add i8 %356, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %357)
  %358 = icmp ult i8 %357, -2
  br i1 %358, label %land.rhs16.i, label %rs_init_optimal_rate.exit.i.if.end53.i_crit_edge

rs_init_optimal_rate.exit.i.if.end53.i_crit_edge: ; preds = %rs_init_optimal_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

land.rhs16.i:                                     ; preds = %rs_init_optimal_rate.exit.i
  %.b93.i = load i1, ptr @rs_initialize_lq.__already_done, align 1
  br i1 %.b93.i, label %land.rhs16.i.if.end53.i_crit_edge, label %if.then23.i, !prof !618

land.rhs16.i.if.end53.i_crit_edge:                ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

if.then23.i:                                      ; preds = %land.rhs16.i
  store i1 true, ptr @rs_initialize_lq.__already_done, align 1
  %conv34.i = zext i8 %356 to i32
  %359 = ptrtoint ptr %chains.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %chains.i.i, align 4
  %conv35.i = zext i8 %360 to i32
  %fw.i222 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %361 = ptrtoint ptr %fw.i222 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %fw.i222, align 8
  %valid_tx_ant.i223 = getelementptr inbounds %struct.iwl_fw, ptr %362, i32 0, i32 15
  %363 = ptrtoint ptr %valid_tx_ant.i223 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %valid_tx_ant.i223, align 4
  %conv36.i = zext i8 %364 to i32
  %365 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %nvm_data.i, align 8
  %tobool37.not.i = icmp eq ptr %366, null
  br i1 %tobool37.not.i, label %if.then23.i.cond.end.i_crit_edge, label %cond.true.i224

if.then23.i.cond.end.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.true.i224:                                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  %valid_tx_ant39.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %366, i32 0, i32 20
  %367 = ptrtoint ptr %valid_tx_ant39.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %valid_tx_ant39.i, align 1
  %conv40.i = zext i8 %368 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i224, %if.then23.i.cond.end.i_crit_edge
  %cond.i225 = phi i32 [ %conv40.i, %cond.true.i224 ], [ 255, %if.then23.i.cond.end.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2661, i32 noundef 9, ptr noundef nonnull @.str.156, i32 noundef %conv34.i, i32 noundef %conv35.i, i32 noundef %conv36.i, i32 noundef %cond.i225) #15
  br label %if.end53.i

if.end53.i:                                       ; preds = %cond.end.i, %land.rhs16.i.if.end53.i_crit_edge, %rs_init_optimal_rate.exit.i.if.end53.i_crit_edge
  %369 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %267, align 4
  %371 = zext i32 %370 to i64
  call void @__sanitizer_cov_trace_switch(i64 %371, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %370, label %if.end53.i.rs_get_column_from_rate.exit.i_crit_edge [
    i32 1, label %if.end53.i.if.then.i100.i_crit_edge
    i32 2, label %if.end53.i.if.then.i100.i_crit_edge235
    i32 3, label %if.end53.i.if.then24.i.i_crit_edge
    i32 5, label %if.end53.i.if.then24.i.i_crit_edge236
    i32 7, label %if.end53.i.if.then24.i.i_crit_edge237
    i32 4, label %if.end53.i.if.then60.i.i_crit_edge
    i32 6, label %if.end53.i.if.then60.i.i_crit_edge238
    i32 8, label %if.end53.i.if.then60.i.i_crit_edge239
  ]

if.end53.i.if.then60.i.i_crit_edge239:            ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i.i

if.end53.i.if.then60.i.i_crit_edge238:            ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i.i

if.end53.i.if.then60.i.i_crit_edge:               ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.i.i

if.end53.i.if.then24.i.i_crit_edge237:            ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i.i

if.end53.i.if.then24.i.i_crit_edge236:            ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i.i

if.end53.i.if.then24.i.i_crit_edge:               ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i.i

if.end53.i.if.then.i100.i_crit_edge235:           ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100.i

if.end53.i.if.then.i100.i_crit_edge:              ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i100.i

if.end53.i.rs_get_column_from_rate.exit.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_column_from_rate.exit.i

if.then.i100.i:                                   ; preds = %if.end53.i.if.then.i100.i_crit_edge, %if.end53.i.if.then.i100.i_crit_edge235
  %372 = ptrtoint ptr %261 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %261, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %373)
  %switch.selectcmp.i.i = icmp eq i8 %373, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %373)
  %switch.selectcmp82.i.i = icmp eq i8 %373, 1
  %switch.select83.i.i = select i1 %switch.selectcmp82.i.i, i32 0, i32 %switch.select.i.i
  br label %rs_get_column_from_rate.exit.i

if.then24.i.i:                                    ; preds = %if.end53.i.if.then24.i.i_crit_edge, %if.end53.i.if.then24.i.i_crit_edge236, %if.end53.i.if.then24.i.i_crit_edge237
  %374 = ptrtoint ptr %261 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %261, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %375)
  %cmp27.i.i = icmp eq i8 %375, 1
  br i1 %cmp27.i.i, label %if.then24.i.i.if.then34.i.i_crit_edge, label %lor.lhs.false29.i.i

if.then24.i.i.if.then34.i.i_crit_edge:            ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i

lor.lhs.false29.i.i:                              ; preds = %if.then24.i.i
  %376 = ptrtoint ptr %stbc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %stbc.i.i.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %tobool.not.i101.i = icmp eq i8 %377, 0
  br i1 %tobool.not.i101.i, label %lor.lhs.false31.i.i, label %lor.lhs.false29.i.i.if.then34.i.i_crit_edge

lor.lhs.false29.i.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i

lor.lhs.false31.i.i:                              ; preds = %lor.lhs.false29.i.i
  %bfer.i.i = getelementptr inbounds %struct.rs_rate, ptr %arrayidx.i213, i32 0, i32 7
  %378 = ptrtoint ptr %bfer.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %bfer.i.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool32.not.i.i = icmp eq i8 %379, 0
  br i1 %tobool32.not.i.i, label %if.end37.i.i, label %lor.lhs.false31.i.i.if.then34.i.i_crit_edge

lor.lhs.false31.i.i.if.then34.i.i_crit_edge:      ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i.i

if.then34.i.i:                                    ; preds = %lor.lhs.false31.i.i.if.then34.i.i_crit_edge, %lor.lhs.false29.i.i.if.then34.i.i_crit_edge, %if.then24.i.i.if.then34.i.i_crit_edge
  %380 = ptrtoint ptr %sgi.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %sgi.i.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool35.not.i.i = icmp eq i8 %381, 0
  %cond.i103.i = select i1 %tobool35.not.i.i, i32 2, i32 4
  br label %rs_get_column_from_rate.exit.i

if.end37.i.i:                                     ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %375)
  %cmp40.i.i = icmp eq i8 %375, 2
  br i1 %cmp40.i.i, label %if.then42.i.i, label %if.end37.i.i.rs_get_column_from_rate.exit.i_crit_edge

if.end37.i.i.rs_get_column_from_rate.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_column_from_rate.exit.i

if.then42.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %382 = ptrtoint ptr %sgi.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %sgi.i.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool44.not.i.i = icmp eq i8 %383, 0
  %cond46.i.i = select i1 %tobool44.not.i.i, i32 3, i32 5
  br label %rs_get_column_from_rate.exit.i

if.then60.i.i:                                    ; preds = %if.end53.i.if.then60.i.i_crit_edge, %if.end53.i.if.then60.i.i_crit_edge238, %if.end53.i.if.then60.i.i_crit_edge239
  %384 = ptrtoint ptr %sgi.i.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %sgi.i.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %tobool62.not.i.i = icmp eq i8 %385, 0
  %cond64.i.i = select i1 %tobool62.not.i.i, i32 6, i32 7
  br label %rs_get_column_from_rate.exit.i

rs_get_column_from_rate.exit.i:                   ; preds = %if.then60.i.i, %if.then42.i.i, %if.end37.i.i.rs_get_column_from_rate.exit.i_crit_edge, %if.then34.i.i, %if.then.i100.i, %if.end53.i.rs_get_column_from_rate.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i103.i, %if.then34.i.i ], [ %cond46.i.i, %if.then42.i.i ], [ %cond64.i.i, %if.then60.i.i ], [ %switch.select83.i.i, %if.then.i100.i ], [ 9, %if.end53.i.rs_get_column_from_rate.exit.i_crit_edge ], [ 9, %if.end37.i.i.rs_get_column_from_rate.exit.i_crit_edge ]
  %column.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 30, i32 %idxprom.i, i32 1
  %386 = ptrtoint ptr %column.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %retval.0.i.i, ptr %column.i, align 4
  %arrayidx.i104.i = getelementptr [8 x %struct.rs_tx_column], ptr @rs_tx_columns, i32 0, i32 %retval.0.i.i
  %387 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %bw.i.i, align 4
  %call.i.i = call fastcc ptr @rs_get_expected_tpt_table(ptr noundef nonnull %lq_sta4, ptr noundef %arrayidx.i104.i, i32 noundef %388) #15
  %expected_tpt.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta4, i32 0, i32 30, i32 %idxprom.i, i32 2
  %389 = ptrtoint ptr %expected_tpt.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %call.i.i, ptr %expected_tpt.i.i, align 8
  call fastcc void @rs_fill_lq_cmd(ptr noundef %mvm, ptr noundef nonnull %sta, ptr noundef nonnull %lq_sta4, ptr noundef %arrayidx.i213) #15
  %call62.i = call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq) #15
  br label %rs_initialize_lq.exit

rs_initialize_lq.exit:                            ; preds = %rs_get_column_from_rate.exit.i, %iwl_mvm_get_valid_tx_ant.exit.rs_initialize_lq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supp) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_rate_control_register() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_rate_control_register(ptr noundef nonnull @rs_mvm_ops_drv) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rate_control_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rate_control_unregister() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_rate_control_unregister(ptr noundef nonnull @rs_mvm_ops_drv) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rate_control_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_tx_protection(ptr noundef %mvm, ptr noundef %mvmsta, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @rs_fw_tx_protection(ptr noundef %mvm, ptr noundef %mvmsta, i1 noundef zeroext %enable) #15
  br label %return

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %land.rhs.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.else
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !621

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4132, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %tx_protection.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 17
  %6 = ptrtoint ptr %tx_protection.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_protection.i, align 1
  br i1 %enable, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp27.i = icmp eq i8 %7, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.then26.i.if.end32.i_crit_edge

if.then26.i.if.end32.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 29, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i, align 4
  %10 = or i8 %9, 1
  store i8 %10, ptr %flags.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then26.i.if.end32.i_crit_edge
  %inc.i = add i8 %7, 1
  %11 = ptrtoint ptr %tx_protection.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %inc.i, ptr %tx_protection.i, align 1
  br label %rs_drv_tx_protection.exit

if.else.i:                                        ; preds = %if.end.i
  %dec.i = add i8 %7, -1
  %12 = ptrtoint ptr %tx_protection.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %dec.i, ptr %tx_protection.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp37.i = icmp eq i8 %dec.i, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.else.i.rs_drv_tx_protection.exit_crit_edge

if.else.i.rs_drv_tx_protection.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_drv_tx_protection.exit

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags40.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 29, i32 3
  %13 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags40.i, align 4
  %15 = and i8 %14, -2
  store i8 %15, ptr %flags40.i, align 4
  br label %rs_drv_tx_protection.exit

rs_drv_tx_protection.exit:                        ; preds = %if.then39.i, %if.else.i.rs_drv_tx_protection.exit_crit_edge, %if.end32.i
  %lq1.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 29
  %call45.i = tail call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq1.i) #15
  br label %return

return:                                           ; preds = %rs_drv_tx_protection.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call45.i, %rs_drv_tx_protection.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs_fw_tx_protection(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_rate_from_ucode_rate(i32 noundef %ucode_rate, i32 noundef %band, ptr noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = lshr i32 %ucode_rate, 14
  %and.lobit.i = and i32 %and.i, 1
  %and2.i = lshr i32 %ucode_rate, 15
  %and2.lobit.i = and i32 %and2.i, 1
  %add.i = add nuw nsw i32 %and.lobit.i, %and2.lobit.i
  %0 = getelementptr inbounds i8, ptr %rate, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %call1 = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %ucode_rate)
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call1)
  %cmp = icmp eq i32 %call1, 17
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = trunc i32 %and.i to i8
  %conv4 = and i8 %3, 3
  %ant = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 2
  %4 = ptrtoint ptr %ant to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %ant, align 4
  %and5 = and i32 %ucode_rate, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %and6 = and i32 %ucode_rate, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and9 = and i32 %ucode_rate, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %5 = and i32 %ucode_rate, 67110144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp13 = icmp eq i32 %add.i, 1
  br i1 %cmp13, label %if.then15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp16 = icmp eq i32 %band, 1
  %type = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %and23 = and i32 %ucode_rate, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %sgi = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 4
  %9 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %sgi, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %and27 = and i32 %ucode_rate, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %ldpc = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 5
  %10 = ptrtoint ptr %ldpc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ldpc, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %and31 = and i32 %ucode_rate, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %stbc = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 6
  %11 = ptrtoint ptr %stbc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %stbc, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %and35 = and i32 %ucode_rate, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %bfer = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 7
  %12 = ptrtoint ptr %bfer to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bfer, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %and39 = and i32 %ucode_rate, 6144
  %bw = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 3
  %13 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and39, ptr %bw, align 4
  br i1 %tobool.not, label %if.else220, label %if.then42

if.then42:                                        ; preds = %if.end38
  %14 = lshr i32 %ucode_rate, 3
  %15 = and i32 %14, 3
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %15, label %land.end176 [
    i32 0, label %if.then49
    i32 1, label %if.then109
  ]

if.then49:                                        ; preds = %if.then42
  %type50 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %17 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %type50, align 4
  %stbc51 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 6
  %18 = ptrtoint ptr %stbc51 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stbc51, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool52.not = icmp eq i8 %19, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.then49.if.end618thread-pre-split_crit_edge

if.then49.if.end618thread-pre-split_crit_edge:    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.lhs.true53:                                  ; preds = %if.then49
  %bfer54 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 7
  %20 = ptrtoint ptr %bfer54 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bfer54, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool55.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp57 = icmp ne i32 %add.i, 1
  %or.cond807 = select i1 %tobool55.not, i1 %cmp57, i1 false
  br i1 %or.cond807, label %land.rhs62, label %land.lhs.true53.if.end618thread-pre-split_crit_edge

land.lhs.true53.if.end618thread-pre-split_crit_edge: ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.rhs62:                                       ; preds = %land.lhs.true53
  %.b793 = load i1, ptr @rs_rate_from_ucode_rate.__already_done, align 1
  br i1 %.b793, label %land.rhs62.if.end618thread-pre-split_crit_edge, label %if.then69, !prof !618

land.rhs62.if.end618thread-pre-split_crit_edge:   ; preds = %land.rhs62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then69:                                        ; preds = %land.rhs62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #15
  br label %if.end618thread-pre-split

if.then109:                                       ; preds = %if.then42
  %type110 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %22 = ptrtoint ptr %type110 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %type110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp113.not = icmp eq i32 %add.i, 2
  br i1 %cmp113.not, label %if.then109.if.end618thread-pre-split_crit_edge, label %land.rhs122

if.then109.if.end618thread-pre-split_crit_edge:   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.rhs122:                                      ; preds = %if.then109
  %.b775792 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.32, align 1
  br i1 %.b775792, label %land.rhs122.if.end618thread-pre-split_crit_edge, label %if.then133, !prof !618

land.rhs122.if.end618thread-pre-split_crit_edge:  ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then133:                                       ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 895, i32 noundef 9, ptr noundef null) #15
  br label %if.end618thread-pre-split

land.end176:                                      ; preds = %if.then42
  %.b776791 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.33, align 1
  br i1 %.b776791, label %land.end176.if.end618thread-pre-split_crit_edge, label %if.then183, !prof !618

land.end176.if.end618thread-pre-split_crit_edge:  ; preds = %land.end176
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then183:                                       ; preds = %land.end176
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 897, i32 noundef 9, ptr noundef null) #15
  br label %if.end618thread-pre-split

if.else220:                                       ; preds = %if.end38
  br i1 %tobool7.not, label %if.else418, label %if.then223

if.then223:                                       ; preds = %if.else220
  %23 = lshr i32 %ucode_rate, 4
  %24 = and i32 %23, 3
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %24, label %land.end374 [
    i32 0, label %if.then231
    i32 1, label %if.then307
  ]

if.then231:                                       ; preds = %if.then223
  %type232 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %26 = ptrtoint ptr %type232 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %type232, align 4
  %stbc234 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 6
  %27 = ptrtoint ptr %stbc234 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stbc234, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool235.not = icmp eq i8 %28, 0
  br i1 %tobool235.not, label %land.lhs.true236, label %if.then231.if.end618thread-pre-split_crit_edge

if.then231.if.end618thread-pre-split_crit_edge:   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.lhs.true236:                                 ; preds = %if.then231
  %bfer237 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 7
  %29 = ptrtoint ptr %bfer237 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bfer237, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool238.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp241 = icmp ne i32 %add.i, 1
  %or.cond808 = select i1 %tobool238.not, i1 %cmp241, i1 false
  br i1 %or.cond808, label %land.rhs251, label %land.lhs.true236.if.end618thread-pre-split_crit_edge

land.lhs.true236.if.end618thread-pre-split_crit_edge: ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.rhs251:                                      ; preds = %land.lhs.true236
  %.b777790 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.34, align 1
  br i1 %.b777790, label %land.rhs251.if.end618thread-pre-split_crit_edge, label %if.then262, !prof !618

land.rhs251.if.end618thread-pre-split_crit_edge:  ; preds = %land.rhs251
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then262:                                       ; preds = %land.rhs251
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.34, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 907, i32 noundef 9, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #15
  br label %if.end618thread-pre-split

if.then307:                                       ; preds = %if.then223
  %type308 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %31 = ptrtoint ptr %type308 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %type308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp311.not = icmp eq i32 %add.i, 2
  br i1 %cmp311.not, label %if.then307.if.end618thread-pre-split_crit_edge, label %land.rhs320

if.then307.if.end618thread-pre-split_crit_edge:   ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.rhs320:                                      ; preds = %if.then307
  %.b778789 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.35, align 1
  br i1 %.b778789, label %land.rhs320.if.end618thread-pre-split_crit_edge, label %if.then331, !prof !618

land.rhs320.if.end618thread-pre-split_crit_edge:  ; preds = %land.rhs320
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then331:                                       ; preds = %land.rhs320
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.35, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 910, i32 noundef 9, ptr noundef null) #15
  br label %if.end618thread-pre-split

land.end374:                                      ; preds = %if.then223
  %.b779788 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.36, align 1
  br i1 %.b779788, label %land.end374.if.end618thread-pre-split_crit_edge, label %if.then381, !prof !618

land.end374.if.end618thread-pre-split_crit_edge:  ; preds = %land.end374
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then381:                                       ; preds = %land.end374
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.36, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 9, ptr noundef null) #15
  br label %if.end618thread-pre-split

if.else418:                                       ; preds = %if.else220
  br i1 %tobool10.not, label %if.else418.if.end618_crit_edge, label %if.then421

if.else418.if.end618_crit_edge:                   ; preds = %if.else418
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618

if.then421:                                       ; preds = %if.else418
  %32 = lshr i32 %ucode_rate, 4
  %33 = and i32 %32, 3
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %33, label %land.end572 [
    i32 0, label %if.then429
    i32 1, label %if.then505
  ]

if.then429:                                       ; preds = %if.then421
  %type430 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %35 = ptrtoint ptr %type430 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %type430, align 4
  %stbc432 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 6
  %36 = ptrtoint ptr %stbc432 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %stbc432, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool433.not = icmp eq i8 %37, 0
  br i1 %tobool433.not, label %land.lhs.true434, label %if.then429.if.end618thread-pre-split_crit_edge

if.then429.if.end618thread-pre-split_crit_edge:   ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.lhs.true434:                                 ; preds = %if.then429
  %bfer435 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 7
  %38 = ptrtoint ptr %bfer435 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bfer435, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool436.not = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp439 = icmp ne i32 %add.i, 1
  %or.cond809 = select i1 %tobool436.not, i1 %cmp439, i1 false
  br i1 %or.cond809, label %land.rhs449, label %land.lhs.true434.if.end618thread-pre-split_crit_edge

land.lhs.true434.if.end618thread-pre-split_crit_edge: ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.rhs449:                                      ; preds = %land.lhs.true434
  %.b780787 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.37, align 1
  br i1 %.b780787, label %land.rhs449.if.end618thread-pre-split_crit_edge, label %if.then460, !prof !618

land.rhs449.if.end618thread-pre-split_crit_edge:  ; preds = %land.rhs449
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then460:                                       ; preds = %land.rhs449
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.37, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #15
  br label %if.end618thread-pre-split

if.then505:                                       ; preds = %if.then421
  %type506 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %40 = ptrtoint ptr %type506 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %type506, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp509.not = icmp eq i32 %add.i, 2
  br i1 %cmp509.not, label %if.then505.if.end618thread-pre-split_crit_edge, label %land.rhs518

if.then505.if.end618thread-pre-split_crit_edge:   ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

land.rhs518:                                      ; preds = %if.then505
  %.b781786 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.38, align 1
  br i1 %.b781786, label %land.rhs518.if.end618thread-pre-split_crit_edge, label %if.then529, !prof !618

land.rhs518.if.end618thread-pre-split_crit_edge:  ; preds = %land.rhs518
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then529:                                       ; preds = %land.rhs518
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.38, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 924, i32 noundef 9, ptr noundef null) #15
  br label %if.end618thread-pre-split

land.end572:                                      ; preds = %if.then421
  %.b782785 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.39, align 1
  br i1 %.b782785, label %land.end572.if.end618thread-pre-split_crit_edge, label %if.then579, !prof !618

land.end572.if.end618thread-pre-split_crit_edge:  ; preds = %land.end572
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end618thread-pre-split

if.then579:                                       ; preds = %land.end572
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 926, i32 noundef 9, ptr noundef null) #15
  br label %if.end618thread-pre-split

if.end618thread-pre-split:                        ; preds = %if.then579, %land.end572.if.end618thread-pre-split_crit_edge, %if.then529, %land.rhs518.if.end618thread-pre-split_crit_edge, %if.then505.if.end618thread-pre-split_crit_edge, %if.then460, %land.rhs449.if.end618thread-pre-split_crit_edge, %land.lhs.true434.if.end618thread-pre-split_crit_edge, %if.then429.if.end618thread-pre-split_crit_edge, %if.then381, %land.end374.if.end618thread-pre-split_crit_edge, %if.then331, %land.rhs320.if.end618thread-pre-split_crit_edge, %if.then307.if.end618thread-pre-split_crit_edge, %if.then262, %land.rhs251.if.end618thread-pre-split_crit_edge, %land.lhs.true236.if.end618thread-pre-split_crit_edge, %if.then231.if.end618thread-pre-split_crit_edge, %if.then183, %land.end176.if.end618thread-pre-split_crit_edge, %if.then133, %land.rhs122.if.end618thread-pre-split_crit_edge, %if.then109.if.end618thread-pre-split_crit_edge, %if.then69, %land.rhs62.if.end618thread-pre-split_crit_edge, %land.lhs.true53.if.end618thread-pre-split_crit_edge, %if.then49.if.end618thread-pre-split_crit_edge
  %41 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %bw, align 4
  br label %if.end618

if.end618:                                        ; preds = %if.end618thread-pre-split, %if.else418.if.end618_crit_edge
  %42 = phi i32 [ %.pr, %if.end618thread-pre-split ], [ %and39, %if.else418.if.end618_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %42)
  %cmp621 = icmp eq i32 %42, 4096
  br i1 %cmp621, label %land.lhs.true623, label %if.end618.cleanup_crit_edge

if.end618.cleanup_crit_edge:                      ; preds = %if.end618
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true623:                                 ; preds = %if.end618
  %type624 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %43 = ptrtoint ptr %type624 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type624, align 4
  %.off = add i32 %44, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %land.lhs.true623.cleanup_crit_edge, label %land.rhs647.critedge

land.lhs.true623.cleanup_crit_edge:               ; preds = %land.lhs.true623
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.rhs647.critedge:                             ; preds = %land.lhs.true623
  %.b783784 = load i1, ptr @rs_rate_from_ucode_rate.__already_done.40, align 1
  br i1 %.b783784, label %land.rhs647.critedge.cleanup_crit_edge, label %if.then658, !prof !618

land.rhs647.critedge.cleanup_crit_edge:           ; preds = %land.rhs647.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then658:                                       ; preds = %land.rhs647.critedge
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_rate_from_ucode_rate.__already_done.40, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 931, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then658, %land.rhs647.critedge.cleanup_crit_edge, %land.lhs.true623.cleanup_crit_edge, %if.end618.cleanup_crit_edge, %if.else, %if.then18, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.else ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end618.cleanup_crit_edge ], [ 0, %if.then658 ], [ 0, %land.rhs647.critedge.cleanup_crit_edge ], [ 0, %land.lhs.true623.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_lq_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_stay_in_table(ptr nocapture noundef %lq_sta, i1 noundef zeroext %force_search) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 35, i32 7
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %conv = zext i8 %3 to i32
  %rs_state = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 1
  %4 = ptrtoint ptr %rs_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rs_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end59_crit_edge

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then:                                          ; preds = %entry
  %flush_timer = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 10
  %6 = ptrtoint ptr %flush_timer to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flush_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %8 = trunc i64 %7 to i32
  %conv6 = add i32 %8, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %conv6, %9
  %sub.lobit = lshr i32 %sub, 31
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %flush_interval_passed.0 = phi i32 [ %sub.lobit, %if.then4 ], [ 0, %if.then.if.end_crit_edge ]
  br i1 %force_search, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %total_failed = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 8
  %10 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_failed, align 8
  %max_failure_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 5
  %12 = ptrtoint ptr %max_failure_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_failure_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp11 = icmp ugt i32 %11, %13
  br i1 %cmp11, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false13

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %total_success = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 9
  %14 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_success, align 4
  %max_success_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 6
  %16 = ptrtoint ptr %max_success_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_success_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp14 = icmp ugt i32 %15, %17
  br i1 %cmp14, label %lor.lhs.false13.do.end_crit_edge, label %lor.lhs.false16

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %search_better_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 2
  %18 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %search_better_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush_interval_passed.0)
  %tobool21.not = icmp eq i32 %flush_interval_passed.0, 0
  %20 = select i1 %tobool17.not, i1 true, i1 %tobool.not
  %or.cond109 = select i1 %20, i1 true, i1 %tobool21.not
  br i1 %or.cond109, label %if.else, label %lor.lhs.false16.do.end_crit_edge

lor.lhs.false16.do.end_crit_edge:                 ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false16.do.end_crit_edge, %lor.lhs.false13.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %total_failed24 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 8
  %23 = ptrtoint ptr %total_failed24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_failed24, align 8
  %total_success25 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 9
  %25 = ptrtoint ptr %total_success25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_success25, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_stay_in_table, ptr noundef nonnull @.str.76, i32 noundef %24, i32 noundef %26, i32 noundef %flush_interval_passed.0) #15
  %27 = ptrtoint ptr %rs_state to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %rs_state, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_stay_in_table, ptr noundef nonnull @.str.77) #15
  %column = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 1
  %30 = call ptr @memset(ptr %total_failed24, i32 0, i32 16)
  %31 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %column, align 4
  %shl = shl nuw i32 1, %32
  %visited_columns = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 11
  %33 = ptrtoint ptr %visited_columns to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl, ptr %visited_columns, align 8
  br label %if.end52

if.else:                                          ; preds = %lor.lhs.false16
  %table_count = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 7
  %34 = ptrtoint ptr %table_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %table_count, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %table_count, align 4
  %table_count_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  %36 = ptrtoint ptr %table_count_limit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %table_count_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %37)
  %cmp40.not = icmp ult i32 %inc, %37
  br i1 %cmp40.not, label %if.else.if.end52_crit_edge, label %if.then42

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then42:                                        ; preds = %if.else
  %38 = ptrtoint ptr %table_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %table_count, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_stay_in_table, ptr noundef nonnull @.str.78) #15
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_clear_tbl_windows, ptr noundef nonnull @.str.79) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then42
  %i.021.i = phi i32 [ 0, %if.then42 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %arrayidx.i, align 8
  %success_counter.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i, i32 1
  %44 = ptrtoint ptr %success_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %success_counter.i.i, align 8
  %success_ratio.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i, i32 2
  %45 = ptrtoint ptr %success_ratio.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %success_ratio.i.i, align 4
  %counter.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i, i32 3
  %46 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %counter.i.i, align 8
  %average_tpt.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i, i32 4
  %47 = ptrtoint ptr %average_tpt.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %average_tpt.i.i, align 4
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %for.body.i.for.body6.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %i.122.i = phi i32 [ %inc9.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.body.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %arrayidx7.i, align 8
  %success_counter.i17.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i, i32 1
  %49 = ptrtoint ptr %success_counter.i17.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %success_counter.i17.i, align 8
  %success_ratio.i18.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i, i32 2
  %50 = ptrtoint ptr %success_ratio.i18.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %success_ratio.i18.i, align 4
  %counter.i19.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i, i32 3
  %51 = ptrtoint ptr %counter.i19.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %counter.i19.i, align 8
  %average_tpt.i20.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i, i32 4
  %52 = ptrtoint ptr %average_tpt.i20.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %average_tpt.i20.i, align 4
  %inc9.i = add nuw nsw i32 %i.122.i, 1
  %exitcond23.not.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond23.not.i, label %for.body6.i.if.end52_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i

for.body6.i.if.end52_crit_edge:                   ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.end52:                                         ; preds = %for.body6.i.if.end52_crit_edge, %if.else.if.end52_crit_edge, %do.end
  %53 = ptrtoint ptr %rs_state to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rs_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp55 = icmp eq i8 %54, 0
  br i1 %cmp55, label %if.then57, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then57:                                        ; preds = %if.end52
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_clear_tbl_windows, ptr noundef nonnull @.str.79) #15
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.body.i98.for.body.i98_crit_edge, %if.then57
  %i.021.i90 = phi i32 [ 0, %if.then57 ], [ %inc.i96, %for.body.i98.for.body.i98_crit_edge ]
  %arrayidx.i91 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i90
  %57 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %arrayidx.i91, align 8
  %success_counter.i.i92 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i90, i32 1
  %58 = ptrtoint ptr %success_counter.i.i92 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %success_counter.i.i92, align 8
  %success_ratio.i.i93 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i90, i32 2
  %59 = ptrtoint ptr %success_ratio.i.i93 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %success_ratio.i.i93, align 4
  %counter.i.i94 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i90, i32 3
  %60 = ptrtoint ptr %counter.i.i94 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %counter.i.i94, align 8
  %average_tpt.i.i95 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 3, i32 %i.021.i90, i32 4
  %61 = ptrtoint ptr %average_tpt.i.i95 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %average_tpt.i.i95, align 4
  %inc.i96 = add nuw nsw i32 %i.021.i90, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, 17
  br i1 %exitcond.not.i97, label %for.body.i98.for.body6.i107_crit_edge, label %for.body.i98.for.body.i98_crit_edge

for.body.i98.for.body.i98_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i98

for.body.i98.for.body6.i107_crit_edge:            ; preds = %for.body.i98
  br label %for.body6.i107

for.body6.i107:                                   ; preds = %for.body6.i107.for.body6.i107_crit_edge, %for.body.i98.for.body6.i107_crit_edge
  %i.122.i99 = phi i32 [ %inc9.i105, %for.body6.i107.for.body6.i107_crit_edge ], [ 0, %for.body.i98.for.body6.i107_crit_edge ]
  %arrayidx7.i100 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i99
  %62 = ptrtoint ptr %arrayidx7.i100 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %arrayidx7.i100, align 8
  %success_counter.i17.i101 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i99, i32 1
  %63 = ptrtoint ptr %success_counter.i17.i101 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %success_counter.i17.i101, align 8
  %success_ratio.i18.i102 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i99, i32 2
  %64 = ptrtoint ptr %success_ratio.i18.i102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %success_ratio.i18.i102, align 4
  %counter.i19.i103 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i99, i32 3
  %65 = ptrtoint ptr %counter.i19.i103 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %counter.i19.i103, align 8
  %average_tpt.i20.i104 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30, i32 %conv, i32 4, i32 %i.122.i99, i32 4
  %66 = ptrtoint ptr %average_tpt.i20.i104 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %average_tpt.i20.i104, align 4
  %inc9.i105 = add nuw nsw i32 %i.122.i99, 1
  %exitcond23.not.i106 = icmp eq i32 %inc9.i105, 16
  br i1 %exitcond23.not.i106, label %for.body6.i107.if.end59_crit_edge, label %for.body6.i107.for.body6.i107_crit_edge

for.body6.i107.for.body6.i107_crit_edge:          ; preds = %for.body6.i107
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i107

for.body6.i107.if.end59_crit_edge:                ; preds = %for.body6.i107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.end59:                                         ; preds = %for.body6.i107.if.end59_crit_edge, %if.end52.if.end59_crit_edge, %entry.if.end59_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_collect_tpc_data(ptr nocapture noundef %tbl, i32 noundef %scale_index, i32 noundef %attempts, i32 noundef %successes, i8 noundef zeroext %reduced_txp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %reduced_txp)
  %cmp = icmp ugt i8 %reduced_txp, 15
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @rs_collect_tpc_data.__already_done, align 1
  br i1 %.b1, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !618

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_collect_tpc_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end39:                                         ; preds = %entry
  %conv = zext i8 %reduced_txp to i32
  %arrayidx = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv
  %expected_tpt.i.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %0 = ptrtoint ptr %expected_tpt.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expected_tpt.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end39.get_expected_tpt.exit.i_crit_edge, label %if.then.i.i

if.end39.get_expected_tpt.exit.i_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_expected_tpt.exit.i

if.then.i.i:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i = getelementptr i16, ptr %1, i32 %scale_index
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  br label %get_expected_tpt.exit.i

get_expected_tpt.exit.i:                          ; preds = %if.then.i.i, %if.end39.get_expected_tpt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ 0, %if.end39.get_expected_tpt.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attempts)
  %cmp2.i = icmp sgt i32 %attempts, 0
  br i1 %cmp2.i, label %while.body.lr.ph.i, label %get_expected_tpt.exit.i.while.end.i_crit_edge

get_expected_tpt.exit.i.while.end.i_crit_edge:    ; preds = %get_expected_tpt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %get_expected_tpt.exit.i
  %counter.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv, i32 3
  %success_counter.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv, i32 1
  %4 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %counter.promoted.i = load i32, ptr %counter.i, align 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %window.promoted.i = load i64, ptr %arrayidx, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = phi i64 [ %window.promoted.i, %while.body.lr.ph.i ], [ %14, %if.end15.i.while.body.i_crit_edge ]
  %7 = phi i32 [ %counter.promoted.i, %while.body.lr.ph.i ], [ %inc.i, %if.end15.i.while.body.i_crit_edge ]
  %attempts.addr.04.i = phi i32 [ %attempts, %while.body.lr.ph.i ], [ %dec16.i, %if.end15.i.while.body.i_crit_edge ]
  %successes.addr.03.i = phi i32 [ %successes, %while.body.lr.ph.i ], [ %successes.addr.1.i, %if.end15.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %7)
  %cmp1.i = icmp sgt i32 %7, 61
  br i1 %cmp1.i, label %if.then.i, label %while.body.i.if.end6.i_crit_edge

while.body.i.if.end6.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i:                                        ; preds = %while.body.i
  %and.i = and i64 %6, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then3.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %and5.i = and i64 %6, -2305843009213693953
  %8 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %success_counter.i, align 8
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %success_counter.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.then.i.if.end6.i_crit_edge, %while.body.i.if.end6.i_crit_edge
  %10 = phi i64 [ %6, %if.then.i.if.end6.i_crit_edge ], [ %and5.i, %if.then3.i ], [ %6, %while.body.i.if.end6.i_crit_edge ]
  %11 = phi i32 [ 61, %if.then.i.if.end6.i_crit_edge ], [ 61, %if.then3.i ], [ %7, %while.body.i.if.end6.i_crit_edge ]
  %inc.i = add nsw i32 %11, 1
  %shl.i = shl i64 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %successes.addr.03.i)
  %cmp9.i = icmp sgt i32 %successes.addr.03.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end6.i.if.end15.i_crit_edge

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %success_counter.i, align 8
  %inc12.i = add i32 %13, 1
  store i32 %inc12.i, ptr %success_counter.i, align 8
  %or.i = or i64 %shl.i, 1
  %dec14.i = add nsw i32 %successes.addr.03.i, -1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end15.i_crit_edge
  %14 = phi i64 [ %or.i, %if.then10.i ], [ %shl.i, %if.end6.i.if.end15.i_crit_edge ]
  %successes.addr.1.i = phi i32 [ %dec14.i, %if.then10.i ], [ 0, %if.end6.i.if.end15.i_crit_edge ]
  %dec16.i = add nsw i32 %attempts.addr.04.i, -1
  %cmp.i = icmp sgt i32 %attempts.addr.04.i, 1
  br i1 %cmp.i, label %if.end15.i.while.body.i_crit_edge, label %while.cond.while.end_crit_edge.i

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i, ptr %counter.i, align 8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %14, ptr %arrayidx, align 8
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %get_expected_tpt.exit.i.while.end.i_crit_edge
  %counter17.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv, i32 3
  %17 = ptrtoint ptr %counter17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %counter17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18.i = icmp sgt i32 %18, 0
  br i1 %cmp18.i, label %if.then19.i, label %while.end.i.if.end24.i_crit_edge

while.end.i.if.end24.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then19.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %success_counter20.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv, i32 1
  %19 = ptrtoint ptr %success_counter20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %success_counter20.i, align 8
  %mul21.i = mul i32 %20, 12800
  %div.i = sdiv i32 %mul21.i, %18
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %while.end.i.if.end24.i_crit_edge
  %.sink.i = phi i32 [ %div.i, %if.then19.i ], [ -1, %while.end.i.if.end24.i_crit_edge ]
  %21 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %21, align 4
  %success_counter26.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv, i32 1
  %23 = ptrtoint ptr %success_counter26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %success_counter26.i, align 8
  %sub.i = sub i32 %18, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp27.i = icmp sgt i32 %sub.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp29.i = icmp sgt i32 %24, 7
  %or.cond.i = or i1 %cmp29.i, %cmp27.i
  %mul32.i = mul i32 %.sink.i, %retval.0.i.i
  %add.i = add i32 %mul32.i, 64
  %div33.i = sdiv i32 %add.i, 128
  %.sink5.i = select i1 %or.cond.i, i32 %div33.i, i32 -1
  %25 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4, i32 %conv, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink5.i, ptr %25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24.i, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_collect_tlc_data(ptr nocapture noundef %mvmsta, i8 noundef zeroext %tid, ptr nocapture noundef %tbl, i32 noundef %scale_index, i32 noundef %attempts, i32 noundef %successes) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %scale_index)
  %0 = icmp ugt i32 %scale_index, 16
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %column = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 1
  %1 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %column, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp2.not = icmp eq i32 %2, 9
  br i1 %cmp2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = zext i32 %attempts to i64
  %total = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 6, i32 %2, i32 %scale_index, i32 1
  %4 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %total, align 8
  %add = add i64 %5, %3
  store i64 %add, ptr %total, align 8
  %6 = zext i32 %successes to i64
  %7 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %column, align 4
  %arrayidx11 = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 35, i32 6, i32 %8, i32 %scale_index
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %10, %6
  store i64 %add12, ptr %arrayidx11, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %tid)
  %cmp.i = icmp ugt i8 %tid, 7
  br i1 %cmp.i, label %if.end13.rs_update_tid_tpt_stats.exit_crit_edge, label %if.end.i

if.end13.rs_update_tid_tpt_stats.exit_crit_edge:  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_update_tid_tpt_stats.exit

if.end.i:                                         ; preds = %if.end13
  %conv.i = zext i8 %tid to i32
  %state.i = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 10, i32 %conv.i, i32 5
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.not.i = icmp eq i32 %12, 0
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.rs_update_tid_tpt_stats.exit_crit_edge

if.end.i.rs_update_tid_tpt_stats.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_update_tid_tpt_stats.exit

if.end6.i:                                        ; preds = %if.end.i
  %tpt_meas_start.i = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 10, i32 %conv.i, i32 9
  %13 = ptrtoint ptr %tpt_meas_start.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tpt_meas_start.i, align 4
  %add.i = add i32 %14, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp7.i = icmp slt i32 %sub.i, 0
  br i1 %cmp7.i, label %if.end6.i.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end6.i.if.then11.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %tx_count.i = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 10, i32 %conv.i, i32 11
  %16 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp9.i = icmp ugt i32 %17, 9
  br i1 %cmp9.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.if.then11.i_crit_edge, %if.end6.i.if.then11.i_crit_edge
  %tx_count12.i = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 10, i32 %conv.i, i32 11
  %18 = ptrtoint ptr %tx_count12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_count12.i, align 4
  %tx_count_last.i = getelementptr %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 10, i32 %conv.i, i32 10
  %20 = ptrtoint ptr %tx_count_last.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tx_count_last.i, align 4
  store i32 0, ptr %tx_count12.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %tpt_meas_start.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tpt_meas_start.i, align 4
  br label %rs_update_tid_tpt_stats.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %add16.i = add i32 %17, %successes
  %23 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add16.i, ptr %tx_count.i, align 4
  br label %rs_update_tid_tpt_stats.exit

rs_update_tid_tpt_stats.exit:                     ; preds = %if.else.i, %if.then11.i, %if.end.i.rs_update_tid_tpt_stats.exit_crit_edge, %if.end13.rs_update_tid_tpt_stats.exit_crit_edge
  %arrayidx14 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index
  %expected_tpt.i.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %24 = ptrtoint ptr %expected_tpt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %expected_tpt.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %rs_update_tid_tpt_stats.exit.get_expected_tpt.exit.i_crit_edge, label %if.then.i.i

rs_update_tid_tpt_stats.exit.get_expected_tpt.exit.i_crit_edge: ; preds = %rs_update_tid_tpt_stats.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_expected_tpt.exit.i

if.then.i.i:                                      ; preds = %rs_update_tid_tpt_stats.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i = getelementptr i16, ptr %25, i32 %scale_index
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  br label %get_expected_tpt.exit.i

get_expected_tpt.exit.i:                          ; preds = %if.then.i.i, %rs_update_tid_tpt_stats.exit.get_expected_tpt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ 0, %rs_update_tid_tpt_stats.exit.get_expected_tpt.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attempts)
  %cmp2.i = icmp sgt i32 %attempts, 0
  br i1 %cmp2.i, label %while.body.lr.ph.i, label %get_expected_tpt.exit.i.while.end.i_crit_edge

get_expected_tpt.exit.i.while.end.i_crit_edge:    ; preds = %get_expected_tpt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %get_expected_tpt.exit.i
  %counter.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index, i32 3
  %success_counter.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index, i32 1
  %28 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %counter.promoted.i = load i32, ptr %counter.i, align 8
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %29)
  %window.promoted.i = load i64, ptr %arrayidx14, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %30 = phi i64 [ %window.promoted.i, %while.body.lr.ph.i ], [ %38, %if.end15.i.while.body.i_crit_edge ]
  %31 = phi i32 [ %counter.promoted.i, %while.body.lr.ph.i ], [ %inc.i, %if.end15.i.while.body.i_crit_edge ]
  %attempts.addr.04.i = phi i32 [ %attempts, %while.body.lr.ph.i ], [ %dec16.i, %if.end15.i.while.body.i_crit_edge ]
  %successes.addr.03.i = phi i32 [ %successes, %while.body.lr.ph.i ], [ %successes.addr.1.i, %if.end15.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %31)
  %cmp1.i = icmp sgt i32 %31, 61
  br i1 %cmp1.i, label %if.then.i, label %while.body.i.if.end6.i2_crit_edge

while.body.i.if.end6.i2_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i2

if.then.i:                                        ; preds = %while.body.i
  %and.i = and i64 %30, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end6.i2_crit_edge, label %if.then3.i

if.then.i.if.end6.i2_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i2

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %and5.i = and i64 %30, -2305843009213693953
  %32 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %success_counter.i, align 8
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr %success_counter.i, align 8
  br label %if.end6.i2

if.end6.i2:                                       ; preds = %if.then3.i, %if.then.i.if.end6.i2_crit_edge, %while.body.i.if.end6.i2_crit_edge
  %34 = phi i64 [ %30, %if.then.i.if.end6.i2_crit_edge ], [ %and5.i, %if.then3.i ], [ %30, %while.body.i.if.end6.i2_crit_edge ]
  %35 = phi i32 [ 61, %if.then.i.if.end6.i2_crit_edge ], [ 61, %if.then3.i ], [ %31, %while.body.i.if.end6.i2_crit_edge ]
  %inc.i = add nsw i32 %35, 1
  %shl.i = shl i64 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %successes.addr.03.i)
  %cmp9.i1 = icmp sgt i32 %successes.addr.03.i, 0
  br i1 %cmp9.i1, label %if.then10.i, label %if.end6.i2.if.end15.i_crit_edge

if.end6.i2.if.end15.i_crit_edge:                  ; preds = %if.end6.i2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end6.i2
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %success_counter.i, align 8
  %inc12.i = add i32 %37, 1
  store i32 %inc12.i, ptr %success_counter.i, align 8
  %or.i = or i64 %shl.i, 1
  %dec14.i = add nsw i32 %successes.addr.03.i, -1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.end6.i2.if.end15.i_crit_edge
  %38 = phi i64 [ %or.i, %if.then10.i ], [ %shl.i, %if.end6.i2.if.end15.i_crit_edge ]
  %successes.addr.1.i = phi i32 [ %dec14.i, %if.then10.i ], [ 0, %if.end6.i2.if.end15.i_crit_edge ]
  %dec16.i = add nsw i32 %attempts.addr.04.i, -1
  %cmp.i3 = icmp sgt i32 %attempts.addr.04.i, 1
  br i1 %cmp.i3, label %if.end15.i.while.body.i_crit_edge, label %while.cond.while.end_crit_edge.i

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i, ptr %counter.i, align 8
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %38, ptr %arrayidx14, align 8
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %get_expected_tpt.exit.i.while.end.i_crit_edge
  %counter17.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index, i32 3
  %41 = ptrtoint ptr %counter17.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %counter17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp18.i = icmp sgt i32 %42, 0
  br i1 %cmp18.i, label %if.then19.i, label %while.end.i.if.end24.i_crit_edge

while.end.i.if.end24.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then19.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %success_counter20.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index, i32 1
  %43 = ptrtoint ptr %success_counter20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success_counter20.i, align 8
  %mul21.i = mul i32 %44, 12800
  %div.i = sdiv i32 %mul21.i, %42
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %while.end.i.if.end24.i_crit_edge
  %.sink.i = phi i32 [ %div.i, %if.then19.i ], [ -1, %while.end.i.if.end24.i_crit_edge ]
  %45 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink.i, ptr %45, align 4
  %success_counter26.i = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index, i32 1
  %47 = ptrtoint ptr %success_counter26.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %success_counter26.i, align 8
  %sub.i4 = sub i32 %42, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4)
  %cmp27.i = icmp sgt i32 %sub.i4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %48)
  %cmp29.i = icmp sgt i32 %48, 7
  %or.cond.i = or i1 %cmp29.i, %cmp27.i
  %mul32.i = mul i32 %.sink.i, %retval.0.i.i
  %add.i5 = add i32 %mul32.i, 64
  %div33.i = sdiv i32 %add.i5, 128
  %.sink5.i = select i1 %or.cond.i, i32 %div33.i, i32 -1
  %49 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3, i32 %scale_index, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink5.i, ptr %49, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rs_get_adjacent_rate(i8 noundef zeroext %index, i16 noundef zeroext %rate_mask, i32 noundef %rate_type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rate_type)
  %cond = icmp eq i32 %rate_type, 1
  br i1 %cond, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %conv41 = zext i16 %rate_mask to i32
  br label %while.cond

if.then:                                          ; preds = %entry
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp74.not = icmp eq i8 %index, 0
  br i1 %cmp74.not, label %if.then.for.body18.lr.ph_crit_edge, label %for.body.lr.ph

if.then.for.body18.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body18.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %conv9 = zext i16 %rate_mask to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mask.16 = phi i32 [ %shl, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %i.05 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %and = and i32 %mask.16, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast1 = and i32 %i.05, 255
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.05, -1
  %shr = lshr i32 %mask.16, 1
  %cmp7 = icmp sgt i32 %i.05, 0
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then10
  %low.0 = phi i32 [ %phi.cast1, %if.then10 ], [ 17, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %index)
  %cmp168 = icmp ult i8 %index, 16
  br i1 %cmp168, label %for.end.for.body18.lr.ph_crit_edge, label %for.end.for.end27_crit_edge

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end27

for.end.for.body18.lr.ph_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body18.lr.ph

for.body18.lr.ph:                                 ; preds = %for.end.for.body18.lr.ph_crit_edge, %if.then.for.body18.lr.ph_crit_edge
  %low.016 = phi i32 [ %low.0, %for.end.for.body18.lr.ph_crit_edge ], [ 17, %if.then.for.body18.lr.ph_crit_edge ]
  %i.17 = add nuw nsw i32 %conv, 1
  %shl14 = shl i32 2, %conv
  %conv19 = zext i16 %rate_mask to i32
  br label %for.body18

for.cond15:                                       ; preds = %for.body18
  %shl26 = shl i32 %mask.29, 1
  %i.1 = add nuw nsw i32 %i.110, 1
  %exitcond.not = icmp eq i32 %i.1, 17
  br i1 %exitcond.not, label %for.cond15.for.end27_crit_edge, label %for.cond15.for.body18_crit_edge

for.cond15.for.body18_crit_edge:                  ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body18

for.cond15.for.end27_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end27

for.body18:                                       ; preds = %for.cond15.for.body18_crit_edge, %for.body18.lr.ph
  %i.110 = phi i32 [ %i.17, %for.body18.lr.ph ], [ %i.1, %for.cond15.for.body18_crit_edge ]
  %mask.29 = phi i32 [ %shl14, %for.body18.lr.ph ], [ %shl26, %for.cond15.for.body18_crit_edge ]
  %and20 = and i32 %mask.29, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %for.cond15, label %if.then22

if.then22:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast = shl i32 %i.110, 8
  %phi.bo = and i32 %phi.cast, 65280
  br label %for.end27

for.end27:                                        ; preds = %if.then22, %for.cond15.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %low.015 = phi i32 [ %low.016, %if.then22 ], [ %low.0, %for.end.for.end27_crit_edge ], [ %low.016, %for.cond15.for.end27_crit_edge ]
  %high.0 = phi i32 [ %phi.bo, %if.then22 ], [ 4352, %for.end.for.end27_crit_edge ], [ 4352, %for.cond15.for.end27_crit_edge ]
  %or = or i32 %high.0, %low.015
  br label %cleanup

while.cond:                                       ; preds = %if.end40.while.cond_crit_edge, %while.cond.preheader
  %low.1 = phi i8 [ %1, %if.end40.while.cond_crit_edge ], [ %index, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %low.1)
  %cmp34.not = icmp eq i8 %low.1, 17
  br i1 %cmp34.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.cond
  %conv33 = zext i8 %low.1 to i32
  %prev_rs = getelementptr [17 x %struct.iwl_rs_rate_info], ptr @iwl_rates, i32 0, i32 %conv33, i32 5
  %0 = ptrtoint ptr %prev_rs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prev_rs, align 1
  %2 = lshr i32 28673, %conv33
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not = icmp eq i32 %3, 0
  br i1 %cmp37.not, label %if.end40, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end40:                                         ; preds = %while.body
  %conv36 = zext i8 %1 to i32
  %shl43 = shl nuw i32 1, %conv36
  %and44 = and i32 %shl43, %conv41
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end40.while.cond_crit_edge, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end40.while.cond_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %low.2 = phi i8 [ %1, %while.body.while.end_crit_edge ], [ %1, %if.end40.while.end_crit_edge ], [ 17, %while.cond.while.end_crit_edge ]
  br label %while.cond48

while.cond48:                                     ; preds = %if.end59.while.cond48_crit_edge, %while.end
  %high.1 = phi i8 [ %index, %while.end ], [ %5, %if.end59.while.cond48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %high.1)
  %cmp50.not = icmp eq i8 %high.1, 17
  br i1 %cmp50.not, label %while.cond48.while.end67_crit_edge, label %while.body52

while.cond48.while.end67_crit_edge:               ; preds = %while.cond48
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end67

while.body52:                                     ; preds = %while.cond48
  %conv49 = zext i8 %high.1 to i32
  %next_rs = getelementptr [17 x %struct.iwl_rs_rate_info], ptr @iwl_rates, i32 0, i32 %conv49, i32 6
  %4 = ptrtoint ptr %next_rs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %next_rs, align 1
  %6 = add nsw i32 %conv49, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp56 = icmp ult i32 %6, 4
  br i1 %cmp56, label %while.body52.while.end67_crit_edge, label %if.end59

while.body52.while.end67_crit_edge:               ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end67

if.end59:                                         ; preds = %while.body52
  %conv55 = zext i8 %5 to i32
  %shl62 = shl nuw i32 1, %conv55
  %and63 = and i32 %shl62, %conv41
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end59.while.cond48_crit_edge, label %if.end59.while.end67_crit_edge

if.end59.while.end67_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end67

if.end59.while.cond48_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond48

while.end67:                                      ; preds = %if.end59.while.end67_crit_edge, %while.body52.while.end67_crit_edge, %while.cond48.while.end67_crit_edge
  %high.2 = phi i8 [ %5, %while.body52.while.end67_crit_edge ], [ %5, %if.end59.while.end67_crit_edge ], [ 17, %while.cond48.while.end67_crit_edge ]
  %conv68 = zext i8 %high.2 to i32
  %shl69 = shl nuw nsw i32 %conv68, 8
  %conv70 = zext i8 %low.2 to i32
  %or71 = or i32 %shl69, %conv70
  br label %cleanup

cleanup:                                          ; preds = %while.end67, %for.end27
  %retval.0.in = phi i32 [ %or, %for.end27 ], [ %or71, %while.end67 ]
  %retval.0 = trunc i32 %retval.0.in to i16
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_bt_coex_is_mimo_allowed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @rs_get_expected_tpt_table(ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef readonly %column, i32 noundef %bw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %column, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end43, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b264 = load i1, ptr @rs_get_expected_tpt_table.__already_done, align 1
  br i1 %.b264, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !618

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1246, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end43:                                         ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %1, label %land.end166 [
    i32 1, label %if.end43.cleanup_crit_edge
    i32 2, label %if.then50
    i32 3, label %if.then104
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then50:                                        ; preds = %if.end43
  %3 = tail call i32 @llvm.fshl.i32(i32 %bw, i32 %bw, i32 21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %land.end60

land.end60:                                       ; preds = %if.then50
  %.b258263 = load i1, ptr @rs_get_expected_tpt_table.__already_done.93, align 1
  br i1 %.b258263, label %land.end60.if.end209_crit_edge, label %if.then67, !prof !618

land.end60.if.end209_crit_edge:                   ; preds = %land.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end209

if.then67:                                        ; preds = %land.end60
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_expected_tpt_table.__already_done.93, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1272, i32 noundef 9, ptr noundef null) #15
  br label %if.end209

if.then104:                                       ; preds = %if.end43
  %5 = tail call i32 @llvm.fshl.i32(i32 %bw, i32 %bw, i32 21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup266, label %land.end116

land.end116:                                      ; preds = %if.then104
  %.b259262 = load i1, ptr @rs_get_expected_tpt_table.__already_done.94, align 1
  br i1 %.b259262, label %land.end116.if.end209_crit_edge, label %if.then123, !prof !618

land.end116.if.end209_crit_edge:                  ; preds = %land.end116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end209

if.then123:                                       ; preds = %land.end116
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_expected_tpt_table.__already_done.94, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1289, i32 noundef 9, ptr noundef null) #15
  br label %if.end209

land.end166:                                      ; preds = %if.end43
  %.b260261 = load i1, ptr @rs_get_expected_tpt_table.__already_done.95, align 1
  br i1 %.b260261, label %land.end166.if.end209_crit_edge, label %if.then173, !prof !618

land.end166.if.end209_crit_edge:                  ; preds = %land.end166
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end209

if.then173:                                       ; preds = %land.end166
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_expected_tpt_table.__already_done.95, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1292, i32 noundef 9, ptr noundef null) #15
  br label %if.end209

switch.lookup:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rs_get_expected_tpt_table, i32 0, i32 %3
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end209

switch.lookup266:                                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep267 = getelementptr inbounds [4 x ptr], ptr @switch.table.rs_get_expected_tpt_table.242, i32 0, i32 %5
  %8 = ptrtoint ptr %switch.gep267 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load268 = load ptr, ptr %switch.gep267, align 4
  br label %if.end209

if.end209:                                        ; preds = %switch.lookup266, %switch.lookup, %if.then173, %land.end166.if.end209_crit_edge, %if.then123, %land.end116.if.end209_crit_edge, %if.then67, %land.end60.if.end209_crit_edge
  %ht_tbl_pointer.0 = phi ptr [ @expected_tpt_mimo2_20MHz, %if.then67 ], [ @expected_tpt_mimo2_20MHz, %land.end60.if.end209_crit_edge ], [ @expected_tpt_mimo2_20MHz, %if.then123 ], [ @expected_tpt_mimo2_20MHz, %land.end116.if.end209_crit_edge ], [ @expected_tpt_mimo2_20MHz, %if.then173 ], [ @expected_tpt_mimo2_20MHz, %land.end166.if.end209_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load268, %switch.lookup266 ]
  %sgi = getelementptr inbounds %struct.rs_tx_column, ptr %column, i32 0, i32 2
  %9 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sgi, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool210.not = icmp eq i8 %10, 0
  %is_agg = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 33
  %11 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_agg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool212.not = icmp eq i8 %12, 0
  br i1 %tobool210.not, label %land.lhs.true211, label %land.lhs.true217

land.lhs.true211:                                 ; preds = %if.end209
  br i1 %tobool212.not, label %land.lhs.true211.cleanup_crit_edge, label %land.lhs.true226

land.lhs.true211.cleanup_crit_edge:               ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true217:                                 ; preds = %if.end209
  br i1 %tobool212.not, label %if.then220, label %land.lhs.true217.if.else232_crit_edge

land.lhs.true217.if.else232_crit_edge:            ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else232

if.then220:                                       ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx221 = getelementptr [17 x i16], ptr %ht_tbl_pointer.0, i32 1
  br label %cleanup

land.lhs.true226:                                 ; preds = %land.lhs.true211
  %13 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_agg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool228.not = icmp eq i8 %14, 0
  br i1 %tobool228.not, label %land.lhs.true226.if.else232_crit_edge, label %if.then229

land.lhs.true226.if.else232_crit_edge:            ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else232

if.then229:                                       ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx230 = getelementptr [17 x i16], ptr %ht_tbl_pointer.0, i32 2
  br label %cleanup

if.else232:                                       ; preds = %land.lhs.true226.if.else232_crit_edge, %land.lhs.true217.if.else232_crit_edge
  %arrayidx233 = getelementptr [17 x i16], ptr %ht_tbl_pointer.0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.else232, %if.then229, %if.then220, %land.lhs.true211.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx233, %if.else232 ], [ %arrayidx230, %if.then229 ], [ %arrayidx221, %if.then220 ], [ @expected_tpt_legacy, %if.then ], [ @expected_tpt_legacy, %if.end43.cleanup_crit_edge ], [ %ht_tbl_pointer.0, %land.lhs.true211.cleanup_crit_edge ], [ @expected_tpt_legacy, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rs_ant_allow(ptr noundef %mvm, ptr nocapture noundef readnone %sta, ptr nocapture noundef readnone %rate, ptr nocapture noundef readonly %next_col) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ant = getelementptr inbounds %struct.rs_tx_column, ptr %next_col, i32 0, i32 1
  %0 = ptrtoint ptr %ant to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ant, align 4
  %call = tail call zeroext i1 @iwl_mvm_bt_coex_is_ant_avail(ptr noundef %mvm, i8 noundef zeroext %1) #15
  ret i1 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rs_siso_allow(ptr nocapture noundef readnone %mvm, ptr nocapture noundef readonly %sta, ptr nocapture noundef readnone %rate, ptr nocapture noundef readnone %next_col) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ht_supported, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rs_sgi_allow(ptr nocapture noundef readnone %mvm, ptr nocapture noundef readonly %sta, ptr nocapture noundef readonly %rate, ptr nocapture noundef readnone %next_col) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_cap1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %bw = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 3
  %0 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bw, align 4
  %2 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 21)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %2, label %entry.if.end30_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true6
    i32 2, label %land.lhs.true16
    i32 3, label %land.lhs.true25
  ]

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %ht_cap1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap1, align 2
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true6:                                   ; preds = %entry
  %7 = ptrtoint ptr %ht_cap1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ht_cap1, align 2
  %9 = and i16 %8, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool10.not = icmp eq i16 %9, 0
  br i1 %tobool10.not, label %land.lhs.true6.if.end30_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true6.if.end30_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true16:                                  ; preds = %entry
  %cap17 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %cap17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap17, align 4
  %and18 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true16.if.end30_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true16.if.end30_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true25:                                  ; preds = %entry
  %cap26 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %cap26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cap26, align 4
  %and27 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true25.if.end30_crit_edge, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true25.if.end30_crit_edge, %land.lhs.true16.if.end30_crit_edge, %land.lhs.true6.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %land.lhs.true25.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end30 ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true6.cleanup_crit_edge ], [ true, %land.lhs.true16.cleanup_crit_edge ], [ true, %land.lhs.true25.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rs_mimo_allow(ptr noundef %mvm, ptr noundef %sta, ptr nocapture noundef readnone %rate, ptr nocapture noundef readnone %next_col) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ht_supported, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %2 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end2:                                          ; preds = %if.end
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %4 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end2.cond.false.i_crit_edge, label %land.lhs.true.i

if.end2.cond.false.i_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end2
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i = and i8 %11, %7
  br label %iwl_mvm_get_valid_tx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.end2.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %12 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %valid_tx_ant9.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i, %cond.true.i ], [ %15, %cond.false.i ]
  %and.i18 = and i8 %cond.i, 1
  %and3.i = lshr i8 %cond.i, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i18
  %and10.i = lshr i8 %cond.i, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %add16.i)
  %cmp4 = icmp ult i8 %add16.i, 2
  br i1 %cmp4, label %iwl_mvm_get_valid_tx_ant.exit.return_crit_edge, label %if.end7

iwl_mvm_get_valid_tx_ant.exit.return_crit_edge:   ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end7:                                          ; preds = %iwl_mvm_get_valid_tx_ant.exit
  %call8 = tail call zeroext i1 @iwl_mvm_bt_coex_is_mimo_allowed(ptr noundef %mvm, ptr noundef %sta) #15
  br i1 %call8, label %if.end10, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvm_data.i, align 8
  %sku_cap_mimo_disabled = getelementptr inbounds %struct.iwl_nvm_data, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %sku_cap_mimo_disabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sku_cap_mimo_disabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp eq i8 %19, 0
  br label %return

return:                                           ; preds = %if.end10, %if.end7.return_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %iwl_mvm_get_valid_tx_ant.exit.return_crit_edge ], [ false, %if.end7.return_crit_edge ], [ %tobool11.not, %if.end10 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_bt_coex_is_ant_avail(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_fill_lq_cmd(ptr noundef %mvm, ptr noundef %sta, ptr noundef %lq_sta, ptr noundef readonly %initial_rate) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca %struct.rs_bfer_active_iter_data, align 4
  %rate.i104 = alloca %struct.rs_rate, align 4
  %index.i = alloca i32, align 4
  %rate.i = alloca %struct.rs_rate, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %agg_disable_start_th = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 9
  %0 = ptrtoint ptr %agg_disable_start_th to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %agg_disable_start_th, align 2
  %agg_time_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 8
  %1 = ptrtoint ptr %agg_time_limit to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -24561, ptr %agg_time_limit, align 4
  %pers = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 35
  %2 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %band = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 17
  %4 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %band, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rate.i) #15
  %6 = call ptr @memset(ptr %rate.i, i32 255, i32 20)
  %7 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %and.i = lshr i32 %3, 14
  %8 = trunc i32 %and.i to i8
  %arrayidx.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 4
  %13 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 5
  %14 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 6
  %15 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 7
  %16 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 8
  %17 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %7, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 9
  %18 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 10
  %19 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 11
  %20 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %7, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 12
  %21 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %7, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 13
  %22 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %7, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 14
  %23 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %7, ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12, i32 15
  %24 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %7, ptr %arrayidx.15.i, align 4
  %conv.i = and i8 %8, 3
  %call.i = call fastcc i32 @rs_rate_from_ucode_rate(i32 noundef %3, i32 noundef %5, ptr noundef nonnull %rate.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end37.i, label %land.end.i

land.end.i:                                       ; preds = %if.then
  %.b80.i = load i1, ptr @rs_build_rates_table_from_fixed.__already_done, align 1
  br i1 %.b80.i, label %land.end.i.rs_build_rates_table_from_fixed.exit_crit_edge, label %if.then8.i, !prof !618

land.end.i.rs_build_rates_table_from_fixed.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_build_rates_table_from_fixed.exit

if.then8.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_build_rates_table_from_fixed.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3286, i32 noundef 9, ptr noundef null) #15
  br label %rs_build_rates_table_from_fixed.exit

if.end37.i:                                       ; preds = %if.then
  %type.i = getelementptr inbounds %struct.rs_rate, ptr %rate.i, i32 0, i32 1
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i, align 4
  %switch.tableidx = add i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %27 = icmp ult i32 %switch.tableidx, 5
  br i1 %27, label %switch.lookup, label %if.end37.i.if.end50.i_crit_edge

if.end37.i.if.end50.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.i

switch.lookup:                                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rs_fill_lq_cmd, i32 0, i32 %switch.tableidx
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %28)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %switch.lookup, %if.end37.i.if.end50.i_crit_edge
  %.sink.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end37.i.if.end50.i_crit_edge ]
  %mimo_delim49.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 4
  %29 = ptrtoint ptr %mimo_delim49.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i, ptr %mimo_delim49.i, align 1
  %reduced_tpc.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 1
  %30 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reduced_tpc.i, align 1
  %and.i.i = and i8 %8, 1
  %and3.i.i = lshr i8 %8, 1
  %and3.lobit.i.i = and i8 %and3.i.i, 1
  %add.i.i = add nuw nsw i8 %and3.lobit.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add.i.i)
  %cmp53.i = icmp eq i8 %add.i.i, 1
  br i1 %cmp53.i, label %if.then55.i, label %if.end50.i.if.end56.i_crit_edge

if.end50.i.if.end56.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  %single_stream_ant_msk.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 5
  %31 = ptrtoint ptr %single_stream_ant_msk.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %single_stream_ant_msk.i, align 2
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.end50.i.if.end56.i_crit_edge
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %32 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trans_cfg.i, align 4
  %gen2.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %gen2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %gen2.i, align 4
  %37 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool57.not.i = icmp eq i16 %37, 0
  %agg_frame_cnt_limit.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 10
  br i1 %tobool57.not.i, label %if.then58.i, label %if.else59.i

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %agg_frame_cnt_limit.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 63, ptr %agg_frame_cnt_limit.i, align 1
  br label %rs_build_rates_table_from_fixed.exit

if.else59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %agg_frame_cnt_limit.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %agg_frame_cnt_limit.i, align 1
  br label %rs_build_rates_table_from_fixed.exit

rs_build_rates_table_from_fixed.exit:             ; preds = %if.else59.i, %if.then58.i, %if.then8.i, %land.end.i.rs_build_rates_table_from_fixed.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rate.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %sta, null
  %tobool4.not = icmp eq ptr %initial_rate, null
  %spec.select = or i1 %tobool3.not, %tobool4.not
  br i1 %spec.select, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %if.end
  %.b102 = load i1, ptr @rs_fill_lq_cmd.__already_done, align 1
  br i1 %.b102, label %land.rhs.cleanup_crit_edge, label %if.then13, !prof !618

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_fill_lq_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3593, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end45:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rate.i104) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #15
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %index.i, align 4
  %41 = call ptr @memcpy(ptr %rate.i104, ptr %initial_rate, i32 20)
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %42 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end45.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.end45.cond.false.i.i_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end45
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool2.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %46 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw.i.i, align 8
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i105 = and i8 %49, %45
  br label %iwl_mvm_get_valid_tx_ant.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.end45.cond.false.i.i_crit_edge
  %fw8.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %50 = ptrtoint ptr %fw8.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw8.i.i, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i

iwl_mvm_get_valid_tx_ant.exit.i:                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i105, %cond.true.i.i ], [ %53, %cond.false.i.i ]
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %54 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw.i, align 8
  %_api.i.i = getelementptr inbounds %struct.iwl_fw, ptr %55, i32 0, i32 5, i32 7
  %56 = ptrtoint ptr %_api.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_api.i.i, align 4
  %58 = and i32 %57, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %iwl_mvm_get_valid_tx_ant.exit.i.if.end.i_crit_edge

iwl_mvm_get_valid_tx_ant.exit.i.if.end.i_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %iwl_mvm_get_valid_tx_ant.exit.i
  %stbc_capable.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 15
  %59 = ptrtoint ptr %stbc_capable.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %stbc_capable.i.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i121.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i121.i, label %land.lhs.true.i.if.end.i_crit_edge, label %rs_stbc_allow.exit.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

rs_stbc_allow.exit.i:                             ; preds = %land.lhs.true.i
  %call.i.i = tail call zeroext i1 @iwl_mvm_bt_coex_is_mimo_allowed(ptr noundef %mvm, ptr noundef nonnull %sta) #15
  br i1 %call.i.i, label %if.then.i, label %rs_stbc_allow.exit.i.if.end.i_crit_edge

rs_stbc_allow.exit.i.if.end.i_crit_edge:          ; preds = %rs_stbc_allow.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %rs_stbc_allow.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %stbc.i = getelementptr inbounds %struct.rs_rate, ptr %rate.i104, i32 0, i32 6
  %61 = ptrtoint ptr %stbc.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %stbc.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rs_stbc_allow.exit.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.i.if.end.i_crit_edge
  %type.i106 = getelementptr inbounds %struct.rs_rate, ptr %rate.i104, i32 0, i32 1
  %62 = ptrtoint ptr %type.i106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type.i106, align 4
  %.off.i = add i32 %63, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 6
  %not.switch.i = xor i1 %switch.i, true
  %spec.select120.i = select i1 %switch.i, i32 3, i32 2
  %rs_table.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 12
  call fastcc void @rs_fill_rates_for_column(ptr noundef %mvm, ptr noundef %lq_sta, ptr noundef nonnull %rate.i104, ptr noundef %rs_table.i, ptr noundef nonnull %index.i, i32 noundef %spec.select120.i, i32 noundef 2, i8 noundef zeroext %cond.i.i, i1 noundef zeroext %not.switch.i) #15
  call fastcc void @rs_get_lower_rate_down_column(ptr noundef %lq_sta, ptr noundef nonnull %rate.i104) #15
  %64 = ptrtoint ptr %type.i106 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i106, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %65, label %land.end.i108 [
    i32 3, label %if.end.i.if.then29.i_crit_edge
    i32 5, label %if.end.i.if.then29.i_crit_edge147
    i32 7, label %if.end.i.if.then29.i_crit_edge148
    i32 1, label %if.end.i.rs_build_rates_table.exit_crit_edge
    i32 2, label %if.end.i.rs_build_rates_table.exit_crit_edge149
  ]

if.end.i.rs_build_rates_table.exit_crit_edge149:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_build_rates_table.exit

if.end.i.rs_build_rates_table.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_build_rates_table.exit

if.end.i.if.then29.i_crit_edge148:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i

if.end.i.if.then29.i_crit_edge147:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i

if.end.i.if.then29.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.end.i.if.then29.i_crit_edge, %if.end.i.if.then29.i_crit_edge147, %if.end.i.if.then29.i_crit_edge148
  %67 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index.i, align 4
  %conv.i107 = trunc i32 %68 to i8
  %mimo_delim.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 4
  %69 = ptrtoint ptr %mimo_delim.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i107, ptr %mimo_delim.i, align 1
  br label %rs_build_rates_table.exit

land.end.i108:                                    ; preds = %if.end.i
  %.b119.i = load i1, ptr @rs_build_rates_table.__already_done, align 1
  br i1 %.b119.i, label %land.end.i108.rs_build_rates_table.exit_crit_edge, label %if.then46.i, !prof !618

land.end.i108.rs_build_rates_table.exit_crit_edge: ; preds = %land.end.i108
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_build_rates_table.exit

if.then46.i:                                      ; preds = %land.end.i108
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_build_rates_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3410, i32 noundef 9, ptr noundef null) #15
  br label %rs_build_rates_table.exit

rs_build_rates_table.exit:                        ; preds = %if.then46.i, %land.end.i108.rs_build_rates_table.exit_crit_edge, %if.then29.i, %if.end.i.rs_build_rates_table.exit_crit_edge, %if.end.i.rs_build_rates_table.exit_crit_edge149
  %num_retries.1.i = phi i32 [ 1, %if.then29.i ], [ 1, %if.end.i.rs_build_rates_table.exit_crit_edge ], [ 1, %if.end.i.rs_build_rates_table.exit_crit_edge149 ], [ 2, %if.then46.i ], [ 2, %land.end.i108.rs_build_rates_table.exit_crit_edge ]
  %num_rates.1.i = phi i32 [ 3, %if.then29.i ], [ 16, %if.end.i.rs_build_rates_table.exit_crit_edge ], [ 16, %if.end.i.rs_build_rates_table.exit_crit_edge149 ], [ %spec.select120.i, %if.then46.i ], [ %spec.select120.i, %land.end.i108.rs_build_rates_table.exit_crit_edge ]
  call fastcc void @rs_fill_rates_for_column(ptr noundef %mvm, ptr noundef %lq_sta, ptr noundef nonnull %rate.i104, ptr noundef %rs_table.i, ptr noundef nonnull %index.i, i32 noundef %num_rates.1.i, i32 noundef %num_retries.1.i, i8 noundef zeroext %cond.i.i, i1 noundef zeroext true) #15
  call fastcc void @rs_get_lower_rate_down_column(ptr noundef %lq_sta, ptr noundef nonnull %rate.i104) #15
  call fastcc void @rs_fill_rates_for_column(ptr noundef %mvm, ptr noundef %lq_sta, ptr noundef nonnull %rate.i104, ptr noundef %rs_table.i, ptr noundef nonnull %index.i, i32 noundef 16, i32 noundef 1, i8 noundef zeroext %cond.i.i, i1 noundef zeroext true) #15
  %flags.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 3
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flags.i, align 4
  %72 = and i8 %71, 14
  %shl.i = add nuw nsw i8 %72, 2
  %and85.i = and i8 %shl.i, 14
  %and88.i = and i8 %71, -15
  %or.i = or i8 %and85.i, %and88.i
  store i8 %or.i, ptr %flags.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rate.i104) #15
  %73 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw.i, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %74, i32 0, i32 5, i32 7
  %75 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %_api.i, align 4
  %77 = and i32 %76, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not = icmp eq i32 %77, 0
  br i1 %tobool.i.not, label %rs_build_rates_table.exit.if.end47_crit_edge, label %if.then46

rs_build_rates_table.exit.if.end47_crit_edge:     ; preds = %rs_build_rates_table.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then46:                                        ; preds = %rs_build_rates_table.exit
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #15
  %78 = getelementptr inbounds %struct.rs_bfer_active_iter_data, ptr %data.i, i32 0, i32 1
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %sta, ptr %data.i, align 4
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %78, align 4
  %call2.i = tail call zeroext i1 @iwl_mvm_bt_coex_is_mimo_allowed(ptr noundef %mvm, ptr noundef nonnull %sta) #15
  br i1 %call2.i, label %if.end.i109, label %if.then46.rs_set_lq_ss_params.exit_crit_edge

if.then46.rs_set_lq_ss_params.exit_crit_edge:     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_set_lq_ss_params.exit

if.end.i109:                                      ; preds = %if.then46
  %ss_force.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 35, i32 2
  %81 = ptrtoint ptr %ss_force.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ss_force.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %switch.selectcmp.i = icmp eq i32 %82, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -2147483636, i32 -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %switch.selectcmp1.i = icmp eq i32 %82, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 -2147483639, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp13.not.i = icmp eq i32 %82, 0
  br i1 %cmp13.not.i, label %if.end20.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %84, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_set_lq_ss_params, ptr noundef nonnull @.str.100, i32 noundef %82) #15
  br label %rs_set_lq_ss_params.exit

if.end20.i:                                       ; preds = %if.end.i109
  %stbc_capable.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 15
  %85 = ptrtoint ptr %stbc_capable.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %stbc_capable.i, align 2, !range !619
  %87 = zext i8 %86 to i32
  %spec.select.i = or i32 %switch.select2.i, %87
  %bfer_capable.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 16
  %88 = ptrtoint ptr %bfer_capable.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bfer_capable.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool24.not.i = icmp eq i8 %89, 0
  br i1 %tobool24.not.i, label %if.end20.i.rs_set_lq_ss_params.exit_crit_edge, label %if.end26.i

if.end20.i.rs_set_lq_ss_params.exit_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_set_lq_ss_params.exit

if.end26.i:                                       ; preds = %if.end20.i
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %90 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_stations_atomic(ptr noundef %91, ptr noundef nonnull @rs_bfer_active_iter, ptr noundef nonnull %data.i) #15
  %92 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %78, align 4
  %tobool28.not.i = icmp eq ptr %93, null
  %94 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mvm, align 8
  br i1 %tobool28.not.i, label %do.end33.i, label %do.end42.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %95, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_set_lq_ss_params, ptr noundef nonnull @.str.101) #15
  %or37.i = or i32 %spec.select.i, 4
  br label %rs_set_lq_ss_params.exit

do.end42.i:                                       ; preds = %if.end26.i
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %93, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %95, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_set_lq_ss_params, ptr noundef nonnull @.str.102, i32 noundef %97) #15
  %vif.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %98 = ptrtoint ptr %vif.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vif.i.i.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %p2p.i.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %99, i32 0, i32 3
  %102 = ptrtoint ptr %p2p.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %p2p.i.i.i.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i.i.i = icmp eq i8 %103, 0
  %switch.tableidx121 = add i32 %101, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx121)
  %104 = icmp ult i32 %switch.tableidx121, 8
  br i1 %tobool.not.i.i.i.i, label %ieee80211_vif_type_p2p.exit.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.end42.i
  br i1 %104, label %switch.hole_check, label %if.then.i.i.i.i.i.land.end.i.i.i_crit_edge

if.then.i.i.i.i.i.land.end.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i.i

ieee80211_vif_type_p2p.exit.i.i.i:                ; preds = %do.end42.i
  br i1 %104, label %switch.hole_check122, label %ieee80211_vif_type_p2p.exit.i.i.i.land.end.i.i.i_crit_edge

ieee80211_vif_type_p2p.exit.i.i.i.land.end.i.i.i_crit_edge: ; preds = %ieee80211_vif_type_p2p.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %switch.hole_check122.land.end.i.i.i_crit_edge, %switch.hole_check.land.end.i.i.i_crit_edge, %ieee80211_vif_type_p2p.exit.i.i.i.land.end.i.i.i_crit_edge, %if.then.i.i.i.i.i.land.end.i.i.i_crit_edge
  %.b39.i.i.i = load i1, ptr @rs_bfer_priority.__already_done, align 1
  br i1 %.b39.i.i.i, label %land.end.i.i.i.rs_bfer_priority.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !618

land.end.i.i.i.rs_bfer_priority.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_bfer_priority.exit.i.i

if.then.i.i.i:                                    ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_bfer_priority.__already_done, align 1
  %105 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %drv_priv.i.i, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3474, i32 noundef 9, ptr noundef nonnull @.str.104, i32 noundef %101, i32 noundef %106) #15
  br label %rs_bfer_priority.exit.i.i

switch.hole_check:                                ; preds = %if.then.i.i.i.i.i
  %switch.maskindex = trunc i32 %switch.tableidx121 to i8
  %switch.shifted = lshr i8 -61, %switch.maskindex
  %107 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %switch.lobit.not = icmp eq i8 %107, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i.i.i_crit_edge, label %switch.lookup117

switch.hole_check.land.end.i.i.i_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i.i

switch.lookup117:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep118 = getelementptr inbounds [8 x i32], ptr @switch.table.rs_fill_lq_cmd.243, i32 0, i32 %switch.tableidx121
  %108 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load4_noabort(i32 %108)
  %switch.load119 = load i32, ptr %switch.gep118, align 4
  br label %rs_bfer_priority.exit.i.i

switch.hole_check122:                             ; preds = %ieee80211_vif_type_p2p.exit.i.i.i
  %switch.maskindex124 = trunc i32 %switch.tableidx121 to i8
  %switch.shifted125 = lshr i8 -61, %switch.maskindex124
  %109 = and i8 %switch.shifted125, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %switch.lobit126.not = icmp eq i8 %109, 0
  br i1 %switch.lobit126.not, label %switch.hole_check122.land.end.i.i.i_crit_edge, label %switch.lookup123

switch.hole_check122.land.end.i.i.i_crit_edge:    ; preds = %switch.hole_check122
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i.i.i

switch.lookup123:                                 ; preds = %switch.hole_check122
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep127 = getelementptr inbounds [8 x i32], ptr @switch.table.rs_fill_lq_cmd.244, i32 0, i32 %switch.tableidx121
  %110 = ptrtoint ptr %switch.gep127 to i32
  call void @__asan_load4_noabort(i32 %110)
  %switch.load128 = load i32, ptr %switch.gep127, align 4
  br label %rs_bfer_priority.exit.i.i

rs_bfer_priority.exit.i.i:                        ; preds = %switch.lookup123, %switch.lookup117, %if.then.i.i.i, %land.end.i.i.i.rs_bfer_priority.exit.i.i_crit_edge
  %prio.0.i.i.i = phi i32 [ -1, %if.then.i.i.i ], [ -1, %land.end.i.i.i.rs_bfer_priority.exit.i.i_crit_edge ], [ %switch.load119, %switch.lookup117 ], [ %switch.load128, %switch.lookup123 ]
  %vif.i8.i.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %93, i32 0, i32 13
  %111 = ptrtoint ptr %vif.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vif.i8.i.i, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 8
  %p2p.i.i9.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %112, i32 0, i32 3
  %115 = ptrtoint ptr %p2p.i.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %p2p.i.i9.i.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i10.i.i = icmp eq i8 %116, 0
  %switch.tableidx139 = add i32 %114, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx139)
  %117 = icmp ult i32 %switch.tableidx139, 8
  br i1 %tobool.not.i.i10.i.i, label %ieee80211_vif_type_p2p.exit.i12.i.i, label %if.then.i.i.i11.i.i

if.then.i.i.i11.i.i:                              ; preds = %rs_bfer_priority.exit.i.i
  br i1 %117, label %switch.hole_check131, label %if.then.i.i.i11.i.i.land.end.i16.i.i_crit_edge

if.then.i.i.i11.i.i.land.end.i16.i.i_crit_edge:   ; preds = %if.then.i.i.i11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i16.i.i

ieee80211_vif_type_p2p.exit.i12.i.i:              ; preds = %rs_bfer_priority.exit.i.i
  br i1 %117, label %switch.hole_check140, label %ieee80211_vif_type_p2p.exit.i12.i.i.land.end.i16.i.i_crit_edge

ieee80211_vif_type_p2p.exit.i12.i.i.land.end.i16.i.i_crit_edge: ; preds = %ieee80211_vif_type_p2p.exit.i12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i16.i.i

land.end.i16.i.i:                                 ; preds = %switch.hole_check140.land.end.i16.i.i_crit_edge, %switch.hole_check131.land.end.i16.i.i_crit_edge, %ieee80211_vif_type_p2p.exit.i12.i.i.land.end.i16.i.i_crit_edge, %if.then.i.i.i11.i.i.land.end.i16.i.i_crit_edge
  %.b39.i15.i.i = load i1, ptr @rs_bfer_priority.__already_done, align 1
  br i1 %.b39.i15.i.i, label %land.end.i16.i.i.rs_bfer_priority_cmp.exit.i_crit_edge, label %if.then.i17.i.i, !prof !618

land.end.i16.i.i.rs_bfer_priority_cmp.exit.i_crit_edge: ; preds = %land.end.i16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_bfer_priority_cmp.exit.i

if.then.i17.i.i:                                  ; preds = %land.end.i16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_bfer_priority.__already_done, align 1
  %118 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %93, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3474, i32 noundef 9, ptr noundef nonnull @.str.104, i32 noundef %114, i32 noundef %119) #15
  br label %rs_bfer_priority_cmp.exit.i

switch.hole_check131:                             ; preds = %if.then.i.i.i11.i.i
  %switch.maskindex133 = trunc i32 %switch.tableidx139 to i8
  %switch.shifted134 = lshr i8 -61, %switch.maskindex133
  %120 = and i8 %switch.shifted134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %switch.lobit135.not = icmp eq i8 %120, 0
  br i1 %switch.lobit135.not, label %switch.hole_check131.land.end.i16.i.i_crit_edge, label %switch.lookup132

switch.hole_check131.land.end.i16.i.i_crit_edge:  ; preds = %switch.hole_check131
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i16.i.i

switch.lookup132:                                 ; preds = %switch.hole_check131
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep136 = getelementptr inbounds [8 x i32], ptr @switch.table.rs_fill_lq_cmd.245, i32 0, i32 %switch.tableidx139
  %121 = ptrtoint ptr %switch.gep136 to i32
  call void @__asan_load4_noabort(i32 %121)
  %switch.load137 = load i32, ptr %switch.gep136, align 4
  br label %rs_bfer_priority_cmp.exit.i

switch.hole_check140:                             ; preds = %ieee80211_vif_type_p2p.exit.i12.i.i
  %switch.maskindex142 = trunc i32 %switch.tableidx139 to i8
  %switch.shifted143 = lshr i8 -61, %switch.maskindex142
  %122 = and i8 %switch.shifted143, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %switch.lobit144.not = icmp eq i8 %122, 0
  br i1 %switch.lobit144.not, label %switch.hole_check140.land.end.i16.i.i_crit_edge, label %switch.lookup141

switch.hole_check140.land.end.i16.i.i_crit_edge:  ; preds = %switch.hole_check140
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end.i16.i.i

switch.lookup141:                                 ; preds = %switch.hole_check140
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep145 = getelementptr inbounds [8 x i32], ptr @switch.table.rs_fill_lq_cmd.246, i32 0, i32 %switch.tableidx139
  %123 = ptrtoint ptr %switch.gep145 to i32
  call void @__asan_load4_noabort(i32 %123)
  %switch.load146 = load i32, ptr %switch.gep145, align 4
  br label %rs_bfer_priority_cmp.exit.i

rs_bfer_priority_cmp.exit.i:                      ; preds = %switch.lookup141, %switch.lookup132, %if.then.i17.i.i, %land.end.i16.i.i.rs_bfer_priority_cmp.exit.i_crit_edge
  %prio.0.i18.i.i = phi i32 [ -1, %if.then.i17.i.i ], [ -1, %land.end.i16.i.i.rs_bfer_priority_cmp.exit.i_crit_edge ], [ %switch.load137, %switch.lookup132 ], [ %switch.load146, %switch.lookup141 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %prio.0.i.i.i, i32 %prio.0.i18.i.i)
  %cmp.i.i = icmp sgt i32 %prio.0.i.i.i, %prio.0.i18.i.i
  br i1 %cmp.i.i, label %if.then48.i, label %rs_bfer_priority_cmp.exit.i.rs_set_lq_ss_params.exit_crit_edge

rs_bfer_priority_cmp.exit.i.rs_set_lq_ss_params.exit_crit_edge: ; preds = %rs_bfer_priority_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_set_lq_ss_params.exit

if.then48.i:                                      ; preds = %rs_bfer_priority_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %lq50.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %93, i32 0, i32 12, i32 0, i32 29
  %ss_params51.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %93, i32 0, i32 12, i32 0, i32 29, i32 13
  %124 = ptrtoint ptr %ss_params51.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ss_params51.i, align 4
  %126 = and i32 %125, -67108865
  store i32 %126, ptr %ss_params51.i, align 4
  %call53.i = call i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq50.i) #15
  %or54.i = or i32 %spec.select.i, 4
  %127 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mvm, align 8
  %129 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %93, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %128, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_set_lq_ss_params, ptr noundef nonnull @.str.103, i32 noundef %130) #15
  br label %rs_set_lq_ss_params.exit

rs_set_lq_ss_params.exit:                         ; preds = %if.then48.i, %rs_bfer_priority_cmp.exit.i.rs_set_lq_ss_params.exit_crit_edge, %do.end33.i, %if.end20.i.rs_set_lq_ss_params.exit_crit_edge, %do.end.i, %if.then46.rs_set_lq_ss_params.exit_crit_edge
  %ss_params.2.i = phi i32 [ %switch.select2.i, %do.end.i ], [ %or54.i, %if.then48.i ], [ %spec.select.i, %rs_bfer_priority_cmp.exit.i.rs_set_lq_ss_params.exit_crit_edge ], [ %or37.i, %do.end33.i ], [ %spec.select.i, %if.end20.i.rs_set_lq_ss_params.exit_crit_edge ], [ -2147483648, %if.then46.rs_set_lq_ss_params.exit_crit_edge ]
  %131 = call i32 @llvm.bswap.i32(i32 %ss_params.2.i) #15
  %ss_params64.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 13
  %132 = ptrtoint ptr %ss_params64.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %ss_params64.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #15
  br label %if.end47

if.end47:                                         ; preds = %rs_set_lq_ss_params.exit, %rs_build_rates_table.exit.if.end47_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %133 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vif, align 8
  %135 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %136, i32 0, i32 5, i32 8, i32 1
  %137 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %arrayidx.i.i, align 4
  %139 = and i32 %138, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.i111.not = icmp eq i32 %139, 0
  br i1 %tobool.i111.not, label %land.lhs.true, label %if.end47.if.end57_crit_edge

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end47
  %ant = getelementptr inbounds %struct.rs_rate, ptr %initial_rate, i32 0, i32 2
  %140 = ptrtoint ptr %ant to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ant, align 4
  %and.i112 = and i8 %141, 1
  %and3.i = lshr i8 %141, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i112
  %and10.i = lshr i8 %141, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i)
  %cmp = icmp eq i8 %add16.i, 1
  br i1 %cmp, label %if.then55, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %single_stream_ant_msk = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 5
  %142 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %single_stream_ant_msk, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %max_agg_bufsize = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 4
  %143 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %max_agg_bufsize, align 2
  %conv58 = trunc i16 %144 to i8
  %agg_frame_cnt_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 29, i32 10
  %145 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv58, ptr %agg_frame_cnt_limit, align 1
  %low_latency_actual.i = getelementptr inbounds %struct.ieee80211_vif, ptr %134, i32 1, i32 1, i32 11
  %146 = ptrtoint ptr %low_latency_actual.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load.i113 = load i8, ptr %low_latency_actual.i, align 8
  %147 = and i8 %bf.load.i113, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.i114.not = icmp eq i8 %147, 0
  br i1 %tobool.i114.not, label %if.end57.if.end62_crit_edge, label %if.then60

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i8 %conv58, -1
  %148 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %dec, ptr %agg_frame_cnt_limit, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %149 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %vif, align 8
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %p2p, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool64.not = icmp eq i8 %152, 0
  br i1 %tobool64.not, label %if.end62.if.end68_crit_edge, label %if.then65

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  %153 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %flags.i, align 4
  %155 = or i8 %154, 1
  store i8 %155, ptr %flags.i, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end62.if.end68_crit_edge
  %call69 = call zeroext i16 @iwl_mvm_coex_agg_time_limit(ptr noundef %mvm, ptr noundef nonnull %sta) #15
  %156 = call i16 @llvm.bswap.i16(i16 %call69)
  %157 = ptrtoint ptr %agg_time_limit to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %agg_time_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then13, %land.rhs.cleanup_crit_edge, %rs_build_rates_table_from_fixed.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @iwl_mvm_coex_agg_time_limit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_fill_rates_for_column(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef %rate, ptr nocapture noundef writeonly %rs_table, ptr nocapture noundef %rs_table_index, i32 noundef %num_rates, i32 noundef %num_retries, i8 noundef zeroext %valid_tx_ant, i1 noundef zeroext %toggle_ant) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %2 = ptrtoint ptr %rs_table_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rs_table_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rates)
  %cmp76 = icmp sgt i32 %num_rates, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp277 = icmp slt i32 %3, 16
  %or.cond78 = select i1 %cmp76, i1 %cmp277, i1 false
  br i1 %or.cond78, label %for.cond3.preheader.lr.ph, label %entry.land.lhs.true27_crit_edge

entry.land.lhs.true27_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true27

for.cond3.preheader.lr.ph:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_retries)
  %cmp471 = icmp sgt i32 %num_retries, 0
  %ant.i = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 2
  %type.i.i = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %active_mimo2_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 20
  %active_siso_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 19
  %active_legacy_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 18
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc23.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %index1.080 = phi i32 [ %3, %for.cond3.preheader.lr.ph ], [ %index1.1.lcssa, %for.inc23.for.cond3.preheader_crit_edge ]
  %i.079 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc24, %for.inc23.for.cond3.preheader_crit_edge ]
  br i1 %cmp471, label %for.cond3.preheader.for.body8_crit_edge, label %for.cond3.preheader.for.end_crit_edge

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond3.preheader.for.body8_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.cond3.preheader.for.body8_crit_edge
  %index1.175 = phi i32 [ %inc10, %for.inc.for.body8_crit_edge ], [ %index1.080, %for.cond3.preheader.for.body8_crit_edge ]
  %j.074 = phi i32 [ %inc, %for.inc.for.body8_crit_edge ], [ 0, %for.cond3.preheader.for.body8_crit_edge ]
  %call = tail call fastcc i32 @ucode_rate_from_rs_rate(ptr noundef %mvm, ptr noundef %rate)
  %4 = tail call i32 @llvm.bswap.i32(i32 %call)
  %arrayidx = getelementptr i32, ptr %rs_table, i32 %index1.175
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  br i1 %toggle_ant, label %if.then, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body8
  %6 = ptrtoint ptr %ant.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ant.i, align 4
  %and6.i.i = and i8 %7, %valid_tx_ant
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %7)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %7
  br i1 %cmp.i.not.i, label %if.then.while.cond.i_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.while.cond.i_crit_edge:                   ; preds = %if.then
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.then.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %7, %if.then.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [4 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %8 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %7)
  %cmp.not.i = icmp eq i8 %new_ant_type.0.i, %7
  br i1 %cmp.not.i, label %while.cond.i.for.inc_crit_edge, label %land.rhs.i

while.cond.i.for.inc_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i1.i = and i8 %new_ant_type.0.i, %valid_tx_ant
  %cmp.i2.not.i = icmp eq i8 %and6.i1.i, %new_ant_type.0.i
  br i1 %cmp.i2.not.i, label %if.end17.i, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

if.end17.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %ant.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %new_ant_type.0.i, ptr %ant.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end17.i, %while.cond.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.074, 1
  %inc10 = add nsw i32 %index1.175, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_retries)
  %cmp4 = icmp slt i32 %inc, %num_retries
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %index1.175)
  %cmp6 = icmp slt i32 %index1.175, 15
  %or.cond60 = select i1 %cmp4, i1 %cmp6, i1 false
  br i1 %or.cond60, label %for.inc.for.body8_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body8

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %index1.1.lcssa = phi i32 [ %index1.080, %for.cond3.preheader.for.end_crit_edge ], [ %inc10, %for.inc.for.end_crit_edge ]
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %13, label %land.end.i.i [
    i32 1, label %for.end.if.then.i.i_crit_edge
    i32 2, label %for.end.if.then.i.i_crit_edge109
    i32 3, label %for.end.if.then14.i.i_crit_edge
    i32 5, label %for.end.if.then14.i.i_crit_edge110
    i32 7, label %for.end.if.then14.i.i_crit_edge111
    i32 4, label %for.end.if.then28.i.i_crit_edge
    i32 6, label %for.end.if.then28.i.i_crit_edge112
    i32 8, label %for.end.if.then28.i.i_crit_edge113
  ]

for.end.if.then28.i.i_crit_edge113:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

for.end.if.then28.i.i_crit_edge112:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

for.end.if.then28.i.i_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

for.end.if.then14.i.i_crit_edge111:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

for.end.if.then14.i.i_crit_edge110:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

for.end.if.then14.i.i_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

for.end.if.then.i.i_crit_edge109:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

for.end.if.then.i.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.if.then.i.i_crit_edge, %for.end.if.then.i.i_crit_edge109
  %15 = ptrtoint ptr %active_legacy_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active_legacy_rate.i.i, align 8
  %conv.i.i = trunc i32 %16 to i16
  br label %rs_get_supported_rates.exit.i

if.then14.i.i:                                    ; preds = %for.end.if.then14.i.i_crit_edge, %for.end.if.then14.i.i_crit_edge110, %for.end.if.then14.i.i_crit_edge111
  %17 = ptrtoint ptr %active_siso_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_siso_rate.i.i, align 4
  %conv15.i.i = trunc i32 %18 to i16
  br label %rs_get_supported_rates.exit.i

if.then28.i.i:                                    ; preds = %for.end.if.then28.i.i_crit_edge, %for.end.if.then28.i.i_crit_edge112, %for.end.if.then28.i.i_crit_edge113
  %19 = ptrtoint ptr %active_mimo2_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_mimo2_rate.i.i, align 8
  %conv29.i.i = trunc i32 %20 to i16
  br label %rs_get_supported_rates.exit.i

land.end.i.i:                                     ; preds = %for.end
  %.b78.i.i = load i1, ptr @rs_get_supported_rates.__already_done, align 1
  br i1 %.b78.i.i, label %land.end.i.i.rs_get_supported_rates.exit.i_crit_edge, label %if.then37.i.i, !prof !618

land.end.i.i.rs_get_supported_rates.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_supported_rates.exit.i

if.then37.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_supported_rates.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 969, i32 noundef 9, ptr noundef null) #15
  br label %rs_get_supported_rates.exit.i

rs_get_supported_rates.exit.i:                    ; preds = %if.then37.i.i, %land.end.i.i.rs_get_supported_rates.exit.i_crit_edge, %if.then28.i.i, %if.then14.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.then.i.i ], [ %conv15.i.i, %if.then14.i.i ], [ %conv29.i.i, %if.then28.i.i ], [ 0, %if.then37.i.i ], [ 0, %land.end.i.i.rs_get_supported_rates.exit.i_crit_edge ]
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  %conv.i = trunc i32 %22 to i8
  %23 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i.i, align 4
  %call1.i = tail call fastcc zeroext i16 @rs_get_adjacent_rate(i8 noundef zeroext %conv.i, i16 noundef zeroext %retval.0.i.i, i32 noundef %24) #15
  %25 = and i16 %call1.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %25)
  %cmp.i = icmp eq i16 %25, 17
  br i1 %cmp.i, label %land.lhs.true, label %rs_get_lower_rate_in_column.exit

rs_get_lower_rate_in_column.exit:                 ; preds = %rs_get_supported_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv4.i, ptr %rate, align 4
  br label %for.inc23

land.lhs.true:                                    ; preds = %rs_get_supported_rates.exit.i
  %.off = add i32 %24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true.for.inc23_crit_edge, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

land.lhs.true.for.inc23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc23

for.inc23:                                        ; preds = %land.lhs.true.for.inc23_crit_edge, %rs_get_lower_rate_in_column.exit
  %inc24 = add nuw nsw i32 %i.079, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc24, i32 %num_rates)
  %cmp = icmp slt i32 %inc24, %num_rates
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index1.1.lcssa)
  %cmp2 = icmp slt i32 %index1.1.lcssa, 16
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.inc23.for.cond3.preheader_crit_edge, label %for.end25

for.inc23.for.cond3.preheader_crit_edge:          ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond3.preheader

for.end25:                                        ; preds = %for.inc23
  br i1 %cmp.i, label %for.end25.if.end37_crit_edge, label %for.end25.land.lhs.true27_crit_edge

for.end25.land.lhs.true27_crit_edge:              ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true27

for.end25.if.end37_crit_edge:                     ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

land.lhs.true27:                                  ; preds = %for.end25.land.lhs.true27_crit_edge, %entry.land.lhs.true27_crit_edge
  %index1.0.lcssa92 = phi i32 [ %index1.1.lcssa, %for.end25.land.lhs.true27_crit_edge ], [ %3, %entry.land.lhs.true27_crit_edge ]
  %prev_rate_idx.0.lcssa91 = phi i32 [ %11, %for.end25.land.lhs.true27_crit_edge ], [ %1, %entry.land.lhs.true27_crit_edge ]
  %type28 = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %27 = ptrtoint ptr %type28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type28, align 4
  %.off61 = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off61)
  %switch62 = icmp ult i32 %.off61, 2
  br i1 %switch62, label %land.lhs.true27.if.end37_crit_edge, label %if.then35

land.lhs.true27.if.end37_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then35:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %prev_rate_idx.0.lcssa91, ptr %rate, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true27.if.end37_crit_edge, %for.end25.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge
  %index1.266 = phi i32 [ %index1.0.lcssa92, %land.lhs.true27.if.end37_crit_edge ], [ %index1.0.lcssa92, %if.then35 ], [ %index1.1.lcssa, %for.end25.if.end37_crit_edge ], [ %index1.1.lcssa, %land.lhs.true.if.end37_crit_edge ]
  %30 = ptrtoint ptr %rs_table_index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %index1.266, ptr %rs_table_index, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_get_lower_rate_down_column(ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 35, i32 7
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %type = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %3, label %if.else58 [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge117
    i32 3, label %entry.if.then11_crit_edge
    i32 5, label %entry.if.then11_crit_edge118
    i32 7, label %entry.if.then11_crit_edge119
  ]

entry.if.then11_crit_edge119:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

entry.if.then11_crit_edge118:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

entry.cleanup_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %entry.if.then11_crit_edge, %entry.if.then11_crit_edge118, %entry.if.then11_crit_edge119
  %band = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 17
  %5 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp12 = icmp eq i32 %6, 1
  %. = select i1 %cmp12, i32 2, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %type, align 4
  %bw = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 3
  %8 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bw, align 4
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate, align 4
  %11 = add i32 %10, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %11)
  %12 = icmp ult i32 %11, -11
  br i1 %12, label %land.rhs, label %if.then11.if.end48_crit_edge

if.then11.if.end48_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.rhs:                                         ; preds = %if.then11
  %.b102 = load i1, ptr @rs_get_lower_rate_down_column.__already_done, align 1
  br i1 %.b102, label %land.rhs.if.end48_crit_edge, label %if.then26, !prof !618

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_lower_rate_down_column.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1078, i32 noundef 9, ptr noundef null) #15
  br label %if.end48

if.end48:                                         ; preds = %if.then26, %land.rhs.if.end48_crit_edge, %if.then11.if.end48_crit_edge
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  %arrayidx = getelementptr [15 x i8], ptr @rs_ht_to_legacy, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, ptr %rate, align 4
  %ldpc = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 5
  %17 = ptrtoint ptr %ldpc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ldpc, align 1
  br label %if.end64

if.else58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp60 = icmp eq i32 %3, 6
  %cond = select i1 %cmp60, i32 5, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %type, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else58, %if.end48
  %ant = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 2
  %19 = ptrtoint ptr %ant to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ant, align 4
  %and.i = and i8 %20, 1
  %and3.i = lshr i8 %20, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i
  %and10.i = lshr i8 %20, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i)
  %cmp66 = icmp ugt i8 %add16.i, 1
  br i1 %cmp66, label %if.then68, label %if.end64.if.end72_crit_edge

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then68:                                        ; preds = %if.end64
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then68.cond.false.i_crit_edge, label %land.lhs.true.i

if.then68.cond.false.i_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then68
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool2.not.i = icmp eq i8 %24, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i103 = and i8 %28, %24
  br label %iwl_mvm_get_valid_tx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then68.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid_tx_ant9.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i103, %cond.true.i ], [ %32, %cond.false.i ]
  %call70 = tail call zeroext i8 @first_antenna(i8 noundef zeroext %cond.i) #15
  %33 = ptrtoint ptr %ant to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call70, ptr %ant, align 4
  br label %if.end72

if.end72:                                         ; preds = %iwl_mvm_get_valid_tx_ant.exit, %if.end64.if.end72_crit_edge
  %sgi = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 4
  %34 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %sgi, align 4
  %35 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate, align 4
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %38, label %land.end.i.i [
    i32 1, label %if.end72.if.then.i.i_crit_edge
    i32 2, label %if.end72.if.then.i.i_crit_edge120
    i32 3, label %if.end72.if.then14.i.i_crit_edge
    i32 5, label %if.end72.if.then14.i.i_crit_edge121
    i32 7, label %if.end72.if.then14.i.i_crit_edge122
    i32 4, label %if.end72.if.then28.i.i_crit_edge
    i32 6, label %if.end72.if.then28.i.i_crit_edge123
    i32 8, label %if.end72.if.then28.i.i_crit_edge124
  ]

if.end72.if.then28.i.i_crit_edge124:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.end72.if.then28.i.i_crit_edge123:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.end72.if.then28.i.i_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.end72.if.then14.i.i_crit_edge122:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

if.end72.if.then14.i.i_crit_edge121:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

if.end72.if.then14.i.i_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i

if.end72.if.then.i.i_crit_edge120:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.end72.if.then.i.i_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end72.if.then.i.i_crit_edge, %if.end72.if.then.i.i_crit_edge120
  %active_legacy_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 18
  %40 = ptrtoint ptr %active_legacy_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active_legacy_rate.i.i, align 8
  br label %rs_rate_supported.exit

if.then14.i.i:                                    ; preds = %if.end72.if.then14.i.i_crit_edge, %if.end72.if.then14.i.i_crit_edge121, %if.end72.if.then14.i.i_crit_edge122
  %active_siso_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 19
  %42 = ptrtoint ptr %active_siso_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %active_siso_rate.i.i, align 4
  br label %rs_rate_supported.exit

if.then28.i.i:                                    ; preds = %if.end72.if.then28.i.i_crit_edge, %if.end72.if.then28.i.i_crit_edge123, %if.end72.if.then28.i.i_crit_edge124
  %active_mimo2_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 20
  %44 = ptrtoint ptr %active_mimo2_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %active_mimo2_rate.i.i, align 8
  br label %rs_rate_supported.exit

land.end.i.i:                                     ; preds = %if.end72
  %.b78.i.i = load i1, ptr @rs_get_supported_rates.__already_done, align 1
  br i1 %.b78.i.i, label %land.end.i.i.rs_rate_supported.exit_crit_edge, label %if.then37.i.i, !prof !618

land.end.i.i.rs_rate_supported.exit_crit_edge:    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_rate_supported.exit

if.then37.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_supported_rates.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 969, i32 noundef 9, ptr noundef null) #15
  br label %rs_rate_supported.exit

rs_rate_supported.exit:                           ; preds = %if.then37.i.i, %land.end.i.i.rs_rate_supported.exit_crit_edge, %if.then28.i.i, %if.then14.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %41, %if.then.i.i ], [ %43, %if.then14.i.i ], [ %45, %if.then28.i.i ], [ 0, %if.then37.i.i ], [ 0, %land.end.i.i.rs_rate_supported.exit_crit_edge ]
  %shl.i = shl nuw i32 1, %36
  %conv.i = and i32 %shl.i, 65535
  %and.i104 = and i32 %conv.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.i.not = icmp eq i32 %and.i104, 0
  br i1 %tobool.i.not, label %if.then74, label %rs_rate_supported.exit.cleanup_crit_edge

rs_rate_supported.exit.cleanup_crit_edge:         ; preds = %rs_rate_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then74:                                        ; preds = %rs_rate_supported.exit
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %47, label %land.end.i.i113 [
    i32 1, label %if.then74.if.then.i.i107_crit_edge
    i32 2, label %if.then74.if.then.i.i107_crit_edge125
    i32 3, label %if.then74.if.then14.i.i109_crit_edge
    i32 5, label %if.then74.if.then14.i.i109_crit_edge126
    i32 7, label %if.then74.if.then14.i.i109_crit_edge127
    i32 4, label %if.then74.if.then28.i.i111_crit_edge
    i32 6, label %if.then74.if.then28.i.i111_crit_edge128
    i32 8, label %if.then74.if.then28.i.i111_crit_edge129
  ]

if.then74.if.then28.i.i111_crit_edge129:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i111

if.then74.if.then28.i.i111_crit_edge128:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i111

if.then74.if.then28.i.i111_crit_edge:             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i111

if.then74.if.then14.i.i109_crit_edge127:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i109

if.then74.if.then14.i.i109_crit_edge126:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i109

if.then74.if.then14.i.i109_crit_edge:             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i.i109

if.then74.if.then.i.i107_crit_edge125:            ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i107

if.then74.if.then.i.i107_crit_edge:               ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i107

if.then.i.i107:                                   ; preds = %if.then74.if.then.i.i107_crit_edge, %if.then74.if.then.i.i107_crit_edge125
  %active_legacy_rate.i.i106 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 18
  %49 = ptrtoint ptr %active_legacy_rate.i.i106 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %active_legacy_rate.i.i106, align 8
  %conv.i.i = trunc i32 %50 to i16
  br label %rs_get_supported_rates.exit.i

if.then14.i.i109:                                 ; preds = %if.then74.if.then14.i.i109_crit_edge, %if.then74.if.then14.i.i109_crit_edge126, %if.then74.if.then14.i.i109_crit_edge127
  %active_siso_rate.i.i108 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 19
  %51 = ptrtoint ptr %active_siso_rate.i.i108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %active_siso_rate.i.i108, align 4
  %conv15.i.i = trunc i32 %52 to i16
  br label %rs_get_supported_rates.exit.i

if.then28.i.i111:                                 ; preds = %if.then74.if.then28.i.i111_crit_edge, %if.then74.if.then28.i.i111_crit_edge128, %if.then74.if.then28.i.i111_crit_edge129
  %active_mimo2_rate.i.i110 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 20
  %53 = ptrtoint ptr %active_mimo2_rate.i.i110 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %active_mimo2_rate.i.i110, align 8
  %conv29.i.i = trunc i32 %54 to i16
  br label %rs_get_supported_rates.exit.i

land.end.i.i113:                                  ; preds = %if.then74
  %.b78.i.i112 = load i1, ptr @rs_get_supported_rates.__already_done, align 1
  br i1 %.b78.i.i112, label %land.end.i.i113.rs_get_supported_rates.exit.i_crit_edge, label %if.then37.i.i114, !prof !618

land.end.i.i113.rs_get_supported_rates.exit.i_crit_edge: ; preds = %land.end.i.i113
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_supported_rates.exit.i

if.then37.i.i114:                                 ; preds = %land.end.i.i113
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_get_supported_rates.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 969, i32 noundef 9, ptr noundef null) #15
  br label %rs_get_supported_rates.exit.i

rs_get_supported_rates.exit.i:                    ; preds = %if.then37.i.i114, %land.end.i.i113.rs_get_supported_rates.exit.i_crit_edge, %if.then28.i.i111, %if.then14.i.i109, %if.then.i.i107
  %retval.0.i.i115 = phi i16 [ %conv.i.i, %if.then.i.i107 ], [ %conv15.i.i, %if.then14.i.i109 ], [ %conv29.i.i, %if.then28.i.i111 ], [ 0, %if.then37.i.i114 ], [ 0, %land.end.i.i113.rs_get_supported_rates.exit.i_crit_edge ]
  %55 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate, align 4
  %conv.i116 = trunc i32 %56 to i8
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type, align 4
  %call1.i = tail call fastcc zeroext i16 @rs_get_adjacent_rate(i8 noundef zeroext %conv.i116, i16 noundef zeroext %retval.0.i.i115, i32 noundef %58) #15
  %59 = and i16 %call1.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %59)
  %cmp.i = icmp eq i16 %59, 17
  br i1 %cmp.i, label %rs_get_supported_rates.exit.i.cleanup_crit_edge, label %if.end.i

rs_get_supported_rates.exit.i.cleanup_crit_edge:  ; preds = %rs_get_supported_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %rs_get_supported_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i = zext i16 %59 to i32
  %60 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv4.i, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %rs_get_supported_rates.exit.i.cleanup_crit_edge, %rs_rate_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ucode_rate_from_rs_rate(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %ant = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 2
  %2 = ptrtoint ptr %ant to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ant, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 14
  %and = and i32 %shl, 49152
  %type = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [17 x %struct.iwl_rs_rate_info], ptr @iwl_rates, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %7 to i32
  %or7 = or i32 %and, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %8 = icmp ult i32 %1, 4
  %or13 = or i32 %or7, 512
  %ucode_rate.0 = select i1 %8, i32 %or13, i32 %or7
  br label %cleanup

if.end14:                                         ; preds = %entry
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %5, label %do.end185 [
    i32 3, label %if.end14.if.then23_crit_edge
    i32 4, label %if.end14.if.then23_crit_edge283
    i32 5, label %if.end14.if.then98_crit_edge
    i32 6, label %if.end14.if.then98_crit_edge284
  ]

if.end14.if.then98_crit_edge284:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then98

if.end14.if.then98_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then98

if.end14.if.then23_crit_edge283:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.end14.if.then23_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23

if.then23:                                        ; preds = %if.end14.if.then23_crit_edge, %if.end14.if.then23_crit_edge283
  %10 = add i32 %1, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %10)
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %do.end, label %if.then23.if.end33_crit_edge

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef %1) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.then23.if.end33_crit_edge
  %index.0 = phi i32 [ 12, %do.end ], [ %1, %if.then23.if.end33_crit_edge ]
  %or34 = or i32 %and, 1073742080
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %15, label %land.end [
    i32 3, label %if.then38
    i32 4, label %if.then45
  ]

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %plcp_ht_siso = getelementptr [17 x %struct.iwl_rs_rate_info], ptr @iwl_rates, i32 0, i32 %index.0, i32 1
  %17 = ptrtoint ptr %plcp_ht_siso to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %plcp_ht_siso, align 1
  %conv40 = zext i8 %18 to i32
  %or41 = or i32 %or34, %conv40
  br label %if.end191thread-pre-split

if.then45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %plcp_ht_mimo2 = getelementptr [17 x %struct.iwl_rs_rate_info], ptr @iwl_rates, i32 0, i32 %index.0, i32 2
  %19 = ptrtoint ptr %plcp_ht_mimo2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %plcp_ht_mimo2, align 1
  %conv47 = zext i8 %20 to i32
  %or48 = or i32 %or34, %conv47
  br label %if.end191thread-pre-split

land.end:                                         ; preds = %if.end33
  %.b279 = load i1, ptr @ucode_rate_from_rs_rate.__already_done, align 1
  br i1 %.b279, label %land.end.if.end191_crit_edge, label %if.then55, !prof !618

land.end.if.end191_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end191

if.then55:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ucode_rate_from_rs_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 808, i32 noundef 9, ptr noundef null) #15
  br label %if.end191thread-pre-split

if.then98:                                        ; preds = %if.end14.if.then98_crit_edge, %if.end14.if.then98_crit_edge284
  %21 = add i32 %1, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %21)
  %22 = icmp ult i32 %21, -11
  br i1 %22, label %do.end108, label %if.then98.if.end112_crit_edge

if.then98.if.end112_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

do.end108:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.97, i32 noundef %1) #15
  br label %if.end112

if.end112:                                        ; preds = %do.end108, %if.then98.if.end112_crit_edge
  %index.1 = phi i32 [ 14, %do.end108 ], [ %1, %if.then98.if.end112_crit_edge ]
  %or113 = or i32 %and, 1140850688
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %26, label %land.end137 [
    i32 5, label %if.then117
    i32 6, label %if.then125
  ]

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  %plcp_vht_siso = getelementptr [17 x %struct.iwl_rs_rate_info], ptr @iwl_rates, i32 0, i32 %index.1, i32 3
  %28 = ptrtoint ptr %plcp_vht_siso to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %plcp_vht_siso, align 1
  %conv119 = zext i8 %29 to i32
  %or120 = or i32 %or113, %conv119
  br label %if.end191thread-pre-split

if.then125:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  %plcp_vht_mimo2 = getelementptr [17 x %struct.iwl_rs_rate_info], ptr @iwl_rates, i32 0, i32 %index.1, i32 4
  %30 = ptrtoint ptr %plcp_vht_mimo2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %plcp_vht_mimo2, align 1
  %conv127 = zext i8 %31 to i32
  %or128 = or i32 %or113, %conv127
  br label %if.end191thread-pre-split

land.end137:                                      ; preds = %if.end112
  %.b277278 = load i1, ptr @ucode_rate_from_rs_rate.__already_done.98, align 1
  br i1 %.b277278, label %land.end137.if.end191_crit_edge, label %if.then144, !prof !618

land.end137.if.end191_crit_edge:                  ; preds = %land.end137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end191

if.then144:                                       ; preds = %land.end137
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ucode_rate_from_rs_rate.__already_done.98, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 820, i32 noundef 9, ptr noundef null) #15
  br label %if.end191thread-pre-split

do.end185:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %or15 = or i32 %and, 1073741824
  %32 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %33, i32 noundef 0, ptr noundef nonnull @.str.99, i32 noundef %5) #15
  br label %if.end191thread-pre-split

if.end191thread-pre-split:                        ; preds = %do.end185, %if.then144, %if.then125, %if.then117, %if.then55, %if.then45, %if.then38
  %ucode_rate.1.ph = phi i32 [ %or113, %if.then144 ], [ %or34, %if.then55 ], [ %or15, %do.end185 ], [ %or128, %if.then125 ], [ %or120, %if.then117 ], [ %or48, %if.then45 ], [ %or41, %if.then38 ]
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %type, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.end191thread-pre-split, %land.end137.if.end191_crit_edge, %land.end.if.end191_crit_edge
  %35 = phi i32 [ %.pr, %if.end191thread-pre-split ], [ %26, %land.end137.if.end191_crit_edge ], [ %15, %land.end.if.end191_crit_edge ]
  %ucode_rate.1 = phi i32 [ %ucode_rate.1.ph, %if.end191thread-pre-split ], [ %or113, %land.end137.if.end191_crit_edge ], [ %or34, %land.end.if.end191_crit_edge ]
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %35, label %if.end191.if.end209_crit_edge [
    i32 3, label %if.end191.land.lhs.true203_crit_edge
    i32 5, label %if.end191.land.lhs.true203_crit_edge285
    i32 7, label %if.end191.land.lhs.true203_crit_edge286
  ]

if.end191.land.lhs.true203_crit_edge286:          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true203

if.end191.land.lhs.true203_crit_edge285:          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true203

if.end191.land.lhs.true203_crit_edge:             ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true203

if.end191.if.end209_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end209

land.lhs.true203:                                 ; preds = %if.end191.land.lhs.true203_crit_edge, %if.end191.land.lhs.true203_crit_edge285, %if.end191.land.lhs.true203_crit_edge286
  %stbc = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 6
  %37 = ptrtoint ptr %stbc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %stbc, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool204.not = icmp eq i8 %38, 0
  %or208 = or i32 %ucode_rate.1, 180224
  %spec.select = select i1 %tobool204.not, i32 %ucode_rate.1, i32 %or208
  br label %if.end209

if.end209:                                        ; preds = %land.lhs.true203, %if.end191.if.end209_crit_edge
  %ucode_rate.2 = phi i32 [ %ucode_rate.1, %if.end191.if.end209_crit_edge ], [ %spec.select, %land.lhs.true203 ]
  %bw = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 3
  %39 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bw, align 4
  %or210 = or i32 %40, %ucode_rate.2
  %sgi = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 4
  %41 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sgi, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool211.not = icmp eq i8 %42, 0
  %or213 = or i32 %or210, 8192
  %spec.select282 = select i1 %tobool211.not, i32 %or210, i32 %or213
  %ldpc = getelementptr inbounds %struct.rs_rate, ptr %rate, i32 0, i32 5
  %43 = ptrtoint ptr %ldpc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ldpc, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool215.not = icmp eq i8 %44, 0
  %or217 = or i32 %spec.select282, 134217728
  %ucode_rate.4 = select i1 %tobool215.not, i32 %spec.select282, i32 %or217
  br label %cleanup

cleanup:                                          ; preds = %if.end209, %if.then
  %retval.0 = phi i32 [ %ucode_rate.0, %if.then ], [ %ucode_rate.4, %if.end209 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @first_antenna(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_bfer_active_iter(ptr nocapture noundef %_data, ptr noundef %sta) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %cmp = icmp eq ptr %1, %sta
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ss_params1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 3, i32 6
  %2 = ptrtoint ptr %ss_params1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ss_params1, align 4
  %4 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %bfer_mvmsta = getelementptr inbounds %struct.rs_bfer_active_iter_data, ptr %_data, i32 0, i32 1
  %5 = ptrtoint ptr %bfer_mvmsta to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bfer_mvmsta, align 4
  %cmp3.not = icmp eq ptr %6, null
  br i1 %cmp3.not, label %if.then2.if.end33_crit_edge, label %land.rhs

if.then2.if.end33_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.rhs:                                         ; preds = %if.then2
  %.b52 = load i1, ptr @rs_bfer_active_iter.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end33_crit_edge, label %if.then11, !prof !618

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rs_bfer_active_iter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3451, i32 noundef 9, ptr noundef null) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then11, %land.rhs.if.end33_crit_edge, %if.then2.if.end33_crit_edge
  %7 = ptrtoint ptr %bfer_mvmsta to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %drv_priv.i, ptr %bfer_mvmsta, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_bt_coex_is_tpc_allowed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_vht_max_nss(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rs_fw_get_max_amsdu_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_max_amsdu_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_bt_coex_get_single_ant_msk(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rs_alloc(ptr nocapture noundef readonly %hw) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rs_free(ptr nocapture noundef %mvm_rate) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rs_drv_alloc_sta(ptr noundef %mvm_rate, ptr noundef writeonly %sta, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %mvm_rate, i32 0, i32 1
  %lq_sta1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 15
  %0 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_mode_specific, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_drv_alloc_sta, ptr noundef nonnull @.str.160) #15
  %pers = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 14
  %drv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 27
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %op_mode_specific, ptr %drv, align 8
  %3 = ptrtoint ptr %pers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pers, align 8
  %dbg_fixed_txp_reduction = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 15
  %4 = ptrtoint ptr %dbg_fixed_txp_reduction to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %dbg_fixed_txp_reduction, align 4
  %ss_force = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 16
  %5 = ptrtoint ptr %ss_force to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ss_force, align 8
  %chains = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 17
  %6 = ptrtoint ptr %chains to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %chains, align 4
  %chain_signal = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 9, i32 18
  %7 = ptrtoint ptr %chain_signal to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %chain_signal, align 1
  %last_rssi = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 12, i32 0, i32 35, i32 5
  %8 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %last_rssi, align 1
  ret ptr %lq_sta1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rs_rate_init_ops(ptr nocapture noundef %mvm_r, ptr nocapture noundef %sband, ptr nocapture noundef %chandef, ptr nocapture noundef %sta, ptr nocapture noundef %mvm_sta) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_drv_rate_update(ptr noundef %mvm_r, ptr nocapture noundef readonly %sband, ptr nocapture noundef readnone %chandef, ptr noundef %sta, ptr nocapture noundef readnone %priv_sta, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %mvm_r, i32 0, i32 1
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call3 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 0) #15
  %call3.1 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 1) #15
  %call3.2 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 2) #15
  %call3.3 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 3) #15
  %call3.4 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 4) #15
  %call3.5 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 5) #15
  %call3.6 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 6) #15
  %call3.7 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext 7) #15
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %fw.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %mvm_r, i32 3
  %4 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rs_fw_rate_init(ptr noundef %op_mode_specific, ptr noundef %sta, i32 noundef %3, i1 noundef zeroext true) #15
  br label %cleanup

if.else.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %lock.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 27, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  tail call fastcc void @rs_drv_rate_init(ptr noundef %op_mode_specific, ptr noundef %sta, i32 noundef %3) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_free_sta(ptr nocapture noundef readonly %mvm_r, ptr nocapture noundef readnone %sta, ptr nocapture noundef readnone %mvm_sta) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %mvm_r, i32 0, i32 1
  %0 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_mode_specific, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_free_sta, ptr noundef nonnull @.str.161) #15
  %2 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_mode_specific, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_free_sta, ptr noundef nonnull @.str.162) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_drv_mac80211_tx_status(ptr noundef %mvm_r, ptr nocapture noundef readnone %sband, ptr noundef %sta, ptr nocapture noundef readnone %priv_sta, ptr nocapture noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %mvm_r, i32 0, i32 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %6 = and i16 %5, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp.i = icmp eq i16 %6, 2048
  br i1 %cmp.i, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb.i, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %9 = and i16 %5, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %9)
  %cmp.i.i = icmp eq i16 %9, -30720
  br i1 %cmp.i.i, label %if.end.i, label %if.end5.rs_get_tid.exit_crit_edge

if.end5.rs_get_tid.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_tid.exit

if.end.i:                                         ; preds = %if.end5
  %10 = and i16 %5, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp.i.i.i = icmp eq i16 %10, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %1, i32 %retval.0.v.i.i
  %11 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %retval.0.i.i, align 1
  %13 = and i8 %12, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %cmp.i18 = icmp ugt i8 %13, 8
  br i1 %cmp.i18, label %if.then6.i, label %if.end.i.rs_get_tid.exit_crit_edge, !prof !621

if.end.i.rs_get_tid.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_tid.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_tid.exit

rs_get_tid.exit:                                  ; preds = %if.then6.i, %if.end.i.rs_get_tid.exit_crit_edge, %if.end5.rs_get_tid.exit_crit_edge
  %tid.1.i = phi i8 [ 8, %if.then6.i ], [ %13, %if.end.i.rs_get_tid.exit_crit_edge ], [ 8, %if.end5.rs_get_tid.exit_crit_edge ]
  %conv = zext i8 %tid.1.i to i32
  %14 = and i16 %5, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %14)
  %cmp.i19 = icmp eq i16 %14, -14336
  tail call void @iwl_mvm_rs_tx_status(ptr noundef %op_mode_specific, ptr noundef %sta, i32 noundef %conv, ptr noundef %cb.i, i1 noundef zeroext %cmp.i19)
  br label %cleanup

cleanup:                                          ; preds = %rs_get_tid.exit, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_drv_get_rate(ptr nocapture noundef readonly %mvm_r, ptr noundef readonly %sta, ptr noundef %mvm_sta, ptr noundef %txrc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %mvm_r, i32 0, i32 1
  %skb1 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif, align 8
  %tobool3.not = icmp eq ptr %3, null
  %tobool4.not = icmp eq ptr %mvm_sta, null
  %or.cond = or i1 %tobool4.not, %tobool3.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not.old = icmp eq ptr %mvm_sta, null
  br i1 %tobool4.not.old, label %if.end.cleanup_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge
  %last_rate_n_flags = getelementptr inbounds %struct.iwl_lq_sta, ptr %mvm_sta, i32 0, i32 32
  %4 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_rate_n_flags, align 4
  %band = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  tail call void @iwl_mvm_hwrate_to_tx_rate_v1(i32 noundef %5, i32 noundef %bf.lshr, ptr noundef %7) #15
  %count = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load9 = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load9, 2047
  %bf.set = or i16 %bf.clear, 2048
  store i16 %bf.set, ptr %count, align 1
  %rs_state = getelementptr inbounds %struct.iwl_lq_sta, ptr %mvm_sta, i32 0, i32 1
  %9 = ptrtoint ptr %rs_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rs_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.not = icmp eq i8 %10, 2
  br i1 %cmp.not, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  %optimal_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %mvm_sta, i32 0, i32 24
  %optimal_rate_mask.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %mvm_sta, i32 0, i32 25
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %optimal_rate_mask.i, i32 noundef 32) #15
  %11 = ptrtoint ptr %optimal_rate.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %optimal_rate.i, align 4
  %optimal_nentries.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %mvm_sta, i32 0, i32 27
  %12 = ptrtoint ptr %optimal_nentries.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %optimal_nentries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.i = icmp sgt i32 %13, 0
  br i1 %cmp3.i, label %for.body.lr.ph.i, label %if.then11.rs_get_optimal_rate.exit_crit_edge

if.then11.rs_get_optimal_rate.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_optimal_rate.exit

for.body.lr.ph.i:                                 ; preds = %if.then11
  %optimal_rates.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %mvm_sta, i32 0, i32 26
  %14 = ptrtoint ptr %optimal_rates.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %optimal_rates.i, align 8
  %last_rssi.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %mvm_sta, i32 0, i32 35, i32 5
  %16 = ptrtoint ptr %last_rssi.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %last_rssi.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rs_init_rate_info, ptr %15, i32 %i.04.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp6.not.i = icmp slt i8 %17, %19
  br i1 %cmp6.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %rate_idx1.i = getelementptr %struct.rs_init_rate_info, ptr %15, i32 %i.04.i, i32 1
  %20 = ptrtoint ptr %rate_idx1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rate_idx1.i, align 1
  %conv.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %22 = ptrtoint ptr %optimal_rate_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %optimal_rate_mask.i, align 4
  %and.i = and i32 %shl.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %cleanup.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.le = zext i8 %21 to i32
  %24 = ptrtoint ptr %optimal_rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i.le, ptr %optimal_rate.i, align 4
  br label %rs_get_optimal_rate.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.rs_get_optimal_rate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.rs_get_optimal_rate.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rs_get_optimal_rate.exit

rs_get_optimal_rate.exit:                         ; preds = %for.inc.i.rs_get_optimal_rate.exit_crit_edge, %cleanup.i, %if.then11.rs_get_optimal_rate.exit_crit_edge
  %call13 = tail call fastcc i32 @ucode_rate_from_rs_rate(ptr noundef %op_mode_specific, ptr noundef %optimal_rate.i)
  %25 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load15 = load i32, ptr %band, align 4
  %bf.lshr16 = lshr i32 %bf.load15, 29
  %reported_rate = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 4
  tail call void @iwl_mvm_hwrate_to_tx_rate_v1(i32 noundef %call13, i32 noundef %bf.lshr16, ptr noundef %reported_rate) #15
  br label %cleanup

cleanup:                                          ; preds = %rs_get_optimal_rate.exit, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_drv_add_sta_debugfs(ptr nocapture noundef readnone %mvm, ptr noundef %priv_sta, ptr noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr i8, ptr %priv_sta, i32 4120
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.163, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @rs_sta_dbgfs_scale_table_ops) #15
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.164, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @rs_sta_dbgfs_stats_table_ops) #15
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.165, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @rs_sta_dbgfs_drv_tx_stats_ops) #15
  %tx_agg_tid_en = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 31
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.166, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %tx_agg_tid_en) #15
  %dbg_fixed_txp_reduction = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 35, i32 1
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.167, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %dbg_fixed_txp_reduction) #15
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.168, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @iwl_dbgfs_ss_force_ops) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_hwrate_to_tx_rate_v1(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_scale_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 %idxprom
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 7
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 2048) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pers = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35
  %lq = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lq, align 4
  %conv = zext i8 %8 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 2048, ptr noundef nonnull @.str.169, i32 noundef %conv) #15
  %add.ptr4 = getelementptr i8, ptr %call7.i, i32 %call3
  %sub5 = sub i32 2048, %call3
  %total_failed = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_failed, align 8
  %total_success = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_success, align 4
  %active_legacy_rate = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_legacy_rate, align 8
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.170, i32 noundef %10, i32 noundef %12, i32 noundef %14) #15
  %add7 = add i32 %call6, %call3
  %add.ptr8 = getelementptr i8, ptr %call7.i, i32 %add7
  %sub9 = sub i32 2048, %add7
  %15 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pers, align 8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.171, i32 noundef %16) #15
  %add12 = add i32 %call11, %add7
  %add.ptr13 = getelementptr i8, ptr %call7.i, i32 %add12
  %sub14 = sub i32 2048, %add12
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %5, i32 0, i32 31
  %17 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %iwl_mvm_get_valid_tx_ant.exit.thread347, label %land.lhs.true.i

iwl_mvm_get_valid_tx_ant.exit.thread347:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %fw8.i348 = getelementptr inbounds %struct.iwl_mvm, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %fw8.i348 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw8.i348, align 8
  %valid_tx_ant9.i349 = getelementptr inbounds %struct.iwl_fw, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %valid_tx_ant9.i349 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %valid_tx_ant9.i349, align 4
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not350 = icmp eq i8 %23, 0
  %cond351 = select i1 %tobool17.not350, ptr @.str.12, ptr @.str.173
  br label %cond.false.i338

land.lhs.true.i:                                  ; preds = %if.end
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %18, i32 0, i32 20
  %24 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.i = icmp eq i8 %25, 0
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %valid_tx_ant9.i, align 4
  %and.i = and i8 %25, 1
  %.sink.v = select i1 %tobool2.not.i, i8 1, i8 %and.i
  %.sink = and i8 %29, %.sink.v
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %tobool17.not = icmp eq i8 %.sink, 0
  %cond = select i1 %tobool17.not, ptr @.str.12, ptr @.str.173
  %30 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool2.not.i330 = icmp eq i8 %31, 0
  br i1 %tobool2.not.i330, label %land.lhs.true.i.cond.false.i338_crit_edge, label %cond.true.i335

land.lhs.true.i.cond.false.i338_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false.i338

cond.true.i335:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %fw.i332 = getelementptr inbounds %struct.iwl_mvm, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %fw.i332 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw.i332, align 8
  %valid_tx_ant3.i333 = getelementptr inbounds %struct.iwl_fw, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %valid_tx_ant3.i333 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %valid_tx_ant3.i333, align 4
  %and.i334 = and i8 %35, %31
  br label %iwl_mvm_get_valid_tx_ant.exit340

cond.false.i338:                                  ; preds = %land.lhs.true.i.cond.false.i338_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.thread347
  %cond346 = phi ptr [ %cond, %land.lhs.true.i.cond.false.i338_crit_edge ], [ %cond351, %iwl_mvm_get_valid_tx_ant.exit.thread347 ]
  %fw8.i336 = getelementptr inbounds %struct.iwl_mvm, ptr %5, i32 0, i32 2
  %36 = ptrtoint ptr %fw8.i336 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw8.i336, align 8
  %valid_tx_ant9.i337 = getelementptr inbounds %struct.iwl_fw, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %valid_tx_ant9.i337 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %valid_tx_ant9.i337, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit340

iwl_mvm_get_valid_tx_ant.exit340:                 ; preds = %cond.false.i338, %cond.true.i335
  %cond344 = phi ptr [ %cond, %cond.true.i335 ], [ %cond346, %cond.false.i338 ]
  %cond.i339 = phi i8 [ %and.i334, %cond.true.i335 ], [ %39, %cond.false.i338 ]
  %40 = and i8 %cond.i339, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool21.not = icmp eq i8 %40, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.12, ptr @.str.174
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.172, ptr noundef nonnull %cond344, ptr noundef nonnull %cond22) #15
  %add24 = add i32 %call23, %add12
  %add.ptr25 = getelementptr i8, ptr %call7.i, i32 %add24
  %sub26 = sub i32 2048, %add24
  %type = getelementptr inbounds %struct.rs_rate, ptr %arrayidx, i32 0, i32 1
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %42, label %lor.rhs [
    i32 1, label %iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge
    i32 2, label %iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge354
    i32 5, label %iwl_mvm_get_valid_tx_ant.exit340.lor.end_crit_edge
  ]

iwl_mvm_get_valid_tx_ant.exit340.lor.end_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit340
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge354: ; preds = %iwl_mvm_get_valid_tx_ant.exit340
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit340
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

lor.rhs:                                          ; preds = %iwl_mvm_get_valid_tx_ant.exit340
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp35 = icmp eq i32 %42, 6
  %phi.sel = select i1 %cmp35, ptr @.str.4, ptr @.str.5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %iwl_mvm_get_valid_tx_ant.exit340.lor.end_crit_edge
  %44 = phi ptr [ %phi.sel, %lor.rhs ], [ @.str.4, %iwl_mvm_get_valid_tx_ant.exit340.lor.end_crit_edge ]
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge, %iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge354
  %cond38 = phi ptr [ %44, %lor.end ], [ @.str.176, %iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge ], [ @.str.176, %iwl_mvm_get_valid_tx_ant.exit340.cond.end_crit_edge354 ]
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.175, ptr noundef %cond38) #15
  %add40 = add i32 %call39, %add24
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  %.off = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %cond.end.if.end110_crit_edge, label %if.then48

cond.end.if.end110_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.then48:                                        ; preds = %cond.end
  %add.ptr49 = getelementptr i8, ptr %call7.i, i32 %add40
  %sub50 = sub i32 2048, %add40
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.286)
  switch i32 %46, label %lor.rhs58 [
    i32 3, label %if.then48.lor.end62_crit_edge
    i32 5, label %if.then48.lor.end62_crit_edge355
  ]

if.then48.lor.end62_crit_edge355:                 ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end62

if.then48.lor.end62_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end62

lor.rhs58:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %46)
  %cmp60 = icmp eq i32 %46, 7
  %phi.sel325 = select i1 %cmp60, ptr @.str.178, ptr @.str.179
  br label %lor.end62

lor.end62:                                        ; preds = %lor.rhs58, %if.then48.lor.end62_crit_edge, %if.then48.lor.end62_crit_edge355
  %48 = phi ptr [ @.str.178, %if.then48.lor.end62_crit_edge ], [ %phi.sel325, %lor.rhs58 ], [ @.str.178, %if.then48.lor.end62_crit_edge355 ]
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.177, ptr noundef nonnull %48) #15
  %add65 = add i32 %call64, %add40
  %add.ptr66 = getelementptr i8, ptr %call7.i, i32 %add65
  %sub67 = sub i32 2048, %add65
  %bw = getelementptr inbounds %struct.rs_rate, ptr %arrayidx, i32 0, i32 3
  %49 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bw, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %50, label %cond.false81 [
    i32 0, label %lor.end62.cond.end90_crit_edge
    i32 2048, label %cond.end90.fold.split
    i32 4096, label %cond.end90.fold.split326
  ]

lor.end62.cond.end90_crit_edge:                   ; preds = %lor.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end90

cond.false81:                                     ; preds = %lor.end62
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %50)
  %cmp83 = icmp eq i32 %50, 6144
  %cond85 = select i1 %cmp83, ptr @.str.183, ptr @.str.184
  br label %cond.end90

cond.end90.fold.split:                            ; preds = %lor.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end90

cond.end90.fold.split326:                         ; preds = %lor.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end90

cond.end90:                                       ; preds = %cond.end90.fold.split326, %cond.end90.fold.split, %cond.false81, %lor.end62.cond.end90_crit_edge
  %cond91 = phi ptr [ @.str.180, %lor.end62.cond.end90_crit_edge ], [ %cond85, %cond.false81 ], [ @.str.181, %cond.end90.fold.split ], [ @.str.182, %cond.end90.fold.split326 ]
  %call92 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.177, ptr noundef nonnull %cond91) #15
  %add93 = add i32 %call92, %add65
  %add.ptr94 = getelementptr i8, ptr %call7.i, i32 %add93
  %sub95 = sub i32 2048, %add93
  %sgi = getelementptr inbounds %struct.rs_rate, ptr %arrayidx, i32 0, i32 4
  %52 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sgi, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool96.not = icmp eq i8 %53, 0
  %cond98 = select i1 %tobool96.not, ptr @.str.187, ptr @.str.186
  %ldpc = getelementptr inbounds %struct.rs_rate, ptr %arrayidx, i32 0, i32 5
  %54 = ptrtoint ptr %ldpc to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ldpc, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool99.not = icmp eq i8 %55, 0
  %cond101 = select i1 %tobool99.not, ptr @.str.189, ptr @.str.188
  %is_agg = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 33
  %56 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_agg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool103.not = icmp eq i8 %57, 0
  %cond104 = select i1 %tobool103.not, ptr @.str.12, ptr @.str.190
  %amsdu_enabled = getelementptr i8, ptr %1, i32 4148
  %58 = ptrtoint ptr %amsdu_enabled to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %amsdu_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool106.not = icmp eq i16 %59, 0
  %cond107 = select i1 %tobool106.not, ptr @.str.12, ptr @.str.191
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr94, i32 noundef %sub95, ptr noundef nonnull @.str.185, ptr noundef nonnull %cond98, ptr noundef nonnull %cond101, ptr noundef nonnull %cond104, ptr noundef nonnull %cond107) #15
  %add109 = add i32 %call108, %add93
  br label %if.end110

if.end110:                                        ; preds = %cond.end90, %cond.end.if.end110_crit_edge
  %desc.0 = phi i32 [ %add109, %cond.end90 ], [ %add40, %cond.end.if.end110_crit_edge ]
  %add.ptr111 = getelementptr i8, ptr %call7.i, i32 %desc.0
  %sub112 = sub i32 2048, %desc.0
  %last_rate_n_flags = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 32
  %60 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_rate_n_flags, align 4
  %call113 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.192, i32 noundef %61) #15
  %add114 = add i32 %call113, %desc.0
  %add.ptr115 = getelementptr i8, ptr %call7.i, i32 %add114
  %sub116 = sub i32 2048, %add114
  %flags = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 3
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %flags, align 4
  %conv118 = zext i8 %63 to i32
  %mimo_delim = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 4
  %64 = ptrtoint ptr %mimo_delim to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mimo_delim, align 1
  %conv120 = zext i8 %65 to i32
  %single_stream_ant_msk = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 5
  %66 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %single_stream_ant_msk, align 2
  %conv122 = zext i8 %67 to i32
  %dual_stream_ant_msk = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 6
  %68 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dual_stream_ant_msk, align 1
  %conv124 = zext i8 %69 to i32
  %call125 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr115, i32 noundef %sub116, ptr noundef nonnull @.str.193, i32 noundef %conv118, i32 noundef %conv120, i32 noundef %conv122, i32 noundef %conv124) #15
  %add126 = add i32 %call125, %add114
  %add.ptr127 = getelementptr i8, ptr %call7.i, i32 %add126
  %sub128 = sub i32 2048, %add126
  %agg_time_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 8
  %70 = ptrtoint ptr %agg_time_limit to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %agg_time_limit, align 4
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %conv130 = zext i16 %72 to i32
  %agg_disable_start_th = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 9
  %73 = ptrtoint ptr %agg_disable_start_th to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %agg_disable_start_th, align 2
  %conv132 = zext i8 %74 to i32
  %agg_frame_cnt_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 10
  %75 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %agg_frame_cnt_limit, align 1
  %conv134 = zext i8 %76 to i32
  %call135 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127, i32 noundef %sub128, ptr noundef nonnull @.str.194, i32 noundef %conv130, i32 noundef %conv132, i32 noundef %conv134) #15
  %add136 = add i32 %call135, %add126
  %add.ptr137 = getelementptr i8, ptr %call7.i, i32 %add136
  %sub138 = sub i32 2048, %add136
  %reduced_tpc = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 1
  %77 = ptrtoint ptr %reduced_tpc to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %reduced_tpc, align 1
  %conv140 = zext i8 %78 to i32
  %call141 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr137, i32 noundef %sub138, ptr noundef nonnull @.str.195, i32 noundef %conv140) #15
  %add142 = add i32 %call141, %add136
  %ss_params144 = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 13
  %79 = ptrtoint ptr %ss_params144 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ss_params144, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %add.ptr145 = getelementptr i8, ptr %call7.i, i32 %add142
  %sub146 = sub i32 2048, %add142
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %tobool148.not = icmp sgt i32 %81, -1
  %cond149 = select i1 %tobool148.not, ptr @.str.198, ptr @.str.197
  %and150 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %cond152 = select i1 %tobool151.not, ptr @.str.12, ptr @.str.199
  %and153 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %cond155 = select i1 %tobool154.not, ptr @.str.12, ptr @.str.200
  %and156 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  %cond158 = select i1 %tobool157.not, ptr @.str.12, ptr @.str.201
  %call159 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr145, i32 noundef %sub146, ptr noundef nonnull @.str.196, ptr noundef nonnull %cond149, ptr noundef nonnull %cond152, ptr noundef nonnull %cond155, ptr noundef nonnull %cond158) #15
  %add160 = add i32 %call159, %add142
  %add.ptr161 = getelementptr i8, ptr %call7.i, i32 %add160
  %sub162 = sub i32 2048, %add160
  %initial_rate_index = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 7
  %82 = ptrtoint ptr %initial_rate_index to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %initial_rate_index, align 4
  %conv165 = zext i8 %83 to i32
  %arrayidx168 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 7, i32 1
  %84 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %85 to i32
  %arrayidx172 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 7, i32 2
  %86 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx172, align 2
  %conv173 = zext i8 %87 to i32
  %arrayidx176 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 7, i32 3
  %88 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %89 to i32
  %call178 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr161, i32 noundef %sub162, ptr noundef nonnull @.str.202, i32 noundef %conv165, i32 noundef %conv169, i32 noundef %conv173, i32 noundef %conv177) #15
  %add179 = add i32 %call178, %add160
  br label %for.body

for.body:                                         ; preds = %if.end196.for.body_crit_edge, %if.end110
  %desc.1353 = phi i32 [ %add179, %if.end110 ], [ %desc.2, %if.end196.for.body_crit_edge ]
  %i.0352 = phi i32 [ 0, %if.end110 ], [ %inc197, %if.end196.for.body_crit_edge ]
  %arrayidx183 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 29, i32 12, i32 %i.0352
  %90 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx183, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %add.ptr184 = getelementptr i8, ptr %call7.i, i32 %desc.1353
  %sub185 = sub i32 2048, %desc.1353
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr184, i32 noundef %sub185, ptr noundef nonnull @.str.203, i32 noundef %i.0352, i32 noundef %92) #15
  %add187 = add i32 %call186, %desc.1353
  %add.ptr188 = getelementptr i8, ptr %call7.i, i32 %add187
  %sub189 = sub i32 2048, %add187
  %call190 = tail call i32 @rs_pretty_print_rate_v1(ptr noundef %add.ptr188, i32 noundef %sub189, i32 noundef %92)
  %add191 = add i32 %add187, %call190
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add191)
  %cmp192 = icmp ult i32 %add191, 2047
  br i1 %cmp192, label %if.then194, label %for.body.if.end196_crit_edge

for.body.if.end196_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196

if.then194:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add nuw nsw i32 %add191, 1
  %arrayidx195 = getelementptr i8, ptr %call7.i, i32 %add191
  %93 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 10, ptr %arrayidx195, align 1
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %for.body.if.end196_crit_edge
  %desc.2 = phi i32 [ %inc, %if.then194 ], [ %add191, %for.body.if.end196_crit_edge ]
  %inc197 = add nuw nsw i32 %i.0352, 1
  %exitcond.not = icmp eq i32 %inc197, 16
  br i1 %exitcond.not, label %for.end, label %if.end196.for.body_crit_edge

if.end196.for.body_crit_edge:                     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  %call198 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %desc.2) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call198, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_scale_table_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %parsed_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_rate) #15
  %2 = ptrtoint ptr %parsed_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %parsed_rate, align 4, !annotation !623
  %pers = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 7
  %3 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv, align 8
  %5 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.207, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %6, i32 -1226833920) #19, !srcloc !625
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !618

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #15
  %8 = call i32 @llvm.read_register.i32(metadata !608) #15
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !626
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !627
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !628
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %6) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !627
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !628
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !618

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.204, ptr noundef nonnull %parsed_rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %parsed_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parsed_rate, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %storemerge = phi i32 [ %13, %if.then5 ], [ 0, %if.end.if.end9_crit_edge ]
  %14 = ptrtoint ptr %pers to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %pers, align 8
  %active_legacy_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %active_legacy_rate.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4095, ptr %active_legacy_rate.i, align 8
  %active_siso_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %active_siso_rate.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8144, ptr %active_siso_rate.i, align 4
  %active_mimo2_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %active_mimo2_rate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8144, ptr %active_mimo2_rate.i, align 8
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 8
  %lq.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 29
  %20 = ptrtoint ptr %lq.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lq.i, align 4
  %conv.i = zext i8 %21 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_program_fix_rate, ptr noundef nonnull @.str.208, i32 noundef %conv.i, i32 noundef %storemerge) #15
  %22 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.then.i20

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i20:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @rs_fill_lq_cmd(ptr noundef %4, ptr noundef null, ptr noundef %1, ptr noundef null) #15
  %24 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv, align 8
  %call.i = call i32 @iwl_mvm_send_lq_cmd(ptr noundef %25, ptr noundef %lq.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i20, %if.end9.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end9.cleanup_crit_edge ], [ %count, %if.then.i20 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_rate) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_stats_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 0
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2 = icmp eq i8 %4, 0
  %cond = select i1 %cmp2, ptr @.str.210, ptr @.str.211
  %type = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %sgi = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sgi, align 4, !range !619
  %9 = zext i8 %8 to i32
  %bw = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bw, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.288)
  switch i32 %11, label %cond.false17 [
    i32 0, label %for.body.preheader.cond.end25_crit_edge
    i32 2048, label %cond.end25.fold.split
    i32 4096, label %cond.end25.fold.split76
  ]

for.body.preheader.cond.end25_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end25

cond.false17:                                     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %11)
  %cmp19 = icmp eq i32 %11, 6144
  %cond21 = select i1 %cmp19, ptr @.str.183, ptr @.str.212
  br label %cond.end25

cond.end25.fold.split:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end25

cond.end25.fold.split76:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end25.fold.split76, %cond.end25.fold.split, %cond.false17, %for.body.preheader.cond.end25_crit_edge
  %cond26 = phi ptr [ @.str.180, %for.body.preheader.cond.end25_crit_edge ], [ %cond21, %cond.false17 ], [ @.str.181, %cond.end25.fold.split ], [ @.str.182, %cond.end25.fold.split76 ]
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.209, ptr noundef nonnull %cond, i32 noundef %6, i32 noundef %9, ptr noundef nonnull %cond26, i32 noundef %14)
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %cond.end25
  %j.078 = phi i32 [ 0, %cond.end25 ], [ %inc, %for.body31.for.body31_crit_edge ]
  %desc.177 = phi i32 [ %call27, %cond.end25 ], [ %add39, %for.body31.for.body31_crit_edge ]
  %add.ptr32 = getelementptr i8, ptr %call7.i, i32 %desc.177
  %counter = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 0, i32 3, i32 %j.078, i32 3
  %15 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %counter, align 8
  %success_counter = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 0, i32 3, i32 %j.078, i32 1
  %17 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %success_counter, align 8
  %success_ratio = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 0, i32 3, i32 %j.078, i32 2
  %19 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %success_ratio, align 4
  %call38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32, ptr noundef nonnull @.str.213, i32 noundef %16, i32 noundef %18, i32 noundef %20)
  %add39 = add i32 %call38, %desc.177
  %inc = add nuw nsw i32 %j.078, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc40, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body31

for.inc40:                                        ; preds = %for.body31
  %arrayidx.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 1
  %add.ptr.1 = getelementptr i8, ptr %call7.i, i32 %add39
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp2.1 = icmp eq i8 %22, 1
  %cond.1 = select i1 %cmp2.1, ptr @.str.210, ptr @.str.211
  %type.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %type.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.1, align 4
  %sgi.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %sgi.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sgi.1, align 4, !range !619
  %27 = zext i8 %26 to i32
  %bw.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %bw.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bw.1, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %29, label %cond.false17.1 [
    i32 0, label %for.inc40.cond.end25.1_crit_edge
    i32 2048, label %cond.end25.fold.split.1
    i32 4096, label %cond.end25.fold.split76.1
  ]

for.inc40.cond.end25.1_crit_edge:                 ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end25.1

cond.end25.fold.split76.1:                        ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end25.1

cond.end25.fold.split.1:                          ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end25.1

cond.false17.1:                                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %29)
  %cmp19.1 = icmp eq i32 %29, 6144
  %cond21.1 = select i1 %cmp19.1, ptr @.str.183, ptr @.str.212
  br label %cond.end25.1

cond.end25.1:                                     ; preds = %cond.false17.1, %cond.end25.fold.split.1, %cond.end25.fold.split76.1, %for.inc40.cond.end25.1_crit_edge
  %cond26.1 = phi ptr [ @.str.180, %for.inc40.cond.end25.1_crit_edge ], [ %cond21.1, %cond.false17.1 ], [ @.str.181, %cond.end25.fold.split.1 ], [ @.str.182, %cond.end25.fold.split76.1 ]
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1, align 4
  %call27.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.209, ptr noundef nonnull %cond.1, i32 noundef %24, i32 noundef %27, ptr noundef nonnull %cond26.1, i32 noundef %32)
  %add.1 = add i32 %call27.1, %add39
  br label %for.body31.1

for.body31.1:                                     ; preds = %for.body31.1.for.body31.1_crit_edge, %cond.end25.1
  %j.078.1 = phi i32 [ 0, %cond.end25.1 ], [ %inc.1, %for.body31.1.for.body31.1_crit_edge ]
  %desc.177.1 = phi i32 [ %add.1, %cond.end25.1 ], [ %add39.1, %for.body31.1.for.body31.1_crit_edge ]
  %add.ptr32.1 = getelementptr i8, ptr %call7.i, i32 %desc.177.1
  %counter.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 1, i32 3, i32 %j.078.1, i32 3
  %33 = ptrtoint ptr %counter.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %counter.1, align 8
  %success_counter.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 1, i32 3, i32 %j.078.1, i32 1
  %35 = ptrtoint ptr %success_counter.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %success_counter.1, align 8
  %success_ratio.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 30, i32 1, i32 3, i32 %j.078.1, i32 2
  %37 = ptrtoint ptr %success_ratio.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %success_ratio.1, align 4
  %call38.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.1, ptr noundef nonnull @.str.213, i32 noundef %34, i32 noundef %36, i32 noundef %38)
  %add39.1 = add i32 %call38.1, %desc.177.1
  %inc.1 = add nuw nsw i32 %j.078.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 17
  br i1 %exitcond.1.not, label %for.inc40.1, label %for.body31.1.for.body31.1_crit_edge

for.body31.1.for.body31.1_crit_edge:              ; preds = %for.body31.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body31.1

for.inc40.1:                                      ; preds = %for.body31.1
  call void @__sanitizer_cov_trace_pc() #17
  %call43 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add39.1) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc40.1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %for.inc40.1 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_drv_tx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call7.i, i32 1024
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @.str.230) #15
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 %call1
  %gepdiff = sub i32 1024, %call1
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %gepdiff, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.42) #15
  %add.ptr7 = getelementptr i8, ptr %add.ptr2, i32 %call6
  %sub.ptr.rhs.cast4.1 = ptrtoint ptr %add.ptr7 to i32
  %sub.ptr.sub5.1 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.1
  %call6.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub.ptr.sub5.1, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.43) #15
  %add.ptr7.1 = getelementptr i8, ptr %add.ptr7, i32 %call6.1
  %sub.ptr.rhs.cast4.2 = ptrtoint ptr %add.ptr7.1 to i32
  %sub.ptr.sub5.2 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.2
  %call6.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.1, i32 noundef %sub.ptr.sub5.2, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.44) #15
  %add.ptr7.2 = getelementptr i8, ptr %add.ptr7.1, i32 %call6.2
  %sub.ptr.rhs.cast4.3 = ptrtoint ptr %add.ptr7.2 to i32
  %sub.ptr.sub5.3 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.3
  %call6.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.2, i32 noundef %sub.ptr.sub5.3, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.45) #15
  %add.ptr7.3 = getelementptr i8, ptr %add.ptr7.2, i32 %call6.3
  %sub.ptr.rhs.cast4.4 = ptrtoint ptr %add.ptr7.3 to i32
  %sub.ptr.sub5.4 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.4
  %call6.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.3, i32 noundef %sub.ptr.sub5.4, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.221) #15
  %add.ptr7.4 = getelementptr i8, ptr %add.ptr7.3, i32 %call6.4
  %sub.ptr.rhs.cast4.5 = ptrtoint ptr %add.ptr7.4 to i32
  %sub.ptr.sub5.5 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.5
  %call6.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.4, i32 noundef %sub.ptr.sub5.5, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.47) #15
  %add.ptr7.5 = getelementptr i8, ptr %add.ptr7.4, i32 %call6.5
  %sub.ptr.rhs.cast4.6 = ptrtoint ptr %add.ptr7.5 to i32
  %sub.ptr.sub5.6 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.6
  %call6.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.5, i32 noundef %sub.ptr.sub5.6, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.222) #15
  %add.ptr7.6 = getelementptr i8, ptr %add.ptr7.5, i32 %call6.6
  %sub.ptr.rhs.cast4.7 = ptrtoint ptr %add.ptr7.6 to i32
  %sub.ptr.sub5.7 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.7
  %call6.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.6, i32 noundef %sub.ptr.sub5.7, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.223) #15
  %add.ptr7.7 = getelementptr i8, ptr %add.ptr7.6, i32 %call6.7
  %sub.ptr.rhs.cast4.8 = ptrtoint ptr %add.ptr7.7 to i32
  %sub.ptr.sub5.8 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.8
  %call6.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.7, i32 noundef %sub.ptr.sub5.8, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.224) #15
  %add.ptr7.8 = getelementptr i8, ptr %add.ptr7.7, i32 %call6.8
  %sub.ptr.rhs.cast4.9 = ptrtoint ptr %add.ptr7.8 to i32
  %sub.ptr.sub5.9 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.9
  %call6.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.8, i32 noundef %sub.ptr.sub5.9, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.225) #15
  %add.ptr7.9 = getelementptr i8, ptr %add.ptr7.8, i32 %call6.9
  %sub.ptr.rhs.cast4.10 = ptrtoint ptr %add.ptr7.9 to i32
  %sub.ptr.sub5.10 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.10
  %call6.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.9, i32 noundef %sub.ptr.sub5.10, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.226) #15
  %add.ptr7.10 = getelementptr i8, ptr %add.ptr7.9, i32 %call6.10
  %sub.ptr.rhs.cast4.11 = ptrtoint ptr %add.ptr7.10 to i32
  %sub.ptr.sub5.11 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.11
  %call6.11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.10, i32 noundef %sub.ptr.sub5.11, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.227) #15
  %add.ptr7.11 = getelementptr i8, ptr %add.ptr7.10, i32 %call6.11
  %sub.ptr.rhs.cast4.12 = ptrtoint ptr %add.ptr7.11 to i32
  %sub.ptr.sub5.12 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.12
  %call6.12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.11, i32 noundef %sub.ptr.sub5.12, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.61) #15
  %add.ptr7.12 = getelementptr i8, ptr %add.ptr7.11, i32 %call6.12
  %sub.ptr.rhs.cast4.13 = ptrtoint ptr %add.ptr7.12 to i32
  %sub.ptr.sub5.13 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.13
  %call6.13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.12, i32 noundef %sub.ptr.sub5.13, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.62) #15
  %add.ptr7.13 = getelementptr i8, ptr %add.ptr7.12, i32 %call6.13
  %sub.ptr.rhs.cast4.14 = ptrtoint ptr %add.ptr7.13 to i32
  %sub.ptr.sub5.14 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.14
  %call6.14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.13, i32 noundef %sub.ptr.sub5.14, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.63) #15
  %add.ptr7.14 = getelementptr i8, ptr %add.ptr7.13, i32 %call6.14
  %sub.ptr.rhs.cast4.15 = ptrtoint ptr %add.ptr7.14 to i32
  %sub.ptr.sub5.15 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.15
  %call6.15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.14, i32 noundef %sub.ptr.sub5.15, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.228) #15
  %add.ptr7.15 = getelementptr i8, ptr %add.ptr7.14, i32 %call6.15
  %sub.ptr.rhs.cast4.16 = ptrtoint ptr %add.ptr7.15 to i32
  %sub.ptr.sub5.16 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast4.16
  %call6.16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.15, i32 noundef %sub.ptr.sub5.16, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.229) #15
  %add.ptr7.16 = getelementptr i8, ptr %add.ptr7.15, i32 %call6.16
  %sub.ptr.rhs.cast9 = ptrtoint ptr %add.ptr7.16 to i32
  %sub.ptr.sub10 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast9
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.16, i32 noundef %sub.ptr.sub10, ptr noundef nonnull @.str.232) #15
  %add.ptr12 = getelementptr i8, ptr %add.ptr7.16, i32 %call11
  br label %for.body15

for.body15:                                       ; preds = %for.end34.for.body15_crit_edge, %if.end
  %col.096 = phi i32 [ 0, %if.end ], [ %inc41, %for.end34.for.body15_crit_edge ]
  %pos.195 = phi ptr [ %add.ptr12, %if.end ], [ %add.ptr39, %for.end34.for.body15_crit_edge ]
  %sub.ptr.rhs.cast17 = ptrtoint ptr %pos.195 to i32
  %sub.ptr.sub18 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast17
  %arrayidx19 = getelementptr [8 x ptr], ptr @rs_sta_dbgfs_drv_tx_stats_read.column_name, i32 0, i32 %col.096
  %3 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx19, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %pos.195, i32 noundef %sub.ptr.sub18, ptr noundef nonnull @.str.231, ptr noundef %4) #15
  %add.ptr21 = getelementptr i8, ptr %pos.195, i32 %call20
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body15
  %rate.194 = phi i32 [ 0, %for.body15 ], [ %inc33, %for.body24.for.body24_crit_edge ]
  %pos.293 = phi ptr [ %add.ptr21, %for.body15 ], [ %add.ptr31, %for.body24.for.body24_crit_edge ]
  %arrayidx26 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 6, i32 %col.096, i32 %rate.194
  %sub.ptr.rhs.cast28 = ptrtoint ptr %pos.293 to i32
  %sub.ptr.sub29 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast28
  %5 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx26, align 8
  %total = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 6, i32 %col.096, i32 %rate.194, i32 1
  %7 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %total, align 8
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %pos.293, i32 noundef %sub.ptr.sub29, ptr noundef nonnull @.str.233, i64 noundef %6, i64 noundef %8) #15
  %add.ptr31 = getelementptr i8, ptr %pos.293, i32 %call30
  %inc33 = add nuw nsw i32 %rate.194, 1
  %exitcond.not = icmp eq i32 %inc33, 17
  br i1 %exitcond.not, label %for.end34, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body24

for.end34:                                        ; preds = %for.body24
  %sub.ptr.rhs.cast36 = ptrtoint ptr %add.ptr31 to i32
  %sub.ptr.sub37 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast36
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub.ptr.sub37, ptr noundef nonnull @.str.232) #15
  %add.ptr39 = getelementptr i8, ptr %add.ptr31, i32 %call38
  %inc41 = add nuw nsw i32 %col.096, 1
  %exitcond97.not = icmp eq i32 %inc41, 8
  br i1 %exitcond97.not, label %for.end42, label %for.end34.for.body15_crit_edge

for.end34.for.body15_crit_edge:                   ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body15

for.end42:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.rhs.cast = ptrtoint ptr %call7.i to i32
  %sub.ptr.lhs.cast43 = ptrtoint ptr %add.ptr39 to i32
  %sub.ptr.sub45 = sub i32 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast
  %call46 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %sub.ptr.sub45) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %for.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rs_sta_dbgfs_drv_tx_stats_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tx_stats = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 6
  %2 = call ptr @memset(ptr %tx_stats, i32 0, i32 2176)
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ss_force_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #15
  %ss_force = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 12)
  %3 = ptrtoint ptr %ss_force to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ss_force, align 8
  %arrayidx = getelementptr [4 x ptr], ptr @iwl_dbgfs_ss_force_read.ss_force_name, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 12, ptr noundef nonnull @.str.238, ptr noundef %6) #15
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #15
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_ss_force_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #15
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.207, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #19, !srcloc !625
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !618

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #15
  %5 = call i32 @llvm.read_register.i32(metadata !608) #15
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !626
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !627
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !628
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #15, !srcloc !627
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !628
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !618

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %drv.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 7
  %9 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv.i, align 8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.234, ptr noundef nonnull dereferenceable(4) %buf, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.then.i8, label %if.else.i

if.then.i8:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ss_force.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 2
  %11 = ptrtoint ptr %ss_force.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ss_force.i, align 8
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %bcmp11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.237, ptr noundef nonnull dereferenceable(4) %buf, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp11)
  %tobool3.not.i = icmp eq i32 %bcmp11, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %ss_force6.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 2
  %12 = ptrtoint ptr %ss_force6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %ss_force6.i, align 8
  br label %cleanup

if.else7.i:                                       ; preds = %if.else.i
  %bcmp12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.235, ptr noundef nonnull dereferenceable(4) %buf, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp12)
  %tobool9.not.i = icmp eq i32 %bcmp12, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else19.i

if.then10.i:                                      ; preds = %if.else7.i
  %stbc_capable.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %stbc_capable.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %stbc_capable.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not.i = icmp eq i8 %14, 0
  br i1 %tobool11.not.i, label %do.end.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  %ss_force14.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 2
  %15 = ptrtoint ptr %ss_force14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ss_force14.i, align 8
  br label %cleanup

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @.str.239) #15
  br label %cleanup

if.else19.i:                                      ; preds = %if.else7.i
  %bcmp13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.236, ptr noundef nonnull dereferenceable(4) %buf, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp13)
  %tobool21.not.i = icmp eq i32 %bcmp13, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %do.end40.i

if.then22.i:                                      ; preds = %if.else19.i
  %bfer_capable.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %bfer_capable.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bfer_capable.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not.i = icmp eq i8 %19, 0
  br i1 %tobool23.not.i, label %do.end31.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #17
  %ss_force26.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 35, i32 2
  %20 = ptrtoint ptr %ss_force26.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ss_force26.i, align 8
  br label %cleanup

do.end31.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.240) #15
  br label %cleanup

do.end40.i:                                       ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.241) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end40.i, %do.end31.i, %if.then24.i, %do.end.i, %if.then12.i, %if.then4.i, %if.then.i8, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end40.i ], [ -22, %do.end31.i ], [ -22, %do.end.i ], [ %3, %if.then4.i ], [ %3, %if.then24.i ], [ %3, %if.then12.i ], [ %3, %if.then.i8 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #15
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 257)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 257)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !171, !173, !174, !176, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !264, !266, !268, !270, !272, !273, !275, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !301, !302, !304, !306, !308, !310, !312, !313, !314, !316, !317, !319, !320, !322, !324, !326, !327, !329, !331, !333, !335, !337, !339, !341, !342, !344, !346, !347, !349, !351, !353, !355, !357, !359, !361, !363, !364, !366, !367, !369, !371, !372, !374, !376, !378, !380, !382, !383, !385, !386, !388, !390, !391, !393, !394, !396, !398, !400, !402, !403, !405, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !425, !427, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !521, !523, !525, !527, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606}
!llvm.named.register.sp = !{!608}
!llvm.module.flags = !{!609, !610, !611, !612, !613, !614, !615, !616}
!llvm.ident = !{!617}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2880, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3659, i32 32}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3661, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3666, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3671, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3676, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3681, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3685, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3687, i32 36}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3687, i32 45}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3688, i32 34}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3688, i32 44}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3689, i32 37}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3690, i32 46}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3691, i32 32}
!32 = !{ptr @__func__.__iwl_mvm_rs_tx_status, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3042, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3053, i32 3}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3067, i32 7}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3083, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3092, i32 3}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3111, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3117, i32 3}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3128, i32 4}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3148, i32 6}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3149, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3152, i32 37}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3154, i32 37}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3155, i32 31}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3216, i32 5}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3248, i32 2}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 890, i32 4}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 895, i32 4}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 897, i32 4}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 905, i32 4}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 910, i32 4}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 912, i32 4}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 920, i32 4}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 924, i32 4}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 926, i32 4}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 930, i32 2}
!85 = !{ptr @__func__.rs_dump_rate, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 527, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rs_pretty_rate.buf, !89, !"buf", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 481, i32 14}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 483, i32 25}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 484, i32 25}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 485, i32 25}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 486, i32 26}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 487, i32 25}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 488, i32 25}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 489, i32 26}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 490, i32 26}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 491, i32 26}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 492, i32 26}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 493, i32 26}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 494, i32 26}
!114 = !{ptr @rs_pretty_rate.legacy_rates, !115, !"legacy_rates", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 482, i32 28}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 497, i32 28}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 498, i32 28}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 499, i32 28}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 500, i32 28}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 501, i32 28}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 502, i32 28}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 503, i32 28}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 504, i32 28}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 505, i32 28}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 506, i32 28}
!136 = !{ptr @rs_pretty_rate.ht_vht_rates, !137, !"ht_vht_rates", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 496, i32 27}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 517, i32 14}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 519, i32 15}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 462, i32 15}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 464, i32 19}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 463, i32 19}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 465, i32 18}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 466, i32 19}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 467, i32 19}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 468, i32 20}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 469, i32 18}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 470, i32 19}
!160 = !{ptr @rs_pretty_lq_type.lq_types, !161, !"lq_types", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 461, i32 28}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 474, i32 10}
!164 = !{ptr @__func__.rs_stay_in_table, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1447, i32 4}
!166 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1455, i32 4}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1474, i32 5}
!171 = !{ptr @__func__.rs_rate_scale_clear_tbl_windows, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 547, i32 2}
!173 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 710, i32 6}
!176 = distinct !{null, !177, !"mask", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 642, i32 19}
!178 = !{ptr @__func__.rs_rate_scale_perform, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2090, i32 3}
!180 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2104, i32 3}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2117, i32 3}
!185 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2134, i32 3}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2155, i32 4}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2167, i32 4}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2213, i32 2}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2224, i32 3}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2237, i32 4}
!197 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2248, i32 4}
!199 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2288, i32 3}
!201 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2300, i32 4}
!203 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2315, i32 10}
!205 = !{ptr @rs_tx_columns, !206, !"rs_tx_columns", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 189, i32 34}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1244, i32 6}
!209 = distinct !{null, !210, !"__already_done", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1272, i32 4}
!211 = distinct !{null, !212, !"__already_done", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1289, i32 4}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1292, i32 3}
!215 = !{ptr @expected_tpt_legacy, !216, !"expected_tpt_legacy", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 394, i32 18}
!217 = !{ptr @expected_tpt_mimo2_20MHz, !218, !"expected_tpt_mimo2_20MHz", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 429, i32 18}
!219 = !{ptr @expected_tpt_siso_20MHz, !220, !"expected_tpt_siso_20MHz", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 401, i32 18}
!221 = !{ptr @expected_tpt_siso_40MHz, !222, !"expected_tpt_siso_40MHz", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 408, i32 18}
!223 = !{ptr @expected_tpt_siso_80MHz, !224, !"expected_tpt_siso_80MHz", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 415, i32 18}
!225 = !{ptr @expected_tpt_siso_160MHz, !226, !"expected_tpt_siso_160MHz", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 422, i32 18}
!227 = !{ptr @expected_tpt_mimo2_40MHz, !228, !"expected_tpt_mimo2_40MHz", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 436, i32 18}
!229 = !{ptr @expected_tpt_mimo2_80MHz, !230, !"expected_tpt_mimo2_80MHz", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 443, i32 18}
!231 = !{ptr @expected_tpt_mimo2_160MHz, !232, !"expected_tpt_mimo2_160MHz", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 450, i32 18}
!233 = distinct !{null, !234, !"__already_done", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 969, i32 2}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3593, i32 6}
!237 = distinct !{null, !238, !"__already_done", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3286, i32 3}
!239 = distinct !{null, !240, !"__already_done", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3410, i32 3}
!241 = !{ptr @.str.96, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 798, i32 4}
!243 = distinct !{null, !244, !"__already_done", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 808, i32 4}
!245 = !{ptr @.str.97, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 811, i32 4}
!247 = distinct !{null, !248, !"__already_done", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 820, i32 4}
!249 = !{ptr @.str.99, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 823, i32 3}
!251 = !{ptr @iwl_rates, !252, !"iwl_rates", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 78, i32 38}
!253 = !{ptr @ant_toggle_lookup, !254, !"ant_toggle_lookup", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 45, i32 17}
!255 = distinct !{null, !256, !"__already_done", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1077, i32 3}
!257 = !{ptr @rs_ht_to_legacy, !258, !"rs_ht_to_legacy", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 32, i32 11}
!259 = !{ptr @__func__.rs_set_lq_ss_params, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3522, i32 3}
!261 = !{ptr @.str.100, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.101, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3544, i32 3}
!264 = !{ptr @.str.102, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3550, i32 2}
!266 = !{ptr @.str.103, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3564, i32 3}
!268 = distinct !{null, !269, !"__already_done", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3451, i32 3}
!270 = distinct !{null, !271, !"__already_done", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3474, i32 3}
!272 = !{ptr @.str.104, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @__func__.rs_get_rate_action, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1759, i32 3}
!275 = !{ptr @.str.105, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.106, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1767, i32 3}
!278 = !{ptr @.str.107, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1776, i32 3}
!280 = !{ptr @.str.108, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1783, i32 3}
!282 = !{ptr @.str.109, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1792, i32 3}
!284 = !{ptr @.str.110, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1799, i32 3}
!286 = !{ptr @.str.111, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1807, i32 3}
!288 = !{ptr @.str.112, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1813, i32 2}
!290 = !{ptr @.str.113, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1818, i32 4}
!292 = !{ptr @.str.114, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1822, i32 4}
!294 = !{ptr @.str.115, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1826, i32 4}
!296 = !{ptr @__func__.rs_tpc_perform, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1977, i32 3}
!298 = !{ptr @.str.116, !297, !"<string literal>", i1 false, i1 false}
!299 = distinct !{null, !300, !"__warned", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1985, i32 17}
!301 = !{ptr @.str.117, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.118, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1993, i32 3}
!304 = !{ptr @.str.119, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2010, i32 2}
!306 = distinct !{null, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2020, i32 3}
!308 = !{ptr @.str.121, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2025, i32 3}
!310 = distinct !{null, !311, !"__warned", i1 false, i1 false}
!311 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!312 = !{ptr @.str.122, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.123, !311, !"<string literal>", i1 false, i1 false}
!314 = distinct !{null, !315, !"__warned", i1 false, i1 false}
!315 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!316 = !{ptr @.str.124, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @__func__.rs_tpc_allowed, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1868, i32 2}
!319 = !{ptr @.str.125, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.126, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1878, i32 2}
!322 = distinct !{null, !323, !"__already_done", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1886, i32 2}
!324 = !{ptr @__func__.rs_get_tpc_action, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1904, i32 3}
!326 = !{ptr @.str.127, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.128, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1911, i32 3}
!329 = !{ptr @.str.129, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1921, i32 4}
!331 = !{ptr @.str.130, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1927, i32 4}
!333 = !{ptr @.str.131, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1939, i32 4}
!335 = !{ptr @.str.132, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1947, i32 4}
!337 = !{ptr @.str.133, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1953, i32 2}
!339 = !{ptr @__func__.rs_tweak_rate_tbl, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1559, i32 3}
!341 = !{ptr @.str.134, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.135, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1575, i32 3}
!344 = !{ptr @__func__.rs_get_next_column, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1608, i32 4}
!346 = !{ptr @.str.136, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.137, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1616, i32 4}
!349 = !{ptr @.str.138, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1630, i32 4}
!351 = distinct !{null, !352, !"__already_done", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1640, i32 7}
!353 = !{ptr @.str.139, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1645, i32 4}
!355 = !{ptr @.str.140, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1653, i32 4}
!357 = !{ptr @.str.141, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1659, i32 3}
!359 = distinct !{null, !360, !"__already_done", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1231, i32 3}
!361 = distinct !{null, !362, !"__already_done", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1706, i32 3}
!363 = !{ptr @.str.142, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @__func__.rs_switch_to_column, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1728, i32 4}
!366 = !{ptr @.str.143, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.144, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1739, i32 2}
!369 = !{ptr @__func__.rs_get_best_rate, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1342, i32 3}
!371 = !{ptr @.str.145, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.146, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1347, i32 3}
!374 = !{ptr @.str.147, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1364, i32 2}
!376 = distinct !{null, !377, !"__already_done", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 594, i32 6}
!378 = !{ptr @.str.148, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 595, i32 3}
!380 = !{ptr @__func__.rs_tl_turn_on_agg, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 607, i32 3}
!382 = !{ptr @.str.149, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @__func__.rs_tl_turn_on_agg_for_tid, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 566, i32 2}
!385 = !{ptr @.str.150, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.151, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 577, i32 3}
!388 = !{ptr @__func__.rs_set_stay_in_table, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 1195, i32 2}
!390 = !{ptr @.str.152, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @__func__.rs_drv_rate_init, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2945, i32 2}
!393 = !{ptr @.str.153, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.154, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2976, i32 2}
!396 = !{ptr @.str.155, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2983, i32 2}
!398 = distinct !{null, !399, !"__already_done", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2748, i32 2}
!400 = distinct !{null, !401, !"__already_done", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2658, i32 2}
!402 = !{ptr @.str.156, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @__func__.rs_get_initial_rate, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2509, i32 2}
!405 = !{ptr @.str.157, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.158, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2596, i32 26}
!408 = !{ptr @rs_optimal_rates_5ghz_legacy, !409, !"rs_optimal_rates_5ghz_legacy", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2349, i32 39}
!410 = !{ptr @rs_optimal_rates_24ghz_legacy, !411, !"rs_optimal_rates_24ghz_legacy", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2336, i32 39}
!412 = !{ptr @rs_optimal_rates_vht_20mhz, !413, !"rs_optimal_rates_vht_20mhz", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2374, i32 39}
!414 = !{ptr @rs_optimal_rates_vht, !415, !"rs_optimal_rates_vht", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2386, i32 39}
!416 = !{ptr @rs_optimal_rates_ht, !417, !"rs_optimal_rates_ht", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2360, i32 39}
!418 = !{ptr @.str.159, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4088, i32 10}
!420 = !{ptr @rs_mvm_ops_drv, !421, !"rs_mvm_ops_drv", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4087, i32 38}
!422 = !{ptr @__func__.rs_drv_alloc_sta, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 2719, i32 2}
!424 = !{ptr @.str.160, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @__func__.rs_free_sta, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3641, i32 2}
!427 = !{ptr @.str.161, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.162, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3642, i32 2}
!430 = !{ptr @.str.163, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4059, i32 22}
!432 = !{ptr @.str.164, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4061, i32 22}
!434 = !{ptr @.str.165, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4063, i32 22}
!436 = !{ptr @.str.166, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4065, i32 20}
!438 = !{ptr @.str.167, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4067, i32 20}
!440 = !{ptr @.str.168, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4070, i32 2}
!442 = !{ptr @rs_sta_dbgfs_scale_table_ops, !443, !"rs_sta_dbgfs_scale_table_ops", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3842, i32 37}
!444 = distinct !{null, !445, !"bufsz", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3749, i32 22}
!446 = !{ptr @.str.169, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3765, i32 6}
!448 = !{ptr @.str.170, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3767, i32 6}
!450 = !{ptr @.str.171, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3770, i32 47}
!452 = !{ptr @.str.172, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3772, i32 47}
!454 = !{ptr @.str.173, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3773, i32 48}
!456 = !{ptr @.str.174, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3774, i32 48}
!458 = !{ptr @.str.175, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3775, i32 47}
!460 = !{ptr @.str.176, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3776, i32 26}
!462 = !{ptr @.str.177, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3779, i32 48}
!464 = !{ptr @.str.178, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3780, i32 24}
!466 = !{ptr @.str.179, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3780, i32 33}
!468 = !{ptr @.str.180, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3782, i32 23}
!470 = !{ptr @.str.181, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3783, i32 23}
!472 = !{ptr @.str.182, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3784, i32 23}
!474 = !{ptr @.str.183, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3785, i32 24}
!476 = !{ptr @.str.184, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3785, i32 35}
!478 = !{ptr @.str.185, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3786, i32 48}
!480 = !{ptr @.str.186, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3787, i32 19}
!482 = !{ptr @.str.187, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3787, i32 27}
!484 = !{ptr @.str.188, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3788, i32 20}
!486 = !{ptr @.str.189, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3788, i32 29}
!488 = !{ptr @.str.190, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3789, i32 24}
!490 = !{ptr @.str.191, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3790, i32 31}
!492 = !{ptr @.str.192, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3792, i32 47}
!494 = !{ptr @.str.193, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3795, i32 4}
!496 = !{ptr @.str.194, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3802, i32 4}
!498 = !{ptr @.str.195, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3807, i32 47}
!500 = !{ptr @.str.196, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3811, i32 4}
!502 = !{ptr @.str.197, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3813, i32 4}
!504 = !{ptr @.str.198, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3813, i32 14}
!506 = !{ptr @.str.199, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3815, i32 4}
!508 = !{ptr @.str.200, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3817, i32 4}
!510 = !{ptr @.str.201, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3819, i32 4}
!512 = !{ptr @.str.202, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3821, i32 4}
!514 = !{ptr @.str.203, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3831, i32 7}
!516 = !{ptr @.str.204, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3732, i32 18}
!518 = distinct !{null, !519, !"__already_done", i1 false, i1 false}
!519 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!520 = distinct !{null, !519, !"<string literal>", i1 false, i1 false}
!521 = distinct !{null, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!523 = !{ptr @.str.207, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!525 = !{ptr @__func__.rs_program_fix_rate, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3708, i32 2}
!527 = !{ptr @.str.208, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @rs_sta_dbgfs_stats_table_ops, !529, !"rs_sta_dbgfs_stats_table_ops", i1 false, i1 false}
!529 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3890, i32 37}
!530 = !{ptr @.str.209, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3867, i32 5}
!532 = !{ptr @.str.210, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3869, i32 31}
!534 = !{ptr @.str.211, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3869, i32 37}
!536 = !{ptr @.str.212, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3875, i32 33}
!538 = !{ptr @.str.213, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3879, i32 5}
!540 = !{ptr @rs_sta_dbgfs_drv_tx_stats_ops, !541, !"rs_sta_dbgfs_drv_tx_stats_ops", i1 false, i1 false}
!541 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3979, i32 37}
!542 = !{ptr @.str.214, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3901, i32 30}
!544 = !{ptr @.str.215, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3902, i32 30}
!546 = !{ptr @.str.216, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3903, i32 28}
!548 = !{ptr @.str.217, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3904, i32 28}
!550 = !{ptr @.str.218, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3905, i32 32}
!552 = !{ptr @.str.219, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3906, i32 32}
!554 = !{ptr @.str.220, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3908, i32 27}
!556 = !{ptr @rs_sta_dbgfs_drv_tx_stats_read.column_name, !557, !"column_name", i1 false, i1 false}
!557 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3900, i32 28}
!558 = !{ptr @.str.221, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3916, i32 25}
!560 = !{ptr @.str.222, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3918, i32 26}
!562 = !{ptr @.str.223, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3919, i32 26}
!564 = !{ptr @.str.224, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3920, i32 26}
!566 = !{ptr @.str.225, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3921, i32 26}
!568 = !{ptr @.str.226, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3922, i32 26}
!570 = !{ptr @.str.227, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3923, i32 26}
!572 = !{ptr @.str.228, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3927, i32 29}
!574 = !{ptr @.str.229, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3928, i32 29}
!576 = distinct !{null, !577, !"rate_name", i1 false, i1 false}
!577 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3911, i32 28}
!578 = distinct !{null, !579, !"bufsz", i1 false, i1 false}
!579 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3936, i32 22}
!580 = !{ptr @.str.230, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3945, i32 38}
!582 = !{ptr @.str.231, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3947, i32 39}
!584 = !{ptr @.str.232, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3948, i32 38}
!586 = !{ptr @.str.233, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3957, i32 7}
!588 = !{ptr @iwl_dbgfs_ss_force_ops, !589, !"iwl_dbgfs_ss_force_ops", i1 false, i1 false}
!589 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4046, i32 1}
!590 = !{ptr @.str.234, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3995, i32 24}
!592 = !{ptr @.str.235, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3996, i32 24}
!594 = !{ptr @.str.236, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3997, i32 24}
!596 = !{ptr @.str.237, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3998, i32 24}
!598 = !{ptr @iwl_dbgfs_ss_force_read.ss_force_name, !599, !"ss_force_name", i1 false, i1 false}
!599 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 3994, i32 28}
!600 = !{ptr @.str.238, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4001, i32 39}
!602 = !{ptr @.str.239, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4020, i32 4}
!604 = !{ptr @.str.240, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4028, i32 4}
!606 = !{ptr @.str.241, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs.c", i32 4033, i32 3}
!608 = !{!"sp"}
!609 = !{i32 1, !"wchar_size", i32 2}
!610 = !{i32 1, !"min_enum_size", i32 4}
!611 = !{i32 8, !"branch-target-enforcement", i32 0}
!612 = !{i32 8, !"sign-return-address", i32 0}
!613 = !{i32 8, !"sign-return-address-all", i32 0}
!614 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!615 = !{i32 7, !"uwtable", i32 1}
!616 = !{i32 7, !"frame-pointer", i32 2}
!617 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!618 = !{!"branch_weights", i32 2000, i32 1}
!619 = !{i8 0, i8 2}
!620 = !{i64 2149764333}
!621 = !{!"branch_weights", i32 1, i32 2000}
!622 = !{i64 2149764599}
!623 = !{!"auto-init"}
!624 = !{i32 0, i32 33}
!625 = !{i64 2152440715, i64 2152440740}
!626 = !{i64 4936270}
!627 = !{i64 4936467}
!628 = !{i64 2152421700}
