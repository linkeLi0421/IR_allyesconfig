; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
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
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.iwl_tlc_config_cmd_v4 = type { i8, [3 x i8], i8, i8, i8, i8, i16, i16, [2 x [3 x i16]], i16, i16 }
%struct.iwl_tlc_config_cmd_v3 = type { i8, [3 x i8], i8, i8, i8, i8, i16, i16, [2 x [2 x i16]], i16, i8, i8, i32 }
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
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.lq_sta_pers_rs_fw = type { i32, i32, i16, i8, [4 x i8], i8, ptr }

@iwl_mvm_tlc_update_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tlc_update_notif = private unnamed_addr constant [25 x i8] c"iwl_mvm_tlc_update_notif\00", align 1
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid mvm RCU pointer for sta id (%d) in TLC notification\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid sta id (%d) in FW TLC notification\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Got rate in old format. Rate: %s. Converting.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new rate: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"AMSDU update. AMSDU size: %d, AMSDU selected size: %d, AMSDU TID bitmap 0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to send rate scale config (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.rs_fw_tx_protection = private unnamed_addr constant [20 x i8] c"rs_fw_tx_protection\00", align 1
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tx protection - not implemented yet.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rs_add_sta = private unnamed_addr constant [19 x i8] c"iwl_mvm_rs_add_sta\00", align 1
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"create station rate scale window\0A\00", [62 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rs_fw_vht_highest_rx_mcs_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.rs_fw_rate_init = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 4095, i16 0, i16 255, i16 1023], [24 x i8] zeroinitializer }, align 32
@switch.table.rs_fw_rate_init.14 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 4095, i16 0, i16 255, i16 1023], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 292, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 297, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 306, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 323, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 333, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 366, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 488, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 495, i32 2 }
@___asan_gen_.43 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 503, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [29 x i8] c"switch.table.rs_fw_rate_init\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [32 x i8] c"switch.table.rs_fw_rate_init.14\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.rs_fw_rate_init, ptr @switch.table.rs_fw_rate_init.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_fw_rate_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs_fw_rate_init.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tlc_update_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %pretty_rate = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i184 = tail call ptr @page_address(ptr noundef %1) #7
  %2 = ptrtoint ptr %call.i184 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %6 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b183 = load i1, ptr @iwl_mvm_tlc_update_notif.__warned, align 1
  br i1 %.b183, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_mvm_tlc_update_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.1) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool.not.i185 = icmp eq ptr %13, null
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i185, %cmp.i
  br i1 %spec.select.i, label %do.end15, label %if.end19

do.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  %conv = zext i8 %17 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tlc_update_notif, ptr noundef nonnull @.str.2, i32 noundef %conv) #7
  br label %out

if.end19:                                         ; preds = %do.end8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 0, i32 29
  %tobool21.not = icmp eq ptr %drv_priv.i, null
  br i1 %tobool21.not, label %do.end26, label %if.end32

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mvm, align 8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  %conv29 = zext i8 %21 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %conv29) #7
  br label %out

if.end32:                                         ; preds = %if.end19
  %flags33 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %22 = ptrtoint ptr %flags33 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %flags33, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %lq_sta34 = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 2, i32 15
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end32.if.end67_crit_edge, label %if.then36

if.end32.if.end67_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then36:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %pretty_rate) #7
  %25 = call ptr @memset(ptr %pretty_rate, i32 255, i32 100)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw, align 8
  %call37 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %27, i8 noundef zeroext 5, i8 noundef zeroext -9, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call37)
  %cmp = icmp ult i8 %call37, 3
  %rate = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %28 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %rate, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  br i1 %cmp, label %if.then40, label %if.then36.if.end55_crit_edge

if.then36.if.end55_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 @rs_pretty_print_rate_v1(ptr noundef nonnull %pretty_rate, i32 noundef 100, i32 noundef %30) #7
  %31 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tlc_update_notif, ptr noundef nonnull @.str.4, ptr noundef nonnull %pretty_rate) #7
  %33 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %rate, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %call52 = call i32 @iwl_new_rate_from_v1(i32 noundef %35) #7
  br label %if.end55

if.end55:                                         ; preds = %if.then40, %if.then36.if.end55_crit_edge
  %storemerge = phi i32 [ %call52, %if.then40 ], [ %30, %if.then36.if.end55_crit_edge ]
  %36 = ptrtoint ptr %lq_sta34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge, ptr %lq_sta34, align 4
  %call58 = call i32 @rs_pretty_print_rate(ptr noundef nonnull %pretty_rate, i32 noundef 100, i32 noundef %storemerge) #7
  %37 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tlc_update_notif, ptr noundef nonnull @.str.5, ptr noundef nonnull %pretty_rate) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %pretty_rate) #7
  br label %if.end67

if.end67:                                         ; preds = %if.end55, %if.end32.if.end67_crit_edge
  %and68 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.out_crit_edge, label %land.lhs.true70

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true70:                                  ; preds = %if.end67
  %orig_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 18, i32 0, i32 1
  %39 = ptrtoint ptr %orig_amsdu_len to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %orig_amsdu_len, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool71.not = icmp eq i16 %40, 0
  br i1 %tobool71.not, label %if.then72, label %land.lhs.true70.out_crit_edge

land.lhs.true70.out_crit_edge:                    ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then72:                                        ; preds = %land.lhs.true70
  %amsdu_size = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %41 = ptrtoint ptr %amsdu_size to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %amsdu_size, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %max_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 0, i32 21
  %44 = ptrtoint ptr %max_amsdu_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_amsdu_len, align 4
  %conv74 = zext i16 %45 to i32
  %conv75 = and i32 %43, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv75, i32 %conv74)
  %cmp76 = icmp ugt i32 %conv75, %conv74
  br i1 %cmp76, label %do.end95, label %if.end109

do.end95:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #7
  br label %out

if.end109:                                        ; preds = %if.then72
  %conv73 = trunc i32 %43 to i16
  %amsdu_enabled = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %46 = ptrtoint ptr %amsdu_enabled to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %amsdu_enabled, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %conv110 = trunc i32 %48 to i16
  %amsdu_enabled111 = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 18
  %49 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv110, ptr %amsdu_enabled111, align 4
  %max_amsdu_len112 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 21
  %50 = ptrtoint ptr %max_amsdu_len112 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv73, ptr %max_amsdu_len112, align 2
  %max_rc_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 0, i32 24
  %51 = ptrtoint ptr %max_rc_amsdu_len to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv73, ptr %max_rc_amsdu_len, align 4
  %and118 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end109.for.inc_crit_edge, label %if.then120

if.end109.for.inc_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then120:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 0) #7
  %conv122 = trunc i32 %call121 to i16
  br label %for.inc

