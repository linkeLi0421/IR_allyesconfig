; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/d3.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/d3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_d3_manager_config = type { i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_fw_dump_desc = type { i32, %struct.iwl_fw_error_dump_trigger_desc }
%struct.iwl_fw_error_dump_trigger_desc = type { i32, [0 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.197, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.197 = type { i32, i16 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.198, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.198 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.199] }
%struct.anon.199 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.cfg80211_gtk_rekey_data = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.iwl_mvm_vif = type { ptr, i16, i16, i8, [6 x i8], i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.iwl_mvm_vif_bf_data, %struct.anon.206, i32, i32, [4 x %struct.ieee80211_tx_queue_params], %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, ptr, %struct.anon.207, i32, i8, i16, [12 x %struct.in6_addr], [1 x i32], i32, ptr, ptr, %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_bf, %struct.iwl_mac_power_cmd, i32, [4 x i32], [6 x i8], %struct.delayed_work, i8, i8, i16, i16, i16, %struct.delayed_work, i8, i64, ptr, [4 x ptr], i8, %struct.anon.208 }
%struct.iwl_mvm_vif_bf_data = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.anon.206 = type { i32, i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.iwl_mvm_time_event_data = type { ptr, %struct.list_head, i32, i32, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.anon.207 = type { [24 x i8], [32 x i8], i32, i32, i32, i64, i8 }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.iwl_dbgfs_pm = type { i16, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32 }
%struct.iwl_dbgfs_bf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mac_power_cmd = type { i32, i16, i16, i32, i32, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.208 = type { [2 x ptr] }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.iwl_nonqos_seq_query_cmd = type { i32, i32, i16, i16 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.wowlan_key_rsc_v5_data = type { ptr, i8, i32, [4 x i32] }
%struct.wowlan_key_rsc_tsc_data = type { ptr, i8 }
%struct.wowlan_key_reprogram_data = type { i8, i32 }
%struct.wowlan_key_tkip_data = type <{ %struct.iwl_wowlan_tkip_params_cmd, i8 }>
%struct.iwl_wowlan_tkip_params_cmd = type { %struct.iwl_mic_keys, %struct.iwl_p1k_cache, [2 x %struct.iwl_p1k_cache], [2 x %struct.iwl_p1k_cache], [2 x i8], i32 }
%struct.iwl_mic_keys = type { [8 x i8], [8 x i8], [8 x i8] }
%struct.iwl_p1k_cache = type { [5 x i16] }
%struct.iwl_wowlan_kek_kck_material_cmd_v4 = type { i32, [32 x i8], [32 x i8], i16, i16, i64, i32, i32, i32, i32 }
%struct.wowlan_key_gtk_type_iter = type { ptr }
%struct.iwl_binding_cmd_v1 = type { i32, i32, [3 x i32], i32 }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.iwl_wowlan_config_cmd = type { i32, i16, [8 x i16], i8, i8, i8, i8, i8, i8 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
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
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.209, %struct.anon.210, %struct.anon.210, %struct.list_head, %union.anon.211, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.224, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.226, %struct.list_head, %struct.anon.228, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.209 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.210 = type { i64, i64, i64, i64 }
%union.anon.211 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.214, %struct.anon.219, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.213], i32, i32, i32, [6 x i32] }
%struct.anon.213 = type { [15 x i32], i32 }
%struct.anon.214 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.218 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.215 }
%union.anon.215 = type { %struct.anon.216 }
%struct.anon.216 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.218 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.219 = type { %struct.delayed_work, i32, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rx_phy_info = type <{ i8, i8, i8, i8, i32, i64, i32, i16, i16, [8 x i32], i32, i32, i8, i8, i16 }>
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
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.223 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.220, %struct.anon.221, %struct.anon.222, i8 }
%struct.anon.220 = type { [4 x i32], i32 }
%struct.anon.221 = type { [4 x i32], i32, i32 }
%struct.anon.222 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.223 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.anon.224 = type { %struct.delayed_work, i32, i8, %struct.anon.225 }
%struct.anon.225 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.226 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.227, %struct.list_head }
%struct.anon.227 = type { %struct.list_head }
%struct.anon.228 = type { i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.iwl_time_quota_data_v1 = type { i32, i32, i32 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.212, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.212 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.194 }>
%struct.anon.194 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_wowlan_rsc_tsc_params_cmd = type { [8 x i64], [2 x [8 x i64]], i32, [4 x i8] }
%struct.iwl_wowlan_rsc_tsc_params_cmd_v4 = type <{ %struct.iwl_wowlan_rsc_tsc_params_cmd_ver_2, i32 }>
%struct.iwl_wowlan_rsc_tsc_params_cmd_ver_2 = type { %union.iwl_all_tsc_rsc }
%union.iwl_all_tsc_rsc = type { %struct.iwl_aes_rsc_tsc }
%struct.iwl_aes_rsc_tsc = type { [16 x %struct.aes_sc], [16 x %struct.aes_sc], %struct.aes_sc }
%struct.aes_sc = type { i64 }
%struct.iwl_wowlan_patterns_cmd = type { i8, i8, i16, [0 x %struct.iwl_wowlan_pattern_v2] }
%struct.iwl_wowlan_pattern_v2 = type { i8, [3 x i8], %union.iwl_wowlan_pattern_data }
%union.iwl_wowlan_pattern_data = type { %struct.iwl_wowlan_pattern_v1 }
%struct.iwl_wowlan_pattern_v1 = type { [16 x i8], [128 x i8], i8, i8, i16 }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.iwl_wowlan_patterns_cmd_v1 = type { i32, [0 x %struct.iwl_wowlan_pattern_v1] }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.204, %struct.anon.205, %struct.iwl_dma_ptr }
%struct.anon.204 = type { i8, i8, i32 }
%struct.anon.205 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.error_table_start = type { i32, i32 }
%struct.cfg80211_wowlan_wakeup = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.159, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.160, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.161, ptr, %struct.address_space, %struct.list_head, %union.anon.164, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.159 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.160 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.161 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.164 = type { ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.196, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.196 = type { i64, i64, i8 }
%struct.anon.231 = type { %struct.iwl_mvm_wep_key_cmd, %struct.iwl_mvm_wep_key }
%struct.iwl_mvm_wep_key_cmd = type { i32, i8, i8, i8, i8, [0 x %struct.iwl_mvm_wep_key] }
%struct.iwl_mvm_wep_key = type { i8, i8, i16, i8, [3 x i8], [16 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.ieee80211_key_seq = type { %union.anon.232 }
%union.anon.232 = type { %struct.anon.233, [12 x i8] }
%struct.anon.233 = type { i32, i16 }
%struct.iwl_mvm_sta = type { i32, i32, i32, i16, i16, i32, i32, i8, i8, %struct.spinlock, [9 x %struct.iwl_mvm_tid_data], [8 x i8], %union.anon.229, ptr, [4 x ptr], ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.iwl_mvm_tid_data = type { i16, i16, i32, i8, i8, i32, i16, i16, i16, i32, i32, i32 }
%union.anon.229 = type { %struct.iwl_lq_sta }
%struct.iwl_lq_sta = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, %struct.rs_rate, i32, ptr, i32, i8, %struct.iwl_lq_cmd, [2 x %struct.iwl_scale_tbl_info], i8, i32, i8, i32, %struct.lq_sta_pers }
%struct.rs_rate = type { i32, i32, i8, i32, i8, i8, i8, i8 }
%struct.iwl_lq_cmd = type { i8, i8, i16, i8, i8, i8, i8, [4 x i8], i16, i8, i8, i32, [16 x i32], i32 }
%struct.iwl_scale_tbl_info = type { %struct.rs_rate, i32, ptr, [17 x %struct.iwl_rate_scale_data], [16 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32 }
%struct.lq_sta_pers = type { i32, i8, i32, i8, [4 x i8], i8, [8 x [17 x %struct.rs_rate_stats]], ptr, %struct.spinlock }
%struct.rs_rate_stats = type { i64, i64 }
%struct.iwl_mvm_key_pn = type { %struct.callback_head, [120 x i8], [0 x %struct.anon.230] }
%struct.anon.230 = type { [8 x [6 x i8]], [80 x i8] }
%struct.iwl_tkip_rsc_tsc = type { [16 x %struct.tkip_sc], [16 x %struct.tkip_sc], %struct.tkip_sc }
%struct.tkip_sc = type { i16, i16, i32 }
%struct.iwl_mvm_nd_query_results = type { i32, [198 x i8] }
%struct.iwl_wowlan_status_data = type { i64, i32, i32, i32, i32, i32, i16, i16, [8 x i16], i8, %struct.anon.239, [2 x %struct.anon.240], %struct.anon.242, %struct.anon.244, [0 x i8] }
%struct.anon.239 = type { [32 x i8], i8, i8 }
%struct.anon.240 = type { %struct.anon.241, %struct.anon.241, i8, i8 }
%struct.anon.241 = type { [8 x %struct.ieee80211_key_seq] }
%struct.anon.242 = type { %struct.anon.243, %struct.anon.243 }
%struct.anon.243 = type { [8 x %struct.ieee80211_key_seq], i64 }
%struct.anon.244 = type { i64, [32 x i8], i8, i8 }
%struct.iwl_scan_offload_profile_match = type { [6 x i8], i16, i8, i8, i8, [7 x i8] }
%struct.iwl_scan_offload_profile_match_v1 = type { [6 x i8], i16, i8, i8, i8, [5 x i8] }
%struct.cfg80211_wowlan_nd_info = type { i32, [0 x ptr] }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_wowlan_nd_match = type { %struct.cfg80211_ssid, i32, [0 x i32] }
%struct.iwl_mvm_d3_gtk_iter_data = type { ptr, ptr, ptr, i32, i8, i8, i32 }
%struct.anon.245 = type { %struct.ieee80211_key_conf, [32 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.iwl_wowlan_get_status_cmd = type { i32 }
%struct.iwl_wowlan_status_v6 = type <{ %struct.iwl_wowlan_gtk_status_v1, i64, i16, i16, [8 x i16], i32, i32, i32, i32, i32, i32, [0 x i8] }>
%struct.iwl_wowlan_gtk_status_v1 = type <{ i8, [3 x i8], [16 x i8], [8 x i8], %struct.iwl_wowlan_rsc_tsc_params_cmd_ver_2 }>
%struct.iwl_wowlan_status_v7 = type <{ [2 x %struct.iwl_wowlan_gtk_status_v2], [2 x %struct.iwl_wowlan_igtk_status], i64, i16, i16, [8 x i16], i32, i32, i32, i32, i32, i32, [0 x i8] }>
%struct.iwl_wowlan_gtk_status_v2 = type <{ [32 x i8], i8, i8, [2 x i8], [8 x i8], %struct.iwl_wowlan_rsc_tsc_params_cmd_ver_2 }>
%struct.iwl_wowlan_igtk_status = type { [32 x i8], [6 x i8], i8, i8 }
%struct.iwl_wowlan_status_v9 = type { [2 x %struct.iwl_wowlan_gtk_status_v2], [2 x %struct.iwl_wowlan_igtk_status], i64, i16, i16, [8 x i16], i32, i32, i32, i32, i32, i32, i8, [3 x i8], [0 x i8] }
%struct.iwl_wowlan_status_v12 = type { [2 x %struct.iwl_wowlan_gtk_status_v3], [2 x %struct.iwl_wowlan_igtk_status], i64, i16, i16, [8 x i16], i32, i32, i32, i32, i32, i32, i8, [3 x i8], [0 x i8] }
%struct.iwl_wowlan_gtk_status_v3 = type <{ [32 x i8], i8, i8, [2 x i8], [8 x i8], %struct.iwl_wowlan_all_rsc_tsc_v5 }>
%struct.iwl_wowlan_all_rsc_tsc_v5 = type { [8 x i64], [2 x [8 x i64]], i32, [4 x i8] }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set non-QoS seqno\0A\00", [35 x i8] zeroinitializer }, align 32
@iwl_dbgfs_d3_test_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @iwl_mvm_d3_test_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @iwl_mvm_d3_test_open, ptr null, ptr @iwl_mvm_d3_test_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__const.__iwl_mvm_suspend.d3_cfg_cmd_data = private unnamed_addr constant %struct.iwl_d3_manager_config { i32 -2137614336, i32 0, i32 0 }, align 1
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/d3.c\00", [52 x i8] zeroinitializer }, align 32
@__iwl_mvm_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_d3_reprogram.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_d3_reprogram.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to add binding: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Binding command failed: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to send quota: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize D3 LAR information\0A\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_wowlan_config_key_params.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_wowlan_config_key_params = private unnamed_addr constant [33 x i8] c"iwl_mvm_wowlan_config_key_params\00", align 1
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"setting akm %d\0A\00", [16 x i8] zeroinitializer }, align 32
@iwl_mvm_wowlan_config_rsc_tsc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iwl_mvm_wowlan_get_rsc_v5_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_wowlan_get_rsc_tsc_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iwl_dump_desc_assert = external dso_local constant %struct.iwl_fw_dump_desc, align 4
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device was reset during suspend\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to send D0I3_END_CMD first (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error with D0I3_END_CMD response size (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@__const.iwl_mvm_check_rt_status.wakeup = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0, ptr null, ptr null }, align 4
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no net detect match information available\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to query offload statistics (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to query wakeup status (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Firmware advertises unknown WoWLAN status response %d!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid WoWLAN status response!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to query matched profiles (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid scan offload profiles query response!\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_query_wakeup_reasons = private unnamed_addr constant [29 x i8] c"iwl_mvm_query_wakeup_reasons\00", align 1
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wakeup reason 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_from_staid_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@iwl_trans_set_q_ptrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_set_q_ptrs = private unnamed_addr constant [21 x i8] c"iwl_trans_set_q_ptrs\00", align 1
@__const.iwl_mvm_report_wakeup_reasons.wakeup = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 -1, i32 0, i32 0, ptr null, ptr null }, align 4
@iwl_mvm_report_wakeup_reasons.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_setup_connection_keep = private unnamed_addr constant [30 x i8] c"iwl_mvm_setup_connection_keep\00", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"num of GTK rekeying %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Received from FW GTK cipher %d, key index %d\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_set_aes_ptk_rx_seq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timed out waiting for HW restart!\0A\00", [61 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_query_wakeup_reasons = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" \10\10\10\10\10\10 ", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 99]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 99]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 99]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [11 x i64] [i64 9, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1027080, i64 1027081, i64 1027083, i64 1027084]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 1027076, i64 1027078, i64 1027080, i64 1027081, i64 1027083, i64 1027084]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 1027074, i64 1027076, i64 1027080, i64 1027081]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 1027074, i64 1027076, i64 1027080, i64 1027081]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 1027074, i64 1027076, i64 1027080, i64 1027081]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 8, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027080, i64 1027081]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 1027074, i64 1027076, i64 1027080, i64 1027081]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 1027074, i64 1027076, i64 1027080, i64 1027081]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 877, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"iwl_dbgfs_d3_test_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2794, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1254, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1290, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 736, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 779, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 784, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 813, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 816, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 695, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 723, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1095, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1101, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2552, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2565, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2575, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2401, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2196, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2088, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2171, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1998, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2278, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2295, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2216, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1203, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1173, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1891, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1905, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 2784, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [42 x i8] c"switch.table.iwl_mvm_query_wakeup_reasons\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @iwl_dbgfs_d3_test_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @switch.table.iwl_mvm_query_wakeup_reasons], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_d3_test_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_query_wakeup_reasons to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_set_rekey_data(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %vif, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %kek_len = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %kek_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %kek_len, align 4
  %conv = zext i8 %3 to i32
  %rekey_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 42
  %kek_len1 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %kek_len1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %kek_len1, align 8
  %kck_len = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %kck_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %kck_len, align 1
  %conv2 = zext i8 %6 to i32
  %kck_len4 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 24, i32 3
  %7 = ptrtoint ptr %kck_len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %kck_len4, align 4
  %kek = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 44, i32 2, i32 1, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = load i8, ptr %kek_len, align 4
  %conv9 = zext i8 %10 to i32
  %11 = call ptr @memcpy(ptr %kek, ptr %9, i32 %conv9)
  %kck12 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %kck12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kck12, align 4
  %14 = load i8, ptr %kck_len, align 1
  %conv14 = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %rekey_data, ptr %13, i32 %conv14)
  %akm = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %akm, align 4
  %and = and i32 %17, 255
  %akm16 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 46
  %18 = ptrtoint ptr %akm16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %akm16, align 8
  %replay_ctr = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %replay_ctr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %replay_ctr, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %replay_ctr19 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 50
  %24 = ptrtoint ptr %replay_ctr19 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %replay_ctr19, align 8
  %valid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 53
  %25 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %valid, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ipv6_addr_change(ptr nocapture noundef readnone %hw, ptr nocapture noundef %vif, ptr noundef %idev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %tentative_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %tentative_addrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tentative_addrs, align 8
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #13
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %idx.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %addr_list, %entry ], [ %.pn, %if.end.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %addr_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %ifa.0 = getelementptr i8, ptr %.pn, i32 -228
  %arrayidx = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 28, i32 %idx.0
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %ifa.0, i32 16)
  %flags = getelementptr i8, ptr %.pn, i32 -144
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %idx.0
  %div2.i = lshr i32 %idx.0, 5
  %add.ptr.i = getelementptr i32, ptr %tentative_addrs, i32 %div2.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %6, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %idx.0, 1
  %exitcond = icmp eq i32 %inc, 12
  br i1 %exitcond, label %if.end.for.end_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.for.end_crit_edge
  %idx.1 = phi i32 [ 12, %if.end.for.end_crit_edge ], [ %idx.0, %for.cond.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #13
  %num_target_ipv6_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 5
  %7 = ptrtoint ptr %num_target_ipv6_addrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %idx.1, ptr %num_target_ipv6_addrs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iwl_mvm_set_default_unicast_key(ptr nocapture noundef readnone %hw, ptr nocapture noundef writeonly %vif, i32 noundef %idx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_key_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 56, i32 1
  %0 = ptrtoint ptr %tx_key_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %idx, ptr %tx_key_idx, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_set_last_nonqos_seq(ptr noundef %mvm, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %query_cmd = alloca %struct.iwl_nonqos_seq_query_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %query_cmd) #13
  %0 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, ptr %query_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, ptr %query_cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, ptr %query_cmd, i32 0, i32 3
  %3 = ptrtoint ptr %query_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33554432, ptr %query_cmd, align 4
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 4
  %conv = zext i16 %5 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %6 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color, align 2
  %conv1 = zext i16 %7 to i32
  %shl2 = shl nuw nsw i32 %conv1, 8
  %or = or i32 %shl2, %conv
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %0, align 4
  %seqno = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 57, i32 2
  %10 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %seqno, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %2, align 2
  %seqno_valid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 57
  %15 = ptrtoint ptr %seqno_valid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %seqno_valid, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %seqno_valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %seqno_valid, align 4
  %call4 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 45, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %query_cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %query_cmd) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_suspend(ptr nocapture noundef readonly %hw, ptr noundef %wowlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  tail call void @iwl_mvm_pause_tcm(ptr noundef %op_mode_specific, i1 noundef zeroext true) #13
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 629
  tail call void @iwl_fw_runtime_suspend(ptr noundef %fwrt) #13
  %call = tail call fastcc i32 @__iwl_mvm_suspend(ptr noundef %hw, ptr noundef %wowlan, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_pause_tcm(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iwl_mvm_suspend(ptr nocapture noundef readonly %hw, ptr noundef readonly %wowlan, i1 noundef zeroext %test) unnamed_addr #0 align 64 {
entry:
  %cmd.i17.i = alloca %struct.iwl_host_cmd, align 4
  %cmd.i.i201 = alloca %struct.iwl_host_cmd, align 4
  %data.i.i.i = alloca %struct.wowlan_key_rsc_v5_data, align 4
  %data28.i.i.i = alloca %struct.wowlan_key_rsc_tsc_data, align 8
  %key_data.i.i = alloca %struct.wowlan_key_reprogram_data, align 8
  %tkip_data.i.i = alloca %struct.wowlan_key_tkip_data, align 1
  %kek_kck_cmd.i.i = alloca %struct.iwl_wowlan_kek_kck_material_cmd_v4, align 4
  %gtk_type_data.i.i = alloca %struct.wowlan_key_gtk_type_iter, align 4
  %chandef.i.i = alloca %struct.cfg80211_chan_def, align 4
  %binding_cmd.i.i = alloca %struct.iwl_binding_cmd_v1, align 4
  %quota_cmd.i.i = alloca %struct.iwl_time_quota_cmd, align 4
  %status.i1.i = alloca i32, align 4
  %query_cmd.i.i = alloca %struct.iwl_nonqos_seq_query_cmd, align 4
  %cmd.i.i = alloca %struct.iwl_host_cmd, align 4
  %d3_cfg_cmd_data = alloca %struct.iwl_d3_manager_config, align 1
  %d3_cfg_cmd = alloca %struct.iwl_host_cmd, align 4
  %wowlan_config_cmd = alloca %struct.iwl_wowlan_config_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %d3_cfg_cmd_data) #13
  %2 = call ptr @memcpy(ptr %d3_cfg_cmd_data, ptr @__const.__iwl_mvm_suspend.d3_cfg_cmd_data, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %d3_cfg_cmd) #13
  %3 = getelementptr inbounds i8, ptr %d3_cfg_cmd, i32 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !95
  %5 = ptrtoint ptr %d3_cfg_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %d3_cfg_cmd_data, ptr %d3_cfg_cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %d3_cfg_cmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 3
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 4
  %6 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 18, ptr %flags, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 211, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 12, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %arrayinit.start3, align 2
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %d3_cfg_cmd, i32 0, i32 7
  %11 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %arrayinit.end4, align 4
  %fw = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 3
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_capa.i, align 4
  %16 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  %tobool.not = icmp eq ptr %wowlan, null
  br i1 %tobool.not, label %if.then, label %if.end34

if.then:                                          ; preds = %entry
  br i1 %test, label %if.then.cleanup131_crit_edge, label %do.end, !prof !96

if.then.cleanup131_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup131

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1254, i32 noundef 9, ptr noundef null) #13
  br label %cleanup131

if.end34:                                         ; preds = %entry
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %status = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 66
  call void @_set_bit(i32 noundef 8, ptr noundef %status) #13
  call void @synchronize_net() #13
  %call35 = call ptr @iwl_mvm_get_bss_vif(ptr noundef %op_mode_specific) #13
  %tobool.not.i = icmp eq ptr %call35, null
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end34.out_noreset_crit_edge, label %if.end38

if.end34.out_noreset_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_noreset

if.end38:                                         ; preds = %if.end34
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 0, i32 19
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1
  %17 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ap_sta_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp = icmp eq i8 %18, -1
  br i1 %cmp, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end38
  %nd_config = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 10
  %19 = ptrtoint ptr %nd_config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_config, align 4
  %tobool42.not = icmp eq ptr %20, null
  br i1 %tobool42.not, label %if.then41.out_noreset_crit_edge, label %if.end44

if.then41.out_noreset_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_noreset

if.end44:                                         ; preds = %if.then41
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %22, i32 0, i32 5, i32 8
  %23 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_capa.i.i, align 4
  %25 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end44
  %call.i.i = call i32 @iwl_mvm_scan_stop(ptr noundef %op_mode_specific, i32 noundef 1, i1 noundef zeroext true) #13
  call void @iwl_mvm_stop_device(ptr noundef %op_mode_specific) #13
  call void @_set_bit(i32 noundef 4, ptr noundef %status) #13
  %fw_key_table.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1198
  %26 = ptrtoint ptr %fw_key_table.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %fw_key_table.i.i, align 4
  %ptk_ivlen.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1320
  %27 = ptrtoint ptr %ptk_ivlen.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %ptk_ivlen.i.i, align 4
  %call3.i.i = call i32 @iwl_mvm_load_d3_fw(ptr noundef %op_mode_specific) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool2.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end44
  %call4.i = call i32 @iwl_mvm_scan_stop(ptr noundef %op_mode_specific, i32 noundef 2, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.out_crit_edge

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  %nd_ies.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1322
  %call9.i = call i32 @iwl_mvm_sched_scan_start(ptr noundef %op_mode_specific, ptr noundef nonnull %call35, ptr noundef nonnull %20, ptr noundef %nd_ies.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.out_crit_edge

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12.i:                                       ; preds = %if.end8.i
  %nd_match_sets.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1336
  %28 = ptrtoint ptr %nd_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nd_match_sets.i, align 4
  %tobool13.not.i = icmp eq ptr %29, null
  br i1 %tobool13.not.i, label %lor.rhs.i, label %if.end12.i.out.thread250_crit_edge

if.end12.i.out.thread250_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread250

lor.rhs.i:                                        ; preds = %if.end12.i
  %nd_channels.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1338
  %30 = ptrtoint ptr %nd_channels.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_channels.i, align 4
  %tobool14.not.i = icmp eq ptr %31, null
  br i1 %tobool14.not.i, label %if.end38.i, label %lor.rhs.i.out.thread250_crit_edge, !prof !96

lor.rhs.i.out.thread250_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread250

out.thread250:                                    ; preds = %lor.rhs.i.out.thread250_crit_edge, %if.end12.i.out.thread250_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1188, i32 noundef 9, ptr noundef null) #13
  br label %if.then117

if.end38.i:                                       ; preds = %lor.rhs.i
  %n_match_sets.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %20, i32 0, i32 9
  %32 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_match_sets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool39.not.i = icmp eq i32 %33, 0
  br i1 %tobool39.not.i, label %if.end38.i.if.end49.i_crit_edge, label %if.then40.i

if.end38.i.if.end49.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end38.i
  %match_sets.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %20, i32 0, i32 8
  %34 = ptrtoint ptr %match_sets.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %match_sets.i, align 4
  %mul.i = mul i32 %33, 68
  %call42.i = call ptr @kmemdup(ptr noundef %35, i32 noundef %mul.i, i32 noundef 3264) #13
  %36 = ptrtoint ptr %nd_match_sets.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call42.i, ptr %nd_match_sets.i, align 4
  %tobool45.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool45.not.i, label %if.then40.i.if.end49.i_crit_edge, label %if.then46.i

if.then40.i.if.end49.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_match_sets.i, align 8
  %n_nd_match_sets.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1337
  %39 = ptrtoint ptr %n_nd_match_sets.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %n_nd_match_sets.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.then40.i.if.end49.i_crit_edge, %if.end38.i.if.end49.i_crit_edge
  %channels.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %20, i32 0, i32 27
  %n_channels.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %20, i32 0, i32 3
  %40 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_channels.i, align 8
  %mul50.i = shl i32 %41, 2
  %call51.i = call ptr @kmemdup(ptr noundef %channels.i, i32 noundef %mul50.i, i32 noundef 3264) #13
  %42 = ptrtoint ptr %nd_channels.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call51.i, ptr %nd_channels.i, align 4
  %tobool54.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool54.not.i, label %if.end49.i.if.end49_crit_edge, label %if.then55.i

if.end49.i.if.end49_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then55.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_channels.i, align 8
  %n_nd_channels.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1339
  %45 = ptrtoint ptr %n_nd_channels.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %n_nd_channels.i, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then55.i, %if.end49.i.if.end49_crit_edge
  %net_detect = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1340
  %46 = ptrtoint ptr %net_detect to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %net_detect, align 4
  br label %if.end77

if.else:                                          ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %wowlan_config_cmd) #13
  %47 = call ptr @memset(ptr %wowlan_config_cmd, i32 0, i32 28)
  %sta_id = getelementptr inbounds %struct.iwl_wowlan_config_cmd, ptr %wowlan_config_cmd, i32 0, i32 7
  %48 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %18, ptr %sta_id, align 2
  %dep_map = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 23
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %land.lhs.true, label %if.else.do.end62_crit_edge

if.else.do.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end62

land.lhs.true:                                    ; preds = %if.else
  %call55 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true
  %.b191 = load i1, ptr @__iwl_mvm_suspend.__warned, align 1
  br i1 %.b191, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__iwl_mvm_suspend.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1292, ptr noundef nonnull @.str.2) #13
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true.do.end62_crit_edge, %if.else.do.end62_crit_edge
  %fw_id_to_mac_id = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1050
  %49 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ap_sta_id, align 8
  %idxprom = zext i8 %50 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %fw_id_to_mac_id, i32 0, i32 %idxprom
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i192 = icmp eq ptr %52, null
  %cmp.i193 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  %spec.select.i194 = or i1 %tobool.not.i192, %cmp.i193
  br i1 %spec.select.i194, label %do.end62.cleanup.thread245_crit_edge, label %if.end67

do.end62.cleanup.thread245_crit_edge:             ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread245

if.end67:                                         ; preds = %do.end62
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %52, i32 0, i32 29
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %52, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ht_supported.i, align 2, !range !94
  %is_11n_connection.i = getelementptr inbounds %struct.iwl_wowlan_config_cmd, ptr %wowlan_config_cmd, i32 0, i32 4
  %55 = ptrtoint ptr %is_11n_connection.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %is_11n_connection.i, align 1
  %flags.i = getelementptr inbounds %struct.iwl_wowlan_config_cmd, ptr %wowlan_config_cmd, i32 0, i32 6
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 14, ptr %flags.i, align 1
  %57 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw, align 8
  %call1.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %58, i8 noundef zeroext 1, i8 noundef zeroext -31, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %call1.i)
  %cmp.i196 = icmp ult i8 %call1.i, 6
  br i1 %cmp.i196, label %if.then.i197, label %if.end67.if.end9.i_crit_edge

if.end67.if.end9.i_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then.i197:                                     ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %query_cmd.i.i) #13
  %59 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, ptr %query_cmd.i.i, i32 0, i32 1
  %60 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, ptr %query_cmd.i.i, i32 0, i32 2
  %61 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, ptr %query_cmd.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %query_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16777216, ptr %query_cmd.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %63 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %id.i.i, align 4
  %conv.i.i = zext i16 %64 to i32
  %color.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %65 = ptrtoint ptr %color.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %color.i.i, align 2
  %conv1.i.i = zext i16 %66 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %conv.i.i
  %67 = call i32 @llvm.bswap.i32(i32 %or.i.i) #13
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %59, align 4
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %60, align 4
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %61, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i) #13
  %71 = getelementptr inbounds i8, ptr %cmd.i.i, i32 4
  %72 = call ptr @memset(ptr %71, i32 0, i32 32)
  %73 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %73, align 4
  %75 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i, i32 0, i32 5
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 45, ptr %75, align 4
  %77 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %query_cmd.i.i, ptr %cmd.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 12, ptr %len.i.i, align 4
  %call4.i.i = call i32 @iwl_mvm_send_cmd(ptr noundef %op_mode_specific, ptr noundef nonnull %cmd.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i197.iwl_mvm_get_last_nonqos_seq.exit.i_crit_edge

if.then.i197.iwl_mvm_get_last_nonqos_seq.exit.i_crit_edge: ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_get_last_nonqos_seq.exit.i

if.end.i.i:                                       ; preds = %if.then.i197
  %resp_pkt.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %resp_pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %resp_pkt.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %80, align 1
  %83 = and i32 %82, -29425664
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %83)
  %cmp.i.i = icmp eq i32 %83, 67108864
  br i1 %cmp.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %data9.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %80, i32 0, i32 2
  %84 = ptrtoint ptr %data9.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %data9.i.i, align 2
  %86 = call i16 @llvm.bswap.i16(i16 %85) #13
  %sub.i.i = add i16 %86, -16
  %conv13.i.i = zext i16 %sub.i.i to i32
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.else.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %err.0.i.i = phi i32 [ %conv13.i.i, %if.else.i.i ], [ -22, %if.end.i.i.if.end14.i.i_crit_edge ]
  %_rx_page_addr.i.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %_rx_page_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %_rx_page_addr.i.i.i, align 4
  %_rx_page_order.i.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %_rx_page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %_rx_page_order.i.i.i, align 4
  call void @free_pages(i32 noundef %88, i32 noundef %90) #13
  br label %iwl_mvm_get_last_nonqos_seq.exit.i

iwl_mvm_get_last_nonqos_seq.exit.i:               ; preds = %if.end14.i.i, %if.then.i197.iwl_mvm_get_last_nonqos_seq.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %err.0.i.i, %if.end14.i.i ], [ %call4.i.i, %if.then.i197.iwl_mvm_get_last_nonqos_seq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %query_cmd.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp5.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp5.i, label %iwl_mvm_get_last_nonqos_seq.exit.i.cleanup.thread245_crit_edge, label %if.end.i

iwl_mvm_get_last_nonqos_seq.exit.i.cleanup.thread245_crit_edge: ; preds = %iwl_mvm_get_last_nonqos_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread245

if.end.i:                                         ; preds = %iwl_mvm_get_last_nonqos_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv8.i = trunc i32 %retval.0.i.i to i16
  %91 = call i16 @llvm.bswap.i16(i16 %conv8.i) #13
  %non_qos_seq.i = getelementptr inbounds %struct.iwl_wowlan_config_cmd, ptr %wowlan_config_cmd, i32 0, i32 1
  %92 = ptrtoint ptr %non_qos_seq.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %non_qos_seq.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %if.end67.if.end9.i_crit_edge
  call void @iwl_mvm_set_wowlan_qos_seq(ptr noundef %drv_priv.i.i, ptr noundef nonnull %wowlan_config_cmd) #13
  %disconnect.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 1
  %93 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %disconnect.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool10.not.i198 = icmp eq i8 %94, 0
  br i1 %tobool10.not.i198, label %if.end9.i.if.end12.i200_crit_edge, label %if.then11.i

if.end9.i.if.end12.i200_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i200

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wowlan_config_cmd, align 4
  %or.i = or i32 %96, 201326592
  store i32 %or.i, ptr %wowlan_config_cmd, align 4
  br label %if.end12.i200

if.end12.i200:                                    ; preds = %if.then11.i, %if.end9.i.if.end12.i200_crit_edge
  %magic_pkt.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %97 = ptrtoint ptr %magic_pkt.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %magic_pkt.i, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool13.not.i199 = icmp eq i8 %98, 0
  br i1 %tobool13.not.i199, label %if.end12.i200.if.end17.i_crit_edge, label %if.then14.i

if.end12.i200.if.end17.i_crit_edge:               ; preds = %if.end12.i200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end12.i200
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wowlan_config_cmd, align 4
  %or16.i = or i32 %100, 16777216
  store i32 %or16.i, ptr %wowlan_config_cmd, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end12.i200.if.end17.i_crit_edge
  %gtk_rekey_failure.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 3
  %101 = ptrtoint ptr %gtk_rekey_failure.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %gtk_rekey_failure.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool18.not.i = icmp eq i8 %102, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.end22.i_crit_edge, label %if.then19.i

if.end17.i.if.end22.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %wowlan_config_cmd, align 4
  %or21.i = or i32 %104, 268435456
  store i32 %or21.i, ptr %wowlan_config_cmd, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end17.i.if.end22.i_crit_edge
  %eap_identity_req.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 4
  %105 = ptrtoint ptr %eap_identity_req.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %eap_identity_req.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool23.not.i = icmp eq i8 %106, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then24.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wowlan_config_cmd, align 4
  %or26.i = or i32 %108, 536870912
  store i32 %or26.i, ptr %wowlan_config_cmd, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end27.i_crit_edge
  %four_way_handshake.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 5
  %109 = ptrtoint ptr %four_way_handshake.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %four_way_handshake.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool28.not.i = icmp eq i8 %110, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end32.i_crit_edge, label %if.then29.i

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %wowlan_config_cmd, align 4
  %or31.i = or i32 %112, 1073741824
  store i32 %or31.i, ptr %wowlan_config_cmd, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end32.i_crit_edge
  %n_patterns.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %113 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool33.not.i = icmp eq i32 %114, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end37.i_crit_edge, label %if.then34.i

if.end32.i.if.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %wowlan_config_cmd, align 4
  %or36.i = or i32 %116, 33554432
  store i32 %or36.i, ptr %wowlan_config_cmd, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end37.i_crit_edge
  %rfkill_release.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 6
  %117 = ptrtoint ptr %rfkill_release.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rfkill_release.i, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool38.not.i = icmp eq i8 %118, 0
  br i1 %tobool38.not.i, label %if.end37.i.if.end42.i_crit_edge, label %if.then39.i

if.end37.i.if.end42.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wowlan_config_cmd, align 4
  %or41.i = or i32 %120, 65536
  store i32 %or41.i, ptr %wowlan_config_cmd, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %if.end37.i.if.end42.i_crit_edge
  %tcp.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 8
  %121 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tcp.i, align 4
  %tobool43.not.i = icmp eq ptr %122, null
  br i1 %tobool43.not.i, label %if.end42.i.if.end47.i_crit_edge, label %if.then44.i

if.end42.i.if.end47.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %wowlan_config_cmd, align 4
  %or46.i = or i32 %124, 135659520
  store i32 %or46.i, ptr %wowlan_config_cmd, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.end42.i.if.end47.i_crit_edge
  %125 = ptrtoint ptr %wowlan to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %wowlan, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool48.not.i = icmp eq i8 %126, 0
  br i1 %tobool48.not.i, label %if.end47.i.if.end71_crit_edge, label %if.then49.i

if.end47.i.if.end71_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %wowlan_config_cmd to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %wowlan_config_cmd, align 4
  %or51.i = or i32 %128, 209715456
  store i32 %or51.i, ptr %wowlan_config_cmd, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then49.i, %if.end47.i.if.end71_crit_edge
  %129 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fw, align 8
  %_capa.i.i203 = getelementptr inbounds %struct.iwl_fw, ptr %130, i32 0, i32 5, i32 8
  %131 = ptrtoint ptr %_capa.i.i203 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %_capa.i.i203, align 4
  %133 = and i32 %132, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.i.not.i204 = icmp eq i32 %133, 0
  %offloading_tid.i = getelementptr inbounds %struct.iwl_wowlan_config_cmd, ptr %wowlan_config_cmd, i32 0, i32 5
  %134 = ptrtoint ptr %offloading_tid.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %offloading_tid.i, align 4
  %offload_tid.i = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 111
  %136 = ptrtoint ptr %offload_tid.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %offload_tid.i, align 1
  br i1 %tobool.i.not.i204, label %if.then.i211, label %if.end71.if.end8.i217_crit_edge

if.end71.if.end8.i217_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i217

if.then.i211:                                     ; preds = %if.end71
  %call.i.i205 = call i32 @iwl_mvm_scan_stop(ptr noundef %op_mode_specific, i32 noundef 1, i1 noundef zeroext true) #13
  call void @iwl_mvm_stop_device(ptr noundef %op_mode_specific) #13
  call void @_set_bit(i32 noundef 4, ptr noundef %status) #13
  %fw_key_table.i.i207 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1198
  %137 = ptrtoint ptr %fw_key_table.i.i207 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %fw_key_table.i.i207, align 4
  %ptk_ivlen.i.i208 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1320
  %138 = ptrtoint ptr %ptk_ivlen.i.i208 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 0, ptr %ptk_ivlen.i.i208, align 4
  %call3.i.i209 = call i32 @iwl_mvm_load_d3_fw(ptr noundef %op_mode_specific) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i209)
  %tobool2.not.i210 = icmp eq i32 %call3.i.i209, 0
  br i1 %tobool2.not.i210, label %if.end.i213, label %if.then.i211.cleanup.thread_crit_edge