for.inc:                                          ; preds = %if.then120, %if.end109.for.inc_crit_edge
  %conv122.sink = phi i16 [ %conv122, %if.then120 ], [ 1, %if.end109.for.inc_crit_edge ]
  %52 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 0
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv122.sink, ptr %52, align 2
  %54 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %amsdu_enabled111, align 4
  %56 = and i16 %55, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool119.not.1 = icmp eq i16 %56, 0
  br i1 %tobool119.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then120.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then120.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call121.1 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 1) #7
  %conv122.1 = trunc i32 %call121.1 to i16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then120.1, %for.inc.for.inc.1_crit_edge
  %conv122.1.sink = phi i16 [ %conv122.1, %if.then120.1 ], [ 1, %for.inc.for.inc.1_crit_edge ]
  %57 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv122.1.sink, ptr %57, align 2
  %59 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %amsdu_enabled111, align 4
  %61 = and i16 %60, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool119.not.2 = icmp eq i16 %61, 0
  br i1 %tobool119.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then120.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then120.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call121.2 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 2) #7
  %conv122.2 = trunc i32 %call121.2 to i16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then120.2, %for.inc.1.for.inc.2_crit_edge
  %conv122.2.sink = phi i16 [ %conv122.2, %if.then120.2 ], [ 1, %for.inc.1.for.inc.2_crit_edge ]
  %62 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv122.2.sink, ptr %62, align 2
  %64 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %amsdu_enabled111, align 4
  %66 = and i16 %65, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool119.not.3 = icmp eq i16 %66, 0
  br i1 %tobool119.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then120.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then120.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %call121.3 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 3) #7
  %conv122.3 = trunc i32 %call121.3 to i16
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then120.3, %for.inc.2.for.inc.3_crit_edge
  %conv122.3.sink = phi i16 [ %conv122.3, %if.then120.3 ], [ 1, %for.inc.2.for.inc.3_crit_edge ]
  %67 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 3
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv122.3.sink, ptr %67, align 2
  %69 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %amsdu_enabled111, align 4
  %71 = and i16 %70, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool119.not.4 = icmp eq i16 %71, 0
  br i1 %tobool119.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then120.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then120.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %call121.4 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 4) #7
  %conv122.4 = trunc i32 %call121.4 to i16
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then120.4, %for.inc.3.for.inc.4_crit_edge
  %conv122.4.sink = phi i16 [ %conv122.4, %if.then120.4 ], [ 1, %for.inc.3.for.inc.4_crit_edge ]
  %72 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv122.4.sink, ptr %72, align 2
  %74 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %amsdu_enabled111, align 4
  %76 = and i16 %75, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool119.not.5 = icmp eq i16 %76, 0
  br i1 %tobool119.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then120.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then120.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %call121.5 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 5) #7
  %conv122.5 = trunc i32 %call121.5 to i16
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then120.5, %for.inc.4.for.inc.5_crit_edge
  %conv122.5.sink = phi i16 [ %conv122.5, %if.then120.5 ], [ 1, %for.inc.4.for.inc.5_crit_edge ]
  %77 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 5
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv122.5.sink, ptr %77, align 2
  %79 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %amsdu_enabled111, align 4
  %81 = and i16 %80, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool119.not.6 = icmp eq i16 %81, 0
  br i1 %tobool119.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then120.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then120.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %call121.6 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 6) #7
  %conv122.6 = trunc i32 %call121.6 to i16
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then120.6, %for.inc.5.for.inc.6_crit_edge
  %conv122.6.sink = phi i16 [ %conv122.6, %if.then120.6 ], [ 1, %for.inc.5.for.inc.6_crit_edge ]
  %82 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 6
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv122.6.sink, ptr %82, align 2
  %84 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %amsdu_enabled111, align 4
  %86 = and i16 %85, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool119.not.7 = icmp eq i16 %86, 0
  br i1 %tobool119.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then120.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then120.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %call121.7 = call i32 @iwl_mvm_max_amsdu_size(ptr noundef %mvm, ptr noundef nonnull %13, i32 noundef 7) #7
  %conv122.7 = trunc i32 %call121.7 to i16
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then120.7, %for.inc.6.for.inc.7_crit_edge
  %conv122.7.sink = phi i16 [ %conv122.7, %if.then120.7 ], [ 1, %for.inc.6.for.inc.7_crit_edge ]
  %87 = getelementptr %struct.ieee80211_sta, ptr %13, i32 0, i32 25, i32 7
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv122.7.sink, ptr %87, align 2
  %89 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mvm, align 8
  %91 = ptrtoint ptr %amsdu_size to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %amsdu_size, align 1
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %amsdu_enabled111 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %amsdu_enabled111, align 4
  %conv136 = zext i16 %95 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %90, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tlc_update_notif, ptr noundef nonnull @.str.6, i32 noundef %93, i32 noundef %conv75, i32 noundef %conv136) #7
  br label %out

out:                                              ; preds = %for.inc.7, %do.end95, %land.lhs.true70.out_crit_edge, %if.end67.out_crit_edge, %do.end26, %do.end15
  %call.i186 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i186, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i189

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i189:                               ; preds = %out
  %call1.i187 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i187)
  %tobool.not.i188 = icmp eq i32 %call1.i187, 0
  br i1 %tobool.not.i188, label %land.lhs.true.i189.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i191

land.lhs.true.i189.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i191:                              ; preds = %land.lhs.true.i189
  %.b4.i190 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i190, label %land.lhs.true2.i191.rcu_read_unlock.exit_crit_edge, label %if.then.i192