if.then.i211.cleanup.thread_crit_edge:            ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end.i213:                                      ; preds = %if.then.i211
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i.i) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %binding_cmd.i.i) #13
  %139 = call ptr @memset(ptr %binding_cmd.i.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %quota_cmd.i.i) #13
  %140 = call ptr @memset(ptr %quota_cmd.i.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i1.i) #13
  %141 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %142, i32 0, i32 5, i32 8, i32 1
  %143 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %145 = and i32 %144, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.i.i.not.i.i = icmp eq i32 %145, 0
  br i1 %tobool.i.i.not.i.i, label %if.end38.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i213
  %.b386.i.i = load i1, ptr @iwl_mvm_d3_reprogram.__already_done, align 1
  br i1 %.b386.i.i, label %land.rhs.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge, label %if.then.i.i, !prof !96

land.rhs.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_d3_reprogram.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 728, i32 noundef 9, ptr noundef null) #13
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end38.i.i:                                     ; preds = %if.end.i213
  %phy_ctxt.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1, i32 40
  %146 = ptrtoint ptr %phy_ctxt.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %phy_ctxt.i.i, align 8
  %tobool40.not.i.i = icmp eq ptr %147, null
  br i1 %tobool40.not.i.i, label %do.end58.i.i, label %if.end74.i.i, !prof !97

do.end58.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 732, i32 noundef 9, ptr noundef null) #13
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end74.i.i:                                     ; preds = %if.end38.i.i
  %148 = call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %151, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !98
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i, label %if.end74.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end74.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end74.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end74.i.i.rcu_read_lock.exit.i.i_crit_edge
  %chanctx_conf.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 0, i32 9
  %152 = ptrtoint ptr %chanctx_conf.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %chanctx_conf.i.i, align 4
  %call80.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i.i)
  %tobool81.not.i.i = icmp eq i32 %call80.i.i, 0
  br i1 %tobool81.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end89.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end89.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call82.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i)
  %tobool83.not.i.i = icmp eq i32 %call82.i.i, 0
  br i1 %tobool83.not.i.i, label %land.lhs.true.i.i.do.end89.i.i_crit_edge, label %land.lhs.true84.i.i

land.lhs.true.i.i.do.end89.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89.i.i

land.lhs.true84.i.i:                              ; preds = %land.lhs.true.i.i
  %.b384385.i.i = load i1, ptr @iwl_mvm_d3_reprogram.__warned, align 1
  br i1 %.b384385.i.i, label %land.lhs.true84.i.i.do.end89.i.i_crit_edge, label %if.then86.i.i

land.lhs.true84.i.i.do.end89.i.i_crit_edge:       ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89.i.i

if.then86.i.i:                                    ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_d3_reprogram.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 736, ptr noundef nonnull @.str.3) #13
  br label %do.end89.i.i

do.end89.i.i:                                     ; preds = %if.then86.i.i, %land.lhs.true84.i.i.do.end89.i.i_crit_edge, %land.lhs.true.i.i.do.end89.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end89.i.i_crit_edge
  %tobool92.not.i.i = icmp eq ptr %153, null
  br i1 %tobool92.not.i.i, label %do.end110.i.i, label %if.end126.i.i, !prof !97

do.end110.i.i:                                    ; preds = %do.end89.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 737, i32 noundef 9, ptr noundef null) #13
  call fastcc void @rcu_read_unlock() #13
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end126.i.i:                                    ; preds = %do.end89.i.i
  %154 = call ptr @memcpy(ptr %chandef.i.i, ptr %153, i32 28)
  %rx_chains_static.i.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %153, i32 0, i32 2
  %155 = ptrtoint ptr %rx_chains_static.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %rx_chains_static.i.i, align 4
  %rx_chains_dynamic.i.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %153, i32 0, i32 3
  %157 = ptrtoint ptr %rx_chains_dynamic.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %rx_chains_dynamic.i.i, align 1
  %call.i388.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i388.i.i, label %if.end126.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i391.i.i

if.end126.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i391.i.i:                           ; preds = %if.end126.i.i
  %call1.i389.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i389.i.i)
  %tobool.not.i390.i.i = icmp eq i32 %call1.i389.i.i, 0
  br i1 %tobool.not.i390.i.i, label %land.lhs.true.i391.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i393.i.i

land.lhs.true.i391.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i391.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i393.i.i:                          ; preds = %land.lhs.true.i391.i.i
  %.b4.i392.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i392.i.i, label %land.lhs.true2.i393.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i394.i.i

land.lhs.true2.i393.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i393.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

if.then.i394.i.i:                                 ; preds = %land.lhs.true2.i393.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i394.i.i, %land.lhs.true2.i393.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i391.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end126.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  %159 = call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i395.i.i = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i.i.i395.i.i to ptr
  %preempt_count.i.i.i.i396.i.i = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i.i.i396.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i.i.i396.i.i, align 4
  %sub.i.i.i.i.i = add i32 %162, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i396.i.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %163 = ptrtoint ptr %phy_ctxt.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %phy_ctxt.i.i, align 8
  %call128.i.i = call i32 @iwl_mvm_phy_ctxt_add(ptr noundef %op_mode_specific, ptr noundef %164, ptr noundef nonnull %chandef.i.i, i8 noundef zeroext %156, i8 noundef zeroext %158) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i.i)
  %tobool129.not.i.i = icmp eq i32 %call128.i.i, 0
  br i1 %tobool129.not.i.i, label %if.end131.i.i, label %rcu_read_unlock.exit.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge

rcu_read_unlock.exit.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end131.i.i:                                    ; preds = %rcu_read_unlock.exit.i.i
  %uploaded.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1, i32 7
  %165 = ptrtoint ptr %uploaded.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %uploaded.i.i, align 4
  %assoc.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 0, i32 1, i32 10
  %166 = ptrtoint ptr %assoc.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %assoc.i.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool133.not.i.i = icmp eq i8 %167, 0
  br i1 %tobool133.not.i.i, label %do.end151.i.i, label %if.end167.i.i, !prof !97

do.end151.i.i:                                    ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 754, i32 noundef 9, ptr noundef null) #13
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end167.i.i:                                    ; preds = %if.end131.i.i
  %call168.i.i = call i32 @iwl_mvm_mac_ctxt_add(ptr noundef %op_mode_specific, ptr noundef nonnull %call35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i.i)
  %tobool169.not.i.i = icmp eq i32 %call168.i.i, 0
  br i1 %tobool169.not.i.i, label %if.end171.i.i, label %if.end167.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge

if.end167.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge: ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end171.i.i:                                    ; preds = %if.end167.i.i
  %168 = ptrtoint ptr %phy_ctxt.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %phy_ctxt.i.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %169, align 4
  %conv.i.i214 = zext i16 %171 to i32
  %color.i.i215 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %169, i32 0, i32 1
  %172 = ptrtoint ptr %color.i.i215 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %color.i.i215, align 2
  %conv174.i.i = zext i16 %173 to i32
  %shl175.i.i = shl nuw nsw i32 %conv174.i.i, 8
  %or.i.i216 = or i32 %shl175.i.i, %conv.i.i214
  %174 = call i32 @llvm.bswap.i32(i32 %or.i.i216) #13
  %175 = ptrtoint ptr %binding_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %binding_cmd.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.iwl_binding_cmd_v1, ptr %binding_cmd.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %action.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 16777216, ptr %action.i.i, align 4
  %177 = ptrtoint ptr %169 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %169, align 4
  %conv178.i.i = zext i16 %178 to i32
  %179 = ptrtoint ptr %color.i.i215 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %color.i.i215, align 2
  %conv182.i.i = zext i16 %180 to i32
  %shl183.i.i = shl nuw nsw i32 %conv182.i.i, 8
  %or184.i.i = or i32 %shl183.i.i, %conv178.i.i
  %181 = call i32 @llvm.bswap.i32(i32 %or184.i.i) #13
  %phy.i.i = getelementptr inbounds %struct.iwl_binding_cmd_v1, ptr %binding_cmd.i.i, i32 0, i32 3
  %182 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %phy.i.i, align 4
  %id185.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %183 = ptrtoint ptr %id185.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %id185.i.i, align 4
  %conv186.i.i = zext i16 %184 to i32
  %color188.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %185 = ptrtoint ptr %color188.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %color188.i.i, align 2
  %conv189.i.i = zext i16 %186 to i32
  %shl190.i.i = shl nuw nsw i32 %conv189.i.i, 8
  %or191.i.i = or i32 %shl190.i.i, %conv186.i.i
  %187 = call i32 @llvm.bswap.i32(i32 %or191.i.i) #13
  %macs.i.i = getelementptr inbounds %struct.iwl_binding_cmd_v1, ptr %binding_cmd.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %macs.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %macs.i.i, align 4
  %uglygep.i.i = getelementptr inbounds i8, ptr %binding_cmd.i.i, i32 12
  %189 = ptrtoint ptr %uglygep.i.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 8)
  store i64 -1, ptr %uglygep.i.i, align 4
  %190 = ptrtoint ptr %status.i1.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %status.i1.i, align 4
  %call195.i.i = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %op_mode_specific, i32 noundef 43, i16 noundef zeroext 24, ptr noundef nonnull %binding_cmd.i.i, ptr noundef nonnull %status.i1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i.i)
  %tobool196.not.i.i = icmp eq i32 %call195.i.i, 0
  br i1 %tobool196.not.i.i, label %if.end204.i.i, label %do.end201.i.i

do.end201.i.i:                                    ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %191 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %op_mode_specific, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %192, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %call195.i.i) #13
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end204.i.i:                                    ; preds = %if.end171.i.i
  %193 = ptrtoint ptr %status.i1.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %status.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool205.not.i.i = icmp eq i32 %194, 0
  br i1 %tobool205.not.i.i, label %if.end214.i.i, label %do.end210.i.i

do.end210.i.i:                                    ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %195 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %op_mode_specific, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %196, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %194) #13
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end214.i.i:                                    ; preds = %if.end204.i.i
  %call215.i.i = call i32 @iwl_mvm_sta_send_to_fw(ptr noundef %op_mode_specific, ptr noundef nonnull %52, i1 noundef zeroext false, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215.i.i)
  %tobool216.not.i.i = icmp eq i32 %call215.i.i, 0
  br i1 %tobool216.not.i.i, label %do.body219.i.i, label %if.end214.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge

if.end214.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge: ; preds = %if.end214.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.thread.i

do.body219.i.i:                                   ; preds = %if.end214.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %197 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ap_sta_id, align 8
  %idxprom249.i.i = zext i8 %198 to i32
  %arrayidx250.i.i = getelementptr %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 44, i32 %idxprom249.i.i
  %199 = ptrtoint ptr %arrayidx250.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %52, ptr %arrayidx250.i.i, align 4
  %call262.i.i = call i32 @iwl_mvm_mac_ctxt_changed(ptr noundef %op_mode_specific, ptr noundef nonnull %call35, i1 noundef zeroext false, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262.i.i)
  %tobool263.not.i.i = icmp eq i32 %call262.i.i, 0
  br i1 %tobool263.not.i.i, label %if.end265.i.i, label %do.body219.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge

do.body219.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge: ; preds = %do.body219.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.thread.i

if.end265.i.i:                                    ; preds = %do.body219.i.i
  %200 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %201, i32 0, i32 5, i32 7, i32 1
  %202 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %204 = ptrtoint ptr %phy_ctxt.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %phy_ctxt.i.i, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %205, align 4
  %conv269.i.i = zext i16 %207 to i32
  %color272.i.i = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %205, i32 0, i32 1
  %208 = ptrtoint ptr %color272.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %color272.i.i, align 2
  %conv273.i.i = zext i16 %209 to i32
  %shl274.i.i = shl nuw nsw i32 %conv273.i.i, 8
  %or275.i.i = or i32 %shl274.i.i, %conv269.i.i
  %210 = call i32 @llvm.bswap.i32(i32 %or275.i.i) #13
  %211 = ptrtoint ptr %quota_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %quota_cmd.i.i, align 4
  %quota277.i.i = getelementptr inbounds %struct.iwl_time_quota_data, ptr %quota_cmd.i.i, i32 0, i32 1
  %212 = ptrtoint ptr %quota277.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -2147483648, ptr %quota277.i.i, align 4
  %max_duration.i.i = getelementptr inbounds %struct.iwl_time_quota_data, ptr %quota_cmd.i.i, i32 0, i32 2
  %213 = ptrtoint ptr %max_duration.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 -2147483648, ptr %max_duration.i.i, align 4
  %214 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %216 = and i32 %215, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool.i.i.not.i399.i.i = icmp eq i32 %216, 0
  %arrayidx.i.i.i = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %quota_cmd.i.i, i32 0, i32 1
  %arrayidx3.i.i.i = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %quota_cmd.i.i, i32 1
  %retval.0.i.i.i = select i1 %tobool.i.i.not.i399.i.i, ptr %arrayidx3.i.i.i, ptr %arrayidx.i.i.i
  %217 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1, ptr %retval.0.i.i.i, align 4
  %218 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %220 = and i32 %219, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.i.i.not.i399.1.i.i = icmp eq i32 %220, 0
  %arrayidx.i.1.i.i = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %quota_cmd.i.i, i32 0, i32 2
  %arrayidx3.i.1.i.i = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %quota_cmd.i.i, i32 2
  %retval.0.i.1.i.i = select i1 %tobool.i.i.not.i399.1.i.i, ptr %arrayidx3.i.1.i.i, ptr %arrayidx.i.1.i.i
  %221 = ptrtoint ptr %retval.0.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %retval.0.i.1.i.i, align 4
  %222 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %224 = and i32 %223, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.i.i.not.i399.2.i.i = icmp eq i32 %224, 0
  %arrayidx.i.2.i.i = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %quota_cmd.i.i, i32 0, i32 3
  %arrayidx3.i.2.i.i = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %quota_cmd.i.i, i32 3
  %retval.0.i.2.i.i = select i1 %tobool.i.i.not.i399.2.i.i, ptr %arrayidx3.i.2.i.i, ptr %arrayidx.i.2.i.i
  %225 = ptrtoint ptr %retval.0.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 -1, ptr %retval.0.i.2.i.i, align 4
  %226 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %228 = and i32 %227, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.i.i.not.i402.i.i = icmp eq i32 %228, 0
  %conv288.i.i = select i1 %tobool.i.i.not.i402.i.i, i16 48, i16 64
  %call289.i.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %op_mode_specific, i32 noundef 44, i32 noundef 0, i16 noundef zeroext %conv288.i.i, ptr noundef nonnull %quota_cmd.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289.i.i)
  %tobool290.not.i.i = icmp eq i32 %call289.i.i, 0
  br i1 %tobool290.not.i.i, label %if.end265.i.i.if.end299.i.i_crit_edge, label %do.end295.i.i

if.end265.i.i.if.end299.i.i_crit_edge:            ; preds = %if.end265.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end299.i.i

do.end295.i.i:                                    ; preds = %if.end265.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %229 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %op_mode_specific, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %230, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %call289.i.i) #13
  br label %if.end299.i.i

if.end299.i.i:                                    ; preds = %do.end295.i.i, %if.end265.i.i.if.end299.i.i_crit_edge
  %nvm_data.i.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 587
  %231 = ptrtoint ptr %nvm_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %nvm_data.i.i.i, align 8
  %lar_enabled.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %232, i32 0, i32 24
  %233 = ptrtoint ptr %lar_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %lar_enabled.i.i.i, align 1, !range !94
  %235 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %fw, align 8
  %_capa.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %236, i32 0, i32 5, i32 8
  %237 = ptrtoint ptr %_capa.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %_capa.i.i.i.i, align 4
  %239 = and i32 %238, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool.i.i404.i.i = icmp ne i32 %239, 0
  %cfg.i.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 4
  %240 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cfg.i.i.i, align 4
  %nvm_type.i.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %241, i32 0, i32 9
  %242 = ptrtoint ptr %nvm_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %nvm_type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %243)
  %cmp.i.i.i = icmp eq i32 %243, 1
  br i1 %cmp.i.i.i, label %if.then.i406.i.i, label %iwl_mvm_is_lar_supported.exit.i.i

if.then.i406.i.i:                                 ; preds = %if.end299.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool.not.i405.i.i = icmp ne i8 %234, 0
  %spec.select.i.i.i = select i1 %tobool.not.i405.i.i, i1 %tobool.i.i404.i.i, i1 false
  br i1 %spec.select.i.i.i, label %if.then.i406.i.i.land.lhs.true302.i.i_crit_edge, label %if.then.i406.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge

if.then.i406.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge: ; preds = %if.then.i406.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.i

if.then.i406.i.i.land.lhs.true302.i.i_crit_edge:  ; preds = %if.then.i406.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true302.i.i

iwl_mvm_is_lar_supported.exit.i.i:                ; preds = %if.end299.i.i
  br i1 %tobool.i.i404.i.i, label %iwl_mvm_is_lar_supported.exit.i.i.land.lhs.true302.i.i_crit_edge, label %iwl_mvm_is_lar_supported.exit.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge

iwl_mvm_is_lar_supported.exit.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.i

iwl_mvm_is_lar_supported.exit.i.i.land.lhs.true302.i.i_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true302.i.i

land.lhs.true302.i.i:                             ; preds = %iwl_mvm_is_lar_supported.exit.i.i.land.lhs.true302.i.i_crit_edge, %if.then.i406.i.i.land.lhs.true302.i.i_crit_edge
  %call303.i.i = call i32 @iwl_mvm_init_fw_regd(ptr noundef %op_mode_specific) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303.i.i)
  %tobool304.not.i.i = icmp eq i32 %call303.i.i, 0
  br i1 %tobool304.not.i.i, label %land.lhs.true302.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge, label %do.end309.i.i

land.lhs.true302.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge: ; preds = %land.lhs.true302.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_d3_reprogram.exit.i

do.end309.i.i:                                    ; preds = %land.lhs.true302.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %244 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %op_mode_specific, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %245, i32 noundef 0, ptr noundef nonnull @.str.7) #13
  br label %iwl_mvm_d3_reprogram.exit.i

iwl_mvm_d3_reprogram.exit.thread.i:               ; preds = %do.body219.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge, %if.end214.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge, %do.end210.i.i, %do.end201.i.i, %if.end167.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge, %do.end151.i.i, %rcu_read_unlock.exit.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge, %do.end110.i.i, %do.end58.i.i, %if.then.i.i, %land.rhs.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %land.rhs.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge ], [ %call262.i.i, %do.body219.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge ], [ %call215.i.i, %if.end214.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge ], [ %call168.i.i, %if.end167.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge ], [ %call128.i.i, %rcu_read_unlock.exit.i.i.iwl_mvm_d3_reprogram.exit.thread.i_crit_edge ], [ -22, %if.then.i.i ], [ -5, %do.end210.i.i ], [ %call195.i.i, %do.end201.i.i ], [ -22, %do.end151.i.i ], [ -22, %do.end110.i.i ], [ -22, %do.end58.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i1.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %quota_cmd.i.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %binding_cmd.i.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i.i) #13
  br label %cleanup.thread

iwl_mvm_d3_reprogram.exit.i:                      ; preds = %do.end309.i.i, %land.lhs.true302.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge, %iwl_mvm_is_lar_supported.exit.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge, %if.then.i406.i.i.iwl_mvm_d3_reprogram.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i1.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %quota_cmd.i.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %binding_cmd.i.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i.i) #13
  br label %if.end8.i217

if.end8.i217:                                     ; preds = %iwl_mvm_d3_reprogram.exit.i, %if.end71.if.end8.i217_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #13
  %246 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %fw, align 8
  %_capa.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %247, i32 0, i32 5, i32 8
  %248 = ptrtoint ptr %_capa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %_capa.i.i.i, align 4
  %250 = and i32 %249, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.i.not.i.i = icmp eq i32 %250, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key_data.i.i) #13
  %251 = ptrtoint ptr %key_data.i.i to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 0, ptr %key_data.i.i, align 8
  br i1 %tobool.i.not.i.i, label %if.then.i3.i, label %if.end8.i217.if.end4.i.i_crit_edge

if.end8.i217.if.end4.i.i_crit_edge:               ; preds = %if.end8.i217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i

if.then.i3.i:                                     ; preds = %if.end8.i217
  %hw.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %252 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_iter_keys(ptr noundef %253, ptr noundef nonnull %call35, ptr noundef nonnull @iwl_mvm_wowlan_program_keys, ptr noundef nonnull %key_data.i.i) #13
  %254 = ptrtoint ptr %key_data.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %key_data.i.i, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool2.not.i.i = icmp eq i8 %255, 0
  br i1 %tobool2.not.i.i, label %if.then.i3.i.if.end4.i.i_crit_edge, label %if.then.i3.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge

if.then.i3.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge: ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_wowlan_config_key_params.exit.thread.i

if.then.i3.i.if.end4.i.i_crit_edge:               ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i3.i.if.end4.i.i_crit_edge, %if.end8.i217.if.end4.i.i_crit_edge
  %256 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %fw, align 8
  %call1.i.i4.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %257, i8 noundef zeroext 1, i8 noundef zeroext -30, i8 noundef zeroext 99) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %call1.i.i4.i)
  %cmp.i.i5.i = icmp eq i8 %call1.i.i4.i, 5
  br i1 %cmp.i.i5.i, label %if.then.i.i7.i, label %if.else19.i.i.i

if.then.i.i7.i:                                   ; preds = %if.end4.i.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %data.i.i.i) #13
  %258 = getelementptr inbounds i8, ptr %data.i.i.i, i32 4
  %259 = call ptr @memset(ptr %258, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %260 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %260, i32 noundef 3264, i32 noundef 200) #16
  %261 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call7.i.i.i.i, ptr %data.i.i.i, align 4
  %tobool.not.i.i6.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i6.i, label %cleanup.thread.i.i.i, label %if.end.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then.i.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %data.i.i.i) #13
  br label %iwl_mvm_wowlan_config_key_params.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.then.i.i7.i
  %262 = call ptr @memset(ptr %call7.i.i.i.i, i32 255, i32 200)
  %263 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %ap_sta_id, align 8
  %conv10.i.i.i = zext i8 %264 to i32
  %265 = shl nuw i32 %conv10.i.i.i, 24
  %sta_id.i.i.i = getelementptr inbounds %struct.iwl_wowlan_rsc_tsc_params_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %266 = ptrtoint ptr %sta_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %sta_id.i.i.i, align 8
  %hw.i.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %267 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hw.i.i.i, align 4
  call void @ieee80211_iter_keys(ptr noundef %268, ptr noundef nonnull %call35, ptr noundef nonnull @iwl_mvm_wowlan_get_rsc_v5_data, ptr noundef nonnull %data.i.i.i) #13
  %269 = ptrtoint ptr %258 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %258, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool12.not.i.i.i = icmp eq i8 %270, 0
  br i1 %tobool12.not.i.i.i, label %if.end.i.i.i.cleanup.i.i.i_crit_edge, label %if.then13.i.i.i

if.end.i.i.i.cleanup.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %271 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %data.i.i.i, align 4
  %call15.i.i.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %op_mode_specific, i32 noundef 226, i32 noundef 1, i16 noundef zeroext 200, ptr noundef %272) #13
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then13.i.i.i, %if.end.i.i.i.cleanup.i.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ %call15.i.i.i, %if.then13.i.i.i ], [ 0, %if.end.i.i.i.cleanup.i.i.i_crit_edge ]
  %273 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %data.i.i.i, align 4
  call void @kfree(ptr noundef %274) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %data.i.i.i) #13
  br label %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i

if.else19.i.i.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call1.i.i4.i)
  %cmp20.i.i.i = icmp eq i8 %call1.i.i4.i, 4
  %275 = zext i8 %call1.i.i4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call1.i.i4.i, label %land.end.i.i.i [
    i8 99, label %if.else19.i.i.i.if.then27.i.i.i_crit_edge
    i8 4, label %if.else19.i.i.i.if.then27.i.i.i_crit_edge254
    i8 2, label %if.else19.i.i.i.if.then27.i.i.i_crit_edge255
  ]

if.else19.i.i.i.if.then27.i.i.i_crit_edge255:     ; preds = %if.else19.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27.i.i.i

if.else19.i.i.i.if.then27.i.i.i_crit_edge254:     ; preds = %if.else19.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27.i.i.i

if.else19.i.i.i.if.then27.i.i.i_crit_edge:        ; preds = %if.else19.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27.i.i.i

if.then27.i.i.i:                                  ; preds = %if.else19.i.i.i.if.then27.i.i.i_crit_edge, %if.else19.i.i.i.if.then27.i.i.i_crit_edge254, %if.else19.i.i.i.if.then27.i.i.i_crit_edge255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data28.i.i.i) #13
  %276 = ptrtoint ptr %data28.i.i.i to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 0, ptr %data28.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %277 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %277, i32 noundef 3520, i32 noundef 268) #16
  %278 = ptrtoint ptr %data28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %call7.i.i.i.i.i, ptr %data28.i.i.i, align 8
  %tobool31.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool31.not.i.i.i, label %cleanup52.thread.i.i.i, label %if.end33.i.i.i

cleanup52.thread.i.i.i:                           ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data28.i.i.i) #13
  br label %iwl_mvm_wowlan_config_key_params.exit.thread.i

if.end33.i.i.i:                                   ; preds = %if.then27.i.i.i
  br i1 %cmp20.i.i.i, label %if.then36.i.i.i, label %if.end33.i.i.i.if.end42.i.i.i_crit_edge

if.end33.i.i.i.if.end42.i.i.i_crit_edge:          ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i.i.i

if.then36.i.i.i:                                  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %279 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %ap_sta_id, align 8
  %conv38.i.i.i = zext i8 %280 to i32
  %281 = shl nuw i32 %conv38.i.i.i, 24
  %sta_id40.i.i.i = getelementptr inbounds %struct.iwl_wowlan_rsc_tsc_params_cmd_v4, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %282 = ptrtoint ptr %sta_id40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %sta_id40.i.i.i, align 8
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then36.i.i.i, %if.end33.i.i.i.if.end42.i.i.i_crit_edge
  %size.0.i.i.i = phi i16 [ 268, %if.then36.i.i.i ], [ 264, %if.end33.i.i.i.if.end42.i.i.i_crit_edge ]
  %hw43.i.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %283 = ptrtoint ptr %hw43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %hw43.i.i.i, align 4
  call void @ieee80211_iter_keys(ptr noundef %284, ptr noundef nonnull %call35, ptr noundef nonnull @iwl_mvm_wowlan_get_rsc_tsc_data, ptr noundef nonnull %data28.i.i.i) #13
  %have_rsc_tsc.i.i.i = getelementptr inbounds %struct.wowlan_key_rsc_tsc_data, ptr %data28.i.i.i, i32 0, i32 1
  %285 = ptrtoint ptr %have_rsc_tsc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %have_rsc_tsc.i.i.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool44.not.i.i.i = icmp eq i8 %286, 0
  br i1 %tobool44.not.i.i.i, label %if.end42.i.i.i.cleanup52.i.i.i_crit_edge, label %if.then45.i.i.i

if.end42.i.i.i.cleanup52.i.i.i_crit_edge:         ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup52.i.i.i

if.then45.i.i.i:                                  ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %287 = ptrtoint ptr %data28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %data28.i.i.i, align 8
  %call48.i.i.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %op_mode_specific, i32 noundef 226, i32 noundef 1, i16 noundef zeroext %size.0.i.i.i, ptr noundef %288) #13
  br label %cleanup52.i.i.i

cleanup52.i.i.i:                                  ; preds = %if.then45.i.i.i, %if.end42.i.i.i.cleanup52.i.i.i_crit_edge
  %ret.2.i.i.i = phi i32 [ %call48.i.i.i, %if.then45.i.i.i ], [ 0, %if.end42.i.i.i.cleanup52.i.i.i_crit_edge ]
  %289 = ptrtoint ptr %data28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %data28.i.i.i, align 8
  call void @kfree(ptr noundef %290) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data28.i.i.i) #13
  br label %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i

land.end.i.i.i:                                   ; preds = %if.else19.i.i.i
  %.b115.i.i.i = load i1, ptr @iwl_mvm_wowlan_config_rsc_tsc.__already_done, align 1
  br i1 %.b115.i.i.i, label %land.end.i.i.i.if.end8.i.i_crit_edge, label %if.then63.i.i.i, !prof !96

land.end.i.i.i.if.end8.i.i_crit_edge:             ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then63.i.i.i:                                  ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_wowlan_config_rsc_tsc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 516, i32 noundef 9, ptr noundef null) #13
  br label %if.end8.i.i

iwl_mvm_wowlan_config_rsc_tsc.exit.i.i:           ; preds = %cleanup52.i.i.i, %cleanup.i.i.i
  %retval.2.i.i.i = phi i32 [ %ret.0.i.i.i, %cleanup.i.i.i ], [ %ret.2.i.i.i, %cleanup52.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %retval.2.i.i.i, 0
  br i1 %tobool6.not.i.i, label %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i.if.end8.i.i_crit_edge, label %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge

iwl_mvm_wowlan_config_rsc_tsc.exit.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge: ; preds = %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_wowlan_config_key_params.exit.thread.i

iwl_mvm_wowlan_config_rsc_tsc.exit.i.i.if.end8.i.i_crit_edge: ; preds = %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i.if.end8.i.i_crit_edge, %if.then63.i.i.i, %land.end.i.i.i.if.end8.i.i_crit_edge
  %291 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %fw, align 8
  %_api.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %292, i32 0, i32 5, i32 7
  %293 = ptrtoint ptr %_api.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %_api.i.i.i, align 4
  %295 = and i32 %294, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool.i235.not.i.i = icmp eq i32 %295, 0
  br i1 %tobool.i235.not.i.i, label %if.then12.i.i, label %if.end8.i.i.if.end74.i8.i_crit_edge

if.end8.i.i.if.end74.i8.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i8.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  %call14.i.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %292, i8 noundef zeroext 1, i8 noundef zeroext -29, i8 noundef zeroext 99) #13
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %tkip_data.i.i) #13
  %296 = call ptr @memset(ptr %tkip_data.i.i, i32 0, i32 81)
  %297 = zext i8 %call14.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %call14.i.i, label %land.end.i.i [
    i8 2, label %if.then16.i.i
    i8 1, label %if.then12.i.i.if.end61.i.i_crit_edge
    i8 99, label %if.then12.i.i.if.end61.i.i_crit_edge256
  ]

if.then12.i.i.if.end61.i.i_crit_edge256:          ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i.i

if.then12.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i.i

if.then16.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %298 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %ap_sta_id, align 8
  %conv17.i.i = zext i8 %299 to i32
  %300 = shl nuw i32 %conv17.i.i, 24
  %sta_id.i.i = getelementptr inbounds %struct.iwl_wowlan_tkip_params_cmd, ptr %tkip_data.i.i, i32 0, i32 5
  %301 = ptrtoint ptr %sta_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 %300, ptr %sta_id.i.i, align 1
  br label %if.end61.i.i

land.end.i.i:                                     ; preds = %if.then12.i.i
  %.b234.i.i = load i1, ptr @iwl_mvm_wowlan_config_key_params.__already_done, align 1
  br i1 %.b234.i.i, label %land.end.i.i.cleanup.thread.i.i_crit_edge, label %if.then30.i.i, !prof !96

land.end.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

if.then30.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_wowlan_config_key_params.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1033, i32 noundef 9, ptr noundef null) #13
  br label %cleanup.thread.i.i

if.end61.i.i:                                     ; preds = %if.then16.i.i, %if.then12.i.i.if.end61.i.i_crit_edge, %if.then12.i.i.if.end61.i.i_crit_edge256
  %size.0.i.i = phi i16 [ 80, %if.then16.i.i ], [ 74, %if.then12.i.i.if.end61.i.i_crit_edge ], [ 74, %if.then12.i.i.if.end61.i.i_crit_edge256 ]
  %hw62.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %302 = ptrtoint ptr %hw62.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %hw62.i.i, align 4
  call void @ieee80211_iter_keys(ptr noundef %303, ptr noundef nonnull %call35, ptr noundef nonnull @iwl_mvm_wowlan_get_tkip_data, ptr noundef nonnull %tkip_data.i.i) #13
  %have_tkip_keys.i.i = getelementptr inbounds %struct.wowlan_key_tkip_data, ptr %tkip_data.i.i, i32 0, i32 1
  %304 = ptrtoint ptr %have_tkip_keys.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %have_tkip_keys.i.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool63.not.i.i = icmp eq i8 %305, 0
  br i1 %tobool63.not.i.i, label %if.end61.i.i.cleanup.i.i_crit_edge, label %if.then64.i.i

if.end61.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.then64.i.i:                                    ; preds = %if.end61.i.i
  %call67.i.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %op_mode_specific, i32 noundef 227, i32 noundef 1, i16 noundef zeroext %size.0.i.i, ptr noundef nonnull %tkip_data.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i.i)
  %tobool68.not.i.i = icmp eq i32 %call67.i.i, 0
  br i1 %tobool68.not.i.i, label %if.then64.i.i.cleanup.i.i_crit_edge, label %if.then64.i.i.cleanup.thread.i.i_crit_edge

if.then64.i.i.cleanup.thread.i.i_crit_edge:       ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i

if.then64.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %if.then64.i.i.cleanup.thread.i.i_crit_edge, %if.then30.i.i, %land.end.i.i.cleanup.thread.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ %call67.i.i, %if.then64.i.i.cleanup.thread.i.i_crit_edge ], [ -22, %land.end.i.i.cleanup.thread.i.i_crit_edge ], [ -22, %if.then30.i.i ]
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %tkip_data.i.i) #13
  br label %iwl_mvm_wowlan_config_key_params.exit.thread.i

cleanup.i.i:                                      ; preds = %if.then64.i.i.cleanup.i.i_crit_edge, %if.end61.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %tkip_data.i.i) #13
  br label %if.end74.i8.i

if.end74.i8.i:                                    ; preds = %cleanup.i.i, %if.end8.i.i.if.end74.i8.i_crit_edge
  %rekey_data.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1, i32 42
  %valid.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1, i32 53
  %306 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %valid.i.i, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool75.not.i.i = icmp eq i8 %307, 0
  br i1 %tobool75.not.i.i, label %if.end74.i8.i.if.end13.i_crit_edge, label %if.then76.i.i

if.end74.i8.i.if.end13.i_crit_edge:               ; preds = %if.end74.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then76.i.i:                                    ; preds = %if.end74.i8.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %kek_kck_cmd.i.i) #13
  %308 = call ptr @memset(ptr %kek_kck_cmd.i.i, i32 0, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gtk_type_data.i.i) #13
  %309 = ptrtoint ptr %gtk_type_data.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %kek_kck_cmd.i.i, ptr %gtk_type_data.i.i, align 4
  %310 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %fw, align 8
  %call79.i.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %311, i8 noundef zeroext 1, i8 noundef zeroext -28, i8 noundef zeroext 99) #13
  %312 = zext i8 %call79.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %312, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %call79.i.i, label %cleanup178.thread.i.i [
    i8 2, label %if.then76.i.i.if.end127.i.i_crit_edge
    i8 3, label %if.then76.i.i.if.end127.i.i_crit_edge257
    i8 4, label %if.then76.i.i.if.end127.i.i_crit_edge258
    i8 99, label %if.then76.i.i.if.end127.i.i_crit_edge259
  ]

if.then76.i.i.if.end127.i.i_crit_edge259:         ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i.i

if.then76.i.i.if.end127.i.i_crit_edge258:         ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i.i

if.then76.i.i.if.end127.i.i_crit_edge257:         ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i.i

if.then76.i.i.if.end127.i.i_crit_edge:            ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i.i

cleanup178.thread.i.i:                            ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1065, i32 noundef 9, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gtk_type_data.i.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %kek_kck_cmd.i.i) #13
  br label %iwl_mvm_wowlan_config_key_params.exit.thread.i

if.end127.i.i:                                    ; preds = %if.then76.i.i.if.end127.i.i_crit_edge, %if.then76.i.i.if.end127.i.i_crit_edge257, %if.then76.i.i.if.end127.i.i_crit_edge258, %if.then76.i.i.if.end127.i.i_crit_edge259
  %hw128.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %313 = ptrtoint ptr %hw128.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %hw128.i.i, align 4
  call void @ieee80211_iter_keys(ptr noundef %314, ptr noundef nonnull %call35, ptr noundef nonnull @iwl_mvm_wowlan_gtk_type_iter, ptr noundef nonnull %gtk_type_data.i.i) #13
  %kck.i.i = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %kek_kck_cmd.i.i, i32 0, i32 1
  %kck_len.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 24, i32 3
  %315 = ptrtoint ptr %kck_len.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %kck_len.i.i, align 4
  %317 = call ptr @memcpy(ptr %kck.i.i, ptr %rekey_data.i.i, i32 %316)
  %conv135.i.i = trunc i32 %316 to i16
  %318 = call i16 @llvm.bswap.i16(i16 %conv135.i.i) #13
  %kck_len136.i.i = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %kek_kck_cmd.i.i, i32 0, i32 3
  %319 = ptrtoint ptr %kck_len136.i.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %318, ptr %kck_len136.i.i, align 4
  %kek.i.i = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %kek_kck_cmd.i.i, i32 0, i32 2
  %kek139.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1, i32 44, i32 2, i32 1, i32 1
  %kek_len.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 24, i32 2
  %320 = ptrtoint ptr %kek_len.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %kek_len.i.i, align 8
  %322 = call ptr @memcpy(ptr %kek.i.i, ptr %kek139.i.i, i32 %321)
  %conv144.i.i = trunc i32 %321 to i16
  %323 = call i16 @llvm.bswap.i16(i16 %conv144.i.i) #13
  %kek_len145.i.i = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %kek_kck_cmd.i.i, i32 0, i32 4
  %324 = ptrtoint ptr %kek_len145.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %323, ptr %kek_len145.i.i, align 2
  %replay_ctr.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1, i32 50
  %325 = ptrtoint ptr %replay_ctr.i.i to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %replay_ctr.i.i, align 8
  %replay_ctr147.i.i = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %kek_kck_cmd.i.i, i32 0, i32 5
  %327 = ptrtoint ptr %replay_ctr147.i.i to i32
  call void @__asan_storeN_noabort(i32 %327, i32 8)
  store i64 %326, ptr %replay_ctr147.i.i, align 4
  %akm.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call35, i32 1, i32 1, i32 46
  %328 = ptrtoint ptr %akm.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %akm.i.i, align 8
  %330 = call i32 @llvm.bswap.i32(i32 %329) #13
  %akm149.i.i = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %kek_kck_cmd.i.i, i32 0, i32 6
  %331 = ptrtoint ptr %akm149.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %akm149.i.i, align 4
  %332 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %ap_sta_id, align 8
  %conv151.i.i = zext i8 %333 to i32
  %334 = shl nuw i32 %conv151.i.i, 24
  %335 = ptrtoint ptr %kek_kck_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %kek_kck_cmd.i.i, align 4
  %336 = zext i8 %call79.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %336, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %call79.i.i, label %if.else162.i.i [
    i8 4, label %if.end127.i.i.cleanup178.i.i_crit_edge
    i8 3, label %if.end127.i.i.if.end163.i.i_crit_edge
  ]

if.end127.i.i.if.end163.i.i_crit_edge:            ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163.i.i

if.end127.i.i.cleanup178.i.i_crit_edge:           ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup178.i.i

if.else162.i.i:                                   ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163.i.i

if.end163.i.i:                                    ; preds = %if.else162.i.i, %if.end127.i.i.if.end163.i.i_crit_edge
  %cmd_size.0.i.i = phi i16 [ 76, %if.else162.i.i ], [ 92, %if.end127.i.i.if.end163.i.i_crit_edge ]
  br label %cleanup178.i.i