land.lhs.true2.i191.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i192:                                     ; preds = %land.lhs.true2.i191
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i192, %land.lhs.true2.i191.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i189.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %96 = call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i.i.i193 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i193 to ptr
  %preempt_count.i.i.i.i194 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i194 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i194, align 4
  %sub.i.i.i = add i32 %99, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i194, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs_pretty_print_rate_v1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_new_rate_from_v1(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs_pretty_print_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_max_amsdu_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rs_fw_get_max_amsdu_len(ptr nocapture noundef readonly %sta) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_cap2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 32
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %he_6ghz_capa = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 7
  %6 = ptrtoint ptr %he_6ghz_capa to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %he_6ghz_capa, align 1
  %8 = lshr i16 %7, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %switch.selectcmp = icmp eq i16 %8, 1
  %switch.select = select i1 %switch.selectcmp, i16 7991, i16 3895
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %switch.selectcmp27 = icmp eq i16 %8, 2
  %switch.select28 = select i1 %switch.selectcmp27, i16 11454, i16 %switch.select
  br label %cleanup

if.else:                                          ; preds = %entry
  %vht_cap1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %9 = ptrtoint ptr %vht_cap1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vht_cap1, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else9, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %switch.selectcmp29 = icmp eq i32 %and, 1
  %switch.select30 = select i1 %switch.selectcmp29, i16 7991, i16 3895
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %switch.selectcmp31 = icmp eq i32 %and, 2
  %switch.select32 = select i1 %switch.selectcmp31, i16 11454, i16 %switch.select30
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ht_supported, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %if.else9.cleanup_crit_edge, label %if.then11

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %ht_cap2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ht_cap2, align 2
  %17 = and i16 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool15.not = icmp eq i16 %17, 0
  %. = select i1 %tobool15.not, i16 3839, i16 4095
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else9.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i16 [ %switch.select28, %if.then ], [ %switch.select32, %if.then5 ], [ %., %if.then11 ], [ 0, %if.else9.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs_fw_rate_init(ptr noundef %mvm, ptr noundef %sta, i32 noundef %band, i1 noundef zeroext %update) local_unnamed_addr #0 align 64 {
entry:
  %ieee_vht_cap.i.i = alloca %struct.ieee80211_vht_cap, align 4
  %tmp.i = alloca i32, align 4
  %cfg_cmd = alloca %struct.iwl_tlc_config_cmd_v4, align 1
  %cfg_cmd_v3 = alloca %struct.iwl_tlc_config_cmd_v3, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %lq_sta2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 15
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %band
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ht_cap2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %vif.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %6 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif.i, align 8
  %chandef.i = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 0, i32 1, i32 32
  %8 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %he_6ghz_capa.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 7
  %12 = ptrtoint ptr %he_6ghz_capa.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %he_6ghz_capa.i, align 1
  %14 = lshr i16 %13, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %switch.selectcmp.i = icmp eq i16 %14, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 7991, i16 3895
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %switch.selectcmp27.i = icmp eq i16 %14, 2
  %switch.select28.i = select i1 %switch.selectcmp27.i, i16 11454, i16 %switch.select.i
  br label %rs_fw_get_max_amsdu_len.exit

if.else.i:                                        ; preds = %entry
  %vht_cap1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %15 = ptrtoint ptr %vht_cap1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vht_cap1.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.else9.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %switch.selectcmp29.i = icmp eq i32 %and.i, 1
  %switch.select30.i = select i1 %switch.selectcmp29.i, i16 7991, i16 3895
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %switch.selectcmp31.i = icmp eq i32 %and.i, 2
  %switch.select32.i = select i1 %switch.selectcmp31.i, i16 11454, i16 %switch.select30.i
  br label %rs_fw_get_max_amsdu_len.exit

if.else9.i:                                       ; preds = %if.else.i
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ht_supported.i, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not.i = icmp eq i8 %20, 0
  br i1 %tobool10.not.i, label %if.else9.i.rs_fw_get_max_amsdu_len.exit_crit_edge, label %if.then11.i

if.else9.i.rs_fw_get_max_amsdu_len.exit_crit_edge: ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_get_max_amsdu_len.exit

if.then11.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %ht_cap2.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ht_cap2.i, align 2
  %23 = and i16 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool15.not.i = icmp eq i16 %23, 0
  %..i = select i1 %tobool15.not.i, i16 3839, i16 4095
  br label %rs_fw_get_max_amsdu_len.exit

rs_fw_get_max_amsdu_len.exit:                     ; preds = %if.then11.i, %if.else9.i.rs_fw_get_max_amsdu_len.exit_crit_edge, %if.then5.i, %if.then.i
  %retval.0.i = phi i16 [ %switch.select28.i, %if.then.i ], [ %switch.select32.i, %if.then5.i ], [ %..i, %if.then11.i ], [ 0, %if.else9.i.rs_fw_get_max_amsdu_len.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg_cmd) #7
  %24 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 1
  %25 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 2
  %26 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 3
  %27 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 4
  %28 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 5
  %29 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 6
  %30 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 7
  %31 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8
  %32 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8, i32 1
  %34 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8, i32 1, i32 1
  %35 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 9
  %36 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 10
  %37 = getelementptr inbounds i8, ptr %cfg_cmd, i32 8
  %38 = call ptr @memset(ptr %37, i32 255, i32 20)
  %39 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drv_priv.i, align 8
  %conv = trunc i32 %40 to i8
  %41 = ptrtoint ptr %cfg_cmd to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %cfg_cmd, align 1
  %42 = call ptr @memset(ptr %24, i32 0, i32 3)
  br i1 %update, label %cond.true, label %rs_fw_get_max_amsdu_len.exit.cond.end_crit_edge

rs_fw_get_max_amsdu_len.exit.cond.end_crit_edge:  ; preds = %rs_fw_get_max_amsdu_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %rs_fw_get_max_amsdu_len.exit
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %43 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bandwidth.i, align 4
  %switch.tableidx = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 3
  br i1 %45, label %switch.lookup, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

switch.lookup:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  br label %cond.end

cond.end:                                         ; preds = %switch.lookup, %cond.true.cond.end_crit_edge, %rs_fw_get_max_amsdu_len.exit.cond.end_crit_edge
  %cond = phi i8 [ 0, %rs_fw_get_max_amsdu_len.exit.cond.end_crit_edge ], [ %switch.offset, %switch.lookup ], [ 0, %cond.true.cond.end_crit_edge ]
  %46 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %cond, ptr %25, align 1
  %47 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %26, align 1
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %48 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i111 = icmp eq ptr %49, null
  br i1 %tobool.not.i111, label %cond.end.cond.false.i_crit_edge, label %land.lhs.true.i

cond.end.cond.false.i_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %cond.end
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool2.not.i = icmp eq i8 %51, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %52 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i112 = and i8 %55, %51
  br label %iwl_mvm_get_valid_tx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %cond.end.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %56 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %valid_tx_ant9.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i112, %cond.true.i ], [ %59, %cond.false.i ]
  %60 = and i8 %cond.i, 3
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %27, align 1
  %he_cap3.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %62 = ptrtoint ptr %he_cap3.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %he_cap3.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i113 = icmp eq i8 %63, 0
  br i1 %tobool.not.i113, label %if.end.i, label %iwl_mvm_get_valid_tx_ant.exit.rs_fw_sgi_cw_support.exit_crit_edge

iwl_mvm_get_valid_tx_ant.exit.rs_fw_sgi_cw_support.exit_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_sgi_cw_support.exit

if.end.i:                                         ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %ht_cap2.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ht_cap2.i, align 2
  %66 = trunc i16 %65 to i8
  %67 = lshr i8 %66, 5
  %68 = and i8 %67, 3
  %cap18.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %cap18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cap18.i, align 4
  %71 = trunc i32 %70 to i8
  %72 = lshr i8 %71, 3
  %73 = and i8 %72, 4
  %74 = or i8 %73, %68
  %75 = and i8 %72, 8
  %76 = or i8 %74, %75
  br label %rs_fw_sgi_cw_support.exit

rs_fw_sgi_cw_support.exit:                        ; preds = %if.end.i, %iwl_mvm_get_valid_tx_ant.exit.rs_fw_sgi_cw_support.exit_crit_edge
  %retval.0.i114 = phi i8 [ %76, %if.end.i ], [ 0, %iwl_mvm_get_valid_tx_ant.exit.rs_fw_sgi_cw_support.exit_crit_edge ]
  %77 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %retval.0.i114, ptr %28, align 1
  %vht_cap2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %78 = ptrtoint ptr %vht_cap2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %vht_cap2.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i117 = icmp eq i8 %79, 0
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %80 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i, align 4
  %ht_params.i = getelementptr inbounds %struct.iwl_cfg, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %ht_params.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ht_params.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i = load i8, ptr %83, align 1
  %85 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool4.not.i = icmp eq i8 %85, 0
  br i1 %tobool4.not.i, label %rs_fw_sgi_cw_support.exit.if.end33.i_crit_edge, label %land.lhs.true.i118

rs_fw_sgi_cw_support.exit.if.end33.i_crit_edge:   ; preds = %rs_fw_sgi_cw_support.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

land.lhs.true.i118:                               ; preds = %rs_fw_sgi_cw_support.exit
  br i1 %tobool.not.i111, label %land.lhs.true.i118.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i118.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i118
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %49, i32 0, i32 20
  %86 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool2.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %88 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw.i.i, align 8
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i = and i8 %91, %87
  br label %iwl_mvm_get_valid_tx_ant.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %land.lhs.true.i118.cond.false.i.i_crit_edge
  %fw8.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %92 = ptrtoint ptr %fw8.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fw8.i.i, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i

iwl_mvm_get_valid_tx_ant.exit.i:                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %95, %cond.false.i.i ]
  %and.i132.i = and i8 %cond.i.i, 1
  %and3.i.i = lshr i8 %cond.i.i, 1
  %and3.lobit.i.i = and i8 %and3.i.i, 1
  %add.i.i = add nuw nsw i8 %and3.lobit.i.i, %and.i132.i
  %and10.i.i = lshr i8 %cond.i.i, 2
  %and10.lobit.i.i = and i8 %and10.i.i, 1
  %add16.i.i = add nuw nsw i8 %add.i.i, %and10.lobit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i.i)
  %cmp.i119 = icmp ugt i8 %add16.i.i, 1
  br i1 %cmp.i119, label %if.then.i120, label %iwl_mvm_get_valid_tx_ant.exit.i.if.end33.i_crit_edge

iwl_mvm_get_valid_tx_ant.exit.i.if.end33.i_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then.i120:                                     ; preds = %iwl_mvm_get_valid_tx_ant.exit.i
  br i1 %tobool.not.i113, label %if.then.i120.if.else.i122_crit_edge, label %land.lhs.true10.i

if.then.i120.if.else.i122_crit_edge:              ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i122

land.lhs.true10.i:                                ; preds = %if.then.i120
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 2
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i, align 1
  %98 = and i8 %97, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool12.not.i = icmp eq i8 %98, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else.i122_crit_edge, label %land.lhs.true10.i.if.end33.i_crit_edge

land.lhs.true10.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

land.lhs.true10.i.if.else.i122_crit_edge:         ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i122

if.else.i122:                                     ; preds = %land.lhs.true10.i.if.else.i122_crit_edge, %if.then.i120.if.else.i122_crit_edge
  %cap.i121 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %99 = ptrtoint ptr %cap.i121 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cap.i121, align 4
  %and16.i = and i32 %100, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else22.i, label %if.else.i122.if.end33.i_crit_edge

if.else.i122.if.end33.i_crit_edge:                ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.else22.i:                                      ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %ht_cap2.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %ht_cap2.i, align 2
  %103 = and i16 %102, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool26.not.i = icmp ne i16 %103, 0
  %spec.select.i = zext i1 %tobool26.not.i to i16
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else22.i, %if.else.i122.if.end33.i_crit_edge, %land.lhs.true10.i.if.end33.i_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.i.if.end33.i_crit_edge, %rs_fw_sgi_cw_support.exit.if.end33.i_crit_edge
  %flags.0.i = phi i16 [ 0, %iwl_mvm_get_valid_tx_ant.exit.i.if.end33.i_crit_edge ], [ 0, %rs_fw_sgi_cw_support.exit.if.end33.i_crit_edge ], [ 1, %land.lhs.true10.i.if.end33.i_crit_edge ], [ 1, %if.else.i122.if.end33.i_crit_edge ], [ %spec.select.i, %if.else22.i ]
  %104 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool40.not.i = icmp eq i8 %104, 0
  br i1 %tobool40.not.i, label %if.end33.i.if.end56.i_crit_edge, label %land.lhs.true41.i

if.end33.i.if.end56.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

land.lhs.true41.i:                                ; preds = %if.end33.i
  %105 = ptrtoint ptr %ht_cap2.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %ht_cap2.i, align 2
  %107 = and i16 %106, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool45.not.i = icmp eq i16 %107, 0
  br i1 %tobool45.not.i, label %lor.lhs.false.i, label %land.lhs.true41.i.if.then52.i_crit_edge

land.lhs.true41.i.if.then52.i_crit_edge:          ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true41.i
  br i1 %tobool.not.i117, label %lor.lhs.false.i.if.end56.i_crit_edge, label %land.lhs.true48.i

lor.lhs.false.i.if.end56.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

land.lhs.true48.i:                                ; preds = %lor.lhs.false.i
  %cap49.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %cap49.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cap49.i, align 4
  %and50.i = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true48.i.if.end56.i_crit_edge, label %land.lhs.true48.i.if.then52.i_crit_edge

land.lhs.true48.i.if.then52.i_crit_edge:          ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i

land.lhs.true48.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then52.i:                                      ; preds = %land.lhs.true48.i.if.then52.i_crit_edge, %land.lhs.true41.i.if.then52.i_crit_edge
  %110 = or i16 %flags.0.i, 2
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then52.i, %land.lhs.true48.i.if.end56.i_crit_edge, %lor.lhs.false.i.if.end56.i_crit_edge, %if.end33.i.if.end56.i_crit_edge
  %flags.1.i = phi i16 [ %110, %if.then52.i ], [ %flags.0.i, %land.lhs.true48.i.if.end56.i_crit_edge ], [ %flags.0.i, %lor.lhs.false.i.if.end56.i_crit_edge ], [ %flags.0.i, %if.end33.i.if.end56.i_crit_edge ]
  br i1 %tobool.not.i113, label %if.end56.i.if.end71.i_crit_edge, label %land.lhs.true60.i

if.end56.i.if.end71.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

land.lhs.true60.i:                                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx63.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 1
  %111 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx63.i, align 1
  %113 = lshr i8 %112, 4
  %114 = and i8 %113, 2
  %115 = zext i8 %114 to i16
  %116 = or i16 %flags.1.i, %115
  br label %if.end71.i

if.end71.i:                                       ; preds = %land.lhs.true60.i, %if.end56.i.if.end71.i_crit_edge
  %flags.2.i = phi i16 [ %flags.1.i, %if.end56.i.if.end71.i_crit_edge ], [ %116, %land.lhs.true60.i ]
  %iftype_data.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 10
  %117 = ptrtoint ptr %iftype_data.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iftype_data.i, align 4
  %tobool72.not.i = icmp eq ptr %118, null
  br i1 %tobool72.not.i, label %if.end71.i.if.end92.i_crit_edge, label %land.lhs.true73.i