cleanup178.i.i:                                   ; preds = %if.end163.i.i, %if.end127.i.i.cleanup178.i.i_crit_edge
  %cmd_size.1.i.i = phi i16 [ %cmd_size.0.i.i, %if.end163.i.i ], [ 96, %if.end127.i.i.cleanup178.i.i_crit_edge ]
  %_kek_kck_cmd.0.i.i = phi ptr [ %kck.i.i, %if.end163.i.i ], [ %kek_kck_cmd.i.i, %if.end127.i.i.cleanup178.i.i_crit_edge ]
  %337 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %op_mode_specific, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %338, i32 noundef 1024, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_wowlan_config_key_params, ptr noundef nonnull @.str.11, i32 noundef %329) #13
  %call174.i.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %op_mode_specific, i32 noundef 228, i32 noundef 1, i16 noundef zeroext %cmd_size.1.i.i, ptr noundef %_kek_kck_cmd.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i.i)
  %tobool175.not.i.i = icmp eq i32 %call174.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gtk_type_data.i.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %kek_kck_cmd.i.i) #13
  br i1 %tobool175.not.i.i, label %cleanup178.i.i.if.end13.i_crit_edge, label %cleanup178.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge

cleanup178.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge: ; preds = %cleanup178.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_wowlan_config_key_params.exit.thread.i

cleanup178.i.i.if.end13.i_crit_edge:              ; preds = %cleanup178.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

iwl_mvm_wowlan_config_key_params.exit.thread.i:   ; preds = %cleanup178.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge, %cleanup178.thread.i.i, %cleanup.thread.i.i, %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge, %cleanup52.thread.i.i.i, %cleanup.thread.i.i.i, %if.then.i3.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge
  %retval.3.i.ph.i = phi i32 [ -12, %cleanup52.thread.i.i.i ], [ -12, %cleanup.thread.i.i.i ], [ -22, %cleanup178.thread.i.i ], [ %retval.0.ph.i.i, %cleanup.thread.i.i ], [ %retval.2.i.i.i, %iwl_mvm_wowlan_config_rsc_tsc.exit.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge ], [ -5, %if.then.i3.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge ], [ %call174.i.i, %cleanup178.i.i.iwl_mvm_wowlan_config_key_params.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key_data.i.i) #13
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  br label %cleanup.thread

if.end13.i:                                       ; preds = %cleanup178.i.i.if.end13.i_crit_edge, %if.end74.i8.i.if.end13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key_data.i.i) #13
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call14.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %op_mode_specific, i32 noundef 225, i32 noundef 0, i16 noundef zeroext 28, ptr noundef nonnull %wowlan_config_cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i218, label %if.end13.i.cleanup.thread_crit_edge

if.end13.i.cleanup.thread_crit_edge:              ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end17.i218:                                    ; preds = %if.end13.i
  %339 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %fw, align 8
  %arrayidx.i.i9.i = getelementptr %struct.iwl_fw, ptr %340, i32 0, i32 5, i32 7, i32 1
  %341 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load volatile i32, ptr %arrayidx.i.i9.i, align 4
  %343 = and i32 %342, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool.i10.not.i = icmp eq i32 %343, 0
  br i1 %tobool.i10.not.i, label %if.else.i224, label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i218
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i201) #13
  %344 = call ptr @memset(ptr %cmd.i.i201, i32 0, i32 36)
  %345 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i201, i32 0, i32 5
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 224, ptr %345, align 4
  %347 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i201, i32 0, i32 7
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 1, ptr %347, align 4
  %call1.i.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %340, i8 noundef zeroext 1, i8 noundef zeroext -32, i8 noundef zeroext 99) #13
  %349 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i.i219 = icmp eq i32 %350, 0
  br i1 %tobool.not.i.i219, label %if.then21.i.iwl_mvm_send_patterns.exit.i_crit_edge, label %if.end.i.i221

if.then21.i.iwl_mvm_send_patterns.exit.i_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_send_patterns.exit.i

if.end.i.i221:                                    ; preds = %if.then21.i
  %351 = trunc i32 %350 to i16
  %352 = mul i16 %351, 152
  %conv3.i.i = or i16 %352, 4
  %len.i.i220 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i201, i32 0, i32 6
  %353 = ptrtoint ptr %len.i.i220 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %conv3.i.i, ptr %len.i.i220, align 4
  %conv6.i.i = zext i16 %conv3.i.i to i32
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i.i, i32 noundef 3520) #17
  %tobool8.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool8.not.i.i, label %if.end.i.i221.iwl_mvm_send_patterns.exit.i_crit_edge, label %if.end10.i.i

if.end.i.i221.iwl_mvm_send_patterns.exit.i_crit_edge: ; preds = %if.end.i.i221
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_send_patterns.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i221
  %354 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %n_patterns.i, align 4
  %conv12.i.i = trunc i32 %355 to i8
  %356 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %conv12.i.i, ptr %call9.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call1.i.i)
  %cmp.i.i222 = icmp ugt i8 %call1.i.i, 2
  br i1 %cmp.i.i222, label %if.then15.i.i, label %if.end10.i.i.if.end16.i.i_crit_edge

if.end10.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %357 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %ap_sta_id, align 8
  %sta_id.i14.i = getelementptr inbounds %struct.iwl_wowlan_patterns_cmd, ptr %call9.i.i.i.i, i32 0, i32 1
  %359 = ptrtoint ptr %sta_id.i14.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %358, ptr %sta_id.i14.i, align 1
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then15.i.i, %if.end10.i.i.if.end16.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %cmp1886.i.i = icmp sgt i32 %355, 0
  br i1 %cmp1886.i.i, label %for.body.lr.ph.i.i, label %if.end16.i.i.for.end.i.i_crit_edge

if.end16.i.i.for.end.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end16.i.i
  %patterns.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 7
  %360 = ptrtoint ptr %patterns.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %patterns.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.087.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pattern_len.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %361, i32 %i.087.i.i, i32 2
  %362 = ptrtoint ptr %pattern_len.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %pattern_len.i.i, align 4
  %sub.i.i223 = add i32 %363, 7
  %div.i.i = sdiv i32 %sub.i.i223, 8
  %arrayidx23.i.i = getelementptr %struct.iwl_wowlan_patterns_cmd, ptr %call9.i.i.i.i, i32 0, i32 3, i32 %i.087.i.i
  %364 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 0, ptr %arrayidx23.i.i, align 4
  %u.i.i = getelementptr %struct.iwl_wowlan_patterns_cmd, ptr %call9.i.i.i.i, i32 0, i32 3, i32 %i.087.i.i, i32 2
  %arrayidx27.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %361, i32 %i.087.i.i
  %365 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx27.i.i, align 4
  %367 = call ptr @memcpy(ptr %u.i.i, ptr %366, i32 %div.i.i)
  %pattern.i.i = getelementptr inbounds %struct.iwl_wowlan_pattern_v1, ptr %u.i.i, i32 0, i32 1
  %pattern34.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %361, i32 %i.087.i.i, i32 1
  %368 = ptrtoint ptr %pattern34.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %pattern34.i.i, align 4
  %370 = load i32, ptr %pattern_len.i.i, align 4
  %371 = call ptr @memcpy(ptr %pattern.i.i, ptr %369, i32 %370)
  %conv38.i.i = trunc i32 %div.i.i to i8
  %mask_size.i.i = getelementptr inbounds %struct.iwl_wowlan_pattern_v1, ptr %u.i.i, i32 0, i32 2
  %372 = ptrtoint ptr %mask_size.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %conv38.i.i, ptr %mask_size.i.i, align 8
  %373 = load i32, ptr %pattern_len.i.i, align 4
  %conv45.i.i = trunc i32 %373 to i8
  %pattern_size.i.i = getelementptr inbounds %struct.iwl_wowlan_pattern_v1, ptr %u.i.i, i32 0, i32 3
  %374 = ptrtoint ptr %pattern_size.i.i to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %conv45.i.i, ptr %pattern_size.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.087.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %355
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end16.i.i.for.end.i.i_crit_edge
  %375 = ptrtoint ptr %cmd.i.i201 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call9.i.i.i.i, ptr %cmd.i.i201, align 4
  %call50.i.i = call i32 @iwl_mvm_send_cmd(ptr noundef %op_mode_specific, ptr noundef nonnull %cmd.i.i201) #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #13
  br label %iwl_mvm_send_patterns.exit.i

iwl_mvm_send_patterns.exit.i:                     ; preds = %for.end.i.i, %if.end.i.i221.iwl_mvm_send_patterns.exit.i_crit_edge, %if.then21.i.iwl_mvm_send_patterns.exit.i_crit_edge
  %retval.0.i15.i = phi i32 [ %call50.i.i, %for.end.i.i ], [ 0, %if.then21.i.iwl_mvm_send_patterns.exit.i_crit_edge ], [ -12, %if.end.i.i221.iwl_mvm_send_patterns.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i201) #13
  br label %if.end24.i

if.else.i224:                                     ; preds = %if.end17.i218
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i17.i) #13
  %376 = getelementptr inbounds i8, ptr %cmd.i17.i, i32 4
  %377 = call ptr @memset(ptr %376, i32 0, i32 32)
  %378 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i17.i, i32 0, i32 5
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 224, ptr %378, align 4
  %380 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i17.i, i32 0, i32 7
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 1, ptr %380, align 4
  %382 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %tobool.not.i19.i = icmp eq i32 %383, 0
  br i1 %tobool.not.i19.i, label %if.else.i224.iwl_mvm_send_patterns_v1.exit.i_crit_edge, label %if.end.i24.i

if.else.i224.iwl_mvm_send_patterns_v1.exit.i_crit_edge: ; preds = %if.else.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_send_patterns_v1.exit.i

if.end.i24.i:                                     ; preds = %if.else.i224
  %384 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %383, i32 148) #13
  %385 = extractvalue { i32, i1 } %384, 1
  %386 = extractvalue { i32, i1 } %384, 0
  %spec.select.i.i20.i = call i32 @llvm.uadd.sat.i32(i32 %386, i32 4) #13
  %retval.0.i.i21.i = select i1 %385, i32 -1, i32 %spec.select.i.i20.i
  %conv.i22.i = trunc i32 %retval.0.i.i21.i to i16
  %len.i23.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i17.i, i32 0, i32 6
  %387 = ptrtoint ptr %len.i23.i to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 %conv.i22.i, ptr %len.i23.i, align 4
  %conv4.i.i = and i32 %retval.0.i.i21.i, 65535
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv4.i.i, i32 noundef 3264) #17
  %tobool6.not.i32.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool6.not.i32.i, label %if.end.i24.i.iwl_mvm_send_patterns_v1.exit.i_crit_edge, label %if.end8.i33.i

if.end.i24.i.iwl_mvm_send_patterns_v1.exit.i_crit_edge: ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_send_patterns_v1.exit.i

if.end8.i33.i:                                    ; preds = %if.end.i24.i
  %388 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %n_patterns.i, align 4
  %390 = call i32 @llvm.bswap.i32(i32 %389) #13
  %391 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %cmp70.i.i = icmp sgt i32 %389, 0
  br i1 %cmp70.i.i, label %for.body.lr.ph.i35.i, label %if.end8.i33.i.for.end.i45.i_crit_edge

if.end8.i33.i.for.end.i45.i_crit_edge:            ; preds = %if.end8.i33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i45.i

for.body.lr.ph.i35.i:                             ; preds = %if.end8.i33.i
  %patterns.i34.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 7
  %392 = ptrtoint ptr %patterns.i34.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %patterns.i34.i, align 4
  %394 = load ptr, ptr %patterns.i34.i, align 4
  %395 = load ptr, ptr %patterns.i34.i, align 4
  %396 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %n_patterns.i, align 4
  br label %for.body.i44.i

for.body.i44.i:                                   ; preds = %for.body.i44.i.for.body.i44.i_crit_edge, %for.body.lr.ph.i35.i
  %i.071.i.i = phi i32 [ 0, %for.body.lr.ph.i35.i ], [ %inc.i42.i, %for.body.i44.i.for.body.i44.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %393, i32 %i.071.i.i
  %pattern_len.i36.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %393, i32 %i.071.i.i, i32 2
  %398 = ptrtoint ptr %pattern_len.i36.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %pattern_len.i36.i, align 4
  %sub.i37.i = add i32 %399, 7
  %div.i38.i = sdiv i32 %sub.i37.i, 8
  %arrayidx15.i.i = getelementptr %struct.iwl_wowlan_patterns_cmd_v1, ptr %call9.i.i.i, i32 0, i32 1, i32 %i.071.i.i
  %400 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %arrayidx13.i.i, align 4
  %402 = call ptr @memcpy(ptr %arrayidx15.i.i, ptr %401, i32 %div.i38.i)
  %pattern.i39.i = getelementptr %struct.iwl_wowlan_patterns_cmd_v1, ptr %call9.i.i.i, i32 0, i32 1, i32 %i.071.i.i, i32 1
  %pattern23.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %394, i32 %i.071.i.i, i32 1
  %403 = ptrtoint ptr %pattern23.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %pattern23.i.i, align 4
  %pattern_len26.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %394, i32 %i.071.i.i, i32 2
  %405 = ptrtoint ptr %pattern_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %pattern_len26.i.i, align 4
  %407 = call ptr @memcpy(ptr %pattern.i39.i, ptr %404, i32 %406)
  %conv27.i.i = trunc i32 %div.i38.i to i8
  %mask_size.i40.i = getelementptr %struct.iwl_wowlan_patterns_cmd_v1, ptr %call9.i.i.i, i32 0, i32 1, i32 %i.071.i.i, i32 2
  %408 = ptrtoint ptr %mask_size.i40.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %conv27.i.i, ptr %mask_size.i40.i, align 4
  %pattern_len32.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %395, i32 %i.071.i.i, i32 2
  %409 = ptrtoint ptr %pattern_len32.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %pattern_len32.i.i, align 4
  %conv33.i.i = trunc i32 %410 to i8
  %pattern_size.i41.i = getelementptr %struct.iwl_wowlan_patterns_cmd_v1, ptr %call9.i.i.i, i32 0, i32 1, i32 %i.071.i.i, i32 3
  %411 = ptrtoint ptr %pattern_size.i41.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %conv33.i.i, ptr %pattern_size.i41.i, align 1
  %inc.i42.i = add nuw nsw i32 %i.071.i.i, 1
  %cmp.i43.i = icmp slt i32 %inc.i42.i, %397
  br i1 %cmp.i43.i, label %for.body.i44.i.for.body.i44.i_crit_edge, label %for.body.i44.i.for.end.i45.i_crit_edge

for.body.i44.i.for.end.i45.i_crit_edge:           ; preds = %for.body.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i45.i

for.body.i44.i.for.body.i44.i_crit_edge:          ; preds = %for.body.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i44.i

for.end.i45.i:                                    ; preds = %for.body.i44.i.for.end.i45.i_crit_edge, %if.end8.i33.i.for.end.i45.i_crit_edge
  %412 = ptrtoint ptr %cmd.i17.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %call9.i.i.i, ptr %cmd.i17.i, align 4
  %call37.i.i = call i32 @iwl_mvm_send_cmd(ptr noundef %op_mode_specific, ptr noundef nonnull %cmd.i17.i) #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %iwl_mvm_send_patterns_v1.exit.i

iwl_mvm_send_patterns_v1.exit.i:                  ; preds = %for.end.i45.i, %if.end.i24.i.iwl_mvm_send_patterns_v1.exit.i_crit_edge, %if.else.i224.iwl_mvm_send_patterns_v1.exit.i_crit_edge
  %retval.0.i46.i = phi i32 [ %call37.i.i, %for.end.i45.i ], [ 0, %if.else.i224.iwl_mvm_send_patterns_v1.exit.i_crit_edge ], [ -12, %if.end.i24.i.iwl_mvm_send_patterns_v1.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i17.i) #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %iwl_mvm_send_patterns_v1.exit.i, %iwl_mvm_send_patterns.exit.i
  %ret.0.i = phi i32 [ %retval.0.i15.i, %iwl_mvm_send_patterns.exit.i ], [ %retval.0.i46.i, %iwl_mvm_send_patterns_v1.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool25.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool25.not.i, label %iwl_mvm_wowlan_config.exit, label %if.end24.i.cleanup.thread_crit_edge

if.end24.i.cleanup.thread_crit_edge:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

iwl_mvm_wowlan_config.exit:                       ; preds = %if.end24.i
  %call28.i = call i32 @iwl_mvm_send_proto_offload(ptr noundef %op_mode_specific, ptr noundef %call35, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool73.not = icmp eq i32 %call28.i, 0
  br i1 %tobool73.not, label %cleanup, label %iwl_mvm_wowlan_config.exit.cleanup.thread_crit_edge

iwl_mvm_wowlan_config.exit.cleanup.thread_crit_edge: ; preds = %iwl_mvm_wowlan_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %iwl_mvm_wowlan_config.exit.cleanup.thread_crit_edge, %if.end24.i.cleanup.thread_crit_edge, %if.end13.i.cleanup.thread_crit_edge, %iwl_mvm_wowlan_config_key_params.exit.thread.i, %iwl_mvm_d3_reprogram.exit.thread.i, %if.then.i211.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %call28.i, %iwl_mvm_wowlan_config.exit.cleanup.thread_crit_edge ], [ %retval.3.i.ph.i, %iwl_mvm_wowlan_config_key_params.exit.thread.i ], [ %retval.0.i.ph.i, %iwl_mvm_d3_reprogram.exit.thread.i ], [ %ret.0.i, %if.end24.i.cleanup.thread_crit_edge ], [ %call14.i, %if.end13.i.cleanup.thread_crit_edge ], [ %call3.i.i209, %if.then.i211.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wowlan_config_cmd) #13
  br label %out

cleanup.thread245:                                ; preds = %iwl_mvm_get_last_nonqos_seq.exit.i.cleanup.thread245_crit_edge, %do.end62.cleanup.thread245_crit_edge
  %ret.0.ph244 = phi i32 [ %retval.0.i.i, %iwl_mvm_get_last_nonqos_seq.exit.i.cleanup.thread245_crit_edge ], [ -22, %do.end62.cleanup.thread245_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wowlan_config_cmd) #13
  br label %out_noreset

cleanup:                                          ; preds = %iwl_mvm_wowlan_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net_detect76 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1340
  %413 = ptrtoint ptr %net_detect76 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 0, ptr %net_detect76, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wowlan_config_cmd) #13
  br label %if.end77

if.end77:                                         ; preds = %cleanup, %if.end49
  %call78 = call i32 @iwl_mvm_power_update_device(ptr noundef %op_mode_specific) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.out_crit_edge

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end81:                                         ; preds = %if.end77
  %call82 = call i32 @iwl_mvm_power_update_mac(ptr noundef %op_mode_specific) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.out_crit_edge

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end85:                                         ; preds = %if.end81
  %d3_wake_sysassert = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 112
  %414 = ptrtoint ptr %d3_wake_sysassert to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %d3_wake_sysassert, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool86.not = icmp eq i8 %415, 0
  br i1 %tobool86.not, label %if.end85.if.end88_crit_edge, label %if.then87

if.end85.if.end88_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %wakeup_flags = getelementptr inbounds %struct.iwl_d3_manager_config, ptr %d3_cfg_cmd_data, i32 0, i32 1
  %416 = ptrtoint ptr %wakeup_flags to i32
  call void @__asan_loadN_noabort(i32 %416, i32 4)
  %417 = load i32, ptr %wakeup_flags, align 1
  %or = or i32 %417, 16777216
  store i32 %or, ptr %wakeup_flags, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end85.if.end88_crit_edge
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %418 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %419, i32 0, i32 3
  %420 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %423)
  %cmp89 = icmp ult i32 %423, 17
  br i1 %cmp89, label %if.then91, label %if.end88.if.end92_crit_edge

if.end88.if.end92_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 629
  call void @iwl_fw_dbg_stop_restart_recording(ptr noundef %fwrt, ptr noundef null, i1 noundef zeroext true) #13
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88.if.end92_crit_edge
  %424 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %trans, align 4
  %system_pm_mode = getelementptr inbounds %struct.iwl_trans, ptr %425, i32 0, i32 34
  %426 = ptrtoint ptr %system_pm_mode to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 1, ptr %system_pm_mode, align 8
  %call94 = call i32 @iwl_mvm_send_cmd(ptr noundef %op_mode_specific, ptr noundef nonnull %d3_cfg_cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end92.out_crit_edge

if.end92.out_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end97:                                         ; preds = %if.end92
  %427 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %resp_pkt, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_loadN_noabort(i32 %429, i32 4)
  %430 = load i32, ptr %428, align 1
  %431 = and i32 %430, -62980096
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %431)
  %cmp100.not = icmp eq i32 %431, 67108864
  br i1 %cmp100.not, label %if.end97.if.end107_crit_edge, label %if.then102

if.end97.if.end107_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %data104 = getelementptr inbounds %struct.iwl_rx_packet, ptr %428, i32 0, i32 2
  %432 = ptrtoint ptr %data104 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %data104, align 4
  %434 = call i32 @llvm.bswap.i32(i32 %433) #13
  %d3_test_pme_ptr = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1341
  %435 = ptrtoint ptr %d3_test_pme_ptr to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %434, ptr %d3_test_pme_ptr, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end97.if.end107_crit_edge
  %436 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %_rx_page_addr, align 4
  %438 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %437, i32 noundef %439) #13
  call void @_clear_bit(i32 noundef 4, ptr noundef %status) #13
  %440 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %trans, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 1101) #13
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %441, i32 0, i32 1
  %442 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %ops.i, align 4
  %d3_suspend.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %443, i32 0, i32 5
  %444 = ptrtoint ptr %d3_suspend.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %d3_suspend.i, align 4
  %tobool.not.i227 = icmp eq ptr %445, null
  br i1 %tobool.not.i227, label %if.end107.out_noreset_crit_edge, label %if.end.i229

if.end107.out_noreset_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_noreset

if.end.i229:                                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  %call.i228 = call i32 %445(ptr noundef %441, i1 noundef zeroext %test, i1 noundef zeroext %tobool.i.not) #13
  br label %out

out:                                              ; preds = %if.end.i229, %if.end92.out_crit_edge, %if.end81.out_crit_edge, %if.end77.out_crit_edge, %cleanup.thread, %if.end8.i.out_crit_edge, %if.else.i.out_crit_edge, %if.then.i.out_crit_edge
  %ret.1 = phi i32 [ %call78, %if.end77.out_crit_edge ], [ %call82, %if.end81.out_crit_edge ], [ %call94, %if.end92.out_crit_edge ], [ %ret.0.ph, %cleanup.thread ], [ %call.i228, %if.end.i229 ], [ %call9.i, %if.end8.i.out_crit_edge ], [ %call4.i, %if.else.i.out_crit_edge ], [ %call3.i.i, %if.then.i.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp115 = icmp slt i32 %ret.1, 0
  br i1 %cmp115, label %out.if.then117_crit_edge, label %out.out_noreset_crit_edge

out.out_noreset_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_noreset

out.if.then117_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117

if.then117:                                       ; preds = %out.if.then117_crit_edge, %out.thread250
  %ret.1253 = phi i32 [ -16, %out.thread250 ], [ %ret.1, %out.if.then117_crit_edge ]
  %nd_match_sets.i231 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1336
  %446 = ptrtoint ptr %nd_match_sets.i231 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %nd_match_sets.i231, align 4
  call void @kfree(ptr noundef %447) #13
  %448 = ptrtoint ptr %nd_match_sets.i231 to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr null, ptr %nd_match_sets.i231, align 4
  %n_nd_match_sets.i232 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1337
  %449 = ptrtoint ptr %n_nd_match_sets.i232 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 0, ptr %n_nd_match_sets.i232, align 8
  %nd_channels.i233 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1338
  %450 = ptrtoint ptr %nd_channels.i233 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %nd_channels.i233, align 4
  call void @kfree(ptr noundef %451) #13
  %452 = ptrtoint ptr %nd_channels.i233 to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr null, ptr %nd_channels.i233, align 4
  %n_nd_channels.i234 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1339
  %453 = ptrtoint ptr %n_nd_channels.i234 to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 0, ptr %n_nd_channels.i234, align 8
  br i1 %tobool.i.not, label %if.then119, label %if.then117.if.end127_crit_edge

if.then117.if.end127_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then119:                                       ; preds = %if.then117
  %fw_restart = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1208
  %454 = ptrtoint ptr %fw_restart to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %fw_restart, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %cmp121 = icmp sgt i8 %455, 0
  br i1 %cmp121, label %if.then123, label %if.then119.if.end127_crit_edge

if.then119.if.end127_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then123:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add nsw i8 %455, -1
  %456 = ptrtoint ptr %fw_restart to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %dec, ptr %fw_restart, align 4
  %hw125 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %457 = ptrtoint ptr %hw125 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %hw125, align 4
  call void @ieee80211_restart_hw(ptr noundef %458) #13
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.then119.if.end127_crit_edge, %if.then117.if.end127_crit_edge
  call void @_clear_bit(i32 noundef 8, ptr noundef %status) #13
  br label %out_noreset

out_noreset:                                      ; preds = %if.end127, %out.out_noreset_crit_edge, %if.end107.out_noreset_crit_edge, %cleanup.thread245, %if.then41.out_noreset_crit_edge, %if.end34.out_noreset_crit_edge
  %ret.2 = phi i32 [ %ret.1253, %if.end127 ], [ %ret.1, %out.out_noreset_crit_edge ], [ 1, %if.end34.out_noreset_crit_edge ], [ 1, %if.then41.out_noreset_crit_edge ], [ %ret.0.ph244, %cleanup.thread245 ], [ 0, %if.end107.out_noreset_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup131

cleanup131:                                       ; preds = %out_noreset, %do.end, %if.then.cleanup131_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_noreset ], [ -22, %do.end ], [ -22, %if.then.cleanup131_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %d3_cfg_cmd) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %d3_cfg_cmd_data) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_resume(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %call = tail call fastcc i32 @__iwl_mvm_resume(ptr noundef %op_mode_specific, i1 noundef zeroext false)
  tail call void @iwl_mvm_resume_tcm(ptr noundef %op_mode_specific) #13
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 629
  tail call void @iwl_fw_runtime_resume(ptr noundef %fwrt) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iwl_mvm_resume(ptr noundef %mvm, i1 noundef zeroext %test) unnamed_addr #0 align 64 {
entry:
  %err_info.i34.i = alloca %struct.error_table_start, align 4
  %err_info.i23.i = alloca %struct.error_table_start, align 4
  %err_info.i.i = alloca %struct.error_table_start, align 4
  %wakeup.i = alloca %struct.cfg80211_wowlan_wakeup, align 4
  %d3_status = alloca i32, align 4
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d3_status) #13
  %0 = ptrtoint ptr %d3_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %d3_status, align 4, !annotation !95
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %_capa.i, align 4
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i = icmp ne i32 %5, 0
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i175.not = icmp eq i32 %8, 0
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_reset_or_resume_time_jiffies = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 177
  %10 = ptrtoint ptr %last_reset_or_resume_time_jiffies to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_reset_or_resume_time_jiffies, align 4
  %call6 = tail call ptr @iwl_mvm_get_bss_vif(ptr noundef %mvm) #13
  %tobool.not.i = icmp eq ptr %call6, null
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end:                                           ; preds = %entry
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  tail call void @iwl_fw_dbg_read_d3_debug_data(ptr noundef %fwrt) #13
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %11 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans.i, align 4
  %lmac_error_event_table.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 32, i32 5
  %13 = ptrtoint ptr %lmac_error_event_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lmac_error_event_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %err_info.i.i) #13
  %15 = ptrtoint ptr %err_info.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %err_info.i.i, align 4, !annotation !95
  %16 = getelementptr inbounds %struct.error_table_start, ptr %err_info.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %iwl_mvm_rt_status.exit.thread.i, label %do.end.i.i

iwl_mvm_rt_status.exit.thread.i:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info.i.i) #13
  br label %if.end3.i

do.end.i.i:                                       ; preds = %if.end
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i.i, align 4
  %read_mem.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %read_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_mem.i.i.i, align 4
  %call.i.i.i = call i32 %21(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %err_info.i.i, i32 noundef 2) #13
  %22 = ptrtoint ptr %err_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool4.not.i.i, label %iwl_mvm_rt_status.exit.i, label %if.then.i

iwl_mvm_rt_status.exit.i:                         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info.i.i) #13
  br label %if.end3.i

if.then.i:                                        ; preds = %do.end.i.i
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2030043136, i32 %25)
  %cmp.i176 = icmp eq i32 %25, -2030043136
  br i1 %cmp.i176, label %if.then2.i, label %if.then.i.if.then9_crit_edge

if.then.i.if.then9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wakeup.i) #13
  %26 = call ptr @memcpy(ptr %wakeup.i, ptr @__const.iwl_mvm_check_rt_status.wakeup, i32 32)
  call void @ieee80211_report_wowlan_wakeup(ptr noundef nonnull %call6, ptr noundef nonnull %wakeup.i, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wakeup.i) #13
  br label %if.then9

if.end3.i:                                        ; preds = %iwl_mvm_rt_status.exit.i, %iwl_mvm_rt_status.exit.thread.i
  %27 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans.i, align 4
  %arrayidx8.i = getelementptr %struct.iwl_trans, ptr %28, i32 0, i32 32, i32 5, i32 1
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %err_info.i23.i) #13
  %31 = ptrtoint ptr %err_info.i23.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %err_info.i23.i, align 4, !annotation !95
  %32 = getelementptr inbounds %struct.error_table_start, ptr %err_info.i23.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i24.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i24.i, label %iwl_mvm_rt_status.exit33.thread.i, label %iwl_mvm_rt_status.exit33.i

iwl_mvm_rt_status.exit33.thread.i:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info.i23.i) #13
  br label %if.end11.i

iwl_mvm_rt_status.exit33.i:                       ; preds = %if.end3.i
  %ops.i.i25.i = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %ops.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i25.i, align 4
  %read_mem.i.i26.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %35, i32 0, i32 26
  %36 = ptrtoint ptr %read_mem.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_mem.i.i26.i, align 4
  %call.i.i27.i = call i32 %37(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %err_info.i23.i, i32 noundef 2) #13
  %38 = ptrtoint ptr %err_info.i23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %err_info.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool10.i30.not.i = icmp eq i32 %39, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info.i23.i) #13
  br i1 %tobool10.i30.not.i, label %iwl_mvm_rt_status.exit33.i.if.end11.i_crit_edge, label %iwl_mvm_rt_status.exit33.i.if.then9_crit_edge

iwl_mvm_rt_status.exit33.i.if.then9_crit_edge:    ; preds = %iwl_mvm_rt_status.exit33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

iwl_mvm_rt_status.exit33.i.if.end11.i_crit_edge:  ; preds = %iwl_mvm_rt_status.exit33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.end11.i:                                       ; preds = %iwl_mvm_rt_status.exit33.i.if.end11.i_crit_edge, %iwl_mvm_rt_status.exit33.thread.i
  %40 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trans.i, align 4
  %umac_error_event_table.i = getelementptr inbounds %struct.iwl_trans, ptr %41, i32 0, i32 32, i32 6
  %42 = ptrtoint ptr %umac_error_event_table.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %umac_error_event_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %err_info.i34.i) #13
  %44 = ptrtoint ptr %err_info.i34.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %err_info.i34.i, align 4, !annotation !95
  %45 = getelementptr inbounds %struct.error_table_start, ptr %err_info.i34.i, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %45, align 4, !annotation !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i35.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i35.i, label %iwl_mvm_check_rt_status.exit.thread180, label %iwl_mvm_check_rt_status.exit

iwl_mvm_check_rt_status.exit.thread180:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info.i34.i) #13
  br label %if.end13

iwl_mvm_check_rt_status.exit:                     ; preds = %if.end11.i
  %ops.i.i36.i = getelementptr inbounds %struct.iwl_trans, ptr %41, i32 0, i32 1
  %47 = ptrtoint ptr %ops.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i36.i, align 4
  %read_mem.i.i37.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %48, i32 0, i32 26
  %49 = ptrtoint ptr %read_mem.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_mem.i.i37.i, align 4
  %call.i.i38.i = call i32 %50(ptr noundef %41, i32 noundef %43, ptr noundef nonnull %err_info.i34.i, i32 noundef 2) #13
  %51 = ptrtoint ptr %err_info.i34.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err_info.i34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool10.i41.i.not = icmp eq i32 %52, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info.i34.i) #13
  br i1 %tobool10.i41.i.not, label %iwl_mvm_check_rt_status.exit.if.end13_crit_edge, label %iwl_mvm_check_rt_status.exit.if.then9_crit_edge

iwl_mvm_check_rt_status.exit.if.then9_crit_edge:  ; preds = %iwl_mvm_check_rt_status.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

iwl_mvm_check_rt_status.exit.if.end13_crit_edge:  ; preds = %iwl_mvm_check_rt_status.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then9:                                         ; preds = %iwl_mvm_check_rt_status.exit.if.then9_crit_edge, %iwl_mvm_rt_status.exit33.i.if.then9_crit_edge, %if.then2.i, %if.then.i.if.then9_crit_edge
  %53 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trans.i, align 4
  %status = getelementptr inbounds %struct.iwl_trans, ptr %54, i32 0, i32 7
  call void @_set_bit(i32 noundef 6, ptr noundef %status) #13
  call void @iwl_fwrt_dump_error_logs(ptr noundef %fwrt) #13
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 4, ptr noundef null, i1 noundef zeroext false) #13
  %call12 = call i32 @iwl_fw_dbg_collect_desc(ptr noundef %fwrt, ptr noundef nonnull @iwl_dump_desc_assert, i1 noundef zeroext false, i32 noundef 0) #13
  br label %err

if.end13:                                         ; preds = %iwl_mvm_check_rt_status.exit.if.end13_crit_edge, %iwl_mvm_check_rt_status.exit.thread180
  %55 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %trans.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 1112) #13
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i, align 4
  %d3_resume.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %d3_resume.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d3_resume.i, align 4
  %tobool.not.i177 = icmp eq ptr %60, null
  br i1 %tobool.not.i177, label %if.end13.if.end19_crit_edge, label %iwl_trans_d3_resume.exit

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

iwl_trans_d3_resume.exit:                         ; preds = %if.end13
  %lnot = xor i1 %tobool.i, true
  %call.i = call i32 %60(ptr noundef %56, ptr noundef nonnull %d3_status, i1 noundef zeroext %test, i1 noundef zeroext %lnot) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %iwl_trans_d3_resume.exit.if.end19_crit_edge, label %iwl_trans_d3_resume.exit.err_crit_edge

iwl_trans_d3_resume.exit.err_crit_edge:           ; preds = %iwl_trans_d3_resume.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

iwl_trans_d3_resume.exit.if.end19_crit_edge:      ; preds = %iwl_trans_d3_resume.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end19:                                         ; preds = %iwl_trans_d3_resume.exit.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %61 = ptrtoint ptr %d3_status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %d3_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.not = icmp eq i32 %62, 0
  br i1 %cmp.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mvm, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %64, ptr noundef nonnull @.str.13) #13
  br label %err

if.end24:                                         ; preds = %if.end19
  br i1 %tobool.i175.not, label %if.end24.if.end77_crit_edge, label %if.then26

if.end24.if.end77_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #13
  %65 = call ptr @memset(ptr %cmd, i32 0, i32 36)
  %66 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 18, ptr %66, align 4
  %68 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 237, ptr %68, align 4
  %call27 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %71, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %call27) #13
  br label %cleanup

if.end37:                                         ; preds = %if.then26
  %cmd_ver = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 164
  %72 = ptrtoint ptr %cmd_ver to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %cmd_ver, align 4
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %73, label %do.end63 [
    i8 0, label %if.end37.cleanup.thread_crit_edge
    i8 1, label %sw.bb
  ]

if.end37.cleanup.thread_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

sw.bb:                                            ; preds = %if.end37
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %75 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %resp_pkt, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %76, align 1
  %79 = and i32 %78, -12648448
  %80 = call i32 @llvm.bswap.i32(i32 %79) #13
  %sub.i = add nsw i32 %80, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp39.not = icmp eq i32 %sub.i, 4
  br i1 %cmp39.not, label %if.end49, label %do.end45

do.end45:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %sub.i) #13
  br label %cleanup

if.end49:                                         ; preds = %sw.bb
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %76, i32 0, i32 2
  %83 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %data, align 1
  %85 = and i32 %84, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool51.not = icmp eq i32 %85, 0
  br i1 %tobool51.not, label %if.end49.cleanup.thread_crit_edge, label %if.then52

if.end49.cleanup.thread_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %trans.i, align 4
  call void @iwl_write32(ptr noundef %87, i32 noundef 32, i32 noundef 2) #13
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %88 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %_rx_page_addr.i, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %90 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %89, i32 noundef %91) #13
  br label %cleanup.thread

do.end63:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2588, i32 noundef 9, ptr noundef null) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end63, %if.then52, %if.end49.cleanup.thread_crit_edge, %if.end37.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #13
  br label %if.end77

cleanup:                                          ; preds = %do.end45, %do.end33
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #13
  br label %err

if.end77:                                         ; preds = %cleanup.thread, %if.end24.if.end77_crit_edge
  %ret.0 = phi i32 [ 0, %if.end24.if.end77_crit_edge ], [ %call27, %cleanup.thread ]
  %92 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %trans.i, align 4
  %system_pm_mode = getelementptr inbounds %struct.iwl_trans, ptr %93, i32 0, i32 34
  %94 = ptrtoint ptr %system_pm_mode to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %system_pm_mode, align 8
  call void @iwl_mvm_update_changed_regdom(ptr noundef %mvm) #13
  %call79 = call i32 @iwl_mvm_ppag_send_cmd(ptr noundef %mvm) #13
  br i1 %tobool.i, label %if.end83, label %if.end83.thread

if.end83:                                         ; preds = %if.end77
  %net_detect = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 110
  %95 = ptrtoint ptr %net_detect to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %net_detect, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool84.not = icmp eq i8 %96, 0
  br i1 %tobool84.not, label %if.end83.if.else_crit_edge, label %if.then87

if.end83.if.else_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end83.thread:                                  ; preds = %if.end77
  %call82 = call i32 @iwl_mvm_sar_select_profile(ptr noundef %mvm, i32 noundef 1, i32 noundef 1) #13
  %net_detect186 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 110
  %97 = ptrtoint ptr %net_detect186 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %net_detect186, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool84.not187 = icmp eq i8 %98, 0
  br i1 %tobool84.not187, label %if.end83.thread.if.else_crit_edge, label %if.end83.thread.if.end89_crit_edge

if.end83.thread.if.end89_crit_edge:               ; preds = %if.end83.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.end83.thread.if.else_crit_edge:                ; preds = %if.end83.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %call88 = call i32 @iwl_mvm_scan_stop(ptr noundef %mvm, i32 noundef 4, i1 noundef zeroext false) #13
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end83.thread.if.end89_crit_edge
  %ret.1 = phi i32 [ %call88, %if.then87 ], [ %ret.0, %if.end83.thread.if.end89_crit_edge ]
  call fastcc void @iwl_mvm_query_netdetect_reasons(ptr noundef %mvm, ptr noundef nonnull %call6)
  br label %out

if.else:                                          ; preds = %if.end83.thread.if.else_crit_edge, %if.end83.if.else_crit_edge
  %call90 = call fastcc zeroext i1 @iwl_mvm_query_wakeup_reasons(ptr noundef %mvm, ptr noundef nonnull %call6)
  br i1 %call90, label %if.then93, label %if.else.out_iterate_crit_edge

if.else.out_iterate_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_iterate

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %keep_vif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 115
  %99 = ptrtoint ptr %keep_vif to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call6, ptr %keep_vif, align 4
  br label %out_iterate

err:                                              ; preds = %cleanup, %do.end, %iwl_trans_d3_resume.exit.err_crit_edge, %if.then9, %entry.err_crit_edge
  %ret.2 = phi i32 [ 1, %entry.err_crit_edge ], [ 1, %if.then9 ], [ %call.i, %iwl_trans_d3_resume.exit.err_crit_edge ], [ 0, %do.end ], [ %call27, %cleanup ]
  %nd_match_sets.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 106
  %100 = ptrtoint ptr %nd_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nd_match_sets.i, align 4
  call void @kfree(ptr noundef %101) #13
  %102 = ptrtoint ptr %nd_match_sets.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %nd_match_sets.i, align 4
  %n_nd_match_sets.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 107
  %103 = ptrtoint ptr %n_nd_match_sets.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %n_nd_match_sets.i, align 8
  %nd_channels.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 108
  %104 = ptrtoint ptr %nd_channels.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %nd_channels.i, align 4
  call void @kfree(ptr noundef %105) #13
  %106 = ptrtoint ptr %nd_channels.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %nd_channels.i, align 4
  %n_nd_channels.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 109
  %107 = ptrtoint ptr %n_nd_channels.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %n_nd_channels.i, align 8
  call void @mutex_unlock(ptr noundef %mutex) #13
  br label %out_iterate

out_iterate:                                      ; preds = %err, %if.then93, %if.else.out_iterate_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err ], [ %ret.0, %if.then93 ], [ %ret.0, %if.else.out_iterate_crit_edge ]
  %keep.0.shrunk = phi i1 [ false, %err ], [ true, %if.then93 ], [ false, %if.else.out_iterate_crit_edge ]
  br i1 %test, label %out_iterate.out_crit_edge, label %if.then97

out_iterate.out_crit_edge:                        ; preds = %out_iterate
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then97:                                        ; preds = %out_iterate
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 4
  %spec.select = select i1 %keep.0.shrunk, ptr %call6, ptr null
  call void @ieee80211_iterate_active_interfaces_mtx(ptr noundef %109, i32 noundef 0, ptr noundef nonnull @iwl_mvm_d3_disconnect_iter, ptr noundef %spec.select) #13
  br label %out

out:                                              ; preds = %if.then97, %out_iterate.out_crit_edge, %if.end89
  %ret.4 = phi i32 [ %ret.3, %out_iterate.out_crit_edge ], [ %ret.3, %if.then97 ], [ %ret.1, %if.end89 ]
  %status101 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  call void @_clear_bit(i32 noundef 8, ptr noundef %status101) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool104.not = icmp eq i32 %ret.4, 0
  %or.cond = select i1 %tobool.i, i1 %tobool104.not, i1 false
  br i1 %or.cond, label %if.then105, label %out.if.end113_crit_edge

out.if.end113_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.then105:                                       ; preds = %out
  br i1 %tobool.i175.not, label %if.end108, label %if.then105.cleanup117_crit_edge

if.then105.cleanup117_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end108:                                        ; preds = %if.then105
  %call109 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 237, i32 noundef 0, i16 noundef zeroext 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end108.cleanup117_crit_edge, label %if.end108.if.end113_crit_edge

if.end108.if.end113_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.end108.cleanup117_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup117

if.end113:                                        ; preds = %if.end108.if.end113_crit_edge, %out.if.end113_crit_edge
  call void @_set_bit(i32 noundef 3, ptr noundef %status101) #13
  %trans115 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %110 = ptrtoint ptr %trans115 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %trans115, align 4
  %system_pm_mode116 = getelementptr inbounds %struct.iwl_trans, ptr %111, i32 0, i32 34
  %112 = ptrtoint ptr %system_pm_mode116 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %system_pm_mode116, align 8
  br label %cleanup117

cleanup117:                                       ; preds = %if.end113, %if.end108.cleanup117_crit_edge, %if.then105.cleanup117_crit_edge
  %retval.0 = phi i32 [ 1, %if.end113 ], [ 0, %if.then105.cleanup117_crit_edge ], [ 0, %if.end108.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d3_status) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_resume_tcm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_runtime_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_set_wakeup(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext %enabled) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_d3_test_read(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %d3_test_pme_ptr = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 114
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end4.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %d3_test_pme_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d3_test_pme_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.cond.if.end4_crit_edge, label %if.then

while.cond.if.end4_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #13
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i, align 4, !annotation !95
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_mem.i.i, align 4
  %call.i.i = call i32 %10(ptr noundef %5, i32 noundef %3, ptr noundef nonnull %value.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %iwl_trans_read_mem32.exit, label %iwl_trans_read_mem32.exit.thread, !prof !96

iwl_trans_read_mem32.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1375, i32 noundef 9, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #13
  br label %while.end

iwl_trans_read_mem32.exit:                        ; preds = %if.then
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %iwl_trans_read_mem32.exit.if.end4_crit_edge, label %iwl_trans_read_mem32.exit.while.end_crit_edge

iwl_trans_read_mem32.exit.while.end_crit_edge:    ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

iwl_trans_read_mem32.exit.if.end4_crit_edge:      ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end4:                                          ; preds = %iwl_trans_read_mem32.exit.if.end4_crit_edge, %while.cond.if.end4_crit_edge
  %call5 = call i32 @msleep_interruptible(i32 noundef 100) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.while.cond_crit_edge, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end4.while.cond_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %if.end4.while.end_crit_edge, %iwl_trans_read_mem32.exit.while.end_crit_edge, %iwl_trans_read_mem32.exit.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_d3_test_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %d3_test_active = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 113
  %2 = ptrtoint ptr %d3_test_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %d3_test_active, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private_data, align 4
  tail call void @iwl_mvm_pause_tcm(ptr noundef %1, i1 noundef zeroext true) #13
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40
  tail call void @iwl_fw_runtime_suspend(ptr noundef %fwrt) #13
  tail call void @rtnl_lock() #13
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %wowlan_config = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 41
  %9 = ptrtoint ptr %wowlan_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wowlan_config, align 4
  %call = tail call fastcc i32 @__iwl_mvm_suspend(ptr noundef %6, ptr noundef %10, i1 noundef zeroext true)
  tail call void @rtnl_unlock() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %cmp, i32 -22, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool5.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %d3_test_active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %d3_test_active, align 1
  %keep_vif = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 115
  %12 = ptrtoint ptr %keep_vif to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %keep_vif, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ %spec.store.select, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_d3_test_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %3, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %_capa.i, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  %d3_test_active = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 113
  %7 = ptrtoint ptr %d3_test_active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %d3_test_active, align 1
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40
  tail call void @iwl_fw_dbg_read_d3_debug_data(ptr noundef %fwrt) #13
  tail call void @rtnl_lock() #13
  %call1 = tail call fastcc i32 @__iwl_mvm_resume(ptr noundef %1, i1 noundef zeroext true)
  tail call void @rtnl_unlock() #13
  tail call void @iwl_mvm_resume_tcm(ptr noundef %1) #13
  tail call void @iwl_fw_runtime_resume(ptr noundef %fwrt) #13
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 23
  tail call void @iwl_abort_notification_waits(ptr noundef %notif_wait) #13
  br i1 %tobool.i.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %9) #13
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not25.not = icmp eq i32 %12, 0
  br i1 %tobool4.not25.not, label %if.then.if.end10_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %remaining_time.026 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 10, %if.then.while.body_crit_edge ]
  %dec = add nsw i32 %remaining_time.026, -1
  tail call void @msleep(i32 noundef 1000) #13
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp ne i32 %dec, 0
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %phi.cmp = icmp eq i32 %dec, 0
  br i1 %phi.cmp, label %do.end, label %while.end.if.end10_crit_edge

while.end.if.end10_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @.str.28) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %while.end.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %hw11 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %hw11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw11, align 4
  %keep_vif = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 115
  %20 = ptrtoint ptr %keep_vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %keep_vif, align 4
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @iwl_mvm_d3_test_disconn_work_iter, ptr noundef %21) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_mvm_get_bss_vif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_dbg_stop_restart_recording(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_scan_stop(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_sched_scan_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_stop_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_load_d3_fw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_set_wowlan_qos_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_proto_offload(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_phy_ctxt_add(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_mac_ctxt_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_sta_send_to_fw(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_mac_ctxt_changed(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_init_fw_regd(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iter_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_wowlan_program_keys(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, ptr noundef %key, ptr nocapture noundef %_data) #0 align 64 {
entry:
  %wkc = alloca %struct.anon.231, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %3, label %sw.default [
    i32 1027073, label %entry.sw.bb_crit_edge
    i32 1027077, label %entry.sw.bb_crit_edge113
    i32 1027084, label %entry.cleanup62_crit_edge
    i32 1027083, label %entry.cleanup62_crit_edge114
    i32 1027078, label %entry.cleanup62_crit_edge115
    i32 1027074, label %entry.sw.epilog_crit_edge
    i32 1027076, label %entry.sw.epilog_crit_edge116
    i32 1027080, label %entry.sw.epilog_crit_edge117
    i32 1027081, label %entry.sw.epilog_crit_edge118
  ]

entry.sw.epilog_crit_edge118:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge117:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge116:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup62_crit_edge115:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

entry.cleanup62_crit_edge114:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

entry.sw.bb_crit_edge113:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge113
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wkc) #13
  %5 = getelementptr inbounds %struct.iwl_mvm_wep_key_cmd, ptr %wkc, i32 0, i32 1
  %6 = getelementptr inbounds %struct.iwl_mvm_wep_key_cmd, ptr %wkc, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.231, ptr %wkc, i32 0, i32 1
  %8 = getelementptr inbounds %struct.anon.231, ptr %wkc, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.anon.231, ptr %wkc, i32 0, i32 1, i32 3
  %10 = getelementptr inbounds i8, ptr %wkc, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 28)
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id, align 4
  %conv = zext i16 %13 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %14 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %color, align 2
  %conv1 = zext i16 %15 to i32
  %shl2 = shl nuw nsw i32 %conv1, 8
  %or = or i32 %shl2, %conv
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %wkc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %wkc, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %5, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %6, align 1
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %20 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %keyidx, align 1
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %7, align 4
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %23 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %keylen, align 2
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %9, align 4
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 8
  %28 = and i16 %27, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not = icmp eq i16 %28, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.critedge

if.end:                                           ; preds = %sw.bb
  %29 = getelementptr inbounds %struct.anon.231, ptr %wkc, i32 0, i32 1, i32 5, i32 3
  %key7 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %conv10 = zext i8 %24 to i32
  %30 = call ptr @memcpy(ptr %29, ptr %key7, i32 %conv10)
  %conv12 = sext i8 %21 to i32
  %tx_key_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 56, i32 1
  %31 = ptrtoint ptr %tx_key_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_key_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv12)
  %cmp = icmp eq i32 %32, %conv12
  br i1 %cmp, label %if.end.if.end20_crit_edge, label %if.else

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %wep_key_idx = getelementptr inbounds %struct.wowlan_key_reprogram_data, ptr %_data, i32 0, i32 1
  %33 = ptrtoint ptr %wep_key_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wep_key_idx, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %wep_key_idx, align 4
  %conv17 = trunc i32 %inc to i8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end.if.end20_crit_edge
  %storemerge = phi i8 [ %conv17, %if.else ], [ 0, %if.end.if.end20_crit_edge ]
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %storemerge, ptr %8, align 1
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call21 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %op_mode_specific, i32 noundef 32, i32 noundef 0, i16 noundef zeroext 32, ptr noundef nonnull %wkc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp ne i32 %call21, 0
  %frombool = zext i1 %cmp22 to i8
  %36 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %_data, align 4
  %iv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 3
  %37 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %iv_len, align 1
  %conv24 = zext i8 %38 to i32
  %ptk_ivlen = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1320
  %39 = ptrtoint ptr %ptk_ivlen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv24, ptr %ptk_ivlen, align 4
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 2
  %40 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %icv_len, align 4
  %conv25 = zext i8 %41 to i32
  %ptk_icvlen = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1321
  %42 = ptrtoint ptr %ptk_icvlen to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv25, ptr %ptk_icvlen, align 8
  %43 = load i8, ptr %iv_len, align 1
  %conv27 = zext i8 %43 to i32
  %gtk_ivlen = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1318
  %44 = ptrtoint ptr %gtk_ivlen to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv27, ptr %gtk_ivlen, align 4
  %45 = load i8, ptr %icv_len, align 4
  %conv29 = zext i8 %45 to i32
  %gtk_icvlen = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1319
  %46 = ptrtoint ptr %gtk_icvlen to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv29, ptr %gtk_icvlen, align 8
  call void @mutex_unlock(ptr noundef %mutex) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wkc) #13
  br label %cleanup62

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %_data, align 4
  br label %cleanup62

sw.epilog.critedge:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wkc) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.critedge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge116, %entry.sw.epilog_crit_edge117, %entry.sw.epilog_crit_edge118
  %mutex35 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex35, i32 noundef 0) #13
  %flags36 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %48 = ptrtoint ptr %flags36 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags36, align 8
  %50 = and i16 %49, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool39.not = icmp eq i16 %50, 0
  %iv_len49 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 3
  %51 = ptrtoint ptr %iv_len49 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %iv_len49, align 1
  %conv50 = zext i8 %52 to i32
  %. = select i1 %tobool39.not, i32 1318, i32 1320
  %.111 = select i1 %tobool39.not, i32 1319, i32 1321
  %.lobit = lshr exact i16 %50, 3
  %53 = trunc i16 %.lobit to i8
  %54 = xor i8 %53, 1
  %gtk_ivlen51 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 %.
  %55 = ptrtoint ptr %gtk_ivlen51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv50, ptr %gtk_ivlen51, align 4
  %icv_len52 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 2
  %56 = ptrtoint ptr %icv_len52 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %icv_len52, align 4
  %conv53 = zext i8 %57 to i32
  %gtk_icvlen54 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 %.111
  %58 = ptrtoint ptr %gtk_icvlen54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv53, ptr %gtk_icvlen54, align 8
  %call55 = tail call i32 @iwl_mvm_set_sta_key(ptr noundef %op_mode_specific, ptr noundef %vif, ptr noundef %sta, ptr noundef %key, i8 noundef zeroext %54) #13
  tail call void @mutex_unlock(ptr noundef %mutex35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp58 = icmp ne i32 %call55, 0
  %frombool61 = zext i1 %cmp58 to i8
  %59 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %frombool61, ptr %_data, align 4
  br label %cleanup62

cleanup62:                                        ; preds = %sw.epilog, %sw.default, %if.end20, %entry.cleanup62_crit_edge, %entry.cleanup62_crit_edge114, %entry.cleanup62_crit_edge115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_wowlan_get_tkip_data(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %vif, ptr noundef readnone %sta, ptr noundef %key, ptr nocapture noundef writeonly %_data) #0 align 64 {
entry:
  %p1k = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %p1k) #13
  %0 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 4
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %4 = call ptr @memset(ptr %p1k, i32 255, i32 10)
  %5 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %6)
  %cond = icmp eq i32 %6, 1027074
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %rx_uni = getelementptr inbounds %struct.iwl_wowlan_tkip_params_cmd, ptr %_data, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #13
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %key) #13
  %shr = lshr i64 %call.i, 16
  %conv = trunc i64 %shr to i32
  call void @ieee80211_get_tkip_p1k_iv(ptr noundef %key, i32 noundef %conv, ptr noundef nonnull %p1k) #13
  %tx = getelementptr inbounds %struct.iwl_wowlan_tkip_params_cmd, ptr %_data, i32 0, i32 1
  %7 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %p1k, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8) #13
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %tx, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %0, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12) #13
  %arrayidx1.1.i = getelementptr %struct.iwl_wowlan_tkip_params_cmd, ptr %_data, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx1.1.i, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16) #13
  %arrayidx1.2.i = getelementptr %struct.iwl_wowlan_tkip_params_cmd, ptr %_data, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx1.2.i, align 2
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %2, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20) #13
  %arrayidx1.3.i = getelementptr %struct.iwl_wowlan_tkip_params_cmd, ptr %_data, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx1.3.i, align 2
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %3, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #13
  %arrayidx1.4.i = getelementptr %struct.iwl_wowlan_tkip_params_cmd, ptr %_data, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx1.4.i, align 2
  %key9 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx = getelementptr [0 x i8], ptr %key9, i32 0, i32 16
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %arrayidx, align 1
  %29 = ptrtoint ptr %_data to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %_data, align 1
  %rx_unicast = getelementptr inbounds %struct.iwl_mic_keys, ptr %_data, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %rx_multi = getelementptr inbounds %struct.iwl_wowlan_tkip_params_cmd, ptr %_data, i32 0, i32 3
  %rx_mcast = getelementptr inbounds %struct.iwl_mic_keys, ptr %_data, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rx_mic_key.0 = phi ptr [ %rx_unicast, %if.then ], [ %rx_mcast, %if.else ]
  %rx_p1ks.0 = phi ptr [ %rx_uni, %if.then ], [ %rx_multi, %if.else ]
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %30 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bss_conf, align 8
  call void @ieee80211_get_tkip_rx_p1k(ptr noundef %key, ptr noundef %31, i32 noundef -1, ptr noundef nonnull %p1k) #13
  %32 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %p1k, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33) #13
  %35 = ptrtoint ptr %rx_p1ks.0 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %rx_p1ks.0, align 2
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %0, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37) #13
  %arrayidx1.1.i57 = getelementptr i16, ptr %rx_p1ks.0, i32 1
  %39 = ptrtoint ptr %arrayidx1.1.i57 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx1.1.i57, align 2
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41) #13
  %arrayidx1.2.i59 = getelementptr i16, ptr %rx_p1ks.0, i32 2
  %43 = ptrtoint ptr %arrayidx1.2.i59 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %arrayidx1.2.i59, align 2
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %2, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %45) #13
  %arrayidx1.3.i61 = getelementptr i16, ptr %rx_p1ks.0, i32 3
  %47 = ptrtoint ptr %arrayidx1.3.i61 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx1.3.i61, align 2
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %3, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #13
  %arrayidx1.4.i63 = getelementptr i16, ptr %rx_p1ks.0, i32 4
  %51 = ptrtoint ptr %arrayidx1.4.i63 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx1.4.i63, align 2
  %52 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bss_conf, align 8
  call void @ieee80211_get_tkip_rx_p1k(ptr noundef %key, ptr noundef %53, i32 noundef 0, ptr noundef nonnull %p1k) #13
  %arrayidx33 = getelementptr %struct.iwl_p1k_cache, ptr %rx_p1ks.0, i32 1
  %54 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %p1k, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55) #13
  %57 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx33, align 2
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %0, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59) #13
  %arrayidx1.1.i65 = getelementptr %struct.iwl_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx1.1.i65 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx1.1.i65, align 2
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %1, align 2
  %64 = call i16 @llvm.bswap.i16(i16 %63) #13
  %arrayidx1.2.i67 = getelementptr %struct.iwl_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx1.2.i67 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx1.2.i67, align 2
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %2, align 2
  %68 = call i16 @llvm.bswap.i16(i16 %67) #13
  %arrayidx1.3.i69 = getelementptr %struct.iwl_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 3
  %69 = ptrtoint ptr %arrayidx1.3.i69 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx1.3.i69, align 2
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %3, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71) #13
  %arrayidx1.4.i71 = getelementptr %struct.iwl_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx1.4.i71 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx1.4.i71, align 2
  %arrayidx37 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %74 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %arrayidx37, align 1
  %76 = ptrtoint ptr %rx_mic_key.0 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %rx_mic_key.0, align 1
  %have_tkip_keys = getelementptr inbounds %struct.wowlan_key_tkip_data, ptr %_data, i32 0, i32 1
  %77 = ptrtoint ptr %have_tkip_keys to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %have_tkip_keys, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %p1k) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_wowlan_gtk_type_iter(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr noundef readnone %sta, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %_data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cipher, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1027084, label %entry.sw.bb_crit_edge
    i32 1027083, label %entry.sw.bb_crit_edge16
    i32 1027078, label %sw.bb1
    i32 1027076, label %sw.bb4
    i32 1027080, label %entry.sw.bb6_crit_edge
    i32 1027081, label %entry.sw.bb6_crit_edge17
  ]

entry.sw.bb6_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %3 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_data, align 4
  %igtk_cipher = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %igtk_cipher to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 83886080, ptr %igtk_cipher, align 1
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_data, align 4
  %igtk_cipher3 = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %igtk_cipher3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 33554432, ptr %igtk_cipher3, align 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.then, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_data, align 4
  %gtk_cipher = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %gtk_cipher to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 33554432, ptr %gtk_cipher, align 1
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge17
  %tobool7.not = icmp eq ptr %sta, null
  br i1 %tobool7.not, label %if.then8, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_data, align 4
  %gtk_cipher10 = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd_v4, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %gtk_cipher10 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 83886080, ptr %gtk_cipher10, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %sw.bb6.cleanup_crit_edge, %if.then, %sw.bb4.cleanup_crit_edge, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_set_sta_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_wowlan_get_rsc_v5_data(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %key, ptr nocapture noundef %_data) #0 align 64 {
entry:
  %seq = alloca %struct.ieee80211_key_seq, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %seq.sroa.gep332 = getelementptr inbounds i8, ptr %seq, i32 5
  %seq.sroa.gep329 = getelementptr inbounds i8, ptr %seq, i32 4
  %seq.sroa.gep326 = getelementptr inbounds i8, ptr %seq, i32 3
  %seq.sroa.gep323 = getelementptr inbounds i8, ptr %seq, i32 2
  %seq.sroa.gep = getelementptr inbounds i8, ptr %seq, i32 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #13
  %2 = call ptr @memset(ptr %seq, i32 255, i32 20)
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %4, label %entry.cleanup252_crit_edge [
    i32 1027074, label %entry.sw.epilog_crit_edge
    i32 1027076, label %entry.sw.epilog_crit_edge356
    i32 1027080, label %entry.sw.epilog_crit_edge357
    i32 1027081, label %entry.sw.epilog_crit_edge358
  ]

entry.sw.epilog_crit_edge358:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge357:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge356:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup252_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup252

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge356, %entry.sw.epilog_crit_edge357, %entry.sw.epilog_crit_edge358
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_data, align 4
  br label %if.end86

if.else:                                          ; preds = %sw.epilog
  %gtks = getelementptr inbounds %struct.wowlan_key_rsc_v5_data, ptr %_data, i32 0, i32 2
  %8 = ptrtoint ptr %gtks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gtks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ugt i32 %9, 3
  br i1 %cmp, label %do.end, label %if.end25, !prof !97

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 364, i32 noundef 9, ptr noundef null) #13
  br label %cleanup252

if.end25:                                         ; preds = %if.else
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %10 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %11 to i32
  %arrayidx = getelementptr %struct.wowlan_key_rsc_v5_data, ptr %_data, i32 0, i32 3, i32 %9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_data, align 4
  %15 = ptrtoint ptr %gtks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gtks, align 4
  %rem = srem i32 %16, 2
  %arrayidx29 = getelementptr %struct.iwl_wowlan_rsc_tsc_params_cmd, ptr %14, i32 0, i32 1, i32 %rem
  %17 = load i8, ptr %keyidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp34 = icmp ugt i8 %17, 3
  br i1 %cmp34, label %do.end51, label %if.end67, !prof !97

do.end51:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 369, i32 noundef 9, ptr noundef null) #13
  br label %cleanup252

if.end67:                                         ; preds = %if.end25
  %conv70 = trunc i32 %rem to i8
  %idxprom336 = zext i8 %17 to i32
  %arrayidx73 = getelementptr %struct.iwl_wowlan_rsc_tsc_params_cmd, ptr %14, i32 0, i32 3, i32 %idxprom336
  %18 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv70, ptr %arrayidx73, align 1
  %19 = ptrtoint ptr %gtks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gtks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp75 = icmp sgt i32 %20, 1
  br i1 %cmp75, label %if.then77, label %if.end67.if.end84_crit_edge

if.end67.if.end84_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add nsw i32 %20, -2
  %arrayidx80 = getelementptr %struct.wowlan_key_rsc_v5_data, ptr %_data, i32 0, i32 3, i32 %sub
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx80, align 4
  %23 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_data, align 4
  %arrayidx83 = getelementptr %struct.iwl_wowlan_rsc_tsc_params_cmd, ptr %24, i32 0, i32 3, i32 %22
  %25 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %arrayidx83, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %if.end67.if.end84_crit_edge
  %26 = ptrtoint ptr %gtks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gtks, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %gtks, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %if.then
  %rsc.0 = phi ptr [ %7, %if.then ], [ %arrayidx29, %if.end84 ]
  %28 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cipher, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %29, label %do.end101 [
    i32 1027074, label %for.cond.preheader
    i32 1027076, label %if.end86.sw.bb122_crit_edge
    i32 1027080, label %if.end86.sw.bb122_crit_edge359
    i32 1027081, label %if.end86.sw.bb122_crit_edge360
  ]

if.end86.sw.bb122_crit_edge360:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

if.end86.sw.bb122_crit_edge359:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

if.end86.sw.bb122_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

for.cond.preheader:                               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef nonnull %seq) #13
  %31 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seq, align 4
  %conv118 = zext i32 %32 to i64
  %shl = shl nuw nsw i64 %conv118, 16
  %33 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119 = zext i16 %34 to i64
  %or = or i64 %shl, %conv119
  %35 = call i64 @llvm.bswap.i64(i64 %or)
  %36 = ptrtoint ptr %rsc.0 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %rsc.0, align 8
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 1, ptr noundef nonnull %seq) #13
  %37 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %seq, align 4
  %conv118.1 = zext i32 %38 to i64
  %shl.1 = shl nuw nsw i64 %conv118.1, 16
  %39 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119.1 = zext i16 %40 to i64
  %or.1 = or i64 %shl.1, %conv119.1
  %41 = call i64 @llvm.bswap.i64(i64 %or.1)
  %arrayidx120.1 = getelementptr i64, ptr %rsc.0, i32 1
  %42 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx120.1, align 8
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 2, ptr noundef nonnull %seq) #13
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seq, align 4
  %conv118.2 = zext i32 %44 to i64
  %shl.2 = shl nuw nsw i64 %conv118.2, 16
  %45 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119.2 = zext i16 %46 to i64
  %or.2 = or i64 %shl.2, %conv119.2
  %47 = call i64 @llvm.bswap.i64(i64 %or.2)
  %arrayidx120.2 = getelementptr i64, ptr %rsc.0, i32 2
  %48 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx120.2, align 8
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 3, ptr noundef nonnull %seq) #13
  %49 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seq, align 4
  %conv118.3 = zext i32 %50 to i64
  %shl.3 = shl nuw nsw i64 %conv118.3, 16
  %51 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119.3 = zext i16 %52 to i64
  %or.3 = or i64 %shl.3, %conv119.3
  %53 = call i64 @llvm.bswap.i64(i64 %or.3)
  %arrayidx120.3 = getelementptr i64, ptr %rsc.0, i32 3
  %54 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx120.3, align 8
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 4, ptr noundef nonnull %seq) #13
  %55 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %seq, align 4
  %conv118.4 = zext i32 %56 to i64
  %shl.4 = shl nuw nsw i64 %conv118.4, 16
  %57 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119.4 = zext i16 %58 to i64
  %or.4 = or i64 %shl.4, %conv119.4
  %59 = call i64 @llvm.bswap.i64(i64 %or.4)
  %arrayidx120.4 = getelementptr i64, ptr %rsc.0, i32 4
  %60 = ptrtoint ptr %arrayidx120.4 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx120.4, align 8
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 5, ptr noundef nonnull %seq) #13
  %61 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %seq, align 4
  %conv118.5 = zext i32 %62 to i64
  %shl.5 = shl nuw nsw i64 %conv118.5, 16
  %63 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119.5 = zext i16 %64 to i64
  %or.5 = or i64 %shl.5, %conv119.5
  %65 = call i64 @llvm.bswap.i64(i64 %or.5)
  %arrayidx120.5 = getelementptr i64, ptr %rsc.0, i32 5
  %66 = ptrtoint ptr %arrayidx120.5 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %arrayidx120.5, align 8
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 6, ptr noundef nonnull %seq) #13
  %67 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %seq, align 4
  %conv118.6 = zext i32 %68 to i64
  %shl.6 = shl nuw nsw i64 %conv118.6, 16
  %69 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119.6 = zext i16 %70 to i64
  %or.6 = or i64 %shl.6, %conv119.6
  %71 = call i64 @llvm.bswap.i64(i64 %or.6)
  %arrayidx120.6 = getelementptr i64, ptr %rsc.0, i32 6
  %72 = ptrtoint ptr %arrayidx120.6 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx120.6, align 8
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef 7, ptr noundef nonnull %seq) #13
  %73 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %seq, align 4
  %conv118.7 = zext i32 %74 to i64
  %shl.7 = shl nuw nsw i64 %conv118.7, 16
  %75 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %seq.sroa.gep329, align 4
  %conv119.7 = zext i16 %76 to i64
  %or.7 = or i64 %shl.7, %conv119.7
  %77 = call i64 @llvm.bswap.i64(i64 %or.7)
  %arrayidx120.7 = getelementptr i64, ptr %rsc.0, i32 7
  %78 = ptrtoint ptr %arrayidx120.7 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %arrayidx120.7, align 8
  %have_rsc = getelementptr inbounds %struct.wowlan_key_rsc_v5_data, ptr %_data, i32 0, i32 1
  %79 = ptrtoint ptr %have_rsc to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %have_rsc, align 4
  br label %cleanup252

do.end101:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 9, ptr noundef null) #13
  br label %cleanup252

sw.bb122:                                         ; preds = %if.end86.sw.bb122_crit_edge, %if.end86.sw.bb122_crit_edge359, %if.end86.sw.bb122_crit_edge360
  br i1 %tobool.not, label %sw.bb122.for.body219_crit_edge, label %if.then124

sw.bb122.for.body219_crit_edge:                   ; preds = %sw.bb122
  br label %for.body219

if.then124:                                       ; preds = %sw.bb122
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %80 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %83, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then124.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then124.rcu_read_lock.exit_crit_edge:          ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then124
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then124.rcu_read_lock.exit_crit_edge
  %keyidx130 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %84 = ptrtoint ptr %keyidx130 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %keyidx130, align 1
  %idxprom131 = sext i8 %85 to i32
  %arrayidx132 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 14, i32 %idxprom131
  %86 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %arrayidx132, align 4
  %call134 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end143_crit_edge

rcu_read_lock.exit.do.end143_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call136 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %land.lhs.true.do.end143_crit_edge, label %land.lhs.true138

land.lhs.true.do.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143

land.lhs.true138:                                 ; preds = %land.lhs.true
  %.b311 = load i1, ptr @iwl_mvm_wowlan_get_rsc_v5_data.__warned, align 1
  br i1 %.b311, label %land.lhs.true138.do.end143_crit_edge, label %if.then140

land.lhs.true138.do.end143_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end143

if.then140:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_wowlan_get_rsc_v5_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.3) #13
  br label %do.end143

do.end143:                                        ; preds = %if.then140, %land.lhs.true138.do.end143_crit_edge, %land.lhs.true.do.end143_crit_edge, %rcu_read_lock.exit.do.end143_crit_edge
  %tobool146.not = icmp eq ptr %87, null
  br i1 %tobool146.not, label %cleanup, label %for.cond181.preheader, !prof !97

for.cond181.preheader:                            ; preds = %do.end143
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  br label %for.body184

for.body184:                                      ; preds = %iwl_mvm_find_max_pn.exit.for.body184_crit_edge, %for.cond181.preheader
  %i.1342 = phi i32 [ 0, %for.cond181.preheader ], [ %inc211, %iwl_mvm_find_max_pn.exit.for.body184_crit_edge ]
  %88 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %trans, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %89, i32 0, i32 25
  %90 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num_rx_queues, align 8
  %conv185 = zext i8 %91 to i32
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.1342, ptr noundef nonnull %seq) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %91)
  %cmp11.i = icmp ugt i8 %91, 1
  br i1 %cmp11.i, label %for.body184.for.body.i_crit_edge, label %for.body184.iwl_mvm_find_max_pn.exit_crit_edge

for.body184.iwl_mvm_find_max_pn.exit_crit_edge:   ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_find_max_pn.exit

for.body184.for.body.i_crit_edge:                 ; preds = %for.body184
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body184.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.body184.for.body.i_crit_edge ]
  %ret.012.i = phi ptr [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ %seq, %for.body184.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm_key_pn, ptr %87, i32 0, i32 2, i32 %i.013.i
  %arrayidx2.i = getelementptr [8 x [6 x i8]], ptr %arrayidx.i, i32 0, i32 %i.1342
  %call.i312 = call i32 @memcmp(ptr noundef dereferenceable(6) %ret.012.i, ptr noundef dereferenceable(6) %arrayidx2.i, i32 noundef 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i312)
  %cmp4.i = icmp slt i32 %call.i312, 1
  %spec.select.i = select i1 %cmp4.i, ptr %arrayidx2.i, ptr %ret.012.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv185
  br i1 %exitcond.not.i, label %iwl_mvm_find_max_pn.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

iwl_mvm_find_max_pn.exit.loopexit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.i.sroa.gep = getelementptr i8, ptr %spec.select.i, i32 5
  %spec.select.i.sroa.gep349 = getelementptr i8, ptr %spec.select.i, i32 4
  %spec.select.i.sroa.gep351 = getelementptr i8, ptr %spec.select.i, i32 3
  %spec.select.i.sroa.gep353 = getelementptr i8, ptr %spec.select.i, i32 2
  %spec.select.i.sroa.gep355 = getelementptr i8, ptr %spec.select.i, i32 1
  br label %iwl_mvm_find_max_pn.exit

iwl_mvm_find_max_pn.exit:                         ; preds = %iwl_mvm_find_max_pn.exit.loopexit, %for.body184.iwl_mvm_find_max_pn.exit_crit_edge
  %ret.0.lcssa.i = phi ptr [ %seq, %for.body184.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi = phi ptr [ %seq.sroa.gep, %for.body184.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep355, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi322 = phi ptr [ %seq.sroa.gep323, %for.body184.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep353, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi325 = phi ptr [ %seq.sroa.gep326, %for.body184.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep351, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi328 = phi ptr [ %seq.sroa.gep329, %for.body184.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep349, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi331 = phi ptr [ %seq.sroa.gep332, %for.body184.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep, %iwl_mvm_find_max_pn.exit.loopexit ]
  %92 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi331 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ret.0.lcssa.i.sroa.phi331, align 1
  %conv188 = zext i8 %93 to i64
  %94 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi328 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ret.0.lcssa.i.sroa.phi328, align 1
  %conv190 = zext i8 %95 to i64
  %shl191 = shl nuw nsw i64 %conv190, 8
  %or192 = or i64 %shl191, %conv188
  %96 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi325 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ret.0.lcssa.i.sroa.phi325, align 1
  %conv194 = zext i8 %97 to i64
  %shl195 = shl nuw nsw i64 %conv194, 16
  %or196 = or i64 %or192, %shl195
  %98 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi322 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ret.0.lcssa.i.sroa.phi322, align 1
  %conv198 = zext i8 %99 to i64
  %shl199 = shl nuw nsw i64 %conv198, 24
  %or200 = or i64 %or196, %shl199
  %100 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ret.0.lcssa.i.sroa.phi, align 1
  %conv202 = zext i8 %101 to i64
  %shl203 = shl nuw nsw i64 %conv202, 32
  %or204 = or i64 %or200, %shl203
  %102 = ptrtoint ptr %ret.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ret.0.lcssa.i, align 1
  %conv206 = zext i8 %103 to i64
  %shl207 = shl nuw nsw i64 %conv206, 40
  %or208 = or i64 %or204, %shl207
  %104 = call i64 @llvm.bswap.i64(i64 %or208)
  %arrayidx209 = getelementptr i64, ptr %rsc.0, i32 %i.1342
  %105 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %arrayidx209, align 8
  %inc211 = add nuw nsw i32 %i.1342, 1
  %exitcond.not = icmp eq i32 %inc211, 8
  br i1 %exitcond.not, label %for.end212, label %iwl_mvm_find_max_pn.exit.for.body184_crit_edge

iwl_mvm_find_max_pn.exit.for.body184_crit_edge:   ; preds = %iwl_mvm_find_max_pn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body184

for.end212:                                       ; preds = %iwl_mvm_find_max_pn.exit
  %call.i313 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i313, label %for.end212.cleanup.thread_crit_edge, label %land.lhs.true.i316

for.end212.cleanup.thread_crit_edge:              ; preds = %for.end212
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true.i316:                               ; preds = %for.end212
  %call1.i314 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i314)
  %tobool.not.i315 = icmp eq i32 %call1.i314, 0
  br i1 %tobool.not.i315, label %land.lhs.true.i316.cleanup.thread_crit_edge, label %land.lhs.true2.i318

land.lhs.true.i316.cleanup.thread_crit_edge:      ; preds = %land.lhs.true.i316
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true2.i318:                              ; preds = %land.lhs.true.i316
  %.b4.i317 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i317, label %land.lhs.true2.i318.cleanup.thread_crit_edge, label %if.then.i319

land.lhs.true2.i318.cleanup.thread_crit_edge:     ; preds = %land.lhs.true2.i318
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then.i319:                                     ; preds = %land.lhs.true2.i318
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i319, %land.lhs.true2.i318.cleanup.thread_crit_edge, %land.lhs.true.i316.cleanup.thread_crit_edge, %for.end212.cleanup.thread_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  %106 = call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i320 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i320 to ptr
  %preempt_count.i.i.i.i321 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i321 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i321, align 4
  %sub.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i321, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end249

cleanup:                                          ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup252

for.body219:                                      ; preds = %for.body219.for.body219_crit_edge, %sw.bb122.for.body219_crit_edge
  %i.2344 = phi i32 [ %inc247, %for.body219.for.body219_crit_edge ], [ 0, %sw.bb122.for.body219_crit_edge ]
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.2344, ptr noundef nonnull %seq) #13
  %110 = ptrtoint ptr %seq.sroa.gep332 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %seq.sroa.gep332, align 1
  %conv224 = zext i8 %111 to i64
  %112 = ptrtoint ptr %seq.sroa.gep329 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %seq.sroa.gep329, align 4
  %conv226 = zext i8 %113 to i64
  %shl227 = shl nuw nsw i64 %conv226, 8
  %or228 = or i64 %shl227, %conv224
  %114 = ptrtoint ptr %seq.sroa.gep326 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %seq.sroa.gep326, align 1
  %conv230 = zext i8 %115 to i64
  %shl231 = shl nuw nsw i64 %conv230, 16
  %or232 = or i64 %or228, %shl231
  %116 = ptrtoint ptr %seq.sroa.gep323 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %seq.sroa.gep323, align 2
  %conv234 = zext i8 %117 to i64
  %shl235 = shl nuw nsw i64 %conv234, 24
  %or236 = or i64 %or232, %shl235
  %118 = ptrtoint ptr %seq.sroa.gep to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %seq.sroa.gep, align 1
  %conv238 = zext i8 %119 to i64
  %shl239 = shl nuw nsw i64 %conv238, 32
  %or240 = or i64 %or236, %shl239
  %120 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %seq, align 4
  %conv242 = zext i8 %121 to i64
  %shl243 = shl nuw nsw i64 %conv242, 40
  %or244 = or i64 %or240, %shl243
  %122 = call i64 @llvm.bswap.i64(i64 %or244)
  %arrayidx245 = getelementptr i64, ptr %rsc.0, i32 %i.2344
  %123 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %arrayidx245, align 8
  %inc247 = add nuw nsw i32 %i.2344, 1
  %exitcond346.not = icmp eq i32 %inc247, 8
  br i1 %exitcond346.not, label %for.body219.if.end249_crit_edge, label %for.body219.for.body219_crit_edge

for.body219.for.body219_crit_edge:                ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body219

for.body219.if.end249_crit_edge:                  ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249

if.end249:                                        ; preds = %for.body219.if.end249_crit_edge, %cleanup.thread
  %have_rsc250 = getelementptr inbounds %struct.wowlan_key_rsc_v5_data, ptr %_data, i32 0, i32 1
  %124 = ptrtoint ptr %have_rsc250 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %have_rsc250, align 4
  br label %cleanup252

cleanup252:                                       ; preds = %if.end249, %cleanup, %do.end101, %for.cond.preheader, %do.end51, %do.end, %entry.cleanup252_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_wowlan_get_rsc_tsc_data(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %key, ptr nocapture noundef %_data) #0 align 64 {
entry:
  %seq = alloca %struct.ieee80211_key_seq, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %seq.sroa.gep229 = getelementptr inbounds i8, ptr %seq, i32 5
  %seq.sroa.gep226 = getelementptr inbounds i8, ptr %seq, i32 4
  %seq.sroa.gep223 = getelementptr inbounds i8, ptr %seq, i32 3
  %seq.sroa.gep220 = getelementptr inbounds i8, ptr %seq, i32 2
  %seq.sroa.gep = getelementptr inbounds i8, ptr %seq, i32 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #13
  %2 = call ptr @memset(ptr %seq, i32 255, i32 20)
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 1027074, label %sw.bb
    i32 1027076, label %entry.sw.bb17_crit_edge
    i32 1027080, label %entry.sw.bb17_crit_edge254
    i32 1027081, label %entry.sw.bb17_crit_edge255
  ]

entry.sw.bb17_crit_edge255:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

entry.sw.bb17_crit_edge254:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %sta, null
  %6 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_data, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %tsc = getelementptr inbounds %struct.iwl_tkip_rsc_tsc, ptr %7, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #13
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %key) #13
  %conv = trunc i64 %call.i to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %tsc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %tsc, align 1
  %shr = lshr i64 %call.i, 16
  %conv6 = trunc i64 %shr to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %iv32 = getelementptr inbounds %struct.iwl_tkip_rsc_tsc, ptr %7, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %iv32 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %iv32, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %multicast_rsc = getelementptr inbounds %struct.iwl_tkip_rsc_tsc, ptr %7, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tkip_sc.0 = phi ptr [ %7, %if.then ], [ %multicast_rsc, %if.else ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0243 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.0243, ptr noundef nonnull %seq) #13
  %12 = ptrtoint ptr %seq.sroa.gep226 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %seq.sroa.gep226, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %arrayidx = getelementptr %struct.tkip_sc, ptr %tkip_sc.0, i32 %i.0243
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seq, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %iv3216 = getelementptr %struct.tkip_sc, ptr %tkip_sc.0, i32 %i.0243, i32 2
  %19 = ptrtoint ptr %iv3216 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %iv3216, align 1
  %inc = add nuw nsw i32 %i.0243, 1
  %exitcond245.not = icmp eq i32 %inc, 16
  br i1 %exitcond245.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %have_rsc_tsc = getelementptr inbounds %struct.wowlan_key_rsc_tsc_data, ptr %_data, i32 0, i32 1
  %20 = ptrtoint ptr %have_rsc_tsc to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %have_rsc_tsc, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge254, %entry.sw.bb17_crit_edge255
  %tobool18.not = icmp eq ptr %sta, null
  %21 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_data, align 4
  br i1 %tobool18.not, label %if.end38.thread, label %land.lhs.true

if.end38.thread:                                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  %multicast_rsc36 = getelementptr inbounds %struct.iwl_aes_rsc_tsc, ptr %22, i32 0, i32 1
  br label %if.else123

land.lhs.true:                                    ; preds = %sw.bb17
  %tsc29 = getelementptr inbounds %struct.iwl_aes_rsc_tsc, ptr %22, i32 0, i32 2
  %call.i.i206 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #13
  %call.i207 = tail call i64 @generic_atomic64_read(ptr noundef %key) #13
  %23 = tail call i64 @llvm.bswap.i64(i64 %call.i207)
  %24 = ptrtoint ptr %tsc29 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %tsc29, align 1
  %fw.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 3
  %25 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %26, i32 0, i32 5, i32 8, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.if.else123_crit_edge, label %if.then42

land.lhs.true.if.else123_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else123

if.then42:                                        ; preds = %land.lhs.true
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %30 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i208 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i208, label %if.then42.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then42.rcu_read_lock.exit_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then42
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then42.rcu_read_lock.exit_crit_edge
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %34 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %keyidx, align 1
  %idxprom = sext i8 %35 to i32
  %arrayidx46 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 14, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx46, align 4
  %call48 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %rcu_read_lock.exit.do.end58_crit_edge

rcu_read_lock.exit.do.end58_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true50:                                  ; preds = %rcu_read_lock.exit
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b205 = load i1, ptr @iwl_mvm_wowlan_get_rsc_tsc_data.__warned, align 1
  br i1 %.b205, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_wowlan_get_rsc_tsc_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 295, ptr noundef nonnull @.str.3) #13
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %rcu_read_lock.exit.do.end58_crit_edge
  %tobool60.not = icmp eq ptr %37, null
  br i1 %tobool60.not, label %cleanup, label %for.cond90.preheader, !prof !97

for.cond90.preheader:                             ; preds = %do.end58
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  br label %for.body93

for.body93:                                       ; preds = %iwl_mvm_find_max_pn.exit.for.body93_crit_edge, %for.cond90.preheader
  %i.1240 = phi i32 [ 0, %for.cond90.preheader ], [ %inc119, %iwl_mvm_find_max_pn.exit.for.body93_crit_edge ]
  %38 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 25
  %40 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_rx_queues, align 8
  %conv94 = zext i8 %41 to i32
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.1240, ptr noundef nonnull %seq) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp11.i = icmp ugt i8 %41, 1
  br i1 %cmp11.i, label %for.body93.for.body.i_crit_edge, label %for.body93.iwl_mvm_find_max_pn.exit_crit_edge