if.end71.i.if.end92.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i

land.lhs.true73.i:                                ; preds = %if.end71.i
  %he_cap75.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %he_cap75.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %he_cap75.i, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool77.not.i = icmp eq i8 %120, 0
  br i1 %tobool77.not.i, label %land.lhs.true73.i.if.end92.i_crit_edge, label %land.lhs.true79.i

land.lhs.true73.i.if.end92.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i

land.lhs.true79.i:                                ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx84.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %118, i32 0, i32 1, i32 1, i32 1, i32 1
  %121 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx84.i, align 1
  %123 = and i8 %122, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool87.not.i = icmp eq i8 %123, 0
  %124 = and i16 %flags.2.i, -3
  %spec.select130.i = select i1 %tobool87.not.i, i16 %124, i16 %flags.2.i
  br label %if.end92.i

if.end92.i:                                       ; preds = %land.lhs.true79.i, %land.lhs.true73.i.if.end92.i_crit_edge, %if.end71.i.if.end92.i_crit_edge
  %flags.3.i = phi i16 [ %flags.2.i, %land.lhs.true73.i.if.end92.i_crit_edge ], [ %flags.2.i, %if.end71.i.if.end92.i_crit_edge ], [ %spec.select130.i, %land.lhs.true79.i ]
  br i1 %tobool.not.i113, label %if.end92.i.rs_fw_get_config_flags.exit_crit_edge, label %land.lhs.true96.i

if.end92.i.rs_fw_get_config_flags.exit_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_get_config_flags.exit

land.lhs.true96.i:                                ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx99.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 1, i32 1, i32 3
  %125 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx99.i, align 1
  %127 = and i8 %126, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool102.not.i = icmp eq i8 %127, 0
  %128 = or i16 %flags.3.i, 8
  %spec.select131.i = select i1 %tobool102.not.i, i16 %flags.3.i, i16 %128
  br label %rs_fw_get_config_flags.exit

rs_fw_get_config_flags.exit:                      ; preds = %land.lhs.true96.i, %if.end92.i.rs_fw_get_config_flags.exit_crit_edge
  %flags.4.i = phi i16 [ %flags.3.i, %if.end92.i.rs_fw_get_config_flags.exit_crit_edge ], [ %spec.select131.i, %land.lhs.true96.i ]
  %129 = tail call i16 @llvm.bswap.i16(i16 %flags.4.i)
  %130 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %29, align 1
  %fw.i123 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %131 = call ptr @memset(ptr %30, i32 0, i32 14)
  %132 = ptrtoint ptr %fw.i123 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fw.i123, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %133, i32 0, i32 5, i32 8
  %134 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %_capa.i.i, align 4
  %136 = and i32 %135, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.i.i.not = icmp eq i32 %136, 0
  %137 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i)
  %spec.select = select i1 %tobool.i.i.not, i16 0, i16 %137
  %138 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %spec.select, ptr %35, align 1
  %139 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 0, ptr %36, align 1
  %140 = ptrtoint ptr %lq_sta2 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %lq_sta2, align 4
  tail call void @iwl_mvm_reset_frame_stats(ptr noundef %mvm) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %band.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 2
  %141 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %band.i, align 4
  %arrayidx.i126 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i126, align 4
  %145 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %tmp.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tmp.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp69.i = icmp slt i32 %call.i, 32
  br i1 %cmp69.i, label %for.body.lr.ph.i, label %rs_fw_get_config_flags.exit.for.end.i_crit_edge

rs_fw_get_config_flags.exit.for.end.i_crit_edge:  ; preds = %rs_fw_get_config_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %rs_fw_get_config_flags.exit
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %supp.071.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %conv6.i, %for.body.i.for.body.i_crit_edge ]
  %i.070.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call7.i, %for.body.i.for.body.i_crit_edge ]
  %146 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bitrates.i, align 4
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %147, i32 %i.070.i, i32 2
  %148 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %hw_value.i, align 2
  %conv.i = zext i16 %149 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %150 = trunc i32 %shl.i to i16
  %conv6.i = or i16 %supp.071.i, %150
  %add.i = add nsw i32 %i.070.i, 1
  %call7.i = call i32 @_find_next_bit_be(ptr noundef nonnull %tmp.i, i32 noundef 32, i32 noundef %add.i) #7
  %cmp.i127 = icmp slt i32 %call7.i, 32
  br i1 %cmp.i127, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %rs_fw_get_config_flags.exit.for.end.i_crit_edge
  %supp.0.lcssa.i = phi i16 [ 0, %rs_fw_get_config_flags.exit.for.end.i_crit_edge ], [ %conv6.i, %for.body.i.for.end.i_crit_edge ]
  %151 = call i16 @llvm.bswap.i16(i16 %supp.0.lcssa.i) #7
  %152 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 %151, ptr %30, align 1
  %153 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %26, align 1
  %154 = ptrtoint ptr %he_cap3.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %he_cap3.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i128 = icmp eq i8 %155, 0
  br i1 %tobool.not.i128, label %if.else.i130, label %if.then.i129

if.then.i129:                                     ; preds = %for.end.i
  %156 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 3, ptr %26, align 1
  %rx_nss.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %157 = ptrtoint ptr %rx_nss.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %rx_nss.i.i, align 1
  %smps_mode.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %159 = ptrtoint ptr %smps_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %smps_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %cmp.i.i = icmp eq i32 %160, 2
  %161 = zext i8 %158 to i32
  %conv.i.i = select i1 %cmp.i.i, i32 1, i32 %161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp1095.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp1095.not.i.i, label %if.then.i129.rs_fw_set_supp_rates.exit_crit_edge, label %for.body.lr.ph.i.i

if.then.i129.rs_fw_set_supp_rates.exit_crit_edge: ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_set_supp_rates.exit

for.body.lr.ph.i.i:                               ; preds = %if.then.i129
  %162 = ptrtoint ptr %iftype_data.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %iftype_data.i, align 4
  %tx_mcs_1609.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %163, i32 0, i32 1, i32 2, i32 3
  %164 = ptrtoint ptr %tx_mcs_1609.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %tx_mcs_1609.i.i, align 2
  %166 = call i16 @llvm.bswap.i16(i16 %165) #7
  %tx_mcs_805.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %163, i32 0, i32 1, i32 2, i32 1
  %167 = ptrtoint ptr %tx_mcs_805.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %tx_mcs_805.i.i, align 2
  %169 = call i16 @llvm.bswap.i16(i16 %168) #7
  %he_mcs_nss_supp.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2
  %170 = ptrtoint ptr %he_mcs_nss_supp.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %he_mcs_nss_supp.i.i, align 1
  %172 = call i16 @llvm.bswap.i16(i16 %171) #7
  %rx_mcs_160.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6, i32 2, i32 2
  %173 = ptrtoint ptr %rx_mcs_160.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %rx_mcs_160.i.i, align 1
  %175 = call i16 @llvm.bswap.i16(i16 %174) #7
  %conv14.i.i = zext i16 %175 to i32
  %conv16.i.i = zext i16 %172 to i32
  %conv21.i.i = zext i16 %166 to i32
  %conv26.i.i = zext i16 %169 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i.i)
  %.not.i.i = icmp eq i32 %conv.i.i, 1
  %176 = select i1 %.not.i.i, i32 1, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end38.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.096.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end38.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl nuw i32 %i.096.i.i, 1
  %shr.i.i = lshr i32 %conv14.i.i, %mul.i.i
  %177 = trunc i32 %shr.i.i to i16
  %conv15.i.i = and i16 %177, 3
  %shr18.i.i = lshr i32 %conv16.i.i, %mul.i.i
  %178 = trunc i32 %shr18.i.i to i16
  %conv20.i.i = and i16 %178, 3
  %shr23.i.i = lshr i32 %conv21.i.i, %mul.i.i
  %179 = trunc i32 %shr23.i.i to i16
  %conv25.i.i = and i16 %179, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv20.i.i)
  %cmp32.i.i = icmp eq i16 %conv20.i.i, 3
  br i1 %cmp32.i.i, label %for.body.i.i.if.then37.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.if.then37.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %shr28.i.i = lshr i32 %conv26.i.i, %mul.i.i
  %180 = trunc i32 %shr28.i.i to i16
  %conv30.i.i = and i16 %180, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv30.i.i)
  %cmp35.i.i = icmp eq i16 %conv30.i.i, 3
  br i1 %cmp35.i.i, label %lor.lhs.false.i.i.if.then37.i.i_crit_edge, label %lor.lhs.false.i.i.if.end38.i.i_crit_edge

lor.lhs.false.i.i.if.end38.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i.i

lor.lhs.false.i.i.if.then37.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37.i.i

if.then37.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then37.i.i_crit_edge, %for.body.i.i.if.then37.i.i_crit_edge
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then37.i.i, %lor.lhs.false.i.i.if.end38.i.i_crit_edge
  %_mcs_80.0.i.i = phi i16 [ 3, %if.then37.i.i ], [ %conv20.i.i, %lor.lhs.false.i.i.if.end38.i.i_crit_edge ]
  %_tx_mcs_80.0.i.i = phi i16 [ 3, %if.then37.i.i ], [ %conv30.i.i, %lor.lhs.false.i.i.if.end38.i.i_crit_edge ]
  %181 = call i16 @llvm.umin.i16(i16 %_mcs_80.0.i.i, i16 %_tx_mcs_80.0.i.i) #7
  %182 = xor i16 %181, 2
  %switch.tableidx138 = zext i16 %182 to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.rs_fw_rate_init, i32 0, i32 %switch.tableidx138
  %183 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %183)
  %switch.load = load i16, ptr %switch.gep, align 2
  %184 = call i16 @llvm.bswap.i16(i16 %switch.load) #7
  %arrayidx.i.i = getelementptr %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8, i32 %i.096.i.i
  %185 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %185, i32 2)
  store i16 %184, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv15.i.i)
  %cmp47.i.i = icmp eq i16 %conv15.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv25.i.i)
  %cmp51.i.i = icmp eq i16 %conv25.i.i, 3
  %or.cond86.i.i = select i1 %cmp47.i.i, i1 true, i1 %cmp51.i.i
  %_mcs_160.0.i.i = select i1 %or.cond86.i.i, i16 3, i16 %conv15.i.i
  %_tx_mcs_160.0.i.i = select i1 %or.cond86.i.i, i16 3, i16 %conv25.i.i
  %186 = call i16 @llvm.umin.i16(i16 %_mcs_160.0.i.i, i16 %_tx_mcs_160.0.i.i) #7
  %187 = xor i16 %186, 2
  %switch.tableidx142 = zext i16 %187 to i32
  %switch.gep144 = getelementptr inbounds [4 x i16], ptr @switch.table.rs_fw_rate_init.14, i32 0, i32 %switch.tableidx142
  %188 = ptrtoint ptr %switch.gep144 to i32
  call void @__asan_load2_noabort(i32 %188)
  %switch.load145 = load i16, ptr %switch.gep144, align 2
  %189 = call i16 @llvm.bswap.i16(i16 %switch.load145) #7
  %arrayidx64.i.i = getelementptr %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8, i32 %i.096.i.i, i32 1
  %190 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 2)
  store i16 %189, ptr %arrayidx64.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.096.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %176
  br i1 %exitcond.not.i.i, label %if.end38.i.i.rs_fw_set_supp_rates.exit_crit_edge, label %if.end38.i.i.for.body.i.i_crit_edge

if.end38.i.i.for.body.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end38.i.i.rs_fw_set_supp_rates.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_set_supp_rates.exit

if.else.i130:                                     ; preds = %for.end.i
  %191 = ptrtoint ptr %vht_cap2.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %vht_cap2.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool9.not.i = icmp eq i8 %192, 0
  br i1 %tobool9.not.i, label %if.else12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i130
  %193 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 2, ptr %26, align 1
  %rx_nss.i60.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 13
  %194 = ptrtoint ptr %rx_nss.i60.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %rx_nss.i60.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ieee_vht_cap.i.i) #7
  %196 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %ieee_vht_cap.i.i, i32 0, i32 1
  %cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %197 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cap.i.i, align 4
  %199 = call i32 @llvm.bswap.i32(i32 %198) #7
  %200 = ptrtoint ptr %ieee_vht_cap.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %ieee_vht_cap.i.i, align 4
  %vht_mcs.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %201 = ptrtoint ptr %vht_mcs.i.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 8)
  %202 = load i64, ptr %vht_mcs.i.i, align 4
  %203 = ptrtoint ptr %196 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 8)
  store i64 %202, ptr %196, align 4
  %smps_mode.i61.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %204 = ptrtoint ptr %smps_mode.i61.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %smps_mode.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %205)
  %cmp.i62.i = icmp eq i32 %205, 2
  %206 = zext i8 %195 to i32
  %conv.i63.i = select i1 %cmp.i62.i, i32 1, i32 %206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i63.i)
  %cmp151.not.i.i = icmp eq i32 %conv.i63.i, 0
  br i1 %cmp151.not.i.i, label %if.then10.i.rs_fw_vht_set_enabled_rates.exit.i_crit_edge, label %for.body.lr.ph.i65.i

if.then10.i.rs_fw_vht_set_enabled_rates.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_vht_set_enabled_rates.exit.i

for.body.lr.ph.i65.i:                             ; preds = %if.then10.i
  %bandwidth.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i63.i)
  %.not.i64.i = icmp eq i32 %conv.i63.i, 1
  %207 = select i1 %.not.i64.i, i32 1, i32 2
  br label %for.body.i66.i