for.body93.iwl_mvm_find_max_pn.exit_crit_edge:    ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_find_max_pn.exit

for.body93.for.body.i_crit_edge:                  ; preds = %for.body93
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body93.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.body93.for.body.i_crit_edge ]
  %ret.012.i = phi ptr [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ %seq, %for.body93.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm_key_pn, ptr %37, i32 0, i32 2, i32 %i.013.i
  %arrayidx2.i = getelementptr [8 x [6 x i8]], ptr %arrayidx.i, i32 0, i32 %i.1240
  %call.i209 = call i32 @memcmp(ptr noundef dereferenceable(6) %ret.012.i, ptr noundef dereferenceable(6) %arrayidx2.i, i32 noundef 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i209)
  %cmp4.i = icmp slt i32 %call.i209, 1
  %spec.select.i = select i1 %cmp4.i, ptr %arrayidx2.i, ptr %ret.012.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv94
  br i1 %exitcond.not.i, label %iwl_mvm_find_max_pn.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

iwl_mvm_find_max_pn.exit.loopexit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.i.sroa.gep = getelementptr i8, ptr %spec.select.i, i32 5
  %spec.select.i.sroa.gep247 = getelementptr i8, ptr %spec.select.i, i32 4
  %spec.select.i.sroa.gep249 = getelementptr i8, ptr %spec.select.i, i32 3
  %spec.select.i.sroa.gep251 = getelementptr i8, ptr %spec.select.i, i32 2
  %spec.select.i.sroa.gep253 = getelementptr i8, ptr %spec.select.i, i32 1
  br label %iwl_mvm_find_max_pn.exit

iwl_mvm_find_max_pn.exit:                         ; preds = %iwl_mvm_find_max_pn.exit.loopexit, %for.body93.iwl_mvm_find_max_pn.exit_crit_edge
  %ret.0.lcssa.i = phi ptr [ %seq, %for.body93.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi = phi ptr [ %seq.sroa.gep, %for.body93.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep253, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi219 = phi ptr [ %seq.sroa.gep220, %for.body93.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep251, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi222 = phi ptr [ %seq.sroa.gep223, %for.body93.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep249, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi225 = phi ptr [ %seq.sroa.gep226, %for.body93.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep247, %iwl_mvm_find_max_pn.exit.loopexit ]
  %ret.0.lcssa.i.sroa.phi228 = phi ptr [ %seq.sroa.gep229, %for.body93.iwl_mvm_find_max_pn.exit_crit_edge ], [ %spec.select.i.sroa.gep, %iwl_mvm_find_max_pn.exit.loopexit ]
  %42 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi228 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ret.0.lcssa.i.sroa.phi228, align 1
  %conv97 = zext i8 %43 to i64
  %44 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi225 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ret.0.lcssa.i.sroa.phi225, align 1
  %conv99 = zext i8 %45 to i64
  %shl = shl nuw nsw i64 %conv99, 8
  %or = or i64 %shl, %conv97
  %46 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi222 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ret.0.lcssa.i.sroa.phi222, align 1
  %conv101 = zext i8 %47 to i64
  %shl102 = shl nuw nsw i64 %conv101, 16
  %or103 = or i64 %or, %shl102
  %48 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi219 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ret.0.lcssa.i.sroa.phi219, align 1
  %conv105 = zext i8 %49 to i64
  %shl106 = shl nuw nsw i64 %conv105, 24
  %or107 = or i64 %or103, %shl106
  %50 = ptrtoint ptr %ret.0.lcssa.i.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ret.0.lcssa.i.sroa.phi, align 1
  %conv109 = zext i8 %51 to i64
  %shl110 = shl nuw nsw i64 %conv109, 32
  %or111 = or i64 %or107, %shl110
  %52 = ptrtoint ptr %ret.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ret.0.lcssa.i, align 1
  %conv113 = zext i8 %53 to i64
  %shl114 = shl nuw nsw i64 %conv113, 40
  %or115 = or i64 %or111, %shl114
  %54 = call i64 @llvm.bswap.i64(i64 %or115)
  %arrayidx116 = getelementptr %struct.aes_sc, ptr %22, i32 %i.1240
  %55 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %arrayidx116, align 1
  %inc119 = add nuw nsw i32 %i.1240, 1
  %exitcond.not = icmp eq i32 %inc119, 8
  br i1 %exitcond.not, label %for.end120, label %iwl_mvm_find_max_pn.exit.for.body93_crit_edge

iwl_mvm_find_max_pn.exit.for.body93_crit_edge:    ; preds = %iwl_mvm_find_max_pn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body93

for.end120:                                       ; preds = %iwl_mvm_find_max_pn.exit
  %call.i210 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i210, label %for.end120.cleanup.thread_crit_edge, label %land.lhs.true.i213

for.end120.cleanup.thread_crit_edge:              ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true.i213:                               ; preds = %for.end120
  %call1.i211 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i211)
  %tobool.not.i212 = icmp eq i32 %call1.i211, 0
  br i1 %tobool.not.i212, label %land.lhs.true.i213.cleanup.thread_crit_edge, label %land.lhs.true2.i215

land.lhs.true.i213.cleanup.thread_crit_edge:      ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true2.i215:                              ; preds = %land.lhs.true.i213
  %.b4.i214 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i214, label %land.lhs.true2.i215.cleanup.thread_crit_edge, label %if.then.i216

land.lhs.true2.i215.cleanup.thread_crit_edge:     ; preds = %land.lhs.true2.i215
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then.i216:                                     ; preds = %land.lhs.true2.i215
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i216, %land.lhs.true2.i215.cleanup.thread_crit_edge, %land.lhs.true.i213.cleanup.thread_crit_edge, %for.end120.cleanup.thread_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  %56 = call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i217 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i217 to ptr
  %preempt_count.i.i.i.i218 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i218, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i218, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end158

cleanup:                                          ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 296, i32 noundef 9, ptr noundef null) #13
  tail call fastcc void @rcu_read_unlock()
  br label %sw.epilog

if.else123:                                       ; preds = %land.lhs.true.if.else123_crit_edge, %if.end38.thread
  %aes_sc.0232 = phi ptr [ %multicast_rsc36, %if.end38.thread ], [ %22, %land.lhs.true.if.else123_crit_edge ]
  br label %for.body127

for.body127:                                      ; preds = %for.body127.for.body127_crit_edge, %if.else123
  %i.2242 = phi i32 [ 0, %if.else123 ], [ %inc156, %for.body127.for.body127_crit_edge ]
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.2242, ptr noundef nonnull %seq) #13
  %60 = ptrtoint ptr %seq.sroa.gep229 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %seq.sroa.gep229, align 1
  %conv132 = zext i8 %61 to i64
  %62 = ptrtoint ptr %seq.sroa.gep226 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %seq.sroa.gep226, align 4
  %conv134 = zext i8 %63 to i64
  %shl135 = shl nuw nsw i64 %conv134, 8
  %or136 = or i64 %shl135, %conv132
  %64 = ptrtoint ptr %seq.sroa.gep223 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %seq.sroa.gep223, align 1
  %conv138 = zext i8 %65 to i64
  %shl139 = shl nuw nsw i64 %conv138, 16
  %or140 = or i64 %or136, %shl139
  %66 = ptrtoint ptr %seq.sroa.gep220 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %seq.sroa.gep220, align 2
  %conv142 = zext i8 %67 to i64
  %shl143 = shl nuw nsw i64 %conv142, 24
  %or144 = or i64 %or140, %shl143
  %68 = ptrtoint ptr %seq.sroa.gep to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %seq.sroa.gep, align 1
  %conv146 = zext i8 %69 to i64
  %shl147 = shl nuw nsw i64 %conv146, 32
  %or148 = or i64 %or144, %shl147
  %70 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %seq, align 4
  %conv150 = zext i8 %71 to i64
  %shl151 = shl nuw nsw i64 %conv150, 40
  %or152 = or i64 %or148, %shl151
  %72 = call i64 @llvm.bswap.i64(i64 %or152)
  %arrayidx153 = getelementptr %struct.aes_sc, ptr %aes_sc.0232, i32 %i.2242
  %73 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %arrayidx153, align 1
  %inc156 = add nuw nsw i32 %i.2242, 1
  %exitcond244.not = icmp eq i32 %inc156, 16
  br i1 %exitcond244.not, label %for.body127.if.end158_crit_edge, label %for.body127.for.body127_crit_edge

for.body127.for.body127_crit_edge:                ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body127

for.body127.if.end158_crit_edge:                  ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.end158:                                        ; preds = %for.body127.if.end158_crit_edge, %cleanup.thread
  %have_rsc_tsc159 = getelementptr inbounds %struct.wowlan_key_rsc_tsc_data, ptr %_data, i32 0, i32 1
  %74 = ptrtoint ptr %have_rsc_tsc159 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %have_rsc_tsc159, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end158, %cleanup, %for.end, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_key_rx_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_p1k_iv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_rx_p1k(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_dbg_read_d3_debug_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_update_changed_regdom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_ppag_send_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_sar_select_profile(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_query_netdetect_reasons(ptr noundef %mvm, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %wakeup = alloca %struct.cfg80211_wowlan_wakeup, align 4
  %query = alloca %struct.iwl_mvm_nd_query_results, align 4
  %matched_profiles = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wakeup) #13
  %0 = call ptr @memcpy(ptr %wakeup, ptr @__const.iwl_mvm_report_wakeup_reasons.wakeup, i32 32)
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %query) #13
  %1 = call ptr @memset(ptr %query, i32 255, i32 204)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matched_profiles) #13
  %2 = ptrtoint ptr %matched_profiles to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %matched_profiles, align 4, !annotation !95
  %call = tail call fastcc ptr @iwl_mvm_get_wakeup_status(ptr noundef %mvm, i8 noundef zeroext -1)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end:                                           ; preds = %entry
  %wakeup_reasons = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %wakeup_reasons to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wakeup_reasons, align 8
  tail call void @kfree(ptr noundef %call) #13
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end3.thread170

if.end3.thread170:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rfkill_release = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 5
  %5 = ptrtoint ptr %rfkill_release to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %rfkill_release, align 1
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end3.if.end5_crit_edge, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3.if.end5_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end5:                                          ; preds = %if.end3.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #13
  %6 = call ptr @memset(ptr %cmd.i, i32 0, i32 36)
  %7 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %7, align 4
  %9 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 86, ptr %9, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 8
  %call.i.i113 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 110, i8 noundef zeroext 99) #13
  %call1.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %iwl_mvm_netdetect_query_results.exit.thread

iwl_mvm_netdetect_query_results.exit.thread:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %call1.i) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #13
  br label %out

if.end.i:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %16, i32 0, i32 5, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %resp_pkt.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 1
  %19 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resp_pkt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %20, align 1
  %23 = and i32 %22, -12648448
  %24 = call i32 @llvm.bswap.i32(i32 %23) #13
  %sub.i.i = add nsw i32 %24, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i)
  %cmp.i114 = icmp ult i32 %sub.i.i, 24
  br i1 %cmp.i114, label %do.end15.i, label %if.end19.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @.str.22) #13
  %_rx_page_addr.i.i.c = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 2
  %27 = ptrtoint ptr %_rx_page_addr.i.i.c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %_rx_page_addr.i.i.c, align 4
  %_rx_page_order.i.i.c = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 3
  %29 = ptrtoint ptr %_rx_page_order.i.i.c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %_rx_page_order.i.i.c, align 4
  call void @free_pages(i32 noundef %28, i32 noundef %30) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #13
  br label %out

if.end19.i:                                       ; preds = %if.end.i
  %31 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %call.i.i113)
  %cmp.i.i = icmp eq i8 %call.i.i113, 99
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call.i.i113)
  %cmp3.i.i = icmp ult i8 %call.i.i113, 3
  %32 = or i1 %cmp.i.i, %cmp3.i.i
  %33 = select i1 %32, i32 11, i32 8
  %mul8.i = shl nuw nsw i32 %33, 4
  %mul.i = mul nuw nsw i32 %33, 18
  %matches_len.0.i = select i1 %tobool.i.not.i, i32 %mul8.i, i32 %mul.i
  %data.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %20, i32 0, i32 2
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %data.i, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #13
  %37 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %query, align 4
  %matches.i = getelementptr inbounds %struct.iwl_mvm_nd_query_results, ptr %query, i32 0, i32 1
  %matches23.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %20, i32 4
  %38 = call ptr @memcpy(ptr %matches.i, ptr %matches23.i, i32 %matches_len.0.i)
  %n_scans_done.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %20, i32 2
  %39 = ptrtoint ptr %n_scans_done.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %n_scans_done.i, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40) #13
  %last_netdetect_scans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 116
  %42 = ptrtoint ptr %last_netdetect_scans.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %last_netdetect_scans.i, align 8
  %_rx_page_addr.i.i.c178 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 2
  %43 = ptrtoint ptr %_rx_page_addr.i.i.c178 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %_rx_page_addr.i.i.c178, align 4
  %_rx_page_order.i.i.c179 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 3
  %45 = ptrtoint ptr %_rx_page_order.i.i.c179 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %_rx_page_order.i.i.c179, align 4
  call void @free_pages(i32 noundef %44, i32 noundef %46) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool9.not = icmp eq i32 %35, 0
  br i1 %tobool9.not, label %if.end19.i.out_crit_edge, label %if.end11

if.end19.i.out_crit_edge:                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end11:                                         ; preds = %if.end19.i
  %47 = ptrtoint ptr %matched_profiles to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %36, ptr %matched_profiles, align 4
  %n_nd_match_sets = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 107
  %48 = ptrtoint ptr %n_nd_match_sets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_nd_match_sets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool13.not = icmp eq i32 %49, 0
  br i1 %tobool13.not, label %do.end, label %cond.false.i

cond.false.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i32 @__sw_hweight32(i32 noundef %36) #13
  br label %if.end8.i.i

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %51, i32 noundef 0, ptr noundef nonnull @.str.16) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end, %cond.false.i
  %n_matches.0 = phi i32 [ 0, %do.end ], [ %call.i.i, %cond.false.i ]
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_matches.0, i32 4) #13
  %53 = extractvalue { i32, i1 } %52, 1
  %54 = extractvalue { i32, i1 } %52, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %54, i32 4) #13
  %retval.0.i115 = select i1 %53, i32 -1, i32 %spec.select.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i115, i32 noundef 3520) #17
  %tobool22.not = icmp eq ptr %call9.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_matches.0)
  %tobool24.not = icmp eq i32 %n_matches.0, 0
  %or.cond = or i1 %tobool24.not, %tobool22.not
  br i1 %or.cond, label %if.end8.i.i.out_report_nd_crit_edge, label %if.end26

if.end8.i.i.out_report_nd_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_report_nd

if.end26:                                         ; preds = %if.end8.i.i
  %55 = ptrtoint ptr %n_nd_match_sets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_nd_match_sets, align 8
  %call28 = call i32 @_find_next_bit_be(ptr noundef nonnull %matched_profiles, i32 noundef %56, i32 noundef 0) #13
  %57 = ptrtoint ptr %n_nd_match_sets to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_nd_match_sets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %58)
  %cmp30181 = icmp slt i32 %call28, %58
  br i1 %cmp30181, label %for.body.lr.ph, label %if.end26.out_report_nd_crit_edge

if.end26.out_report_nd_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_report_nd

for.body.lr.ph:                                   ; preds = %if.end26
  %nd_match_sets = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 106
  %n_nd_channels = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 109
  %nd_channels24.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 108
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0182 = phi i32 [ %call28, %for.body.lr.ph ], [ %call59, %for.inc.for.body_crit_edge ]
  %59 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i118 = getelementptr %struct.iwl_fw, ptr %60, i32 0, i32 5, i32 7, i32 1
  %61 = ptrtoint ptr %arrayidx.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i.i.i118, align 4
  %63 = and i32 %62, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i.not.i119 = icmp eq i32 %63, 0
  br i1 %tobool.i.not.i119, label %cond.false187.i, label %cond.false.i122

cond.false.i122:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.i = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 0
  %64 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx2.i, align 1
  %conv86.i = zext i8 %65 to i32
  %call.i.i121 = call i32 @__sw_hweight8(i32 noundef %conv86.i) #13
  %arrayidx2.i.1 = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 1
  %66 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx2.i.1, align 2
  %conv86.i.1 = zext i8 %67 to i32
  %call.i.i121.1 = call i32 @__sw_hweight8(i32 noundef %conv86.i.1) #13
  %add88.i.1 = add i32 %call.i.i121.1, %call.i.i121
  %arrayidx2.i.2 = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 2
  %68 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx2.i.2, align 1
  %conv86.i.2 = zext i8 %69 to i32
  %call.i.i121.2 = call i32 @__sw_hweight8(i32 noundef %conv86.i.2) #13
  %add88.i.2 = add i32 %call.i.i121.2, %add88.i.1
  %arrayidx2.i.3 = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 3
  %70 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx2.i.3, align 2
  %conv86.i.3 = zext i8 %71 to i32
  %call.i.i121.3 = call i32 @__sw_hweight8(i32 noundef %conv86.i.3) #13
  %add88.i.3 = add i32 %call.i.i121.3, %add88.i.2
  %arrayidx2.i.4 = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 4
  %72 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx2.i.4, align 1
  %conv86.i.4 = zext i8 %73 to i32
  %call.i.i121.4 = call i32 @__sw_hweight8(i32 noundef %conv86.i.4) #13
  %add88.i.4 = add i32 %call.i.i121.4, %add88.i.3
  %arrayidx2.i.5 = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 5
  %74 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx2.i.5, align 2
  %conv86.i.5 = zext i8 %75 to i32
  %call.i.i121.5 = call i32 @__sw_hweight8(i32 noundef %conv86.i.5) #13
  %add88.i.5 = add i32 %call.i.i121.5, %add88.i.4
  %arrayidx2.i.6 = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 6
  %76 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx2.i.6, align 1
  %conv86.i.6 = zext i8 %77 to i32
  %call.i.i121.6 = call i32 @__sw_hweight8(i32 noundef %conv86.i.6) #13
  %add88.i.6 = add i32 %call.i.i121.6, %add88.i.5
  br label %if.end8.i.i152

cond.false187.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx98.i = getelementptr %struct.iwl_scan_offload_profile_match_v1, ptr %matches.i, i32 %i.0182, i32 5, i32 0
  %78 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx98.i, align 1
  %conv191.i = zext i8 %79 to i32
  %call.i274.i = call i32 @__sw_hweight8(i32 noundef %conv191.i) #13
  %arrayidx98.1.i = getelementptr %struct.iwl_scan_offload_profile_match_v1, ptr %matches.i, i32 %i.0182, i32 5, i32 1
  %80 = ptrtoint ptr %arrayidx98.1.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx98.1.i, align 4
  %conv191.1.i = zext i8 %81 to i32
  %call.i274.1.i = call i32 @__sw_hweight8(i32 noundef %conv191.1.i) #13
  %add195.1.i = add i32 %call.i274.1.i, %call.i274.i
  %arrayidx98.2.i = getelementptr %struct.iwl_scan_offload_profile_match_v1, ptr %matches.i, i32 %i.0182, i32 5, i32 2
  %82 = ptrtoint ptr %arrayidx98.2.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx98.2.i, align 1
  %conv191.2.i = zext i8 %83 to i32
  %call.i274.2.i = call i32 @__sw_hweight8(i32 noundef %conv191.2.i) #13
  %add195.2.i = add i32 %add195.1.i, %call.i274.2.i
  %arrayidx98.3.i = getelementptr %struct.iwl_scan_offload_profile_match_v1, ptr %matches.i, i32 %i.0182, i32 5, i32 3
  %84 = ptrtoint ptr %arrayidx98.3.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx98.3.i, align 2
  %conv191.3.i = zext i8 %85 to i32
  %call.i274.3.i = call i32 @__sw_hweight8(i32 noundef %conv191.3.i) #13
  %add195.3.i = add i32 %add195.2.i, %call.i274.3.i
  %arrayidx98.4.i = getelementptr %struct.iwl_scan_offload_profile_match_v1, ptr %matches.i, i32 %i.0182, i32 5, i32 4
  %86 = ptrtoint ptr %arrayidx98.4.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx98.4.i, align 1
  %conv191.4.i = zext i8 %87 to i32
  %call.i274.4.i = call i32 @__sw_hweight8(i32 noundef %conv191.4.i) #13
  %add195.4.i = add i32 %add195.3.i, %call.i274.4.i
  br label %if.end8.i.i152

if.end8.i.i152:                                   ; preds = %cond.false187.i, %cond.false.i122
  %n_chans.2.i = phi i32 [ %add195.4.i, %cond.false187.i ], [ %add88.i.6, %cond.false.i122 ]
  %88 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_chans.2.i, i32 4) #13
  %89 = extractvalue { i32, i1 } %88, 1
  %90 = extractvalue { i32, i1 } %88, 0
  %spec.select.i126 = call i32 @llvm.uadd.sat.i32(i32 %90, i32 40) #13
  %retval.0.i127 = select i1 %89, i32 -1, i32 %spec.select.i126
  %call9.i.i151 = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i127, i32 noundef 3520) #17
  %tobool34.not = icmp eq ptr %call9.i.i151, null
  br i1 %tobool34.not, label %if.end8.i.i152.out_report_nd_crit_edge, label %if.end36

if.end8.i.i152.out_report_nd_crit_edge:           ; preds = %if.end8.i.i152
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_report_nd

if.end36:                                         ; preds = %if.end8.i.i152
  %91 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call9.i.i, align 128
  %inc = add i32 %92, 1
  store i32 %inc, ptr %call9.i.i, align 128
  %arrayidx = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %call9.i.i, i32 0, i32 1, i32 %92
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call9.i.i151, ptr %arrayidx, align 4
  %94 = ptrtoint ptr %n_nd_match_sets to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %n_nd_match_sets, align 8
  %96 = xor i32 %i.0182, -1
  %sub39 = add i32 %95, %96
  %97 = ptrtoint ptr %nd_match_sets to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nd_match_sets, align 4
  %ssid_len = getelementptr %struct.cfg80211_match_set, ptr %98, i32 %sub39, i32 0, i32 1
  %99 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ssid_len, align 4
  %ssid_len42 = getelementptr inbounds %struct.cfg80211_ssid, ptr %call9.i.i151, i32 0, i32 1
  %101 = ptrtoint ptr %ssid_len42 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %ssid_len42, align 32
  %arrayidx46 = getelementptr %struct.cfg80211_match_set, ptr %98, i32 %sub39
  %conv = zext i8 %100 to i32
  %102 = call ptr @memcpy(ptr %call9.i.i151, ptr %arrayidx46, i32 %conv)
  %103 = ptrtoint ptr %n_nd_channels to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %n_nd_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %n_chans.2.i)
  %cmp52 = icmp slt i32 %104, %n_chans.2.i
  br i1 %cmp52, label %if.end36.for.inc_crit_edge, label %if.end55

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end55:                                         ; preds = %if.end36
  %105 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i156 = getelementptr %struct.iwl_fw, ptr %106, i32 0, i32 5, i32 7, i32 1
  %107 = ptrtoint ptr %arrayidx.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %arrayidx.i.i.i156, align 4
  %109 = and i32 %108, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i.not.i157 = icmp eq i32 %109, 0
  %n_channels28.i = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, ptr %call9.i.i151, i32 0, i32 1
  br i1 %tobool.i.not.i157, label %if.end55.for.body13.i_crit_edge, label %if.end55.for.body.i161_crit_edge

if.end55.for.body.i161_crit_edge:                 ; preds = %if.end55
  br label %for.body.i161

if.end55.for.body13.i_crit_edge:                  ; preds = %if.end55
  br label %for.body13.i

for.body.i161:                                    ; preds = %for.inc.i.for.body.i161_crit_edge, %if.end55.for.body.i161_crit_edge
  %i.057.i = phi i32 [ %inc6.i, %for.inc.i.for.body.i161_crit_edge ], [ 0, %if.end55.for.body.i161_crit_edge ]
  %div55.i = lshr i32 %i.057.i, 3
  %arrayidx2.i158 = getelementptr %struct.iwl_scan_offload_profile_match, ptr %matches.i, i32 %i.0182, i32 5, i32 %div55.i
  %110 = ptrtoint ptr %arrayidx2.i158 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx2.i158, align 1
  %conv.i = zext i8 %111 to i32
  %rem53.i = and i32 %i.057.i, 7
  %shl.i = shl nuw nsw i32 1, %rem53.i
  %and.i159 = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %for.body.i161.for.inc.i_crit_edge, label %if.then3.i

for.body.i161.for.inc.i_crit_edge:                ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %nd_channels24.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %nd_channels24.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %113, i32 %i.057.i
  %114 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx4.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %center_freq.i, align 4
  %118 = ptrtoint ptr %n_channels28.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %n_channels28.i, align 4
  %inc.i162 = add i32 %119, 1
  store i32 %inc.i162, ptr %n_channels28.i, align 4
  %arrayidx5.i = getelementptr %struct.cfg80211_wowlan_nd_match, ptr %call9.i.i151, i32 0, i32 2, i32 %119
  %120 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %117, ptr %arrayidx5.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i161.for.inc.i_crit_edge
  %inc6.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i163 = icmp eq i32 %inc6.i, 56
  br i1 %exitcond.not.i163, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i161_crit_edge

for.inc.i.for.body.i161_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i161

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body13.i:                                     ; preds = %for.inc32.i.for.body13.i_crit_edge, %if.end55.for.body13.i_crit_edge
  %i.159.i = phi i32 [ %inc33.i, %for.inc32.i.for.body13.i_crit_edge ], [ 0, %if.end55.for.body13.i_crit_edge ]
  %div1654.i = lshr i32 %i.159.i, 3
  %arrayidx17.i = getelementptr %struct.iwl_scan_offload_profile_match_v1, ptr %matches.i, i32 %i.0182, i32 5, i32 %div1654.i
  %121 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %122 to i32
  %rem1952.i = and i32 %i.159.i, 7
  %shl20.i = shl nuw nsw i32 1, %rem1952.i
  %and21.i = and i32 %shl20.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %for.body13.i.for.inc32.i_crit_edge, label %if.then23.i

for.body13.i.for.inc32.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc32.i

if.then23.i:                                      ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %nd_channels24.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %nd_channels24.i, align 4
  %arrayidx25.i = getelementptr ptr, ptr %124, i32 %i.159.i
  %125 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx25.i, align 4
  %center_freq26.i = getelementptr inbounds %struct.ieee80211_channel, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %center_freq26.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %center_freq26.i, align 4
  %129 = ptrtoint ptr %n_channels28.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %n_channels28.i, align 4
  %inc29.i = add i32 %130, 1
  store i32 %inc29.i, ptr %n_channels28.i, align 4
  %arrayidx30.i = getelementptr %struct.cfg80211_wowlan_nd_match, ptr %call9.i.i151, i32 0, i32 2, i32 %130
  %131 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %128, ptr %arrayidx30.i, align 4
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.then23.i, %for.body13.i.for.inc32.i_crit_edge
  %inc33.i = add nuw nsw i32 %i.159.i, 1
  %exitcond62.not.i = icmp eq i32 %inc33.i, 40
  br i1 %exitcond62.not.i, label %for.inc32.i.for.inc_crit_edge, label %for.inc32.i.for.body13.i_crit_edge

for.inc32.i.for.body13.i_crit_edge:               ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13.i

for.inc32.i.for.inc_crit_edge:                    ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %for.inc32.i.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %if.end36.for.inc_crit_edge
  %132 = ptrtoint ptr %n_nd_match_sets to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %n_nd_match_sets, align 8
  %add = add i32 %i.0182, 1
  %call59 = call i32 @_find_next_bit_be(ptr noundef nonnull %matched_profiles, i32 noundef %133, i32 noundef %add) #13
  %134 = ptrtoint ptr %n_nd_match_sets to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %n_nd_match_sets, align 8
  %cmp30 = icmp slt i32 %call59, %135
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %for.inc.out_report_nd_crit_edge

for.inc.out_report_nd_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_report_nd

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out_report_nd:                                    ; preds = %for.inc.out_report_nd_crit_edge, %if.end8.i.i152.out_report_nd_crit_edge, %if.end26.out_report_nd_crit_edge, %if.end8.i.i.out_report_nd_crit_edge
  %net_detect60 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 14
  %136 = ptrtoint ptr %net_detect60 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call9.i.i, ptr %net_detect60, align 4
  br label %out

out:                                              ; preds = %out_report_nd, %if.end19.i.out_crit_edge, %do.end15.i, %iwl_mvm_netdetect_query_results.exit.thread, %if.end3.out_crit_edge, %if.end3.thread170
  %net_detect.0 = phi ptr [ null, %if.end3.out_crit_edge ], [ %call9.i.i, %out_report_nd ], [ null, %if.end19.i.out_crit_edge ], [ null, %if.end3.thread170 ], [ null, %iwl_mvm_netdetect_query_results.exit.thread ], [ null, %do.end15.i ]
  %wakeup_report.0 = phi ptr [ %wakeup, %if.end3.out_crit_edge ], [ %wakeup, %out_report_nd ], [ null, %if.end19.i.out_crit_edge ], [ %wakeup, %if.end3.thread170 ], [ null, %iwl_mvm_netdetect_query_results.exit.thread ], [ null, %do.end15.i ]
  %nd_match_sets.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 106
  %137 = ptrtoint ptr %nd_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %nd_match_sets.i, align 4
  call void @kfree(ptr noundef %138) #13
  %139 = ptrtoint ptr %nd_match_sets.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %nd_match_sets.i, align 4
  %n_nd_match_sets.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 107
  %140 = ptrtoint ptr %n_nd_match_sets.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %n_nd_match_sets.i, align 8
  %nd_channels.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 108
  %141 = ptrtoint ptr %nd_channels.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %nd_channels.i, align 4
  call void @kfree(ptr noundef %142) #13
  %143 = ptrtoint ptr %nd_channels.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %nd_channels.i, align 4
  %n_nd_channels.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 109
  %144 = ptrtoint ptr %n_nd_channels.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %n_nd_channels.i, align 8
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %mutex) #13
  call void @ieee80211_report_wowlan_wakeup(ptr noundef %vif, ptr noundef %wakeup_report.0, i32 noundef 3264) #13
  %tobool61.not = icmp eq ptr %net_detect.0, null
  br i1 %tobool61.not, label %out.if.end73_crit_edge, label %for.cond63.preheader

out.if.end73_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

for.cond63.preheader:                             ; preds = %out
  %145 = ptrtoint ptr %net_detect.0 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %net_detect.0, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp65184 = icmp sgt i32 %146, 0
  br i1 %cmp65184, label %for.cond63.preheader.for.body67_crit_edge, label %for.cond63.preheader.for.end72_crit_edge

for.cond63.preheader.for.end72_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

for.cond63.preheader.for.body67_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.cond63.preheader.for.body67_crit_edge
  %i.1185 = phi i32 [ %inc71, %for.body67.for.body67_crit_edge ], [ 0, %for.cond63.preheader.for.body67_crit_edge ]
  %arrayidx69 = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %net_detect.0, i32 0, i32 1, i32 %i.1185
  %147 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx69, align 4
  call void @kfree(ptr noundef %148) #13
  %inc71 = add nuw nsw i32 %i.1185, 1
  %149 = ptrtoint ptr %net_detect.0 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %net_detect.0, align 128
  %cmp65 = icmp slt i32 %inc71, %150
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.for.end72_crit_edge

for.body67.for.end72_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body67

for.end72:                                        ; preds = %for.body67.for.end72_crit_edge, %for.cond63.preheader.for.end72_crit_edge
  call void @kfree(ptr noundef nonnull %net_detect.0) #13
  br label %if.end73

if.end73:                                         ; preds = %for.end72, %out.if.end73_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matched_profiles) #13
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %query) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wakeup) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iwl_mvm_query_wakeup_reasons(ptr noundef %mvm, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  %gtkdata.i = alloca %struct.iwl_mvm_d3_gtk_iter_data, align 4
  %conf.i = alloca %struct.anon.245, align 8
  %replay_ctr.i = alloca i64, align 8
  %wakeup.i = alloca %struct.cfg80211_wowlan_wakeup, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %0 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ap_sta_id, align 8
  %call1 = tail call fastcc ptr @iwl_mvm_get_wakeup_status(ptr noundef %mvm, i8 noundef zeroext %1)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_unlock_crit_edge, label %do.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  %wakeup_reasons = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %wakeup_reasons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wakeup_reasons, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 1024, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_query_wakeup_reasons, ptr noundef nonnull @.str.23, i32 noundef %5) #13
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 5, i32 6
  %8 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i57 = icmp eq i32 %9, 0
  br i1 %cmp.i57, label %do.end.out_free_crit_edge, label %do.body.i

do.end.out_free_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

do.body.i:                                        ; preds = %do.end
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 1204, ptr noundef nonnull @.str.2) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %fw_id_to_mac_id.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 44
  %10 = ptrtoint ptr %fw_id_to_mac_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_id_to_mac_id.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %cmp.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %11, i32 0, i32 29
  %tobool.not = icmp eq ptr %drv_priv.i.i, null
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.end.i.out_free_crit_edge, label %for.body.preheader

do.end.i.out_free_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

for.body.preheader:                               ; preds = %do.end.i
  %arrayidx = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %add = add i16 %13, 16
  %arrayidx10 = getelementptr %struct.ieee80211_sta, ptr %11, i32 1, i32 6
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add, ptr %arrayidx10, align 4
  %arrayidx.1 = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.1, align 2
  %add.1 = add i16 %16, 16
  %arrayidx10.1 = getelementptr %struct.ieee80211_sta, ptr %11, i32 1, i32 6, i32 3, i32 6
  %17 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.1, ptr %arrayidx10.1, align 4
  %arrayidx.2 = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 2
  %add.2 = add i16 %19, 16
  %arrayidx10.2 = getelementptr %struct.ieee80211_sta, ptr %11, i32 1, i32 16
  %20 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %add.2, ptr %arrayidx10.2, align 4
  %arrayidx.3 = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.3, align 2
  %add.3 = add i16 %22, 16
  %arrayidx10.3 = getelementptr %struct.ieee80211_sta, ptr %11, i32 1, i32 25, i32 11
  %23 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %add.3, ptr %arrayidx10.3, align 4
  %arrayidx.4 = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.4, align 2
  %add.4 = add i16 %25, 16
  %arrayidx10.4 = getelementptr %struct.ieee80211_sta, ptr %11, i32 1, i32 28, i32 4
  %26 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add.4, ptr %arrayidx10.4, align 4
  %arrayidx.5 = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.5, align 2
  %add.5 = add i16 %28, 16
  %arrayidx10.5 = getelementptr %struct.ieee80211_sta, ptr %11, i32 1, i32 28, i32 13
  %29 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %add.5, ptr %arrayidx10.5, align 4
  %arrayidx.6 = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.6, align 2
  %add.6 = add i16 %31, 16
  %arrayidx10.6 = getelementptr %struct.ieee80211_sta, ptr %11, i32 2, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add.6, ptr %arrayidx10.6, align 4
  %arrayidx.7 = getelementptr %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 8, i32 7
  %33 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.7, align 2
  %add.7 = add i16 %34, 16
  %arrayidx10.7 = getelementptr %struct.ieee80211_sta, ptr %11, i32 2, i32 5
  %35 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add.7, ptr %arrayidx10.7, align 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %36 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %41)
  %cmp11 = icmp ugt i32 %41, 17
  br i1 %cmp11, label %if.then13, label %for.body.preheader.if.end23_crit_edge

for.body.preheader.if.end23_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then13:                                        ; preds = %for.body.preheader
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %37, i32 0, i32 6
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 2
  br i1 %cmp.not.i, label %if.end44.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then13
  %.b51.i = load i1, ptr @iwl_trans_set_q_ptrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.do.end40.i_crit_edge, label %if.then.i, !prof !96

land.rhs.i.do.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_trans_set_q_ptrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1172, i32 noundef 9, ptr noundef null) #13
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.do.end40.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %37, i32 0, i32 8
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.iwl_trans_set_q_ptrs, i32 noundef %47) #13
  br label %if.end23

if.end44.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %offload_tid = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 111
  %48 = ptrtoint ptr %offload_tid to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %offload_tid, align 1
  %conv14 = zext i8 %49 to i32
  %arrayidx17 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %conv14
  %50 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx17, align 4
  %52 = lshr i16 %51, 4
  %53 = zext i16 %52 to i32
  %txq_id = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %conv14, i32 6
  %54 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %txq_id, align 4
  %conv18 = zext i16 %55 to i32
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %37, i32 0, i32 1
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %set_q_ptrs.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %set_q_ptrs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_q_ptrs.i, align 4
  tail call void %59(ptr noundef %37, i32 noundef %conv18, i32 noundef %53) #13
  br label %if.end23

if.end23:                                         ; preds = %if.end44.i, %do.end40.i, %for.body.preheader.if.end23_crit_edge
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wakeup.i) #13
  %60 = call ptr @memcpy(ptr %wakeup.i, ptr @__const.iwl_mvm_report_wakeup_reasons.wakeup, i32 32)
  %61 = ptrtoint ptr %wakeup_reasons to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wakeup_reasons, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i58 = icmp eq i32 %62, 0
  br i1 %cmp.i58, label %if.end23.iwl_mvm_report_wakeup_reasons.exit_crit_edge, label %if.end.i

if.end23.iwl_mvm_report_wakeup_reasons.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_report_wakeup_reasons.exit

if.end.i:                                         ; preds = %if.end23
  %63 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mvm, align 8
  tail call void @pm_wakeup_dev_event(ptr noundef %64, i32 noundef 0, i1 noundef zeroext false) #13
  %and.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i59 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i59, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %magic_pkt.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 1
  %65 = ptrtoint ptr %magic_pkt.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %magic_pkt.i, align 1
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %and3.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end2.i.if.end6.i_crit_edge, label %if.then5.i

if.end2.i.if.end6.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  %pattern_number.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 6
  %66 = ptrtoint ptr %pattern_number.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pattern_number.i, align 4
  %conv.i = zext i16 %67 to i32
  %pattern_idx.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 10
  %68 = ptrtoint ptr %pattern_idx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv.i, ptr %pattern_idx.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end2.i.if.end6.i_crit_edge
  %and7.i = and i32 %62, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %wakeup.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %and11.i = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %gtk_rekey_failure.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 2
  %70 = ptrtoint ptr %gtk_rekey_failure.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %gtk_rekey_failure.i, align 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %and15.i = and i32 %62, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end18.i_crit_edge, label %if.then17.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %rfkill_release.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 5
  %71 = ptrtoint ptr %rfkill_release.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %rfkill_release.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end18.i_crit_edge
  %and19.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end22.i_crit_edge, label %if.then21.i

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %eap_identity_req.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 3
  %72 = ptrtoint ptr %eap_identity_req.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %eap_identity_req.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end22.i_crit_edge
  %and23.i = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end26.i_crit_edge, label %if.then25.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %four_way_handshake.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 4
  %73 = ptrtoint ptr %four_way_handshake.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %four_way_handshake.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end26.i_crit_edge
  %and27.i = and i32 %62, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end30.i_crit_edge, label %if.then29.i

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %tcp_connlost.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 8
  %74 = ptrtoint ptr %tcp_connlost.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %tcp_connlost.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end30.i_crit_edge
  %and31.i = and i32 %62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end34.i_crit_edge, label %if.then33.i

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %tcp_nomoretokens.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 9
  %75 = ptrtoint ptr %tcp_nomoretokens.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %tcp_nomoretokens.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end34.i_crit_edge
  %and35.i = and i32 %62, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end38.i_crit_edge, label %if.then37.i

if.end34.i.if.end38.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  %tcp_match.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 7
  %76 = ptrtoint ptr %tcp_match.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %tcp_match.i, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end38.i_crit_edge
  %wake_packet_bufsize.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 5
  %77 = ptrtoint ptr %wake_packet_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wake_packet_bufsize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool39.not.i = icmp eq i32 %78, 0
  br i1 %tobool39.not.i, label %if.end38.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge, label %if.then40.i

if.end38.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_report_wakeup_reasons.exit

if.then40.i:                                      ; preds = %if.end38.i
  %wake_packet_length.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 4
  %79 = ptrtoint ptr %wake_packet_length.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wake_packet_length.i, align 4
  %wake_packet.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 14
  %sub.i = sub i32 %80, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp42.i = icmp slt i32 %sub.i, 0
  br i1 %cmp42.i, label %land.rhs.i60, label %if.then40.i.if.end74.i_crit_edge

if.then40.i.if.end74.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

land.rhs.i60:                                     ; preds = %if.then40.i
  %.b211.i = load i1, ptr @iwl_mvm_report_wakeup_reasons.__already_done, align 1
  br i1 %.b211.i, label %land.rhs.i60.if.end74.i_crit_edge, label %if.then52.i, !prof !96

land.rhs.i60.if.end74.i_crit_edge:                ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

if.then52.i:                                      ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_report_wakeup_reasons.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1496, i32 noundef 9, ptr noundef null) #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then52.i, %land.rhs.i60.if.end74.i_crit_edge, %if.then40.i.if.end74.i_crit_edge
  %81 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #13
  %82 = ptrtoint ptr %wake_packet.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %wake_packet.i, align 2
  %84 = and i16 %83, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %84)
  %cmp.i.i61 = icmp eq i16 %84, 2048
  br i1 %cmp.i.i61, label %if.then85.i, label %if.else123.i

if.then85.i:                                      ; preds = %if.end74.i
  %call.i.i62 = tail call ptr @__alloc_skb(i32 noundef %78, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool89.not.i = icmp eq ptr %call.i.i62, null
  br i1 %tobool89.not.i, label %if.then85.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge, label %if.end91.i

if.then85.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge: ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_report_wakeup_reasons.exit

if.end91.i:                                       ; preds = %if.then85.i
  %call87.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %83) #19
  %call.i212.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i62, i32 noundef %call87.i) #13
  %85 = call ptr @memcpy(ptr %call.i212.i, ptr %wake_packet.i, i32 %call87.i)
  %add.ptr.i = getelementptr i8, ptr %wake_packet.i, i32 %call87.i
  %86 = ptrtoint ptr %wake_packet.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %wake_packet.i, align 2
  %88 = and i16 %87, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp.i213.not.i = icmp eq i16 %88, 0
  br i1 %cmp.i213.not.i, label %if.end91.i.if.end102.i_crit_edge, label %if.then96.i

if.end91.i.if.end102.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i

if.then96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %wake_packet.i, i32 0, i32 2
  %89 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr1.i, align 4
  %91 = and i32 %90, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.not.i = icmp eq i32 %91, 0
  %gtk_ivlen.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 101
  %gtk_icvlen.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 102
  %ptk_ivlen.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 103
  %ptk_icvlen.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 104
  %gtk_icvlen.sink.i = select i1 %tobool.i.not.i, ptr %ptk_icvlen.i, ptr %gtk_icvlen.i
  %ivlen.0.ph.in.i = select i1 %tobool.i.not.i, ptr %ptk_ivlen.i, ptr %gtk_ivlen.i
  %92 = ptrtoint ptr %ivlen.0.ph.in.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %ivlen.0.ph.i = load i32, ptr %ivlen.0.ph.in.i, align 4
  %93 = ptrtoint ptr %gtk_icvlen.sink.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gtk_icvlen.sink.i, align 8
  %add.i = add i32 %94, 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then96.i, %if.end91.i.if.end102.i_crit_edge
  %ivlen.0.i = phi i32 [ 0, %if.end91.i.if.end102.i_crit_edge ], [ %ivlen.0.ph.i, %if.then96.i ]
  %icvlen.0.i = phi i32 [ 4, %if.end91.i.if.end102.i_crit_edge ], [ %add.i, %if.then96.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %icvlen.0.i)
  %cmp103.not.i = icmp slt i32 %81, %icvlen.0.i
  %sub108.neg.i = sub i32 %81, %icvlen.0.i
  %icvlen.1.neg216.i = select i1 %cmp103.not.i, i32 %sub108.neg.i, i32 0
  %95 = add i32 %call87.i, %ivlen.0.i
  %.neg.i = sub i32 %78, %95
  %sub111.i = add i32 %.neg.i, %icvlen.1.neg216.i
  %add.ptr112.i = getelementptr i8, ptr %add.ptr.i, i32 %ivlen.0.i
  %call.i214.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i62, i32 noundef %sub111.i) #13
  %96 = call ptr @memcpy(ptr %call.i214.i, ptr %add.ptr112.i, i32 %sub111.i)
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %97 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vif, align 8
  %call.i215.i = tail call i32 @ieee80211_data_to_8023_exthdr(ptr noundef nonnull %call.i.i62, ptr noundef null, ptr noundef %addr.i, i32 noundef %98, i8 noundef zeroext 0, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215.i)
  %tobool116.not.i = icmp eq i32 %call.i215.i, 0
  br i1 %tobool116.not.i, label %if.end118.i, label %if.end102.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge

if.end102.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge: ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_report_wakeup_reasons.exit

if.end118.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  %truncated.1.i = select i1 %cmp103.not.i, i32 0, i32 %81
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i62, i32 0, i32 19
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i, align 4
  %packet.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 13
  %101 = ptrtoint ptr %packet.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %packet.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i62, i32 0, i32 6
  %102 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len.i, align 4
  %packet_present_len.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 11
  %104 = ptrtoint ptr %packet_present_len.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %packet_present_len.i, align 4
  %sub120.i = sub i32 %103, %truncated.1.i
  br label %report.sink.split.i

if.else123.i:                                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %cmp124.i = icmp ugt i32 %81, 3
  %sub127.neg.i = sub nsw i32 4, %81
  %sub129.neg.i = add nsw i32 %81, -4
  %truncated.2.neg.i = select i1 %cmp124.i, i32 %sub127.neg.i, i32 0
  %fcslen.0.neg.i = select i1 %cmp124.i, i32 0, i32 %sub129.neg.i
  %sub131.i = add i32 %fcslen.0.neg.i, %78
  %packet134.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 13
  %105 = ptrtoint ptr %packet134.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %wake_packet.i, ptr %packet134.i, align 4
  %packet_present_len135.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 11
  %106 = ptrtoint ptr %packet_present_len135.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub131.i, ptr %packet_present_len135.i, align 4
  %sub136.i = add i32 %truncated.2.neg.i, %80
  br label %report.sink.split.i

report.sink.split.i:                              ; preds = %if.else123.i, %if.end118.i
  %sub120.sink.i = phi i32 [ %sub120.i, %if.end118.i ], [ %sub136.i, %if.else123.i ]
  %.sink.i = phi i8 [ 0, %if.end118.i ], [ 1, %if.else123.i ]
  %pkt.2.ph.i = phi ptr [ %call.i.i62, %if.end118.i ], [ null, %if.else123.i ]
  %packet_len.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 12
  %107 = ptrtoint ptr %packet_len.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub120.sink.i, ptr %packet_len.i, align 4
  %packet_80211.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 6
  %108 = ptrtoint ptr %packet_80211.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %.sink.i, ptr %packet_80211.i, align 2
  br label %iwl_mvm_report_wakeup_reasons.exit

iwl_mvm_report_wakeup_reasons.exit:               ; preds = %report.sink.split.i, %if.end102.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge, %if.then85.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge, %if.end38.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge, %if.end23.iwl_mvm_report_wakeup_reasons.exit_crit_edge
  %wakeup_report.0.i = phi ptr [ %wakeup.i, %if.end38.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ null, %if.end23.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ %wakeup.i, %if.then85.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ %wakeup.i, %if.end102.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ %wakeup.i, %report.sink.split.i ]
  %pkt.2.i = phi ptr [ null, %if.end38.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ null, %if.end23.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ null, %if.then85.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ %call.i.i62, %if.end102.i.iwl_mvm_report_wakeup_reasons.exit_crit_edge ], [ %pkt.2.ph.i, %report.sink.split.i ]
  call void @ieee80211_report_wowlan_wakeup(ptr noundef %vif, ptr noundef %wakeup_report.0.i, i32 noundef 3264) #13
  call void @kfree_skb_reason(ptr noundef %pkt.2.i, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wakeup.i) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gtkdata.i) #13
  %109 = getelementptr inbounds i8, ptr %gtkdata.i, i32 16
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %109, align 4
  %111 = ptrtoint ptr %gtkdata.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %mvm, ptr %gtkdata.i, align 4
  %status2.i = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %gtkdata.i, i32 0, i32 1
  %112 = ptrtoint ptr %status2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call1, ptr %status2.i, align 4
  %last_gtk.i = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %gtkdata.i, i32 0, i32 2
  %cipher.i = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %gtkdata.i, i32 0, i32 3
  %unhandled_cipher.i = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %gtkdata.i, i32 0, i32 5
  %num_keys.i = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %gtkdata.i, i32 0, i32 6
  %113 = ptrtoint ptr %num_keys.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %num_keys.i, align 4
  %tobool.not.i63 = icmp eq ptr %call1, null
  %114 = call ptr @memset(ptr %last_gtk.i, i32 0, i32 10)
  br i1 %tobool.not.i63, label %iwl_mvm_report_wakeup_reasons.exit.iwl_mvm_setup_connection_keep.exit_crit_edge, label %lor.lhs.false.i

iwl_mvm_report_wakeup_reasons.exit.iwl_mvm_setup_connection_keep.exit_crit_edge: ; preds = %iwl_mvm_report_wakeup_reasons.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_setup_connection_keep.exit

lor.lhs.false.i:                                  ; preds = %iwl_mvm_report_wakeup_reasons.exit
  %bss_conf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %115 = ptrtoint ptr %bss_conf.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bss_conf.i, align 8
  %tobool3.not.i64 = icmp eq ptr %116, null
  br i1 %tobool3.not.i64, label %lor.lhs.false.i.iwl_mvm_setup_connection_keep.exit_crit_edge, label %if.end.i68

lor.lhs.false.i.iwl_mvm_setup_connection_keep.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_setup_connection_keep.exit

if.end.i68:                                       ; preds = %lor.lhs.false.i
  %117 = ptrtoint ptr %wakeup_reasons to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %wakeup_reasons, align 8
  %and.i66 = and i32 %118, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool4.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool4.not.i67, label %if.end6.i69, label %if.end.i68.iwl_mvm_setup_connection_keep.exit_crit_edge

if.end.i68.iwl_mvm_setup_connection_keep.exit_crit_edge: ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_setup_connection_keep.exit

if.end6.i69:                                      ; preds = %if.end.i68
  %119 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %109, align 4
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %120 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iter_keys(ptr noundef %121, ptr noundef %vif, ptr noundef nonnull @iwl_mvm_d3_update_keys, ptr noundef nonnull %gtkdata.i) #13
  %122 = ptrtoint ptr %unhandled_cipher.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %unhandled_cipher.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool9.not.i = icmp eq i8 %123, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i69.iwl_mvm_setup_connection_keep.exit_crit_edge

if.end6.i69.iwl_mvm_setup_connection_keep.exit_crit_edge: ; preds = %if.end6.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_setup_connection_keep.exit

if.end11.i:                                       ; preds = %if.end6.i69
  %124 = ptrtoint ptr %num_keys.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_keys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool13.not.i = icmp eq i32 %125, 0
  br i1 %tobool13.not.i, label %if.end11.i.out.i_crit_edge, label %if.end15.i

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end15.i:                                       ; preds = %if.end11.i
  %126 = ptrtoint ptr %last_gtk.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %last_gtk.i, align 4
  %tobool17.not.i = icmp eq ptr %127, null
  br i1 %tobool17.not.i, label %if.end15.i.iwl_mvm_setup_connection_keep.exit_crit_edge, label %if.end19.i

if.end15.i.iwl_mvm_setup_connection_keep.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_setup_connection_keep.exit

if.end19.i:                                       ; preds = %if.end15.i
  %128 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %109, align 4
  %129 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iter_keys(ptr noundef %130, ptr noundef %vif, ptr noundef nonnull @iwl_mvm_d3_update_keys, ptr noundef nonnull %gtkdata.i) #13
  %131 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mvm, align 8
  %num_of_gtk_rekeys.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 1
  %133 = ptrtoint ptr %num_of_gtk_rekeys.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_of_gtk_rekeys.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %132, i32 noundef 1024, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_setup_connection_keep, ptr noundef nonnull @.str.26, i32 noundef %134) #13
  %135 = ptrtoint ptr %num_of_gtk_rekeys.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_of_gtk_rekeys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool26.not.i = icmp eq i32 %136, 0
  br i1 %tobool26.not.i, label %if.end19.i.out.i_crit_edge, label %if.then27.i

if.end19.i.out.i_crit_edge:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then27.i:                                      ; preds = %if.end19.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %conf.i) #13
  %137 = call ptr @memset(ptr %conf.i, i32 0, i32 56)
  %cipher29.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %conf.i, i32 0, i32 1
  %138 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cipher.i, align 4
  %140 = ptrtoint ptr %cipher29.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %cipher29.i, align 8
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %conf.i, i32 0, i32 5
  %gtk.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 10
  %flags.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 10, i32 2
  %141 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %flags.i, align 1
  %143 = and i8 %142, 3
  %144 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %keyidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %replay_ctr.i) #13
  %145 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mvm, align 8
  %conv44.i = zext i8 %143 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %146, i32 noundef 1024, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_setup_connection_keep, ptr noundef nonnull @.str.27, i32 noundef %139, i32 noundef %conv44.i) #13
  %key63.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %conf.i, i32 0, i32 8
  %147 = call ptr @memcpy(ptr %key63.i, ptr %gtk.i, i32 32)
  %148 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cipher.i, align 4
  %switch.tableidx = add i32 %149, -1027074
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %150 = icmp ult i32 %switch.tableidx, 8
  br i1 %150, label %switch.hole_check, label %if.then27.i.sw.epilog.i_crit_edge

if.then27.i.sw.epilog.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.then27.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -59, %switch.maskindex
  %151 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %switch.lobit.not = icmp eq i8 %151, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.iwl_mvm_query_wakeup_reasons, i32 0, i32 %switch.tableidx
  %152 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %152)
  %switch.load = load i8, ptr %switch.gep, align 1
  %keylen74.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %conf.i, i32 0, i32 7
  %153 = ptrtoint ptr %keylen74.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %switch.load, ptr %keylen74.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i_crit_edge, %if.then27.i.sw.epilog.i_crit_edge
  %call76.i = call ptr @ieee80211_gtk_rekey_add(ptr noundef %vif, ptr noundef nonnull %conf.i) #13
  %cmp.i.i71 = icmp ugt ptr %call76.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i71, label %cleanup93.critedge.i, label %if.end79.i

if.end79.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @iwl_mvm_set_key_rx_seq(ptr noundef %call76.i, ptr noundef nonnull %call1, i1 noundef zeroext true) #13
  %154 = ptrtoint ptr %call1 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %call1, align 8
  %156 = ptrtoint ptr %replay_ctr.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %replay_ctr.i, align 8
  %157 = ptrtoint ptr %bss_conf.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bss_conf.i, align 8
  call void @ieee80211_gtk_rekey_notify(ptr noundef %vif, ptr noundef %158, ptr noundef nonnull %replay_ctr.i, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %replay_ctr.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %conf.i) #13
  br label %out.i

out.i:                                            ; preds = %if.end79.i, %if.end19.i.out.i_crit_edge, %if.end11.i.out.i_crit_edge
  %159 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fw.i, align 8
  %call86.i = call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %160, i8 noundef zeroext 1, i8 noundef zeroext -27, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %call86.i)
  %cmp.i73 = icmp ult i8 %call86.i, 10
  br i1 %cmp.i73, label %if.then89.i, label %out.i.iwl_mvm_setup_connection_keep.exit_crit_edge

out.i.iwl_mvm_setup_connection_keep.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_setup_connection_keep.exit

if.then89.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  %seqno_valid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 57
  %161 = ptrtoint ptr %seqno_valid.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %seqno_valid.i, align 4
  %non_qos_seq_ctr.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call1, i32 0, i32 7
  %162 = ptrtoint ptr %non_qos_seq_ctr.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %non_qos_seq_ctr.i, align 2
  %add.i74 = add i16 %163, 16
  %seqno.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 57, i32 2
  %164 = ptrtoint ptr %seqno.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %add.i74, ptr %seqno.i, align 2
  br label %iwl_mvm_setup_connection_keep.exit

cleanup93.critedge.i:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %replay_ctr.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %conf.i) #13
  br label %iwl_mvm_setup_connection_keep.exit

iwl_mvm_setup_connection_keep.exit:               ; preds = %cleanup93.critedge.i, %if.then89.i, %out.i.iwl_mvm_setup_connection_keep.exit_crit_edge, %if.end15.i.iwl_mvm_setup_connection_keep.exit_crit_edge, %if.end6.i69.iwl_mvm_setup_connection_keep.exit_crit_edge, %if.end.i68.iwl_mvm_setup_connection_keep.exit_crit_edge, %lor.lhs.false.i.iwl_mvm_setup_connection_keep.exit_crit_edge, %iwl_mvm_report_wakeup_reasons.exit.iwl_mvm_setup_connection_keep.exit_crit_edge
  %retval.1.i = phi i1 [ false, %lor.lhs.false.i.iwl_mvm_setup_connection_keep.exit_crit_edge ], [ false, %iwl_mvm_report_wakeup_reasons.exit.iwl_mvm_setup_connection_keep.exit_crit_edge ], [ false, %if.end.i68.iwl_mvm_setup_connection_keep.exit_crit_edge ], [ false, %if.end6.i69.iwl_mvm_setup_connection_keep.exit_crit_edge ], [ false, %if.end15.i.iwl_mvm_setup_connection_keep.exit_crit_edge ], [ false, %cleanup93.critedge.i ], [ true, %if.then89.i ], [ true, %out.i.iwl_mvm_setup_connection_keep.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gtkdata.i) #13
  call void @kfree(ptr noundef %call1) #13
  br label %cleanup

out_free:                                         ; preds = %do.end.i.out_free_crit_edge, %do.end.out_free_crit_edge
  tail call void @kfree(ptr noundef %call1) #13
  br label %out_unlock

out_unlock:                                       ; preds = %out_free, %entry.out_unlock_crit_edge
  %mutex26 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex26) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %iwl_mvm_setup_connection_keep.exit
  %retval.0 = phi i1 [ false, %out_unlock ], [ %retval.1.i, %iwl_mvm_setup_connection_keep.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_mtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_d3_disconnect_iter(ptr noundef readnone %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %data, %vif
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ieee80211_resume_disconnect(ptr noundef %vif) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_report_wowlan_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fwrt_dump_error_logs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iwl_mvm_get_wakeup_status(ptr noundef %mvm, i8 noundef zeroext %sta_id) unnamed_addr #0 align 64 {
entry:
  %get_status_cmd.i = alloca %struct.iwl_wowlan_get_status_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %station_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -43, i8 noundef zeroext 99) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %station_id) #13
  %conv = zext i8 %sta_id to i32
  %2 = shl nuw i32 %conv, 24
  %3 = ptrtoint ptr %station_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %station_id, align 4
  %net_detect = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 110
  %4 = ptrtoint ptr %net_detect to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %net_detect, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %call)
  %cmp.not = icmp eq i8 %call, 99
  %conv3 = select i1 %cmp.not, i16 0, i16 4
  %call4 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 213, i32 noundef 0, i16 noundef zeroext %conv3, ptr noundef nonnull %station_id) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end10_crit_edge, label %do.end

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %call4) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %get_status_cmd.i) #13
  %8 = ptrtoint ptr %get_status_cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %2, ptr %get_status_cmd.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #13
  %9 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65535, ptr %9, align 4, !annotation !95
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %get_status_cmd.i, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %resp_pkt.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 1
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 2
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 4
  %12 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 16)
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %flags.i, align 4
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 229, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %len.i, align 4
  %arrayinit.start4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayinit.start4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayinit.start4.i, align 2
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 8
  %call.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %18, i8 noundef zeroext 1, i8 noundef zeroext -27, i8 noundef zeroext 99) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 99
  br i1 %cmp.i, label %if.then.i, label %if.end10.do.body.i_crit_edge

if.end10.do.body.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %len.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end10.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.if.end34.i_crit_edge, label %land.rhs.i

do.body.i.if.end34.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp16.not.i, label %do.end.i, label %land.rhs.i.if.end34.i_crit_edge, !prof !97

land.rhs.i.if.end34.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2084, i32 noundef 9, ptr noundef null) #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end34.i_crit_edge, %do.body.i.if.end34.i_crit_edge
  %call43.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end53.i, label %do.end49.i

do.end49.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %call43.i) #13
  %23 = inttoptr i32 %call43.i to ptr
  br label %iwl_mvm_send_wowlan_get_status.exit

if.end53.i:                                       ; preds = %if.end34.i
  %24 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_pkt.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %25, align 1
  %28 = and i32 %27, -12648448
  %29 = call i32 @llvm.bswap.i32(i32 %28) #13
  %sub.i.i = add nsw i32 %29, -4
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw, align 8
  %call57.i = call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %31, i8 noundef zeroext 1, i8 noundef zeroext -27, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call57.i)
  %tobool58.not.i = icmp eq i8 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.end53.i.if.end62.i_crit_edge

if.end53.i.if.end62.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

if.then59.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw, align 8
  %call61.i = call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %33, i8 noundef zeroext 0, i8 noundef zeroext -27, i8 noundef zeroext 7) #13
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %if.end53.i.if.end62.i_crit_edge
  %notif_ver.0.i = phi i8 [ %call57.i, %if.end53.i.if.end62.i_crit_edge ], [ %call61.i, %if.then59.i ]
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %35, i32 0, i32 5, i32 7, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i, label %if.then65.i, label %if.else.i

if.then65.i:                                      ; preds = %if.end62.i
  %39 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resp_pkt.i, align 4
  %data67.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 344, i32 %sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.i.i, 344
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end.i.i:                                       ; preds = %if.then65.i
  %wake_packet_bufsize.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 43, i32 1
  %43 = ptrtoint ptr %wake_packet_bufsize.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %wake_packet_bufsize.i.i, align 1
  %45 = call i32 @llvm.bswap.i32(i32 %44) #13
  %add.i.i = add i32 %45, 3
  %and.i.i = and i32 %add.i.i, -4
  %46 = add nsw i32 %29, -348
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %46)
  %cmp5.not.i.i = icmp eq i32 %and.i.i, %46
  br i1 %cmp5.not.i.i, label %if.end8.i.i.i.i, label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i
  %add16.i.i = add i32 %and.i.i, 1120
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i.i, i32 noundef 3520) #17
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.i.out_free_resp.i_crit_edge, label %iwl_mvm_parse_wowlan_status_common_v6.exit.i

if.end8.i.i.i.i.out_free_resp.i_crit_edge:        ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

iwl_mvm_parse_wowlan_status_common_v6.exit.i:     ; preds = %if.end8.i.i.i.i
  %replay_ctr.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 37, i32 1
  %49 = ptrtoint ptr %replay_ctr.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %replay_ctr.i.i, align 1
  %51 = call i64 @llvm.bswap.i64(i64 %50) #13
  %52 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %call9.i.i.i.i, align 128
  %pattern_number.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 38, i32 1
  %53 = ptrtoint ptr %pattern_number.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %pattern_number.i.i, align 1
  %55 = call i16 @llvm.bswap.i16(i16 %54) #13
  %pattern_number22.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %pattern_number22.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %pattern_number22.i.i, align 4
  %non_qos_seq_ctr.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 38, i32 1, i32 2
  %57 = ptrtoint ptr %non_qos_seq_ctr.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %non_qos_seq_ctr.i.i, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58) #13
  %non_qos_seq_ctr23.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %non_qos_seq_ctr23.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %non_qos_seq_ctr23.i.i, align 2
  %arrayidx.i.i = getelementptr %struct.iwl_rx_packet, ptr %40, i32 39
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %arrayidx.i.i, align 1
  %63 = call i16 @llvm.bswap.i16(i16 %62) #13
  %arrayidx26.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 0
  %64 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %arrayidx26.i.i, align 32
  %arrayidx.1.i.i = getelementptr %struct.iwl_wowlan_status_v6, ptr %data67.i, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %arrayidx.1.i.i, align 1
  %67 = call i16 @llvm.bswap.i16(i16 %66) #13
  %arrayidx26.1.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %arrayidx26.1.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx26.1.i.i, align 2
  %arrayidx.2.i.i = getelementptr %struct.iwl_rx_packet, ptr %40, i32 39, i32 1
  %69 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %arrayidx.2.i.i, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70) #13
  %arrayidx26.2.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 2
  %72 = ptrtoint ptr %arrayidx26.2.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %arrayidx26.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.iwl_rx_packet, ptr %40, i32 39, i32 1, i32 2
  %73 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %arrayidx.3.i.i, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74) #13
  %arrayidx26.3.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 3
  %76 = ptrtoint ptr %arrayidx26.3.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %arrayidx26.3.i.i, align 2
  %arrayidx.4.i.i = getelementptr %struct.iwl_rx_packet, ptr %40, i32 40
  %77 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %arrayidx.4.i.i, align 1
  %79 = call i16 @llvm.bswap.i16(i16 %78) #13
  %arrayidx26.4.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 4
  %80 = ptrtoint ptr %arrayidx26.4.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %arrayidx26.4.i.i, align 8
  %arrayidx.5.i.i = getelementptr %struct.iwl_wowlan_status_v6, ptr %data67.i, i32 0, i32 4, i32 5
  %81 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %arrayidx.5.i.i, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82) #13
  %arrayidx26.5.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 5
  %84 = ptrtoint ptr %arrayidx26.5.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx26.5.i.i, align 2
  %arrayidx.6.i.i = getelementptr %struct.iwl_rx_packet, ptr %40, i32 40, i32 1
  %85 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %arrayidx.6.i.i, align 1
  %87 = call i16 @llvm.bswap.i16(i16 %86) #13
  %arrayidx26.6.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 6
  %88 = ptrtoint ptr %arrayidx26.6.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %arrayidx26.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr %struct.iwl_rx_packet, ptr %40, i32 40, i32 1, i32 2
  %89 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %arrayidx.7.i.i, align 1
  %91 = call i16 @llvm.bswap.i16(i16 %90) #13
  %arrayidx26.7.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 8, i32 7
  %92 = ptrtoint ptr %arrayidx26.7.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx26.7.i.i, align 2
  %wakeup_reasons.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 41
  %93 = ptrtoint ptr %wakeup_reasons.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %wakeup_reasons.i.i, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94) #13
  %wakeup_reasons27.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %wakeup_reasons27.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %wakeup_reasons27.i.i, align 16
  %num_of_gtk_rekeys.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 41, i32 1
  %97 = ptrtoint ptr %num_of_gtk_rekeys.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %num_of_gtk_rekeys.i.i, align 1
  %99 = call i32 @llvm.bswap.i32(i32 %98) #13
  %num_of_gtk_rekeys28.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %num_of_gtk_rekeys28.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %num_of_gtk_rekeys28.i.i, align 8
  %received_beacons.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 42, i32 1
  %101 = ptrtoint ptr %received_beacons.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %received_beacons.i.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #13
  %received_beacons29.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %received_beacons29.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %received_beacons29.i.i, align 4
  %wake_packet_length.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 43
  %105 = ptrtoint ptr %wake_packet_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %wake_packet_length.i.i, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106) #13
  %wake_packet_length30.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 4
  %108 = ptrtoint ptr %wake_packet_length30.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %wake_packet_length30.i.i, align 4
  %109 = ptrtoint ptr %wake_packet_bufsize.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %wake_packet_bufsize.i.i, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110) #13
  %wake_packet_bufsize32.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 5
  %112 = ptrtoint ptr %wake_packet_bufsize32.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %wake_packet_bufsize32.i.i, align 8
  %wake_packet.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 14
  %wake_packet33.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 44
  %113 = call ptr @memcpy(ptr %wake_packet.i.i, ptr %wake_packet33.i.i, i32 %111)
  %cmp.i251.i = icmp ugt ptr %call9.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251.i, label %iwl_mvm_parse_wowlan_status_common_v6.exit.i.out_free_resp.i_crit_edge, label %do.end77.i

iwl_mvm_parse_wowlan_status_common_v6.exit.i.out_free_resp.i_crit_edge: ; preds = %iwl_mvm_parse_wowlan_status_common_v6.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

do.end77.i:                                       ; preds = %iwl_mvm_parse_wowlan_status_common_v6.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %gtk.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 10
  %decrypt_key.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 1, i32 1
  %114 = call ptr @memcpy(ptr %gtk.i, ptr %decrypt_key.i, i32 16)
  %add.ptr.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 10, i32 0, i32 24
  %tkip_mic_key.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 3, i32 1
  %115 = ptrtoint ptr %tkip_mic_key.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %tkip_mic_key.i, align 1
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %116, ptr %add.ptr.i, align 1
  %rsc.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %40, i32 4, i32 1
  call fastcc void @iwl_mvm_convert_key_counters(ptr noundef nonnull %call9.i.i.i.i, ptr noundef %rsc.i) #13
  %len88.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 10, i32 1
  %118 = ptrtoint ptr %len88.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 16, ptr %len88.i, align 1
  %119 = ptrtoint ptr %data67.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %data67.i, align 1
  %121 = or i8 %120, -128
  %flags93.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i.i, i32 0, i32 10, i32 2
  %122 = ptrtoint ptr %flags93.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %flags93.i, align 2
  br label %out_free_resp.i

if.else.i:                                        ; preds = %if.end62.i
  %123 = zext i8 %notif_ver.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %notif_ver.0.i, label %do.end173.i [
    i8 7, label %if.then97.i
    i8 9, label %if.else.i.if.then126.i_crit_edge
    i8 10, label %if.else.i.if.then126.i_crit_edge57
    i8 11, label %if.else.i.if.then126.i_crit_edge58
    i8 12, label %if.then150.i
  ]

if.else.i.if.then126.i_crit_edge58:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126.i

if.else.i.if.then126.i_crit_edge57:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126.i

if.else.i.if.then126.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then126.i

if.then97.i:                                      ; preds = %if.else.i
  %124 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %resp_pkt.i, align 4
  %data99.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 748, i32 %sub.i.i)
  %cmp.i252.i = icmp ult i32 %sub.i.i, 748
  br i1 %cmp.i252.i, label %do.end.i253.i, label %if.end.i259.i

do.end.i253.i:                                    ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %127, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end.i259.i:                                    ; preds = %if.then97.i
  %wake_packet_bufsize.i254.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 94
  %128 = ptrtoint ptr %wake_packet_bufsize.i254.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %wake_packet_bufsize.i254.i, align 1
  %130 = call i32 @llvm.bswap.i32(i32 %129) #13
  %add.i255.i = add i32 %130, 3
  %and.i256.i = and i32 %add.i255.i, -4
  %131 = add nsw i32 %29, -752
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i256.i, i32 %131)
  %cmp5.not.i258.i = icmp eq i32 %and.i256.i, %131
  br i1 %cmp5.not.i258.i, label %if.end8.i.i.i289.i, label %do.end10.i260.i

do.end10.i260.i:                                  ; preds = %if.end.i259.i
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %133, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end8.i.i.i289.i:                               ; preds = %if.end.i259.i
  %add16.i261.i = add i32 %and.i256.i, 1120
  %call9.i.i.i288.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i261.i, i32 noundef 3520) #17
  %tobool.not.i291.i = icmp eq ptr %call9.i.i.i288.i, null
  br i1 %tobool.not.i291.i, label %if.end8.i.i.i289.i.out_free_resp.i_crit_edge, label %iwl_mvm_parse_wowlan_status_common_v7.exit.i

if.end8.i.i.i289.i.out_free_resp.i_crit_edge:     ; preds = %if.end8.i.i.i289.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