for.body.i66.i:                                   ; preds = %cleanup.i.i.for.body.i66.i_crit_edge, %for.body.lr.ph.i65.i
  %i.052.i.i = phi i32 [ 0, %for.body.lr.ph.i65.i ], [ %add.i.i131, %cleanup.i.i.for.body.i66.i_crit_edge ]
  %add.i.i131 = add nuw nsw i32 %i.052.i.i, 1
  %208 = ptrtoint ptr %vht_mcs.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %vht_mcs.i.i, align 4
  %210 = call i16 @llvm.bswap.i16(i16 %209) #7
  %sub.i.i.i = shl nuw i32 %add.i.i131, 1
  %mul.i.i.i = add nsw i32 %sub.i.i.i, -2
  %shl.i.i.i = shl i32 3, %mul.i.i.i
  %211 = trunc i32 %shl.i.i.i to i16
  %conv1.i.i.i = and i16 %210, %211
  %conv4.i.i.i = zext i16 %conv1.i.i.i to i32
  %shr.i.i.i = lshr i32 %conv4.i.i.i, %mul.i.i.i
  %trunc.i.i.i = trunc i32 %shr.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %trunc.i.i.i)
  %212 = icmp ult i16 %trunc.i.i.i, 3
  br i1 %212, label %switch.lookup139, label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %for.body.i66.i
  %.b46.i.i.i = load i1, ptr @rs_fw_vht_highest_rx_mcs_index.__already_done, align 1
  br i1 %.b46.i.i.i, label %land.end.i.i.i.cleanup.i.i_crit_edge, label %if.then.i.i.i, !prof !47

land.end.i.i.i.cleanup.i.i_crit_edge:             ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.then.i.i.i:                                    ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rs_fw_vht_highest_rx_mcs_index.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.i.i

switch.lookup139:                                 ; preds = %for.body.i66.i
  %switch.offset140 = add i16 %trunc.i.i.i, 8
  %notmask.i.i = shl nsw i16 -1, %switch.offset140
  %conv8.i.i = xor i16 %notmask.i.i, -1
  %213 = ptrtoint ptr %bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %bandwidth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp9.i.i = icmp eq i32 %214, 0
  %215 = and i16 %conv8.i.i, 1535
  %spec.select47.i.i = select i1 %cmp9.i.i, i16 %215, i16 %conv8.i.i
  %216 = call i16 @llvm.bswap.i16(i16 %spec.select47.i.i) #7
  %arrayidx.i67.i = getelementptr %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8, i32 %i.052.i.i
  %217 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_storeN_noabort(i32 %217, i32 2)
  store i16 %216, ptr %arrayidx.i67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %214)
  %cmp17.i.i = icmp eq i32 %214, 3
  br i1 %cmp17.i.i, label %land.lhs.true.i.i132, label %switch.lookup139.cleanup.i.i_crit_edge

switch.lookup139.cleanup.i.i_crit_edge:           ; preds = %switch.lookup139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

land.lhs.true.i.i132:                             ; preds = %switch.lookup139
  %call19.i.i = call i32 @ieee80211_get_vht_max_nss(ptr noundef nonnull %ieee_vht_cap.i.i, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true, i32 noundef %add.i.i131) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i.i, i32 %i.052.i.i)
  %cmp20.not.not.i.i = icmp sgt i32 %call19.i.i, %i.052.i.i
  br i1 %cmp20.not.not.i.i, label %if.then22.i.i, label %land.lhs.true.i.i132.cleanup.i.i_crit_edge

land.lhs.true.i.i132.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 2)
  %219 = load i16, ptr %arrayidx.i67.i, align 1
  %arrayidx28.i.i = getelementptr %struct.iwl_tlc_config_cmd_v4, ptr %cfg_cmd, i32 0, i32 8, i32 %i.052.i.i, i32 1
  %220 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 2)
  store i16 %219, ptr %arrayidx28.i.i, align 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then22.i.i, %land.lhs.true.i.i132.cleanup.i.i_crit_edge, %switch.lookup139.cleanup.i.i_crit_edge, %if.then.i.i.i, %land.end.i.i.i.cleanup.i.i_crit_edge
  %exitcond.not.i68.i = icmp eq i32 %add.i.i131, %207
  br i1 %exitcond.not.i68.i, label %cleanup.i.i.rs_fw_vht_set_enabled_rates.exit.i_crit_edge, label %cleanup.i.i.for.body.i66.i_crit_edge

cleanup.i.i.for.body.i66.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i66.i

cleanup.i.i.rs_fw_vht_set_enabled_rates.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_vht_set_enabled_rates.exit.i

rs_fw_vht_set_enabled_rates.exit.i:               ; preds = %cleanup.i.i.rs_fw_vht_set_enabled_rates.exit.i_crit_edge, %if.then10.i.rs_fw_vht_set_enabled_rates.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ieee_vht_cap.i.i) #7
  br label %rs_fw_set_supp_rates.exit

if.else12.i:                                      ; preds = %if.else.i130
  %ht_supported.i133 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %221 = ptrtoint ptr %ht_supported.i133 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %ht_supported.i133, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool13.not.i = icmp eq i8 %222, 0
  br i1 %tobool13.not.i, label %if.else12.i.rs_fw_set_supp_rates.exit_crit_edge, label %if.then14.i

if.else12.i.rs_fw_set_supp_rates.exit_crit_edge:  ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs_fw_set_supp_rates.exit

if.then14.i:                                      ; preds = %if.else12.i
  %223 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 1, ptr %26, align 1
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %224 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %mcs.i, align 1
  %conv17.i = zext i8 %225 to i16
  %226 = shl nuw i16 %conv17.i, 8
  %227 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 %226, ptr %31, align 1
  %smps_mode.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %228 = ptrtoint ptr %smps_mode.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %smps_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %229)
  %cmp20.i = icmp eq i32 %229, 2
  br i1 %cmp20.i, label %if.then22.i, label %if.else26.i

if.then22.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %230, i32 2)
  store i16 0, ptr %33, align 1
  br label %rs_fw_set_supp_rates.exit

if.else26.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx29.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %231 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %232 to i16
  %233 = shl nuw i16 %conv30.i, 8
  %234 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %234, i32 2)
  store i16 %233, ptr %33, align 1
  br label %rs_fw_set_supp_rates.exit

rs_fw_set_supp_rates.exit:                        ; preds = %if.else26.i, %if.then22.i, %if.else12.i.rs_fw_set_supp_rates.exit_crit_edge, %rs_fw_vht_set_enabled_rates.exit.i, %if.end38.i.i.rs_fw_set_supp_rates.exit_crit_edge, %if.then.i129.rs_fw_set_supp_rates.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %max_amsdu_len22 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 21
  %235 = ptrtoint ptr %max_amsdu_len22 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %retval.0.i, ptr %max_amsdu_len22, align 4
  %236 = ptrtoint ptr %fw.i123 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %fw.i123, align 8
  %call23 = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %237, i8 noundef zeroext 5, i8 noundef zeroext 15, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call23)
  %cmp = icmp eq i8 %call23, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %rs_fw_set_supp_rates.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 1295, i32 noundef 1, i16 noundef zeroext 28, ptr noundef nonnull %cfg_cmd) #7
  br label %if.end80