iwl_mvm_parse_wowlan_status_common_v7.exit.i:     ; preds = %if.end8.i.i.i289.i
  %replay_ctr.i294.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 88
  %134 = ptrtoint ptr %replay_ctr.i294.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 8)
  %135 = load i64, ptr %replay_ctr.i294.i, align 1
  %136 = call i64 @llvm.bswap.i64(i64 %135) #13
  %137 = ptrtoint ptr %call9.i.i.i288.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %call9.i.i.i288.i, align 128
  %pattern_number.i295.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 89
  %138 = ptrtoint ptr %pattern_number.i295.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %pattern_number.i295.i, align 1
  %140 = call i16 @llvm.bswap.i16(i16 %139) #13
  %pattern_number22.i296.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 6
  %141 = ptrtoint ptr %pattern_number22.i296.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %pattern_number22.i296.i, align 4
  %non_qos_seq_ctr.i297.i = getelementptr inbounds %struct.iwl_wowlan_status_v7, ptr %data99.i, i32 0, i32 4
  %142 = ptrtoint ptr %non_qos_seq_ctr.i297.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %non_qos_seq_ctr.i297.i, align 1
  %144 = call i16 @llvm.bswap.i16(i16 %143) #13
  %non_qos_seq_ctr23.i298.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 7
  %145 = ptrtoint ptr %non_qos_seq_ctr23.i298.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %non_qos_seq_ctr23.i298.i, align 2
  %arrayidx.i299.i = getelementptr %struct.iwl_rx_packet, ptr %125, i32 89, i32 1
  %146 = ptrtoint ptr %arrayidx.i299.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %arrayidx.i299.i, align 1
  %148 = call i16 @llvm.bswap.i16(i16 %147) #13
  %arrayidx26.i300.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 0
  %149 = ptrtoint ptr %arrayidx26.i300.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %arrayidx26.i300.i, align 32
  %arrayidx.1.i301.i = getelementptr %struct.iwl_rx_packet, ptr %125, i32 89, i32 1, i32 2
  %150 = ptrtoint ptr %arrayidx.1.i301.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %arrayidx.1.i301.i, align 1
  %152 = call i16 @llvm.bswap.i16(i16 %151) #13
  %arrayidx26.1.i302.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 1
  %153 = ptrtoint ptr %arrayidx26.1.i302.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %arrayidx26.1.i302.i, align 2
  %arrayidx.2.i303.i = getelementptr %struct.iwl_rx_packet, ptr %125, i32 90
  %154 = ptrtoint ptr %arrayidx.2.i303.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %arrayidx.2.i303.i, align 1
  %156 = call i16 @llvm.bswap.i16(i16 %155) #13
  %arrayidx26.2.i304.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 2
  %157 = ptrtoint ptr %arrayidx26.2.i304.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %arrayidx26.2.i304.i, align 4
  %arrayidx.3.i305.i = getelementptr %struct.iwl_wowlan_status_v7, ptr %data99.i, i32 0, i32 5, i32 3
  %158 = ptrtoint ptr %arrayidx.3.i305.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %arrayidx.3.i305.i, align 1
  %160 = call i16 @llvm.bswap.i16(i16 %159) #13
  %arrayidx26.3.i306.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 3
  %161 = ptrtoint ptr %arrayidx26.3.i306.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %arrayidx26.3.i306.i, align 2
  %arrayidx.4.i307.i = getelementptr %struct.iwl_rx_packet, ptr %125, i32 90, i32 1
  %162 = ptrtoint ptr %arrayidx.4.i307.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 2)
  %163 = load i16, ptr %arrayidx.4.i307.i, align 1
  %164 = call i16 @llvm.bswap.i16(i16 %163) #13
  %arrayidx26.4.i308.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 4
  %165 = ptrtoint ptr %arrayidx26.4.i308.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %arrayidx26.4.i308.i, align 8
  %arrayidx.5.i309.i = getelementptr %struct.iwl_rx_packet, ptr %125, i32 90, i32 1, i32 2
  %166 = ptrtoint ptr %arrayidx.5.i309.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %arrayidx.5.i309.i, align 1
  %168 = call i16 @llvm.bswap.i16(i16 %167) #13
  %arrayidx26.5.i310.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 5
  %169 = ptrtoint ptr %arrayidx26.5.i310.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %arrayidx26.5.i310.i, align 2
  %arrayidx.6.i311.i = getelementptr %struct.iwl_rx_packet, ptr %125, i32 91
  %170 = ptrtoint ptr %arrayidx.6.i311.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %arrayidx.6.i311.i, align 1
  %172 = call i16 @llvm.bswap.i16(i16 %171) #13
  %arrayidx26.6.i312.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 6
  %173 = ptrtoint ptr %arrayidx26.6.i312.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %arrayidx26.6.i312.i, align 4
  %arrayidx.7.i313.i = getelementptr %struct.iwl_wowlan_status_v7, ptr %data99.i, i32 0, i32 5, i32 7
  %174 = ptrtoint ptr %arrayidx.7.i313.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 2)
  %175 = load i16, ptr %arrayidx.7.i313.i, align 1
  %176 = call i16 @llvm.bswap.i16(i16 %175) #13
  %arrayidx26.7.i314.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 8, i32 7
  %177 = ptrtoint ptr %arrayidx26.7.i314.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %arrayidx26.7.i314.i, align 2
  %wakeup_reasons.i315.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 91, i32 1
  %178 = ptrtoint ptr %wakeup_reasons.i315.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %wakeup_reasons.i315.i, align 1
  %180 = call i32 @llvm.bswap.i32(i32 %179) #13
  %wakeup_reasons27.i316.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 3
  %181 = ptrtoint ptr %wakeup_reasons27.i316.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %wakeup_reasons27.i316.i, align 16
  %num_of_gtk_rekeys.i317.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 92
  %182 = ptrtoint ptr %num_of_gtk_rekeys.i317.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %num_of_gtk_rekeys.i317.i, align 1
  %184 = call i32 @llvm.bswap.i32(i32 %183) #13
  %num_of_gtk_rekeys28.i318.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 1
  %185 = ptrtoint ptr %num_of_gtk_rekeys28.i318.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %num_of_gtk_rekeys28.i318.i, align 8
  %received_beacons.i319.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 93
  %186 = ptrtoint ptr %received_beacons.i319.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %received_beacons.i319.i, align 1
  %188 = call i32 @llvm.bswap.i32(i32 %187) #13
  %received_beacons29.i320.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 2
  %189 = ptrtoint ptr %received_beacons29.i320.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %received_beacons29.i320.i, align 4
  %wake_packet_length.i321.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 93, i32 1
  %190 = ptrtoint ptr %wake_packet_length.i321.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %wake_packet_length.i321.i, align 1
  %192 = call i32 @llvm.bswap.i32(i32 %191) #13
  %wake_packet_length30.i322.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 4
  %193 = ptrtoint ptr %wake_packet_length30.i322.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %wake_packet_length30.i322.i, align 4
  %194 = ptrtoint ptr %wake_packet_bufsize.i254.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %wake_packet_bufsize.i254.i, align 1
  %196 = call i32 @llvm.bswap.i32(i32 %195) #13
  %wake_packet_bufsize32.i323.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 5
  %197 = ptrtoint ptr %wake_packet_bufsize32.i323.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %wake_packet_bufsize32.i323.i, align 8
  %wake_packet.i324.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 14
  %wake_packet33.i325.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 94, i32 1
  %198 = call ptr @memcpy(ptr %wake_packet.i324.i, ptr %wake_packet33.i325.i, i32 %196)
  %cmp.i328.i = icmp ugt ptr %call9.i.i.i288.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328.i, label %iwl_mvm_parse_wowlan_status_common_v7.exit.i.out_free_resp.i_crit_edge, label %if.end104.i

iwl_mvm_parse_wowlan_status_common_v7.exit.i.out_free_resp.i_crit_edge: ; preds = %iwl_mvm_parse_wowlan_status_common_v7.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

if.end104.i:                                      ; preds = %iwl_mvm_parse_wowlan_status_common_v7.exit.i
  %rsc107.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 6, i32 1
  call fastcc void @iwl_mvm_convert_key_counters(ptr noundef nonnull %call9.i.i.i288.i, ptr noundef %rsc107.i) #13
  %key_len.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 5
  %199 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %key_len.i.i, align 1
  %gtk.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 10
  %len.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 10, i32 1
  %201 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %len.i.i, align 1
  %key_flags.i.i = getelementptr inbounds %struct.iwl_wowlan_gtk_status_v2, ptr %data99.i, i32 0, i32 2
  %202 = ptrtoint ptr %key_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %key_flags.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 10, i32 2
  %204 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %flags.i.i, align 2
  %205 = call ptr @memcpy(ptr %gtk.i.i, ptr %data99.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %200)
  %cmp.i329.i = icmp eq i8 %200, 16
  br i1 %cmp.i329.i, label %if.then.i.i, label %if.end104.i.iwl_mvm_convert_gtk_v2.exit.i_crit_edge

if.end104.i.iwl_mvm_convert_gtk_v2.exit.i_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_convert_gtk_v2.exit.i

if.then.i.i:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 10, i32 0, i32 24
  %tkip_mic_key.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 5, i32 1
  %206 = ptrtoint ptr %tkip_mic_key.i.i to i32
  call void @__asan_loadN_noabort(i32 %206, i32 8)
  %207 = load i64, ptr %tkip_mic_key.i.i, align 1
  %208 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 8)
  store i64 %207, ptr %add.ptr.i.i, align 1
  br label %iwl_mvm_convert_gtk_v2.exit.i

iwl_mvm_convert_gtk_v2.exit.i:                    ; preds = %if.then.i.i, %if.end104.i.iwl_mvm_convert_gtk_v2.exit.i_crit_edge
  %igtk.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 78
  %ipn1.i29 = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 82
  %key_len.i30 = getelementptr inbounds %struct.iwl_rx_packet, ptr %125, i32 82, i32 1, i32 2
  %209 = ptrtoint ptr %key_len.i30 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %key_len.i30, align 1
  %igtk.i31 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 13
  %len.i32 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 13, i32 2
  %211 = ptrtoint ptr %len.i32 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %len.i32, align 8
  %key_flags.i33 = getelementptr inbounds %struct.iwl_wowlan_igtk_status, ptr %igtk.i, i32 0, i32 3
  %212 = ptrtoint ptr %key_flags.i33 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %key_flags.i33, align 1
  %flags.i34 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 13, i32 3
  %214 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %flags.i34, align 1
  %key.i35 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i288.i, i32 0, i32 13, i32 1
  %215 = call ptr @memcpy(ptr %key.i35, ptr %igtk.i, i32 32)
  %arrayidx.i36 = getelementptr %struct.iwl_rx_packet, ptr %125, i32 82, i32 1, i32 1
  %216 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i36, align 1
  %conv.i37 = zext i8 %217 to i64
  %arrayidx7.i38 = getelementptr %struct.iwl_rx_packet, ptr %125, i32 82, i32 1
  %218 = ptrtoint ptr %arrayidx7.i38 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx7.i38, align 1
  %conv8.i39 = zext i8 %219 to i64
  %shl9.i40 = shl nuw nsw i64 %conv8.i39, 8
  %or.i41 = or i64 %shl9.i40, %conv.i37
  %arrayidx10.i42 = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk.i, i32 0, i32 1, i32 3
  %220 = ptrtoint ptr %arrayidx10.i42 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx10.i42, align 1
  %conv11.i43 = zext i8 %221 to i64
  %shl12.i44 = shl nuw nsw i64 %conv11.i43, 16
  %or13.i45 = or i64 %or.i41, %shl12.i44
  %arrayidx14.i46 = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk.i, i32 0, i32 1, i32 2
  %222 = ptrtoint ptr %arrayidx14.i46 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx14.i46, align 1
  %conv15.i47 = zext i8 %223 to i64
  %shl16.i48 = shl nuw nsw i64 %conv15.i47, 24
  %or17.i49 = or i64 %or13.i45, %shl16.i48
  %arrayidx18.i50 = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk.i, i32 0, i32 1, i32 1
  %224 = ptrtoint ptr %arrayidx18.i50 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx18.i50, align 1
  %conv19.i51 = zext i8 %225 to i64
  %shl20.i52 = shl nuw nsw i64 %conv19.i51, 32
  %or21.i53 = or i64 %or17.i49, %shl20.i52
  %226 = ptrtoint ptr %ipn1.i29 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %ipn1.i29, align 1
  %conv23.i54 = zext i8 %227 to i64
  %shl24.i55 = shl nuw nsw i64 %conv23.i54, 40
  %or25.i56 = or i64 %or21.i53, %shl24.i55
  %228 = ptrtoint ptr %igtk.i31 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %or25.i56, ptr %igtk.i31, align 16
  br label %out_free_resp.i

if.then126.i:                                     ; preds = %if.else.i.if.then126.i_crit_edge, %if.else.i.if.then126.i_crit_edge57, %if.else.i.if.then126.i_crit_edge58
  %229 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %resp_pkt.i, align 4
  %data128.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 752, i32 %sub.i.i)
  %cmp.i331.i = icmp ult i32 %sub.i.i, 752
  br i1 %cmp.i331.i, label %do.end.i332.i, label %if.end.i338.i

do.end.i332.i:                                    ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #15
  %231 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %232, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end.i338.i:                                    ; preds = %if.then126.i
  %wake_packet_bufsize.i333.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 94
  %233 = ptrtoint ptr %wake_packet_bufsize.i333.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %wake_packet_bufsize.i333.i, align 1
  %235 = call i32 @llvm.bswap.i32(i32 %234) #13
  %add.i334.i = add i32 %235, 3
  %and.i335.i = and i32 %add.i334.i, -4
  %236 = add nsw i32 %29, -756
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i335.i, i32 %236)
  %cmp5.not.i337.i = icmp eq i32 %and.i335.i, %236
  br i1 %cmp5.not.i337.i, label %if.end8.i.i.i368.i, label %do.end10.i339.i

do.end10.i339.i:                                  ; preds = %if.end.i338.i
  call void @__sanitizer_cov_trace_pc() #15
  %237 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %238, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end8.i.i.i368.i:                               ; preds = %if.end.i338.i
  %add16.i340.i = add i32 %and.i335.i, 1120
  %call9.i.i.i367.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i340.i, i32 noundef 3520) #17
  %tobool.not.i370.i = icmp eq ptr %call9.i.i.i367.i, null
  br i1 %tobool.not.i370.i, label %if.end8.i.i.i368.i.out_free_resp.i_crit_edge, label %iwl_mvm_parse_wowlan_status_common_v9.exit.i

if.end8.i.i.i368.i.out_free_resp.i_crit_edge:     ; preds = %if.end8.i.i.i368.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

iwl_mvm_parse_wowlan_status_common_v9.exit.i:     ; preds = %if.end8.i.i.i368.i
  %replay_ctr.i373.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 88
  %239 = ptrtoint ptr %replay_ctr.i373.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 8)
  %240 = load i64, ptr %replay_ctr.i373.i, align 1
  %241 = call i64 @llvm.bswap.i64(i64 %240) #13
  %242 = ptrtoint ptr %call9.i.i.i367.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %call9.i.i.i367.i, align 128
  %pattern_number.i374.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 89
  %243 = ptrtoint ptr %pattern_number.i374.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 2)
  %244 = load i16, ptr %pattern_number.i374.i, align 1
  %245 = call i16 @llvm.bswap.i16(i16 %244) #13
  %pattern_number22.i375.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 6
  %246 = ptrtoint ptr %pattern_number22.i375.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %pattern_number22.i375.i, align 4
  %non_qos_seq_ctr.i376.i = getelementptr inbounds %struct.iwl_wowlan_status_v9, ptr %data128.i, i32 0, i32 4
  %247 = ptrtoint ptr %non_qos_seq_ctr.i376.i to i32
  call void @__asan_loadN_noabort(i32 %247, i32 2)
  %248 = load i16, ptr %non_qos_seq_ctr.i376.i, align 1
  %249 = call i16 @llvm.bswap.i16(i16 %248) #13
  %non_qos_seq_ctr23.i377.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 7
  %250 = ptrtoint ptr %non_qos_seq_ctr23.i377.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %non_qos_seq_ctr23.i377.i, align 2
  %arrayidx.i378.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 89, i32 1
  %251 = ptrtoint ptr %arrayidx.i378.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 2)
  %252 = load i16, ptr %arrayidx.i378.i, align 1
  %253 = call i16 @llvm.bswap.i16(i16 %252) #13
  %arrayidx26.i379.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 0
  %254 = ptrtoint ptr %arrayidx26.i379.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %253, ptr %arrayidx26.i379.i, align 32
  %arrayidx.1.i380.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 89, i32 1, i32 2
  %255 = ptrtoint ptr %arrayidx.1.i380.i to i32
  call void @__asan_loadN_noabort(i32 %255, i32 2)
  %256 = load i16, ptr %arrayidx.1.i380.i, align 1
  %257 = call i16 @llvm.bswap.i16(i16 %256) #13
  %arrayidx26.1.i381.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 1
  %258 = ptrtoint ptr %arrayidx26.1.i381.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %257, ptr %arrayidx26.1.i381.i, align 2
  %arrayidx.2.i382.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 90
  %259 = ptrtoint ptr %arrayidx.2.i382.i to i32
  call void @__asan_loadN_noabort(i32 %259, i32 2)
  %260 = load i16, ptr %arrayidx.2.i382.i, align 1
  %261 = call i16 @llvm.bswap.i16(i16 %260) #13
  %arrayidx26.2.i383.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 2
  %262 = ptrtoint ptr %arrayidx26.2.i383.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %261, ptr %arrayidx26.2.i383.i, align 4
  %arrayidx.3.i384.i = getelementptr %struct.iwl_wowlan_status_v9, ptr %data128.i, i32 0, i32 5, i32 3
  %263 = ptrtoint ptr %arrayidx.3.i384.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 2)
  %264 = load i16, ptr %arrayidx.3.i384.i, align 1
  %265 = call i16 @llvm.bswap.i16(i16 %264) #13
  %arrayidx26.3.i385.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 3
  %266 = ptrtoint ptr %arrayidx26.3.i385.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %265, ptr %arrayidx26.3.i385.i, align 2
  %arrayidx.4.i386.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 90, i32 1
  %267 = ptrtoint ptr %arrayidx.4.i386.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 2)
  %268 = load i16, ptr %arrayidx.4.i386.i, align 1
  %269 = call i16 @llvm.bswap.i16(i16 %268) #13
  %arrayidx26.4.i387.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 4
  %270 = ptrtoint ptr %arrayidx26.4.i387.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %269, ptr %arrayidx26.4.i387.i, align 8
  %arrayidx.5.i388.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 90, i32 1, i32 2
  %271 = ptrtoint ptr %arrayidx.5.i388.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 2)
  %272 = load i16, ptr %arrayidx.5.i388.i, align 1
  %273 = call i16 @llvm.bswap.i16(i16 %272) #13
  %arrayidx26.5.i389.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 5
  %274 = ptrtoint ptr %arrayidx26.5.i389.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %273, ptr %arrayidx26.5.i389.i, align 2
  %arrayidx.6.i390.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 91
  %275 = ptrtoint ptr %arrayidx.6.i390.i to i32
  call void @__asan_loadN_noabort(i32 %275, i32 2)
  %276 = load i16, ptr %arrayidx.6.i390.i, align 1
  %277 = call i16 @llvm.bswap.i16(i16 %276) #13
  %arrayidx26.6.i391.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 6
  %278 = ptrtoint ptr %arrayidx26.6.i391.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %277, ptr %arrayidx26.6.i391.i, align 4
  %arrayidx.7.i392.i = getelementptr %struct.iwl_wowlan_status_v9, ptr %data128.i, i32 0, i32 5, i32 7
  %279 = ptrtoint ptr %arrayidx.7.i392.i to i32
  call void @__asan_loadN_noabort(i32 %279, i32 2)
  %280 = load i16, ptr %arrayidx.7.i392.i, align 1
  %281 = call i16 @llvm.bswap.i16(i16 %280) #13
  %arrayidx26.7.i393.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 8, i32 7
  %282 = ptrtoint ptr %arrayidx26.7.i393.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %281, ptr %arrayidx26.7.i393.i, align 2
  %wakeup_reasons.i394.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 91, i32 1
  %283 = ptrtoint ptr %wakeup_reasons.i394.i to i32
  call void @__asan_loadN_noabort(i32 %283, i32 4)
  %284 = load i32, ptr %wakeup_reasons.i394.i, align 1
  %285 = call i32 @llvm.bswap.i32(i32 %284) #13
  %wakeup_reasons27.i395.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 3
  %286 = ptrtoint ptr %wakeup_reasons27.i395.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %wakeup_reasons27.i395.i, align 16
  %num_of_gtk_rekeys.i396.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 92
  %287 = ptrtoint ptr %num_of_gtk_rekeys.i396.i to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %288 = load i32, ptr %num_of_gtk_rekeys.i396.i, align 1
  %289 = call i32 @llvm.bswap.i32(i32 %288) #13
  %num_of_gtk_rekeys28.i397.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 1
  %290 = ptrtoint ptr %num_of_gtk_rekeys28.i397.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %num_of_gtk_rekeys28.i397.i, align 8
  %received_beacons.i398.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 93
  %291 = ptrtoint ptr %received_beacons.i398.i to i32
  call void @__asan_loadN_noabort(i32 %291, i32 4)
  %292 = load i32, ptr %received_beacons.i398.i, align 1
  %293 = call i32 @llvm.bswap.i32(i32 %292) #13
  %received_beacons29.i399.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 2
  %294 = ptrtoint ptr %received_beacons29.i399.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %received_beacons29.i399.i, align 4
  %wake_packet_length.i400.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 93, i32 1
  %295 = ptrtoint ptr %wake_packet_length.i400.i to i32
  call void @__asan_loadN_noabort(i32 %295, i32 4)
  %296 = load i32, ptr %wake_packet_length.i400.i, align 1
  %297 = call i32 @llvm.bswap.i32(i32 %296) #13
  %wake_packet_length30.i401.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 4
  %298 = ptrtoint ptr %wake_packet_length30.i401.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %wake_packet_length30.i401.i, align 4
  %299 = ptrtoint ptr %wake_packet_bufsize.i333.i to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %wake_packet_bufsize.i333.i, align 1
  %301 = call i32 @llvm.bswap.i32(i32 %300) #13
  %wake_packet_bufsize32.i402.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 5
  %302 = ptrtoint ptr %wake_packet_bufsize32.i402.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %wake_packet_bufsize32.i402.i, align 8
  %wake_packet.i403.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 14
  %wake_packet33.i404.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 95
  %303 = call ptr @memcpy(ptr %wake_packet.i403.i, ptr %wake_packet33.i404.i, i32 %301)
  %cmp.i407.i = icmp ugt ptr %call9.i.i.i367.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i407.i, label %iwl_mvm_parse_wowlan_status_common_v9.exit.i.out_free_resp.i_crit_edge, label %if.end133.i

iwl_mvm_parse_wowlan_status_common_v9.exit.i.out_free_resp.i_crit_edge: ; preds = %iwl_mvm_parse_wowlan_status_common_v9.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

if.end133.i:                                      ; preds = %iwl_mvm_parse_wowlan_status_common_v9.exit.i
  %rsc136.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 6, i32 1
  call fastcc void @iwl_mvm_convert_key_counters(ptr noundef nonnull %call9.i.i.i367.i, ptr noundef %rsc136.i) #13
  %key_len.i408.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 5
  %304 = ptrtoint ptr %key_len.i408.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %key_len.i408.i, align 1
  %gtk.i409.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 10
  %len.i410.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 10, i32 1
  %306 = ptrtoint ptr %len.i410.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %305, ptr %len.i410.i, align 1
  %key_flags.i411.i = getelementptr inbounds %struct.iwl_wowlan_gtk_status_v2, ptr %data128.i, i32 0, i32 2
  %307 = ptrtoint ptr %key_flags.i411.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %key_flags.i411.i, align 1
  %flags.i412.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 10, i32 2
  %309 = ptrtoint ptr %flags.i412.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %308, ptr %flags.i412.i, align 2
  %310 = call ptr @memcpy(ptr %gtk.i409.i, ptr %data128.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %305)
  %cmp.i413.i = icmp eq i8 %305, 16
  br i1 %cmp.i413.i, label %if.then.i416.i, label %if.end133.i.iwl_mvm_convert_gtk_v2.exit418.i_crit_edge

if.end133.i.iwl_mvm_convert_gtk_v2.exit418.i_crit_edge: ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_convert_gtk_v2.exit418.i

if.then.i416.i:                                   ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i414.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 10, i32 0, i32 24
  %tkip_mic_key.i415.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 5, i32 1
  %311 = ptrtoint ptr %tkip_mic_key.i415.i to i32
  call void @__asan_loadN_noabort(i32 %311, i32 8)
  %312 = load i64, ptr %tkip_mic_key.i415.i, align 1
  %313 = ptrtoint ptr %add.ptr.i414.i to i32
  call void @__asan_storeN_noabort(i32 %313, i32 8)
  store i64 %312, ptr %add.ptr.i414.i, align 1
  br label %iwl_mvm_convert_gtk_v2.exit418.i

iwl_mvm_convert_gtk_v2.exit418.i:                 ; preds = %if.then.i416.i, %if.end133.i.iwl_mvm_convert_gtk_v2.exit418.i_crit_edge
  %igtk140.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 78
  %ipn1.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 82
  %key_len.i419.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 82, i32 1, i32 2
  %314 = ptrtoint ptr %key_len.i419.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %key_len.i419.i, align 1
  %igtk.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 13
  %len.i420.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 13, i32 2
  %316 = ptrtoint ptr %len.i420.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %315, ptr %len.i420.i, align 8
  %key_flags.i421.i = getelementptr inbounds %struct.iwl_wowlan_igtk_status, ptr %igtk140.i, i32 0, i32 3
  %317 = ptrtoint ptr %key_flags.i421.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %key_flags.i421.i, align 1
  %flags.i422.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 13, i32 3
  %319 = ptrtoint ptr %flags.i422.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %318, ptr %flags.i422.i, align 1
  %key.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 13, i32 1
  %320 = call ptr @memcpy(ptr %key.i.i, ptr %igtk140.i, i32 32)
  %arrayidx.i423.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 82, i32 1, i32 1
  %321 = ptrtoint ptr %arrayidx.i423.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx.i423.i, align 1
  %conv.i.i = zext i8 %322 to i64
  %arrayidx7.i.i = getelementptr %struct.iwl_rx_packet, ptr %230, i32 82, i32 1
  %323 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %324 to i64
  %shl9.i.i = shl nuw nsw i64 %conv8.i.i, 8
  %or.i.i = or i64 %shl9.i.i, %conv.i.i
  %arrayidx10.i.i = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk140.i, i32 0, i32 1, i32 3
  %325 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %326 to i64
  %shl12.i.i = shl nuw nsw i64 %conv11.i.i, 16
  %or13.i.i = or i64 %or.i.i, %shl12.i.i
  %arrayidx14.i.i = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk140.i, i32 0, i32 1, i32 2
  %327 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %328 to i64
  %shl16.i.i = shl nuw nsw i64 %conv15.i.i, 24
  %or17.i.i = or i64 %or13.i.i, %shl16.i.i
  %arrayidx18.i.i = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk140.i, i32 0, i32 1, i32 1
  %329 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %330 to i64
  %shl20.i.i = shl nuw nsw i64 %conv19.i.i, 32
  %or21.i.i = or i64 %or17.i.i, %shl20.i.i
  %331 = ptrtoint ptr %ipn1.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %ipn1.i.i, align 1
  %conv23.i.i = zext i8 %332 to i64
  %shl24.i.i = shl nuw nsw i64 %conv23.i.i, 40
  %or25.i.i = or i64 %or21.i.i, %shl24.i.i
  %333 = ptrtoint ptr %igtk.i.i to i32
  call void @__asan_store8_noabort(i32 %333)
  store i64 %or25.i.i, ptr %igtk.i.i, align 16
  %tid_tear_down.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %230, i32 94, i32 1
  %334 = ptrtoint ptr %tid_tear_down.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %tid_tear_down.i, align 1
  %tid_tear_down142.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i367.i, i32 0, i32 9
  %336 = ptrtoint ptr %tid_tear_down142.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %tid_tear_down142.i, align 16
  br label %out_free_resp.i

if.then150.i:                                     ; preds = %if.else.i
  %337 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %resp_pkt.i, align 4
  %data152.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 624, i32 %sub.i.i)
  %cmp.i424.i = icmp ult i32 %sub.i.i, 624
  br i1 %cmp.i424.i, label %do.end.i425.i, label %if.end.i431.i

do.end.i425.i:                                    ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #15
  %339 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %340, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end.i431.i:                                    ; preds = %if.then150.i
  %wake_packet_bufsize.i426.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 78
  %341 = ptrtoint ptr %wake_packet_bufsize.i426.i to i32
  call void @__asan_loadN_noabort(i32 %341, i32 4)
  %342 = load i32, ptr %wake_packet_bufsize.i426.i, align 1
  %343 = call i32 @llvm.bswap.i32(i32 %342) #13
  %add.i427.i = add i32 %343, 3
  %and.i428.i = and i32 %add.i427.i, -4
  %344 = add nsw i32 %29, -628
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i428.i, i32 %344)
  %cmp5.not.i430.i = icmp eq i32 %and.i428.i, %344
  br i1 %cmp5.not.i430.i, label %if.end8.i.i.i461.i, label %do.end10.i432.i

do.end10.i432.i:                                  ; preds = %if.end.i431.i
  call void @__sanitizer_cov_trace_pc() #15
  %345 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %346, i32 noundef 0, ptr noundef nonnull @.str.20) #13
  br label %out_free_resp.i

if.end8.i.i.i461.i:                               ; preds = %if.end.i431.i
  %add16.i433.i = add i32 %and.i428.i, 1120
  %call9.i.i.i460.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i433.i, i32 noundef 3520) #17
  %tobool.not.i463.i = icmp eq ptr %call9.i.i.i460.i, null
  br i1 %tobool.not.i463.i, label %if.end8.i.i.i461.i.out_free_resp.i_crit_edge, label %iwl_mvm_parse_wowlan_status_common_v12.exit.i

if.end8.i.i.i461.i.out_free_resp.i_crit_edge:     ; preds = %if.end8.i.i.i461.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

iwl_mvm_parse_wowlan_status_common_v12.exit.i:    ; preds = %if.end8.i.i.i461.i
  %replay_ctr.i466.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 72
  %347 = ptrtoint ptr %replay_ctr.i466.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 8)
  %348 = load i64, ptr %replay_ctr.i466.i, align 1
  %349 = call i64 @llvm.bswap.i64(i64 %348) #13
  %350 = ptrtoint ptr %call9.i.i.i460.i to i32
  call void @__asan_store8_noabort(i32 %350)
  store i64 %349, ptr %call9.i.i.i460.i, align 128
  %pattern_number.i467.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 73
  %351 = ptrtoint ptr %pattern_number.i467.i to i32
  call void @__asan_loadN_noabort(i32 %351, i32 2)
  %352 = load i16, ptr %pattern_number.i467.i, align 1
  %353 = call i16 @llvm.bswap.i16(i16 %352) #13
  %pattern_number22.i468.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 6
  %354 = ptrtoint ptr %pattern_number22.i468.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %353, ptr %pattern_number22.i468.i, align 4
  %non_qos_seq_ctr.i469.i = getelementptr inbounds %struct.iwl_wowlan_status_v12, ptr %data152.i, i32 0, i32 4
  %355 = ptrtoint ptr %non_qos_seq_ctr.i469.i to i32
  call void @__asan_loadN_noabort(i32 %355, i32 2)
  %356 = load i16, ptr %non_qos_seq_ctr.i469.i, align 1
  %357 = call i16 @llvm.bswap.i16(i16 %356) #13
  %non_qos_seq_ctr23.i470.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 7
  %358 = ptrtoint ptr %non_qos_seq_ctr23.i470.i to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 %357, ptr %non_qos_seq_ctr23.i470.i, align 2
  %arrayidx.i471.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 73, i32 1
  %359 = ptrtoint ptr %arrayidx.i471.i to i32
  call void @__asan_loadN_noabort(i32 %359, i32 2)
  %360 = load i16, ptr %arrayidx.i471.i, align 1
  %361 = call i16 @llvm.bswap.i16(i16 %360) #13
  %arrayidx26.i472.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 0
  %362 = ptrtoint ptr %arrayidx26.i472.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 %361, ptr %arrayidx26.i472.i, align 32
  %arrayidx.1.i473.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 73, i32 1, i32 2
  %363 = ptrtoint ptr %arrayidx.1.i473.i to i32
  call void @__asan_loadN_noabort(i32 %363, i32 2)
  %364 = load i16, ptr %arrayidx.1.i473.i, align 1
  %365 = call i16 @llvm.bswap.i16(i16 %364) #13
  %arrayidx26.1.i474.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 1
  %366 = ptrtoint ptr %arrayidx26.1.i474.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %365, ptr %arrayidx26.1.i474.i, align 2
  %arrayidx.2.i475.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 74
  %367 = ptrtoint ptr %arrayidx.2.i475.i to i32
  call void @__asan_loadN_noabort(i32 %367, i32 2)
  %368 = load i16, ptr %arrayidx.2.i475.i, align 1
  %369 = call i16 @llvm.bswap.i16(i16 %368) #13
  %arrayidx26.2.i476.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 2
  %370 = ptrtoint ptr %arrayidx26.2.i476.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 %369, ptr %arrayidx26.2.i476.i, align 4
  %arrayidx.3.i477.i = getelementptr %struct.iwl_wowlan_status_v12, ptr %data152.i, i32 0, i32 5, i32 3
  %371 = ptrtoint ptr %arrayidx.3.i477.i to i32
  call void @__asan_loadN_noabort(i32 %371, i32 2)
  %372 = load i16, ptr %arrayidx.3.i477.i, align 1
  %373 = call i16 @llvm.bswap.i16(i16 %372) #13
  %arrayidx26.3.i478.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 3
  %374 = ptrtoint ptr %arrayidx26.3.i478.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 %373, ptr %arrayidx26.3.i478.i, align 2
  %arrayidx.4.i479.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 74, i32 1
  %375 = ptrtoint ptr %arrayidx.4.i479.i to i32
  call void @__asan_loadN_noabort(i32 %375, i32 2)
  %376 = load i16, ptr %arrayidx.4.i479.i, align 1
  %377 = call i16 @llvm.bswap.i16(i16 %376) #13
  %arrayidx26.4.i480.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 4
  %378 = ptrtoint ptr %arrayidx26.4.i480.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %377, ptr %arrayidx26.4.i480.i, align 8
  %arrayidx.5.i481.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 74, i32 1, i32 2
  %379 = ptrtoint ptr %arrayidx.5.i481.i to i32
  call void @__asan_loadN_noabort(i32 %379, i32 2)
  %380 = load i16, ptr %arrayidx.5.i481.i, align 1
  %381 = call i16 @llvm.bswap.i16(i16 %380) #13
  %arrayidx26.5.i482.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 5
  %382 = ptrtoint ptr %arrayidx26.5.i482.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %381, ptr %arrayidx26.5.i482.i, align 2
  %arrayidx.6.i483.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 75
  %383 = ptrtoint ptr %arrayidx.6.i483.i to i32
  call void @__asan_loadN_noabort(i32 %383, i32 2)
  %384 = load i16, ptr %arrayidx.6.i483.i, align 1
  %385 = call i16 @llvm.bswap.i16(i16 %384) #13
  %arrayidx26.6.i484.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 6
  %386 = ptrtoint ptr %arrayidx26.6.i484.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %385, ptr %arrayidx26.6.i484.i, align 4
  %arrayidx.7.i485.i = getelementptr %struct.iwl_wowlan_status_v12, ptr %data152.i, i32 0, i32 5, i32 7
  %387 = ptrtoint ptr %arrayidx.7.i485.i to i32
  call void @__asan_loadN_noabort(i32 %387, i32 2)
  %388 = load i16, ptr %arrayidx.7.i485.i, align 1
  %389 = call i16 @llvm.bswap.i16(i16 %388) #13
  %arrayidx26.7.i486.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 8, i32 7
  %390 = ptrtoint ptr %arrayidx26.7.i486.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %389, ptr %arrayidx26.7.i486.i, align 2
  %wakeup_reasons.i487.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 75, i32 1
  %391 = ptrtoint ptr %wakeup_reasons.i487.i to i32
  call void @__asan_loadN_noabort(i32 %391, i32 4)
  %392 = load i32, ptr %wakeup_reasons.i487.i, align 1
  %393 = call i32 @llvm.bswap.i32(i32 %392) #13
  %wakeup_reasons27.i488.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 3
  %394 = ptrtoint ptr %wakeup_reasons27.i488.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %wakeup_reasons27.i488.i, align 16
  %num_of_gtk_rekeys.i489.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 76
  %395 = ptrtoint ptr %num_of_gtk_rekeys.i489.i to i32
  call void @__asan_loadN_noabort(i32 %395, i32 4)
  %396 = load i32, ptr %num_of_gtk_rekeys.i489.i, align 1
  %397 = call i32 @llvm.bswap.i32(i32 %396) #13
  %num_of_gtk_rekeys28.i490.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 1
  %398 = ptrtoint ptr %num_of_gtk_rekeys28.i490.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %397, ptr %num_of_gtk_rekeys28.i490.i, align 8
  %received_beacons.i491.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 77
  %399 = ptrtoint ptr %received_beacons.i491.i to i32
  call void @__asan_loadN_noabort(i32 %399, i32 4)
  %400 = load i32, ptr %received_beacons.i491.i, align 1
  %401 = call i32 @llvm.bswap.i32(i32 %400) #13
  %received_beacons29.i492.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 2
  %402 = ptrtoint ptr %received_beacons29.i492.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %401, ptr %received_beacons29.i492.i, align 4
  %wake_packet_length.i493.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 77, i32 1
  %403 = ptrtoint ptr %wake_packet_length.i493.i to i32
  call void @__asan_loadN_noabort(i32 %403, i32 4)
  %404 = load i32, ptr %wake_packet_length.i493.i, align 1
  %405 = call i32 @llvm.bswap.i32(i32 %404) #13
  %wake_packet_length30.i494.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 4
  %406 = ptrtoint ptr %wake_packet_length30.i494.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %wake_packet_length30.i494.i, align 4
  %407 = ptrtoint ptr %wake_packet_bufsize.i426.i to i32
  call void @__asan_loadN_noabort(i32 %407, i32 4)
  %408 = load i32, ptr %wake_packet_bufsize.i426.i, align 1
  %409 = call i32 @llvm.bswap.i32(i32 %408) #13
  %wake_packet_bufsize32.i495.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 5
  %410 = ptrtoint ptr %wake_packet_bufsize32.i495.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %409, ptr %wake_packet_bufsize32.i495.i, align 8
  %wake_packet.i496.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 14
  %wake_packet33.i497.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 79
  %411 = call ptr @memcpy(ptr %wake_packet.i496.i, ptr %wake_packet33.i497.i, i32 %409)
  %cmp.i500.i = icmp ugt ptr %call9.i.i.i460.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i500.i, label %iwl_mvm_parse_wowlan_status_common_v12.exit.i.out_free_resp.i_crit_edge, label %if.end157.i

iwl_mvm_parse_wowlan_status_common_v12.exit.i.out_free_resp.i_crit_edge: ; preds = %iwl_mvm_parse_wowlan_status_common_v12.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_resp.i

if.end157.i:                                      ; preds = %iwl_mvm_parse_wowlan_status_common_v12.exit.i
  %sc.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 6, i32 1
  br label %for.body.i