if.else:                                          ; preds = %rs_fw_set_supp_rates.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call23)
  %cmp27 = icmp ult i8 %call23, 4
  br i1 %cmp27, label %if.then29, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg_cmd_v3) #7
  %238 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 1
  %239 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 2
  %240 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 3
  %241 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 4
  %242 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 5
  %243 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 6
  %244 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 7
  %245 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 8
  %246 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 8, i32 0, i32 1
  %247 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 8, i32 1
  %248 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 8, i32 1, i32 1
  %249 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 9
  %250 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 10
  %251 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 11
  %252 = getelementptr inbounds %struct.iwl_tlc_config_cmd_v3, ptr %cfg_cmd_v3, i32 0, i32 12
  %253 = ptrtoint ptr %cfg_cmd to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %cfg_cmd, align 1
  %255 = ptrtoint ptr %cfg_cmd_v3 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %cfg_cmd_v3, align 1
  %256 = call ptr @memset(ptr %238, i32 0, i32 3)
  %257 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %25, align 1
  %259 = ptrtoint ptr %239 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %239, align 1
  %260 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %26, align 1
  %262 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %261, ptr %240, align 1
  %263 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %27, align 1
  %265 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %241, align 1
  %266 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 2)
  %267 = load i16, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %267)
  %tobool40 = icmp ne i16 %267, 0
  %conv42 = zext i1 %tobool40 to i8
  %268 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %conv42, ptr %242, align 1
  %269 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %269, i32 2)
  %270 = load i16, ptr %29, align 1
  %271 = ptrtoint ptr %243 to i32
  call void @__asan_storeN_noabort(i32 %271, i32 2)
  store i16 %270, ptr %243, align 1
  %272 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %272, i32 2)
  %273 = load i16, ptr %30, align 1
  %274 = ptrtoint ptr %244 to i32
  call void @__asan_storeN_noabort(i32 %274, i32 2)
  store i16 %273, ptr %244, align 1
  %275 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %275, i32 2)
  %276 = load i16, ptr %31, align 1
  %277 = ptrtoint ptr %245 to i32
  call void @__asan_storeN_noabort(i32 %277, i32 2)
  store i16 %276, ptr %245, align 1
  %278 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 2)
  %279 = load i16, ptr %32, align 1
  %280 = ptrtoint ptr %246 to i32
  call void @__asan_storeN_noabort(i32 %280, i32 2)
  store i16 %279, ptr %246, align 1
  %281 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 2)
  %282 = load i16, ptr %33, align 1
  %283 = ptrtoint ptr %247 to i32
  call void @__asan_storeN_noabort(i32 %283, i32 2)
  store i16 %282, ptr %247, align 1
  %284 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 2)
  %285 = load i16, ptr %34, align 1
  %286 = ptrtoint ptr %248 to i32
  call void @__asan_storeN_noabort(i32 %286, i32 2)
  store i16 %285, ptr %248, align 1
  %287 = ptrtoint ptr %249 to i32
  call void @__asan_storeN_noabort(i32 %287, i32 2)
  store i16 %267, ptr %249, align 1
  %288 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %28, align 1
  %290 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %250, align 1
  %291 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %251, align 1
  %292 = ptrtoint ptr %252 to i32
  call void @__asan_storeN_noabort(i32 %292, i32 4)
  store i32 0, ptr %252, align 1
  %293 = ptrtoint ptr %fw.i123 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %fw.i123, align 8
  %call70 = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %294, i8 noundef zeroext 5, i8 noundef zeroext 15, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call70)
  %cmp72 = icmp ult i8 %call70, 3
  %spec.select109 = select i1 %cmp72, i16 24, i16 28
  %call77 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 1295, i32 noundef 1, i16 noundef zeroext %spec.select109, ptr noundef nonnull %cfg_cmd_v3) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg_cmd_v3) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then29, %if.then
  %ret.0 = phi i32 [ %call26, %if.then ], [ %call77, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool81.not = icmp eq i32 %ret.0, 0
  br i1 %tobool81.not, label %if.end80.if.end86_crit_edge, label %if.end80.do.end_crit_edge

if.end80.do.end_crit_edge:                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

do.end:                                           ; preds = %if.end80.do.end_crit_edge, %if.else.do.end_crit_edge
  %ret.0136 = phi i32 [ %ret.0, %if.end80.do.end_crit_edge ], [ -22, %if.else.do.end_crit_edge ]
  %295 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %296, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %ret.0136) #7
  br label %if.end86

if.end86:                                         ; preds = %do.end, %if.end80.if.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg_cmd) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_reset_frame_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs_fw_tx_protection(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readnone %mvmsta, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_fw_tx_protection, ptr noundef nonnull @.str.8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rs_add_sta(ptr noundef %mvm, ptr nocapture noundef %mvmsta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lq_sta1 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12
  %0 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rs_add_sta, ptr noundef nonnull @.str.9) #7
  %pers = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 3
  %drv = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 7
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mvm, ptr %drv, align 4
  %3 = ptrtoint ptr %mvmsta to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mvmsta, align 8
  %5 = ptrtoint ptr %pers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pers, align 4
  %chains = getelementptr inbounds %struct.lq_sta_pers_rs_fw, ptr %pers, i32 0, i32 3
  %6 = ptrtoint ptr %chains to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %chains, align 2
  %chain_signal = getelementptr inbounds %struct.lq_sta_pers_rs_fw, ptr %pers, i32 0, i32 4
  %7 = ptrtoint ptr %chain_signal to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %chain_signal, align 1
  %last_rssi = getelementptr inbounds %struct.lq_sta_pers_rs_fw, ptr %pers, i32 0, i32 5
  %8 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %last_rssi, align 1
  %9 = ptrtoint ptr %lq_sta1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %lq_sta1, align 4
  %dbg_fixed_rate = getelementptr inbounds %struct.iwl_mvm_sta, ptr %mvmsta, i32 0, i32 12, i32 0, i32 4
  %10 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dbg_fixed_rate, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_vht_max_nss(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 292, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.iwl_mvm_tlc_update_notif, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 297, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 306, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 323, i32 4}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 333, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 366, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 488, i32 3}
!17 = !{ptr @__func__.rs_fw_tx_protection, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 495, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.iwl_mvm_rs_add_sta, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 503, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 185, i32 2}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rs-fw.c", i32 122, i32 3}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2149950386}
!45 = !{i64 2149950652}
!46 = !{i8 0, i8 2}
!47 = !{!"branch_weights", i32 2000, i32 1}