for.cond11.preheader.i:                           ; preds = %if.end.i
  %ptk.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 12
  %aes.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 12, i32 1
  br label %for.body14.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end157.i
  %i.042.i = phi i32 [ 0, %if.end157.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.iwl_wowlan_all_rsc_tsc_v5, ptr %sc.i, i32 0, i32 3, i32 %i.042.i
  %412 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %413)
  %cmp8.i = icmp ult i8 %413, 2
  br i1 %cmp8.i, label %if.then.i24, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i24:                                      ; preds = %for.body.i
  %conv.i23 = zext i8 %413 to i32
  %arrayidx2.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 11, i32 %conv.i23
  %aes.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 11, i32 %conv.i23, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i24
  %tid.032.i.i = phi i32 [ 0, %if.then.i24 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx1.i.i = getelementptr %struct.iwl_wowlan_all_rsc_tsc_v5, ptr %sc.i, i32 0, i32 1, i32 %conv.i23, i32 %tid.032.i.i
  %414 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_loadN_noabort(i32 %414, i32 8)
  %415 = load i64, ptr %arrayidx1.i.i, align 1
  %arrayidx3.i.i = getelementptr [8 x %struct.ieee80211_key_seq], ptr %arrayidx2.i.i, i32 0, i32 %tid.032.i.i
  %416 = call i64 @llvm.bswap.i64(i64 %415) #13
  %conv.i.i.i = trunc i64 %416 to i16
  %iv16.i.i.i = getelementptr inbounds %struct.anon.233, ptr %arrayidx3.i.i, i32 0, i32 1
  %417 = ptrtoint ptr %iv16.i.i.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %conv.i.i.i, ptr %iv16.i.i.i, align 4
  %shr.i.i.i = lshr i64 %416, 16
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %418 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %conv1.i.i.i, ptr %arrayidx3.i.i, align 4
  %419 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_loadN_noabort(i32 %419, i32 8)
  %420 = load i64, ptr %arrayidx1.i.i, align 1
  %arrayidx10.i.i25 = getelementptr [8 x %struct.ieee80211_key_seq], ptr %aes.i.i, i32 0, i32 %tid.032.i.i
  %421 = call i64 @llvm.bswap.i64(i64 %420) #13
  %shr.i30.i.i = lshr i64 %421, 40
  %conv.i31.i.i = trunc i64 %shr.i30.i.i to i8
  %422 = ptrtoint ptr %arrayidx10.i.i25 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %conv.i31.i.i, ptr %arrayidx10.i.i25, align 4
  %shr2.i.i.i = lshr i64 %421, 32
  %conv3.i.i.i = trunc i64 %shr2.i.i.i to i8
  %arrayidx5.i.i.i = getelementptr [6 x i8], ptr %arrayidx10.i.i25, i32 0, i32 1
  %423 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %conv3.i.i.i, ptr %arrayidx5.i.i.i, align 1
  %shr6.i.i.i = lshr i64 %421, 24
  %conv7.i.i.i = trunc i64 %shr6.i.i.i to i8
  %arrayidx9.i.i.i = getelementptr [6 x i8], ptr %arrayidx10.i.i25, i32 0, i32 2
  %424 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %conv7.i.i.i, ptr %arrayidx9.i.i.i, align 2
  %shr10.i.i.i = lshr i64 %421, 16
  %conv11.i.i.i = trunc i64 %shr10.i.i.i to i8
  %arrayidx13.i.i.i = getelementptr [6 x i8], ptr %arrayidx10.i.i25, i32 0, i32 3
  %425 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %conv11.i.i.i, ptr %arrayidx13.i.i.i, align 1
  %shr14.i.i.i = lshr i64 %421, 8
  %conv15.i.i.i = trunc i64 %shr14.i.i.i to i8
  %arrayidx17.i.i.i = getelementptr [6 x i8], ptr %arrayidx10.i.i25, i32 0, i32 4
  %426 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %conv15.i.i.i, ptr %arrayidx17.i.i.i, align 4
  %conv18.i.i.i = trunc i64 %421 to i8
  %arrayidx20.i.i.i = getelementptr [6 x i8], ptr %arrayidx10.i.i25, i32 0, i32 5
  %427 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %conv18.i.i.i, ptr %arrayidx20.i.i.i, align 1
  %inc.i.i = add nuw nsw i32 %tid.032.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %iwl_mvm_convert_key_counters_v5_gtk_seq.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

iwl_mvm_convert_key_counters_v5_gtk_seq.exit.i:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %valid.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 11, i32 %conv.i23, i32 3
  %428 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 1, ptr %valid.i.i, align 1
  %conv.i.i26 = trunc i32 %i.042.i to i8
  %key_id15.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 11, i32 %conv.i23, i32 2
  %429 = ptrtoint ptr %key_id15.i.i to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 %conv.i.i26, ptr %key_id15.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %iwl_mvm_convert_key_counters_v5_gtk_seq.exit.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.cond11.preheader.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.cond11.preheader.i
  %tid.044.i = phi i32 [ 0, %for.cond11.preheader.i ], [ %inc23.i, %for.body14.i.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr [8 x i64], ptr %sc.i, i32 0, i32 %tid.044.i
  %430 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_loadN_noabort(i32 %430, i32 8)
  %431 = load i64, ptr %arrayidx15.i, align 1
  %arrayidx16.i = getelementptr [8 x %struct.ieee80211_key_seq], ptr %ptk.i, i32 0, i32 %tid.044.i
  %432 = call i64 @llvm.bswap.i64(i64 %431) #13
  %conv.i39.i = trunc i64 %432 to i16
  %iv16.i.i = getelementptr inbounds %struct.anon.233, ptr %arrayidx16.i, i32 0, i32 1
  %433 = ptrtoint ptr %iv16.i.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %conv.i39.i, ptr %iv16.i.i, align 4
  %shr.i.i = lshr i64 %432, 16
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %434 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %conv1.i.i, ptr %arrayidx16.i, align 4
  %435 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_loadN_noabort(i32 %435, i32 8)
  %436 = load i64, ptr %arrayidx15.i, align 1
  %arrayidx21.i = getelementptr [8 x %struct.ieee80211_key_seq], ptr %aes.i, i32 0, i32 %tid.044.i
  %437 = call i64 @llvm.bswap.i64(i64 %436) #13
  %shr.i40.i = lshr i64 %437, 40
  %conv.i41.i = trunc i64 %shr.i40.i to i8
  %438 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 %conv.i41.i, ptr %arrayidx21.i, align 4
  %shr2.i.i = lshr i64 %437, 32
  %conv3.i.i = trunc i64 %shr2.i.i to i8
  %arrayidx5.i.i = getelementptr [6 x i8], ptr %arrayidx21.i, i32 0, i32 1
  %439 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %conv3.i.i, ptr %arrayidx5.i.i, align 1
  %shr6.i.i = lshr i64 %437, 24
  %conv7.i.i = trunc i64 %shr6.i.i to i8
  %arrayidx9.i.i = getelementptr [6 x i8], ptr %arrayidx21.i, i32 0, i32 2
  %440 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %conv7.i.i, ptr %arrayidx9.i.i, align 2
  %shr10.i.i = lshr i64 %437, 16
  %conv11.i.i27 = trunc i64 %shr10.i.i to i8
  %arrayidx13.i.i = getelementptr [6 x i8], ptr %arrayidx21.i, i32 0, i32 3
  %441 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 %conv11.i.i27, ptr %arrayidx13.i.i, align 1
  %shr14.i.i = lshr i64 %437, 8
  %conv15.i.i28 = trunc i64 %shr14.i.i to i8
  %arrayidx17.i.i = getelementptr [6 x i8], ptr %arrayidx21.i, i32 0, i32 4
  %442 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %conv15.i.i28, ptr %arrayidx17.i.i, align 4
  %conv18.i.i = trunc i64 %437 to i8
  %arrayidx20.i.i = getelementptr [6 x i8], ptr %arrayidx21.i, i32 0, i32 5
  %443 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %conv18.i.i, ptr %arrayidx20.i.i, align 1
  %inc23.i = add nuw nsw i32 %tid.044.i, 1
  %exitcond45.not.i = icmp eq i32 %inc23.i, 8
  br i1 %exitcond45.not.i, label %iwl_mvm_convert_key_counters_v5.exit, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14.i

iwl_mvm_convert_key_counters_v5.exit:             ; preds = %for.body14.i
  %key_len.i.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 5
  %444 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %key_len.i.i.i, align 1
  %gtk.i.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 10
  %len.i.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 10, i32 1
  %446 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %445, ptr %len.i.i.i, align 1
  %key_flags.i.i.i = getelementptr inbounds %struct.iwl_wowlan_gtk_status_v2, ptr %data152.i, i32 0, i32 2
  %447 = ptrtoint ptr %key_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %key_flags.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 10, i32 2
  %449 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %448, ptr %flags.i.i.i, align 2
  %450 = call ptr @memcpy(ptr %gtk.i.i.i, ptr %data152.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %445)
  %cmp.i.i.i = icmp eq i8 %445, 16
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %iwl_mvm_convert_key_counters_v5.exit.iwl_mvm_convert_gtk_v3.exit.i_crit_edge

iwl_mvm_convert_key_counters_v5.exit.iwl_mvm_convert_gtk_v3.exit.i_crit_edge: ; preds = %iwl_mvm_convert_key_counters_v5.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_convert_gtk_v3.exit.i

if.then.i.i.i:                                    ; preds = %iwl_mvm_convert_key_counters_v5.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 10, i32 0, i32 24
  %tkip_mic_key.i.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 5, i32 1
  %451 = ptrtoint ptr %tkip_mic_key.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %451, i32 8)
  %452 = load i64, ptr %tkip_mic_key.i.i.i, align 1
  %453 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %453, i32 8)
  store i64 %452, ptr %add.ptr.i.i.i, align 1
  br label %iwl_mvm_convert_gtk_v3.exit.i

iwl_mvm_convert_gtk_v3.exit.i:                    ; preds = %if.then.i.i.i, %iwl_mvm_convert_key_counters_v5.exit.iwl_mvm_convert_gtk_v3.exit.i_crit_edge
  %igtk162.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 62
  %ipn1.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 66
  %key_len.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 66, i32 1, i32 2
  %454 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %key_len.i, align 1
  %igtk.i18 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 13
  %len.i19 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 13, i32 2
  %456 = ptrtoint ptr %len.i19 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %455, ptr %len.i19, align 8
  %key_flags.i = getelementptr inbounds %struct.iwl_wowlan_igtk_status, ptr %igtk162.i, i32 0, i32 3
  %457 = ptrtoint ptr %key_flags.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %key_flags.i, align 1
  %flags.i20 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 13, i32 3
  %459 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 %458, ptr %flags.i20, align 1
  %key.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 13, i32 1
  %460 = call ptr @memcpy(ptr %key.i, ptr %igtk162.i, i32 32)
  %arrayidx.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 66, i32 1, i32 1
  %461 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx.i, align 1
  %conv.i21 = zext i8 %462 to i64
  %arrayidx7.i = getelementptr %struct.iwl_rx_packet, ptr %338, i32 66, i32 1
  %463 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %464 to i64
  %shl9.i = shl nuw nsw i64 %conv8.i, 8
  %or.i = or i64 %shl9.i, %conv.i21
  %arrayidx10.i = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk162.i, i32 0, i32 1, i32 3
  %465 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %466 to i64
  %shl12.i = shl nuw nsw i64 %conv11.i, 16
  %or13.i = or i64 %or.i, %shl12.i
  %arrayidx14.i = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk162.i, i32 0, i32 1, i32 2
  %467 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %468 to i64
  %shl16.i = shl nuw nsw i64 %conv15.i, 24
  %or17.i = or i64 %or13.i, %shl16.i
  %arrayidx18.i = getelementptr %struct.iwl_wowlan_igtk_status, ptr %igtk162.i, i32 0, i32 1, i32 1
  %469 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %470 to i64
  %shl20.i = shl nuw nsw i64 %conv19.i, 32
  %or21.i = or i64 %or17.i, %shl20.i
  %471 = ptrtoint ptr %ipn1.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %ipn1.i, align 1
  %conv23.i = zext i8 %472 to i64
  %shl24.i = shl nuw nsw i64 %conv23.i, 40
  %or25.i = or i64 %or21.i, %shl24.i
  %473 = ptrtoint ptr %igtk.i18 to i32
  call void @__asan_store8_noabort(i32 %473)
  store i64 %or25.i, ptr %igtk.i18, align 16
  %tid_tear_down164.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %338, i32 78, i32 1
  %474 = ptrtoint ptr %tid_tear_down164.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %tid_tear_down164.i, align 1
  %tid_tear_down165.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %call9.i.i.i460.i, i32 0, i32 9
  %476 = ptrtoint ptr %tid_tear_down165.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %475, ptr %tid_tear_down165.i, align 16
  br label %out_free_resp.i

do.end173.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv94.i = zext i8 %notif_ver.0.i to i32
  %477 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %478, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %conv94.i) #13
  br label %out_free_resp.i

out_free_resp.i:                                  ; preds = %do.end173.i, %iwl_mvm_convert_gtk_v3.exit.i, %iwl_mvm_parse_wowlan_status_common_v12.exit.i.out_free_resp.i_crit_edge, %if.end8.i.i.i461.i.out_free_resp.i_crit_edge, %do.end10.i432.i, %do.end.i425.i, %iwl_mvm_convert_gtk_v2.exit418.i, %iwl_mvm_parse_wowlan_status_common_v9.exit.i.out_free_resp.i_crit_edge, %if.end8.i.i.i368.i.out_free_resp.i_crit_edge, %do.end10.i339.i, %do.end.i332.i, %iwl_mvm_convert_gtk_v2.exit.i, %iwl_mvm_parse_wowlan_status_common_v7.exit.i.out_free_resp.i_crit_edge, %if.end8.i.i.i289.i.out_free_resp.i_crit_edge, %do.end10.i260.i, %do.end.i253.i, %do.end77.i, %iwl_mvm_parse_wowlan_status_common_v6.exit.i.out_free_resp.i_crit_edge, %if.end8.i.i.i.i.out_free_resp.i_crit_edge, %do.end10.i.i, %do.end.i.i
  %status.0.i = phi ptr [ inttoptr (i32 -5 to ptr), %do.end173.i ], [ %call9.i.i.i.i, %do.end77.i ], [ %call9.i.i.i.i, %iwl_mvm_parse_wowlan_status_common_v6.exit.i.out_free_resp.i_crit_edge ], [ %call9.i.i.i288.i, %iwl_mvm_convert_gtk_v2.exit.i ], [ %call9.i.i.i288.i, %iwl_mvm_parse_wowlan_status_common_v7.exit.i.out_free_resp.i_crit_edge ], [ %call9.i.i.i367.i, %iwl_mvm_convert_gtk_v2.exit418.i ], [ %call9.i.i.i367.i, %iwl_mvm_parse_wowlan_status_common_v9.exit.i.out_free_resp.i_crit_edge ], [ %call9.i.i.i460.i, %iwl_mvm_convert_gtk_v3.exit.i ], [ %call9.i.i.i460.i, %iwl_mvm_parse_wowlan_status_common_v12.exit.i.out_free_resp.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.i.out_free_resp.i_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end10.i.i ], [ inttoptr (i32 -5 to ptr), %do.end.i.i ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i289.i.out_free_resp.i_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end10.i260.i ], [ inttoptr (i32 -5 to ptr), %do.end.i253.i ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i368.i.out_free_resp.i_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end10.i339.i ], [ inttoptr (i32 -5 to ptr), %do.end.i332.i ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i461.i.out_free_resp.i_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end10.i432.i ], [ inttoptr (i32 -5 to ptr), %do.end.i425.i ]
  %479 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %_rx_page_addr.i, align 4
  %481 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %480, i32 noundef %482) #13
  br label %iwl_mvm_send_wowlan_get_status.exit

iwl_mvm_send_wowlan_get_status.exit:              ; preds = %out_free_resp.i, %do.end49.i
  %retval.0.i = phi ptr [ %23, %do.end49.i ], [ %status.0.i, %out_free_resp.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %get_status_cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %station_id) #13
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_convert_key_counters(ptr nocapture noundef writeonly %status, ptr nocapture noundef readonly %sc) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %gtk_seq = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11
  %aes = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.083 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_tkip_rsc_tsc, ptr %sc, i32 0, i32 1, i32 %i.083
  %arrayidx5 = getelementptr [8 x %struct.ieee80211_key_seq], ptr %gtk_seq, i32 0, i32 %i.083
  %iv32.i = getelementptr %struct.iwl_tkip_rsc_tsc, ptr %sc, i32 0, i32 1, i32 %i.083, i32 2
  %0 = ptrtoint ptr %iv32.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %iv32.i, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx5, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #13
  %iv162.i = getelementptr inbounds %struct.anon.233, ptr %arrayidx5, i32 0, i32 1
  %7 = ptrtoint ptr %iv162.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %iv162.i, align 4
  %arrayidx11 = getelementptr [8 x %struct.ieee80211_key_seq], ptr %aes, i32 0, i32 %i.083
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %arrayidx, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #13
  %shr.i.i = lshr i64 %10, 40
  %conv.i.i = trunc i64 %shr.i.i to i8
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i.i, ptr %arrayidx11, align 4
  %shr2.i.i = lshr i64 %10, 32
  %conv3.i.i = trunc i64 %shr2.i.i to i8
  %arrayidx5.i.i = getelementptr [6 x i8], ptr %arrayidx11, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i.i, ptr %arrayidx5.i.i, align 1
  %shr6.i.i = lshr i64 %10, 24
  %conv7.i.i = trunc i64 %shr6.i.i to i8
  %arrayidx9.i.i = getelementptr [6 x i8], ptr %arrayidx11, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7.i.i, ptr %arrayidx9.i.i, align 2
  %shr10.i.i = lshr i64 %10, 16
  %conv11.i.i = trunc i64 %shr10.i.i to i8
  %arrayidx13.i.i = getelementptr [6 x i8], ptr %arrayidx11, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11.i.i, ptr %arrayidx13.i.i, align 1
  %shr14.i.i = lshr i64 %10, 8
  %conv15.i.i = trunc i64 %shr14.i.i to i8
  %arrayidx17.i.i = getelementptr [6 x i8], ptr %arrayidx11, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15.i.i, ptr %arrayidx17.i.i, align 4
  %conv18.i.i = trunc i64 %10 to i8
  %arrayidx20.i.i = getelementptr [6 x i8], ptr %arrayidx11, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv18.i.i, ptr %arrayidx20.i.i, align 1
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %valid = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 0, i32 3
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %valid, align 1
  %key_id = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 0, i32 2
  %18 = ptrtoint ptr %key_id to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %key_id, align 4
  %tsc = getelementptr inbounds %struct.iwl_tkip_rsc_tsc, ptr %sc, i32 0, i32 2
  %19 = ptrtoint ptr %tsc to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %tsc, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i64
  %iv32 = getelementptr inbounds %struct.iwl_tkip_rsc_tsc, ptr %sc, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %iv32 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %iv32, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %conv17 = zext i32 %24 to i64
  %shl = shl nuw nsw i64 %conv17, 16
  %or = or i64 %shl, %conv
  %ptk = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 12
  %tx_pn = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 12, i32 0, i32 1
  %25 = ptrtoint ptr %tx_pn to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or, ptr %tx_pn, align 8
  %26 = ptrtoint ptr %tsc to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %tsc, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %aes21 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 12, i32 1
  %tx_pn22 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 12, i32 1, i32 1
  %29 = ptrtoint ptr %tx_pn22 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %tx_pn22, align 8
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.end
  %i.184 = phi i32 [ 0, %for.end ], [ %inc39, %for.body26.for.body26_crit_edge ]
  %arrayidx27 = getelementptr [16 x %struct.tkip_sc], ptr %sc, i32 0, i32 %i.184
  %arrayidx31 = getelementptr [8 x %struct.ieee80211_key_seq], ptr %ptk, i32 0, i32 %i.184
  %iv32.i65 = getelementptr [16 x %struct.tkip_sc], ptr %sc, i32 0, i32 %i.184, i32 2
  %30 = ptrtoint ptr %iv32.i65 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %iv32.i65, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx31, align 4
  %34 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %arrayidx27, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #13
  %iv162.i66 = getelementptr inbounds %struct.anon.233, ptr %arrayidx31, i32 0, i32 1
  %37 = ptrtoint ptr %iv162.i66 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %iv162.i66, align 4
  %arrayidx37 = getelementptr [8 x %struct.ieee80211_key_seq], ptr %aes21, i32 0, i32 %i.184
  %38 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %arrayidx27, align 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #13
  %shr.i.i67 = lshr i64 %40, 40
  %conv.i.i68 = trunc i64 %shr.i.i67 to i8
  %41 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i.i68, ptr %arrayidx37, align 4
  %shr2.i.i69 = lshr i64 %40, 32
  %conv3.i.i70 = trunc i64 %shr2.i.i69 to i8
  %arrayidx5.i.i71 = getelementptr [6 x i8], ptr %arrayidx37, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx5.i.i71 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv3.i.i70, ptr %arrayidx5.i.i71, align 1
  %shr6.i.i72 = lshr i64 %40, 24
  %conv7.i.i73 = trunc i64 %shr6.i.i72 to i8
  %arrayidx9.i.i74 = getelementptr [6 x i8], ptr %arrayidx37, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx9.i.i74 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv7.i.i73, ptr %arrayidx9.i.i74, align 2
  %shr10.i.i75 = lshr i64 %40, 16
  %conv11.i.i76 = trunc i64 %shr10.i.i75 to i8
  %arrayidx13.i.i77 = getelementptr [6 x i8], ptr %arrayidx37, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx13.i.i77 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv11.i.i76, ptr %arrayidx13.i.i77, align 1
  %shr14.i.i78 = lshr i64 %40, 8
  %conv15.i.i79 = trunc i64 %shr14.i.i78 to i8
  %arrayidx17.i.i80 = getelementptr [6 x i8], ptr %arrayidx37, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx17.i.i80 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv15.i.i79, ptr %arrayidx17.i.i80, align 4
  %conv18.i.i81 = trunc i64 %40 to i8
  %arrayidx20.i.i82 = getelementptr [6 x i8], ptr %arrayidx37, i32 0, i32 5
  %46 = ptrtoint ptr %arrayidx20.i.i82 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv18.i.i81, ptr %arrayidx20.i.i82, align 1
  %inc39 = add nuw nsw i32 %i.184, 1
  %exitcond85.not = icmp eq i32 %inc39, 8
  br i1 %exitcond85.not, label %for.end40, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

for.end40:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_data_to_8023_exthdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_d3_update_keys(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %key, ptr nocapture noundef %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %_data, i32 0, i32 1
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status1, align 4
  %unhandled_cipher = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %_data, i32 0, i32 5
  %2 = ptrtoint ptr %unhandled_cipher to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unhandled_cipher, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %sw.default [
    i32 1027073, label %if.end.cleanup_crit_edge
    i32 1027077, label %if.end.cleanup_crit_edge62
    i32 1027076, label %if.end.sw.epilog_crit_edge
    i32 1027080, label %if.end.sw.epilog_crit_edge63
    i32 1027081, label %if.end.sw.epilog_crit_edge64
    i32 1027074, label %if.end.sw.epilog_crit_edge65
  ]

if.end.sw.epilog_crit_edge65:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge64:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge63:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge62:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %unhandled_cipher to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %unhandled_cipher, align 1
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge63, %if.end.sw.epilog_crit_edge64, %if.end.sw.epilog_crit_edge65
  %num_keys = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %_data, i32 0, i32 6
  %8 = ptrtoint ptr %num_keys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_keys, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %num_keys, align 4
  %tobool4.not = icmp eq ptr %sta, null
  %find_phase20 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %_data, i32 0, i32 4
  %10 = ptrtoint ptr %find_phase20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %find_phase20, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end19, label %if.then5

if.then5:                                         ; preds = %sw.epilog
  br i1 %tobool21.not, label %if.end8, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  %12 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cipher, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %13, label %if.end8.cleanup_crit_edge [
    i32 1027076, label %if.end8.sw.bb10_crit_edge
    i32 1027080, label %if.end8.sw.bb10_crit_edge66
    i32 1027081, label %if.end8.sw.bb10_crit_edge67
    i32 1027074, label %sw.bb12
  ]

if.end8.sw.bb10_crit_edge67:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end8.sw.bb10_crit_edge66:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end8.sw.bb10_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8.sw.bb10_crit_edge, %if.end8.sw.bb10_crit_edge66, %if.end8.sw.bb10_crit_edge67
  %tx_pn11 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 1
  %15 = ptrtoint ptr %tx_pn11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_pn11, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %key, i64 noundef %16) #13
  %17 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_data, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %aes.i = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef %aes.i) #13
  %arrayidx.1.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 1
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 1, ptr noundef %arrayidx.1.i.i) #13
  %arrayidx.2.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 2
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 2, ptr noundef %arrayidx.2.i.i) #13
  %arrayidx.3.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 3
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 3, ptr noundef %arrayidx.3.i.i) #13
  %arrayidx.4.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 4
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 4, ptr noundef %arrayidx.4.i.i) #13
  %arrayidx.5.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 5
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 5, ptr noundef %arrayidx.5.i.i) #13
  %arrayidx.6.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 6
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 6, ptr noundef %arrayidx.6.i.i) #13
  %arrayidx.7.i.i = getelementptr %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 1, i32 0, i32 7
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 7, ptr noundef %arrayidx.7.i.i) #13
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %20, i32 0, i32 5, i32 8, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.i.not.i, label %sw.bb10.cleanup_crit_edge, label %if.end.i

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb10
  %24 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i61 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i61, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %28 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %keyidx.i, align 1
  %idxprom.i = sext i8 %29 to i32
  %arrayidx.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 14, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.i, align 4
  %call4.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b72.i = load i1, ptr @iwl_mvm_set_aes_ptk_rx_seq.__warned, align 1
  br i1 %.b72.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_set_aes_ptk_rx_seq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1628, ptr noundef nonnull @.str.3) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %31, null
  br i1 %tobool14.not.i, label %do.end27.i, label %for.cond.preheader.i, !prof !97

for.cond.preheader.i:                             ; preds = %do.end12.i
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %18, i32 0, i32 1
  br label %for.cond44.preheader.i

do.end27.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1629, i32 noundef 9, ptr noundef null) #13
  tail call fastcc void @rcu_read_unlock() #13
  br label %cleanup

for.cond44.preheader.i:                           ; preds = %for.end.i.for.cond44.preheader.i_crit_edge, %for.cond.preheader.i
  %tid.086.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc58.i, %for.end.i.for.cond44.preheader.i_crit_edge ]
  %32 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trans.i, align 4
  %num_rx_queues82.i = getelementptr inbounds %struct.iwl_trans, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %num_rx_queues82.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_rx_queues82.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp4584.i = icmp ugt i8 %35, 1
  br i1 %cmp4584.i, label %for.body47.lr.ph.i, label %for.cond44.preheader.i.for.end.i_crit_edge

for.cond44.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond44.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body47.lr.ph.i:                               ; preds = %for.cond44.preheader.i
  %arrayidx54.i = getelementptr [8 x %struct.ieee80211_key_seq], ptr %aes.i, i32 0, i32 %tid.086.i
  br label %for.body47.i

for.body47.i:                                     ; preds = %for.body47.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %i.085.i = phi i32 [ 1, %for.body47.lr.ph.i ], [ %inc.i, %for.body47.i.for.body47.i_crit_edge ]
  %arrayidx48.i = getelementptr %struct.iwl_mvm_key_pn, ptr %31, i32 0, i32 2, i32 %i.085.i
  %arrayidx49.i = getelementptr [8 x [6 x i8]], ptr %arrayidx48.i, i32 0, i32 %tid.086.i
  %36 = call ptr @memcpy(ptr %arrayidx49.i, ptr %arrayidx54.i, i32 6)
  %inc.i = add nuw nsw i32 %i.085.i, 1
  %37 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trans.i, align 4
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %38, i32 0, i32 25
  %39 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_rx_queues.i, align 8
  %conv.i = zext i8 %40 to i32
  %cmp45.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp45.i, label %for.body47.i.for.body47.i_crit_edge, label %for.body47.i.for.end.i_crit_edge

for.body47.i.for.end.i_crit_edge:                 ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body47.i.for.body47.i_crit_edge:              ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body47.i

for.end.i:                                        ; preds = %for.body47.i.for.end.i_crit_edge, %for.cond44.preheader.i.for.end.i_crit_edge
  %inc58.i = add nuw nsw i32 %tid.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc58.i, 8
  br i1 %exitcond.not.i, label %for.end59.i, label %for.end.i.for.cond44.preheader.i_crit_edge

for.end.i.for.cond44.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond44.preheader.i

for.end59.i:                                      ; preds = %for.end.i
  %call.i73.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i73.i, label %for.end59.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i76.i

for.end59.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i76.i:                              ; preds = %for.end59.i
  %call1.i74.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call1.i74.i, 0
  br i1 %tobool.not.i75.i, label %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i78.i

land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i78.i:                             ; preds = %land.lhs.true.i76.i
  %.b4.i77.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77.i, label %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i79.i

land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i79.i:                                    ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i79.i, %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, %for.end59.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  %41 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i80.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i80.i to ptr
  %preempt_count.i.i.i.i81.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i81.i, align 4
  %sub.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i81.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %ptk14 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12
  %tx_pn15 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 12, i32 0, i32 1
  %45 = ptrtoint ptr %tx_pn15 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_pn15, align 8
  %call.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %key, i64 noundef %46) #13
  tail call fastcc void @iwl_mvm_set_key_rx_seq_tids(ptr noundef %key, ptr noundef %ptk14)
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %last_gtk = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %_data, i32 0, i32 2
  %47 = ptrtoint ptr %last_gtk to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %key, ptr %last_gtk, align 4
  %48 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cipher, align 8
  %cipher24 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %_data, i32 0, i32 3
  %50 = ptrtoint ptr %cipher24 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cipher24, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %num_of_gtk_rekeys = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %num_of_gtk_rekeys to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_of_gtk_rekeys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool27.not = icmp eq i32 %52, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ieee80211_remove_key(ptr noundef %key) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %last_gtk30 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, ptr %_data, i32 0, i32 2
  %53 = ptrtoint ptr %last_gtk30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %last_gtk30, align 4
  %cmp = icmp eq ptr %54, %key
  br i1 %cmp, label %if.then31, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %status1, align 4
  tail call fastcc void @iwl_mvm_set_key_rx_seq(ptr noundef %key, ptr noundef %56, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29.cleanup_crit_edge, %if.then22, %sw.bb12, %rcu_read_unlock.exit.i, %do.end27.i, %sw.bb10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %sw.default, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge62, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_gtk_rekey_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_set_key_rx_seq(ptr noundef %key, ptr noundef %status, i1 noundef zeroext %installed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %num_of_gtk_rekeys26 = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 1
  %flags = getelementptr inbounds %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 10, i32 2
  %valid = getelementptr %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 0, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %entry
  %key_id = getelementptr %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 0, i32 2
  %2 = ptrtoint ptr %key_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_id, align 4
  %4 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keyidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp4 = icmp eq i8 %3, %5
  br i1 %cmp4, label %if.then6, label %if.end19

if.then6:                                         ; preds = %if.end
  %6 = ptrtoint ptr %num_of_gtk_rekeys26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_of_gtk_rekeys26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then6.if.end11_crit_edge, label %if.then8

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %10 = and i8 %9, 3
  %and = zext i8 %10 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then6.if.end11_crit_edge
  %new_key_id.0 = phi i32 [ %and, %if.then8 ], [ -1, %if.then6.if.end11_crit_edge ]
  %conv14 = sext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %new_key_id.0, i32 %conv14)
  %cmp15.not = icmp eq i32 %new_key_id.0, %conv14
  br i1 %cmp15.not, label %if.end11.for.inc_crit_edge, label %if.end11.for.inc.sink.split_crit_edge

if.end11.for.inc.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp24 = icmp eq i8 %3, -1
  br i1 %cmp24, label %land.lhs.true, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end19
  %11 = ptrtoint ptr %num_of_gtk_rekeys26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_of_gtk_rekeys26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  %brmerge = or i1 %tobool27.not, %installed
  br i1 %brmerge, label %land.lhs.true.for.inc.sink.split_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.for.inc.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %land.lhs.true.for.inc.sink.split_crit_edge, %if.end11.for.inc.sink.split_crit_edge
  tail call fastcc void @iwl_mvm_set_key_rx_seq_idx(ptr noundef %key, ptr noundef %status, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %entry.for.inc_crit_edge
  %valid.1 = getelementptr %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 1, i32 3
  %13 = ptrtoint ptr %valid.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %valid.1, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.1 = icmp eq i8 %14, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %key_id.1 = getelementptr %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 1, i32 2
  %15 = ptrtoint ptr %key_id.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %key_id.1, align 4
  %17 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %keyidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp4.1 = icmp eq i8 %16, %18
  br i1 %cmp4.1, label %if.then6.1, label %if.end19.1

if.end19.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp24.1 = icmp eq i8 %16, -1
  br i1 %cmp24.1, label %land.lhs.true.1, label %if.end19.1.for.inc.1_crit_edge

if.end19.1.for.inc.1_crit_edge:                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end19.1
  %19 = ptrtoint ptr %num_of_gtk_rekeys26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_of_gtk_rekeys26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool27.not.1 = icmp eq i32 %20, 0
  %brmerge.1 = or i1 %tobool27.not.1, %installed
  br i1 %brmerge.1, label %land.lhs.true.1.for.inc.1.sink.split_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1.for.inc.1.sink.split_crit_edge:   ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.sink.split

if.then6.1:                                       ; preds = %if.end.1
  %21 = ptrtoint ptr %num_of_gtk_rekeys26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_of_gtk_rekeys26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.1 = icmp eq i32 %22, 0
  br i1 %tobool7.not.1, label %if.then6.1.if.end11.1_crit_edge, label %if.then8.1

if.then6.1.if.end11.1_crit_edge:                  ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.1

if.then8.1:                                       ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = and i8 %24, 3
  %and.1 = zext i8 %25 to i32
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.then8.1, %if.then6.1.if.end11.1_crit_edge
  %new_key_id.0.1 = phi i32 [ %and.1, %if.then8.1 ], [ -1, %if.then6.1.if.end11.1_crit_edge ]
  %conv14.1 = sext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %new_key_id.0.1, i32 %conv14.1)
  %cmp15.not.1 = icmp eq i32 %new_key_id.0.1, %conv14.1
  br i1 %cmp15.not.1, label %if.end11.1.for.inc.1_crit_edge, label %if.end11.1.for.inc.1.sink.split_crit_edge

if.end11.1.for.inc.1.sink.split_crit_edge:        ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.sink.split

if.end11.1.for.inc.1_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.inc.1.sink.split:                             ; preds = %if.end11.1.for.inc.1.sink.split_crit_edge, %land.lhs.true.1.for.inc.1.sink.split_crit_edge
  tail call fastcc void @iwl_mvm_set_key_rx_seq_idx(ptr noundef %key, ptr noundef %status, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %if.end11.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %if.end19.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_gtk_rekey_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_set_key_rx_seq_tids(ptr noundef %key, ptr noundef %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef %seq) #13
  %arrayidx.1 = getelementptr %struct.ieee80211_key_seq, ptr %seq, i32 1
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 1, ptr noundef %arrayidx.1) #13
  %arrayidx.2 = getelementptr %struct.ieee80211_key_seq, ptr %seq, i32 2
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 2, ptr noundef %arrayidx.2) #13
  %arrayidx.3 = getelementptr %struct.ieee80211_key_seq, ptr %seq, i32 3
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 3, ptr noundef %arrayidx.3) #13
  %arrayidx.4 = getelementptr %struct.ieee80211_key_seq, ptr %seq, i32 4
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 4, ptr noundef %arrayidx.4) #13
  %arrayidx.5 = getelementptr %struct.ieee80211_key_seq, ptr %seq, i32 5
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 5, ptr noundef %arrayidx.5) #13
  %arrayidx.6 = getelementptr %struct.ieee80211_key_seq, ptr %seq, i32 6
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 6, ptr noundef %arrayidx.6) #13
  %arrayidx.7 = getelementptr %struct.ieee80211_key_seq, ptr %seq, i32 7
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 7, ptr noundef %arrayidx.7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_remove_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_key_rx_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_set_key_rx_seq_idx(ptr noundef %key, ptr noundef %status, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cipher, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %1, label %do.end [
    i32 1027076, label %entry.sw.bb_crit_edge
    i32 1027080, label %entry.sw.bb_crit_edge32
    i32 1027081, label %entry.sw.bb_crit_edge33
    i32 1027074, label %sw.bb1
  ]

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32, %entry.sw.bb_crit_edge33
  %aes = getelementptr %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 %idx, i32 1
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef %aes) #13
  %arrayidx.1.i = getelementptr %struct.ieee80211_key_seq, ptr %aes, i32 1
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 1, ptr noundef %arrayidx.1.i) #13
  %arrayidx.2.i = getelementptr %struct.ieee80211_key_seq, ptr %aes, i32 2
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 2, ptr noundef %arrayidx.2.i) #13
  %arrayidx.3.i = getelementptr %struct.ieee80211_key_seq, ptr %aes, i32 3
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 3, ptr noundef %arrayidx.3.i) #13
  %arrayidx.4.i = getelementptr %struct.ieee80211_key_seq, ptr %aes, i32 4
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 4, ptr noundef %arrayidx.4.i) #13
  %arrayidx.5.i = getelementptr %struct.ieee80211_key_seq, ptr %aes, i32 5
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 5, ptr noundef %arrayidx.5.i) #13
  %arrayidx.6.i = getelementptr %struct.ieee80211_key_seq, ptr %aes, i32 6
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 6, ptr noundef %arrayidx.6.i) #13
  %arrayidx.7.i = getelementptr %struct.ieee80211_key_seq, ptr %aes, i32 7
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 7, ptr noundef %arrayidx.7.i) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx3 = getelementptr %struct.iwl_wowlan_status_data, ptr %status, i32 0, i32 11, i32 %idx
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 0, ptr noundef %arrayidx3) #13
  %arrayidx.1.i25 = getelementptr %struct.ieee80211_key_seq, ptr %arrayidx3, i32 1
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 1, ptr noundef %arrayidx.1.i25) #13
  %arrayidx.2.i26 = getelementptr %struct.ieee80211_key_seq, ptr %arrayidx3, i32 2
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 2, ptr noundef %arrayidx.2.i26) #13
  %arrayidx.3.i27 = getelementptr %struct.ieee80211_key_seq, ptr %arrayidx3, i32 3
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 3, ptr noundef %arrayidx.3.i27) #13
  %arrayidx.4.i28 = getelementptr %struct.ieee80211_key_seq, ptr %arrayidx3, i32 4
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 4, ptr noundef %arrayidx.4.i28) #13
  %arrayidx.5.i29 = getelementptr %struct.ieee80211_key_seq, ptr %arrayidx3, i32 5
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 5, ptr noundef %arrayidx.5.i29) #13
  %arrayidx.6.i30 = getelementptr %struct.ieee80211_key_seq, ptr %arrayidx3, i32 6
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 6, ptr noundef %arrayidx.6.i30) #13
  %arrayidx.7.i31 = getelementptr %struct.ieee80211_key_seq, ptr %arrayidx3, i32 7
  tail call void @ieee80211_set_key_rx_seq(ptr noundef %key, i32 noundef 7, ptr noundef %arrayidx.7.i31) #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1739, i32 noundef 9, ptr noundef null) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_resume_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_abort_notification_waits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_d3_test_disconn_work_iter(ptr noundef readnone %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %_data, %vif
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ieee80211_connection_loss(ptr noundef %vif) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !26, !28, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !68, !70, !72, !73, !75, !77, !78, !80, !82}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 877, i32 3}
!2 = !{ptr @iwl_dbgfs_d3_test_ops, !3, !"iwl_dbgfs_d3_test_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2794, i32 30}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1254, i32 3}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1290, i32 12}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 728, i32 6}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 736, i32 8}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 779, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 784, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 813, i32 3}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 816, i32 3}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1033, i32 4}
!31 = !{ptr @__func__.iwl_mvm_wowlan_config_key_params, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1095, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 516, i32 3}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 416, i32 13}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 295, i32 13}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1101, i32 2}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2552, i32 3}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2565, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2575, i32 5}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2401, i32 3}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2196, i32 4}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2088, i32 3}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2171, i32 3}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1998, i32 1}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2278, i32 3}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2295, i32 3}
!62 = !{ptr @__func__.iwl_mvm_query_wakeup_reasons, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2216, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1203, i32 8}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1172, i32 6}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1173, i32 3}
!72 = !{ptr @__func__.iwl_trans_set_q_ptrs, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1496, i32 7}
!75 = !{ptr @__func__.iwl_mvm_setup_connection_keep, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1891, i32 2}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1905, i32 3}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 1628, i32 11}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/d3.c", i32 2784, i32 4}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{!"auto-init"}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2149736821}
!99 = !{i64 2149737087}
!100 = !{i64 2162667413}
