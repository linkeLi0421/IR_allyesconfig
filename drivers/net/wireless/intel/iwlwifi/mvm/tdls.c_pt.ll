; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/tdls.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c"
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
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
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
%struct.iwl_tdls_config_cmd = type { i32, i8, i8, i16, [4 x %struct.iwl_tdls_sta_info], i32, %struct.iwl_tx_cmd, [0 x i8] }
%struct.iwl_tdls_sta_info = type { i8, i8, i16, i32 }
%struct.iwl_tx_cmd = type { i16, i16, i32, %struct.anon.162, i32, i8, i8, i8, i8, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, %union.anon.163 }
%struct.anon.162 = type { i8, i8, i16 }
%union.anon.163 = type { %struct.anon.166 }
%struct.anon.166 = type { %struct.anon.167, [0 x %struct.ieee80211_hdr] }
%struct.anon.167 = type {}
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_tdls_channel_switch_cmd = type <{ i8, i32, %struct.iwl_fw_channel_info, %struct.iwl_tdls_channel_switch_cmd_tail }>
%struct.iwl_fw_channel_info = type { i32, i8, i8, i8, i8 }
%struct.iwl_tdls_channel_switch_cmd_tail = type { %struct.iwl_tdls_channel_switch_timing, %struct.iwl_tdls_channel_switch_frame }
%struct.iwl_tdls_channel_switch_timing = type { i32, i32, i32, i32 }
%struct.iwl_tdls_channel_switch_frame = type { i32, %struct.iwl_tx_cmd, [200 x i8] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_fw_channel_info_v1 = type { i8, i8, i8, i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_tdls_ch_sw_params = type { ptr, ptr, i8, i32, i32, i16, i16, ptr, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/tdls.c\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_teardown_tdls_peers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_tdls_sta_count.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rx_tdls_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@iwl_mvm_tdls_ch_switch_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Not sending TDLS channel switch: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tdls_channel_switch = private unnamed_addr constant [28 x i8] c"iwl_mvm_tdls_channel_switch\00", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TDLS channel switch with %pM ch %d width %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Existing peer. Can't start switch with %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tdls_cancel_channel_switch = private unnamed_addr constant [35 x i8] c"iwl_mvm_tdls_cancel_channel_switch\00", align 1
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TDLS cancel channel switch with %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No ch switch peer - %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@iwl_mvm_tdls_cancel_channel_switch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TDLS ending channel switch with %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"REQ\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RESP\00", [27 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tdls_recv_channel_switch = private unnamed_addr constant [33 x i8] c"iwl_mvm_tdls_recv_channel_switch\00", align 1
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Received TDLS ch switch action %s from %pM status %d\0A\00", [42 x i8] zeroinitializer }, align 32
@iwl_mvm_tdls_recv_channel_switch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_tdls_config.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_tdls_config = private unnamed_addr constant [20 x i8] c"iwl_mvm_tdls_config\00", align 1
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"send TDLS config to FW for %d peers\0A\00", [59 x i8] zeroinitializer }, align 32
@iwl_mvm_tdls_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tdls_config.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_tdls_update_cs_state = private unnamed_addr constant [29 x i8] c"iwl_mvm_tdls_update_cs_state\00", align 1
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TDLS channel switch state: %s -> %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IDLE\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REQ SENT\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RESP RECEIVED\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REQ RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@iwl_mvm_tdls_config_channel_switch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_tdls_config_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to send TDLS_CHANNEL_SWITCH cmd: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_tdls_check_action.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_tdls_check_action = private unnamed_addr constant [26 x i8] c"iwl_mvm_tdls_check_action\00", align 1
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Invalid TDLS action %d state %d peer %pM same_peer %d initiator %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_phy_band_from_nl80211.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported band (%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_rx_tdls_notif = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_rx_tdls_notif.27 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [16 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_tdls_update_cs_state = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [44 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_tdls_ch_switch_work = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_tdls_config_channel_switch = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_tdls_recv_channel_switch = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 22, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 25, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 490, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 513, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 518, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 574, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 578, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 613, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 626, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 626, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 630, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 108, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 189, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 169, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 171, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 173, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 175, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 177, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 383, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 427, i32 3 }
@___asan_gen_.92 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 318, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 695, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 723, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2099, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [35 x i8] c"switch.table.iwl_mvm_rx_tdls_notif\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [38 x i8] c"switch.table.iwl_mvm_rx_tdls_notif.27\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [42 x i8] c"switch.table.iwl_mvm_tdls_update_cs_state\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [41 x i8] c"switch.table.iwl_mvm_tdls_ch_switch_work\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [48 x i8] c"switch.table.iwl_mvm_tdls_config_channel_switch\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [46 x i8] c"switch.table.iwl_mvm_tdls_recv_channel_switch\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.iwl_mvm_rx_tdls_notif, ptr @switch.table.iwl_mvm_rx_tdls_notif.27, ptr @switch.table.iwl_mvm_tdls_update_cs_state, ptr @switch.table.iwl_mvm_tdls_ch_switch_work, ptr @switch.table.iwl_mvm_tdls_config_channel_switch, ptr @switch.table.iwl_mvm_tdls_recv_channel_switch], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_rx_tdls_notif to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_rx_tdls_notif.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_tdls_update_cs_state to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_tdls_ch_switch_work to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_tdls_config_channel_switch to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_tdls_recv_channel_switch to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_teardown_tdls_peers(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !91

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %num_stations58 = getelementptr inbounds %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 6
  %3 = ptrtoint ptr %num_stations58 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_stations58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2459.not = icmp eq i32 %4, 0
  br i1 %cmp2459.not, label %if.end.for.end_crit_edge, label %do.body25.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body25.lr.ph:                                  ; preds = %if.end
  %dep_map27 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  br label %do.body25

do.body25:                                        ; preds = %for.inc.do.body25_crit_edge, %do.body25.lr.ph
  %i.060 = phi i32 [ 0, %do.body25.lr.ph ], [ %inc, %for.inc.do.body25_crit_edge ]
  %call.i57 = tail call i32 @lock_is_held_type(ptr noundef %dep_map27, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool29.not = icmp eq i32 %call.i57, 0
  br i1 %tobool29.not, label %land.lhs.true, label %do.body25.do.end37_crit_edge

do.body25.do.end37_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

land.lhs.true:                                    ; preds = %do.body25
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b56 = load i1, ptr @iwl_mvm_teardown_tdls_peers.__warned, align 1
  br i1 %.b56, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_teardown_tdls_peers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 26, ptr noundef nonnull @.str.1) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %do.body25.do.end37_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %i.060
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool39.not = icmp eq ptr %6, null
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool39.not, %cmp.i
  br i1 %or.cond, label %do.end37.for.inc_crit_edge, label %lor.lhs.false41

do.end37.for.inc_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false41:                                  ; preds = %do.end37
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tdls, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool42.not = icmp eq i8 %8, 0
  br i1 %tobool42.not, label %lor.lhs.false41.for.inc_crit_edge, label %if.end44

lor.lhs.false41.for.inc_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end44:                                         ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %6, i32 17, i32 28, i32 10
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vif, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %6, i32 0, i32 1
  tail call void @ieee80211_tdls_oper_request(ptr noundef %10, ptr noundef %addr, i32 noundef 2, i16 noundef zeroext 26, i32 noundef 3264) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %lor.lhs.false41.for.inc_crit_edge, %do.end37.for.inc_crit_edge
  %inc = add nuw i32 %i.060, 1
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %12, i32 0, i32 5, i32 6
  %13 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_stations, align 4
  %cmp24 = icmp ult i32 %inc, %14
  br i1 %cmp24, label %for.inc.do.body25_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.do.body25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tdls_oper_request(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_tdls_sta_count(ptr noundef %mvm, ptr noundef readnone %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !91

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %num_stations67 = getelementptr inbounds %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 6
  %3 = ptrtoint ptr %num_stations67 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_stations67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2468.not = icmp eq i32 %4, 0
  br i1 %cmp2468.not, label %if.end.for.end_crit_edge, label %do.body25.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body25.lr.ph:                                  ; preds = %if.end
  %dep_map27 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %tobool45.not = icmp eq ptr %vif, null
  br label %do.body25

do.body25:                                        ; preds = %for.inc.do.body25_crit_edge, %do.body25.lr.ph
  %i.071 = phi i32 [ 0, %do.body25.lr.ph ], [ %inc53, %for.inc.do.body25_crit_edge ]
  %count.069 = phi i32 [ 0, %do.body25.lr.ph ], [ %count.1, %for.inc.do.body25_crit_edge ]
  %call.i66 = tail call i32 @lock_is_held_type(ptr noundef %dep_map27, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool29.not = icmp eq i32 %call.i66, 0
  br i1 %tobool29.not, label %land.lhs.true, label %do.body25.do.end37_crit_edge

do.body25.do.end37_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

land.lhs.true:                                    ; preds = %do.body25
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b65 = load i1, ptr @iwl_mvm_tdls_sta_count.__warned, align 1
  br i1 %.b65, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_sta_count.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @.str.1) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %do.body25.do.end37_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %i.071
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool39.not = icmp eq ptr %6, null
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool39.not, %cmp.i
  br i1 %or.cond, label %do.end37.for.inc_crit_edge, label %lor.lhs.false41

do.end37.for.inc_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false41:                                  ; preds = %do.end37
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tdls, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool42.not = icmp eq i8 %8, 0
  br i1 %tobool42.not, label %lor.lhs.false41.for.inc_crit_edge, label %if.end44

lor.lhs.false41.for.inc_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end44:                                         ; preds = %lor.lhs.false41
  br i1 %tobool45.not, label %if.end44.if.end52_crit_edge, label %if.then46

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then46:                                        ; preds = %if.end44
  %vif48 = getelementptr inbounds %struct.ieee80211_sta, ptr %6, i32 17, i32 28, i32 10
  %9 = ptrtoint ptr %vif48 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vif48, align 8
  %cmp49.not = icmp eq ptr %10, %vif
  br i1 %cmp49.not, label %if.then46.if.end52_crit_edge, label %if.then46.for.inc_crit_edge

if.then46.for.inc_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then46.if.end52_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end52:                                         ; preds = %if.then46.if.end52_crit_edge, %if.end44.if.end52_crit_edge
  %inc = add i32 %count.069, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.then46.for.inc_crit_edge, %lor.lhs.false41.for.inc_crit_edge, %do.end37.for.inc_crit_edge
  %count.1 = phi i32 [ %count.069, %if.then46.for.inc_crit_edge ], [ %inc, %if.end52 ], [ %count.069, %lor.lhs.false41.for.inc_crit_edge ], [ %count.069, %do.end37.for.inc_crit_edge ]
  %inc53 = add nuw i32 %i.071, 1
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %12, i32 0, i32 5, i32 6
  %13 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_stations, align 4
  %cmp24 = icmp ult i32 %inc53, %14
  br i1 %cmp24, label %for.inc.do.body25_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.do.body25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_recalc_tdls_state(ptr noundef %mvm, ptr noundef %vif, i1 noundef zeroext %sta_added) local_unnamed_addr #0 align 64 {
entry:
  %tdls_cfg_cmd.i = alloca %struct.iwl_tdls_config_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iwl_mvm_tdls_sta_count(ptr noundef %mvm, ptr noundef %vif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %0 = and i1 %cmp, %sta_added
  br i1 %0, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @iwl_mvm_power_update_mac(ptr noundef %mvm) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %_capa.i, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tdls_cfg_cmd.i) #6
  %6 = call ptr @memset(ptr %tdls_cfg_cmd.i, i32 0, i32 100)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #6
  %7 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %7, align 4, !annotation !93
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tdls_cfg_cmd.i, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %resp_pkt.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 1
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 2
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 4
  %10 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 16)
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %flags.i, align 4
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 167, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 100, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %arrayinit.start3.i, align 2
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %land.rhs.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then3
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !91

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %id34.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %id34.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id34.i, align 4
  %conv.i = zext i16 %17 to i32
  %color.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %color.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %color.i, align 2
  %conv35.i = zext i16 %19 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 8
  %or.i = or i32 %shl36.i, %conv.i
  %20 = call i32 @llvm.bswap.i32(i32 %or.i) #6
  %21 = ptrtoint ptr %tdls_cfg_cmd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tdls_cfg_cmd.i, align 4
  %tx_to_ap_tid.i = getelementptr inbounds %struct.iwl_tdls_config_cmd, ptr %tdls_cfg_cmd.i, i32 0, i32 2
  %22 = ptrtoint ptr %tx_to_ap_tid.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %tx_to_ap_tid.i, align 1
  %tx_to_ap_ssn.i = getelementptr inbounds %struct.iwl_tdls_config_cmd, ptr %tdls_cfg_cmd.i, i32 0, i32 3
  %23 = ptrtoint ptr %tx_to_ap_ssn.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %tx_to_ap_ssn.i, align 2
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 8
  %num_stations228.i = getelementptr inbounds %struct.iwl_fw, ptr %25, i32 0, i32 5, i32 6
  %26 = ptrtoint ptr %num_stations228.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_stations228.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp37229.not.i = icmp eq i32 %27, 0
  br i1 %cmp37229.not.i, label %if.end.i.for.end.i_crit_edge, label %do.body39.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.body39.lr.ph.i:                                ; preds = %if.end.i
  %dep_map41.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  br label %do.body39.i

do.body39.i:                                      ; preds = %for.inc.i.do.body39.i_crit_edge, %do.body39.lr.ph.i
  %i.0231.i = phi i32 [ 0, %do.body39.lr.ph.i ], [ %inc68.i, %for.inc.i.do.body39.i_crit_edge ]
  %cnt.0230.i = phi i32 [ 0, %do.body39.lr.ph.i ], [ %cnt.1.i, %for.inc.i.do.body39.i_crit_edge ]
  %call.i227.i = call i32 @lock_is_held_type(ptr noundef %dep_map41.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool43.not.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true.i, label %do.body39.i.do.end51.i_crit_edge

do.body39.i.do.end51.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51.i

land.lhs.true.i:                                  ; preds = %do.body39.i
  %call44.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true.i.do.end51.i_crit_edge, label %land.lhs.true46.i

land.lhs.true.i.do.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51.i

land.lhs.true46.i:                                ; preds = %land.lhs.true.i
  %.b225.i = load i1, ptr @iwl_mvm_tdls_config.__warned, align 1
  br i1 %.b225.i, label %land.lhs.true46.i.do.end51.i_crit_edge, label %if.then48.i

land.lhs.true46.i.do.end51.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51.i

if.then48.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_config.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @.str.1) #6
  br label %do.end51.i

do.end51.i:                                       ; preds = %if.then48.i, %land.lhs.true46.i.do.end51.i_crit_edge, %land.lhs.true.i.do.end51.i_crit_edge, %do.body39.i.do.end51.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %i.0231.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  %cmp.i.i = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end51.i.for.inc.i_crit_edge, label %lor.lhs.false.i

do.end51.i.for.inc.i_crit_edge:                   ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %do.end51.i
  %tdls.i = getelementptr inbounds %struct.ieee80211_sta, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %tdls.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tdls.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool55.not.i = icmp eq i8 %31, 0
  br i1 %tobool55.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end57.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end57.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv58.i = trunc i32 %i.0231.i to i8
  %arrayidx59.i = getelementptr %struct.iwl_tdls_config_cmd, ptr %tdls_cfg_cmd.i, i32 0, i32 4, i32 %cnt.0230.i
  %32 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv58.i, ptr %arrayidx59.i, align 4
  %tx_to_peer_tid.i = getelementptr %struct.iwl_tdls_config_cmd, ptr %tdls_cfg_cmd.i, i32 0, i32 4, i32 %cnt.0230.i, i32 1
  %33 = ptrtoint ptr %tx_to_peer_tid.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %tx_to_peer_tid.i, align 1
  %tx_to_peer_ssn.i = getelementptr %struct.iwl_tdls_config_cmd, ptr %tdls_cfg_cmd.i, i32 0, i32 4, i32 %cnt.0230.i, i32 2
  %34 = ptrtoint ptr %tx_to_peer_ssn.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %tx_to_peer_ssn.i, align 2
  %tdls_initiator.i = getelementptr inbounds %struct.ieee80211_sta, ptr %29, i32 0, i32 18
  %35 = ptrtoint ptr %tdls_initiator.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tdls_initiator.i, align 1, !range !92
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 24
  %is_initiator.i = getelementptr %struct.iwl_tdls_config_cmd, ptr %tdls_cfg_cmd.i, i32 0, i32 4, i32 %cnt.0230.i, i32 3
  %39 = ptrtoint ptr %is_initiator.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %is_initiator.i, align 4
  %inc.i = add i32 %cnt.0230.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end57.i, %lor.lhs.false.i.for.inc.i_crit_edge, %do.end51.i.for.inc.i_crit_edge
  %cnt.1.i = phi i32 [ %cnt.0230.i, %do.end51.i.for.inc.i_crit_edge ], [ %inc.i, %if.end57.i ], [ %cnt.0230.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc68.i = add nuw i32 %i.0231.i, 1
  %40 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %41, i32 0, i32 5, i32 6
  %42 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_stations.i, align 4
  %cmp37.i = icmp ult i32 %inc68.i, %43
  br i1 %cmp37.i, label %for.inc.i.do.body39.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.do.body39.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %cnt.1.i, %for.inc.i.for.end.i_crit_edge ]
  %conv69.i = trunc i32 %cnt.0.lcssa.i to i8
  %tdls_peer_count.i = getelementptr inbounds %struct.iwl_tdls_config_cmd, ptr %tdls_cfg_cmd.i, i32 0, i32 1
  %44 = ptrtoint ptr %tdls_peer_count.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv69.i, ptr %tdls_peer_count.i, align 4
  %45 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %46, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_config, ptr noundef nonnull @.str.11, i32 noundef %cnt.0.lcssa.i) #6
  %call76.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end132.i, label %land.rhs84.i

land.rhs84.i:                                     ; preds = %for.end.i
  %.b221224.i = load i1, ptr @iwl_mvm_tdls_config.__already_done, align 1
  br i1 %.b221224.i, label %land.rhs84.i.iwl_mvm_tdls_config.exit_crit_edge, label %if.then95.i, !prof !94

land.rhs84.i.iwl_mvm_tdls_config.exit_crit_edge:  ; preds = %land.rhs84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_config.exit

if.then95.i:                                      ; preds = %land.rhs84.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_config.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #6
  br label %iwl_mvm_tdls_config.exit

if.end132.i:                                      ; preds = %for.end.i
  %47 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resp_pkt.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %48, align 1
  %51 = and i32 %50, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %51)
  %cmp136.not.i = icmp eq i32 %51, 402653184
  br i1 %cmp136.not.i, label %if.end132.i.if.end183.i_crit_edge, label %land.rhs145.i

if.end132.i.if.end183.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183.i

land.rhs145.i:                                    ; preds = %if.end132.i
  %.b222223.i = load i1, ptr @iwl_mvm_tdls_config.__already_done.12, align 1
  br i1 %.b222223.i, label %land.rhs145.i.if.end183.i_crit_edge, label %if.then156.i, !prof !94

land.rhs145.i.if.end183.i_crit_edge:              ; preds = %land.rhs145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183.i

if.then156.i:                                     ; preds = %land.rhs145.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_config.__already_done.12, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.then156.i, %land.rhs145.i.if.end183.i_crit_edge, %if.end132.i.if.end183.i_crit_edge
  %52 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %_rx_page_addr.i, align 4
  %54 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %53, i32 noundef %55) #6
  br label %iwl_mvm_tdls_config.exit

iwl_mvm_tdls_config.exit:                         ; preds = %if.end183.i, %if.then95.i, %land.rhs84.i.iwl_mvm_tdls_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tdls_cfg_cmd.i) #6
  br label %if.end4

if.end4:                                          ; preds = %iwl_mvm_tdls_config.exit, %if.end.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp ne i32 %call, 0
  %brmerge18 = or i1 %cmp5, %sta_added
  br i1 %brmerge18, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 @iwl_mvm_power_update_mac(ptr noundef %mvm) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_mac_mgd_protect_tdls_discover(ptr nocapture noundef readonly %hw, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dtim_period, align 8
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %beacon_int, align 2
  %conv2 = zext i16 %5 to i32
  %mul3 = mul nuw nsw i32 %mul, %conv2
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %fw = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 3
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %7, i32 0, i32 5, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %10 = and i32 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_mvm_schedule_session_protection(ptr noundef %op_mode_specific, ptr noundef %vif, i32 noundef %mul3, i32 noundef %mul3, i1 noundef zeroext true) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_mvm_protect_session(ptr noundef %op_mode_specific, ptr noundef %vif, i32 noundef %mul3, i32 noundef %mul3, i32 noundef 100, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_schedule_session_protection(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_protect_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_tdls_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %sta_id1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %6 = ptrtoint ptr %sta_id1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %sta_id1, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i142 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp.not = icmp eq i32 %call.i142, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !91

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  %state1.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 1
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i143 = icmp eq i32 %13, 0
  br i1 %cmp.i143, label %if.then27.cleanup_crit_edge, label %do.end.i

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then27
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 4
  br i1 %16, label %switch.lookup, label %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge

do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_mvm_rx_tdls_notif, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %iwl_mvm_tdls_cs_state_str.exit.i

iwl_mvm_tdls_cs_state_str.exit.i:                 ; preds = %switch.lookup, %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge ]
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.14) #6
  %18 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state1.i, align 4
  %cur_sta_id.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 2
  %19 = ptrtoint ptr %cur_sta_id.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %cur_sta_id.i, align 8
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %21, i32 0, i32 5, i32 6
  %22 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %23)
  %cmp30.not = icmp ult i32 %8, %23
  br i1 %cmp30.not, label %do.body63, label %do.end46, !prof !94

do.end46:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body63:                                        ; preds = %if.end28
  %dep_map65 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i144 = tail call i32 @lock_is_held_type(ptr noundef %dep_map65, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool67.not = icmp eq i32 %call.i144, 0
  br i1 %tobool67.not, label %land.lhs.true, label %do.body63.do.end75_crit_edge

do.body63.do.end75_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

land.lhs.true:                                    ; preds = %do.body63
  %call68 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true.do.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true
  %.b141 = load i1, ptr @iwl_mvm_rx_tdls_notif.__warned, align 1
  br i1 %.b141, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_rx_tdls_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 224, ptr noundef nonnull @.str.1) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true.do.end75_crit_edge, %do.body63.do.end75_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %25, null
  %cmp.i145 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i145
  br i1 %spec.select.i, label %do.end75.cleanup_crit_edge, label %lor.lhs.false

do.end75.cleanup_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end75
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tdls, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool79.not = icmp eq i8 %27, 0
  br i1 %tobool79.not, label %do.end97, label %if.end113, !prof !91

do.end97:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end113:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %tdls_cs = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158
  %vif115 = getelementptr inbounds %struct.ieee80211_sta, ptr %25, i32 17, i32 28, i32 10
  %29 = ptrtoint ptr %vif115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vif115, align 8
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %30, i32 0, i32 1, i32 18
  %31 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dtim_period, align 8
  %conv = zext i8 %32 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %30, i32 0, i32 1, i32 19
  %33 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %beacon_int, align 2
  %conv117 = zext i16 %34 to i32
  %mul118 = mul i32 %mul, %conv117
  %div = sdiv i32 %mul118, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #6
  %call.i146 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %tdls_cs, i32 noundef %call2.i) #6
  %state1.i147 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 1
  %35 = ptrtoint ptr %state1.i147 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state1.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp.i148 = icmp eq i32 %36, 4
  br i1 %cmp.i148, label %if.end113.cleanup_crit_edge, label %do.end.i149

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i149:                                      ; preds = %if.end113
  %37 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %39 = icmp ult i32 %36, 4
  br i1 %39, label %switch.lookup158, label %do.end.i149.iwl_mvm_tdls_cs_state_str.exit.i156_crit_edge

do.end.i149.iwl_mvm_tdls_cs_state_str.exit.i156_crit_edge: ; preds = %do.end.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit.i156

switch.lookup158:                                 ; preds = %do.end.i149
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep159 = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_mvm_rx_tdls_notif.27, i32 0, i32 %36
  %40 = ptrtoint ptr %switch.gep159 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load160 = load ptr, ptr %switch.gep159, align 4
  br label %iwl_mvm_tdls_cs_state_str.exit.i156

iwl_mvm_tdls_cs_state_str.exit.i156:              ; preds = %switch.lookup158, %do.end.i149.iwl_mvm_tdls_cs_state_str.exit.i156_crit_edge
  %retval.0.i.i155 = phi ptr [ %switch.load160, %switch.lookup158 ], [ null, %do.end.i149.iwl_mvm_tdls_cs_state_str.exit.i156_crit_edge ]
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i155, ptr noundef nonnull @.str.18) #6
  %41 = ptrtoint ptr %state1.i147 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %state1.i147, align 4
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_tdls_cs_state_str.exit.i156, %if.end113.cleanup_crit_edge, %do.end97, %do.end75.cleanup_crit_edge, %do.end46, %iwl_mvm_tdls_cs_state_str.exit.i, %if.then27.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_tdls_update_cs_state(ptr noundef %mvm, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 1
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp = icmp eq i32 %1, %state
  br i1 %cmp, label %entry.if.end17_crit_edge, label %do.end

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %4 = icmp ult i32 %1, 5
  br i1 %4, label %switch.lookup, label %do.end.iwl_mvm_tdls_cs_state_str.exit_crit_edge

do.end.iwl_mvm_tdls_cs_state_str.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.iwl_mvm_tdls_update_cs_state, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %iwl_mvm_tdls_cs_state_str.exit

iwl_mvm_tdls_cs_state_str.exit:                   ; preds = %switch.lookup, %do.end.iwl_mvm_tdls_cs_state_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %do.end.iwl_mvm_tdls_cs_state_str.exit_crit_edge ]
  %6 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %iwl_mvm_tdls_cs_state_str.exit34 [
    i32 0, label %iwl_mvm_tdls_cs_state_str.exit34.thread38
    i32 1, label %iwl_mvm_tdls_cs_state_str.exit34.thread36
    i32 2, label %iwl_mvm_tdls_cs_state_str.exit.iwl_mvm_tdls_cs_state_str.exit34.thread_crit_edge
    i32 3, label %sw.bb3.i30
    i32 4, label %sw.bb4.i31
  ]

iwl_mvm_tdls_cs_state_str.exit.iwl_mvm_tdls_cs_state_str.exit34.thread_crit_edge: ; preds = %iwl_mvm_tdls_cs_state_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit34.thread

iwl_mvm_tdls_cs_state_str.exit34.thread38:        ; preds = %iwl_mvm_tdls_cs_state_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i, ptr noundef nonnull @.str.14) #6
  %7 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state1, align 4
  %cur_sta_id = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 2
  %8 = ptrtoint ptr %cur_sta_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %cur_sta_id, align 8
  br label %if.end17

iwl_mvm_tdls_cs_state_str.exit34.thread36:        ; preds = %iwl_mvm_tdls_cs_state_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i, ptr noundef nonnull @.str.15) #6
  %9 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state1, align 4
  %call11 = tail call i32 @iwl_mvm_get_systime(ptr noundef %mvm) #6
  %sent_timestamp = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 3, i32 6
  %10 = ptrtoint ptr %sent_timestamp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11, ptr %sent_timestamp, align 4
  br label %if.end17

sw.bb3.i30:                                       ; preds = %iwl_mvm_tdls_cs_state_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit34.thread

sw.bb4.i31:                                       ; preds = %iwl_mvm_tdls_cs_state_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit34.thread

iwl_mvm_tdls_cs_state_str.exit34.thread:          ; preds = %sw.bb4.i31, %sw.bb3.i30, %iwl_mvm_tdls_cs_state_str.exit.iwl_mvm_tdls_cs_state_str.exit34.thread_crit_edge
  %retval.0.i33.ph = phi ptr [ @.str.17, %sw.bb3.i30 ], [ @.str.18, %sw.bb4.i31 ], [ @.str.16, %iwl_mvm_tdls_cs_state_str.exit.iwl_mvm_tdls_cs_state_str.exit34.thread_crit_edge ]
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i33.ph) #6
  %11 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %state, ptr %state1, align 4
  br label %if.end17

iwl_mvm_tdls_cs_state_str.exit34:                 ; preds = %iwl_mvm_tdls_cs_state_str.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i, ptr noundef null) #6
  %12 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %state, ptr %state1, align 4
  br label %if.end17

if.end17:                                         ; preds = %iwl_mvm_tdls_cs_state_str.exit34, %iwl_mvm_tdls_cs_state_str.exit34.thread, %iwl_mvm_tdls_cs_state_str.exit34.thread36, %iwl_mvm_tdls_cs_state_str.exit34.thread38, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tdls_ch_switch_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6512
  %mutex = getelementptr i8, ptr %work, i32 -6488
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %state1.i = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i101 = icmp eq i32 %1, 0
  br i1 %cmp.i101, label %entry.iwl_mvm_tdls_update_cs_state.exit_crit_edge, label %do.end.i

entry.iwl_mvm_tdls_update_cs_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_update_cs_state.exit

do.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge

do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_mvm_tdls_ch_switch_work, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %iwl_mvm_tdls_cs_state_str.exit.i

iwl_mvm_tdls_cs_state_str.exit.i:                 ; preds = %switch.lookup, %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge ]
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.14) #6
  %6 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state1.i, align 4
  %cur_sta_id.i = getelementptr i8, ptr %work, i32 104
  %7 = ptrtoint ptr %cur_sta_id.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %cur_sta_id.i, align 8
  br label %iwl_mvm_tdls_update_cs_state.exit

iwl_mvm_tdls_update_cs_state.exit:                ; preds = %iwl_mvm_tdls_cs_state_str.exit.i, %entry.iwl_mvm_tdls_update_cs_state.exit_crit_edge
  %peer = getelementptr inbounds %struct.anon.151, ptr %work, i32 0, i32 3
  %8 = ptrtoint ptr %peer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %peer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp = icmp eq i8 %9, -1
  br i1 %cmp, label %iwl_mvm_tdls_update_cs_state.exit.out_crit_edge, label %do.body

iwl_mvm_tdls_update_cs_state.exit.out_crit_edge:  ; preds = %iwl_mvm_tdls_update_cs_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %iwl_mvm_tdls_update_cs_state.exit
  %dep_map = getelementptr i8, ptr %work, i32 -6424
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b100 = load i1, ptr @iwl_mvm_tdls_ch_switch_work.__warned, align 1
  br i1 %.b100, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_ch_switch_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 473, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %fw_id_to_mac_id = getelementptr i8, ptr %work, i32 -2316
  %10 = ptrtoint ptr %peer to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %peer, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %fw_id_to_mac_id, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %13, null
  %cmp.i102 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool13.not, %cmp.i102
  br i1 %or.cond, label %do.end.out_crit_edge, label %lor.lhs.false16

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false16:                                  ; preds = %do.end
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tdls, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  br i1 %tobool17.not, label %do.end30, label %if.end46.critedge, !prof !91

do.end30:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 475, i32 noundef 9, ptr noundef null) #6
  br label %out

if.end46.critedge:                                ; preds = %lor.lhs.false16
  %vif48 = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 17, i32 28, i32 10
  %16 = ptrtoint ptr %vif48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vif48, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %13, i32 0, i32 1
  %initiator = getelementptr inbounds %struct.anon.151, ptr %work, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %initiator to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %initiator, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool51 = icmp ne i8 %19, 0
  %chandef = getelementptr inbounds %struct.anon.151, ptr %work, i32 0, i32 3, i32 3
  %skb = getelementptr inbounds %struct.anon.151, ptr %work, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  %ch_sw_tm_ie = getelementptr inbounds %struct.anon.151, ptr %work, i32 0, i32 3, i32 5
  %22 = ptrtoint ptr %ch_sw_tm_ie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch_sw_tm_ie, align 4
  %call60 = tail call fastcc i32 @iwl_mvm_tdls_config_channel_switch(ptr noundef %add.ptr, ptr noundef %17, i32 noundef 0, ptr noundef %addr, i1 noundef zeroext %tobool51, ptr noundef %chandef, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %21, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end46.critedge.if.else.i_crit_edge, label %do.end66

if.end46.critedge.if.else.i_crit_edge:            ; preds = %if.end46.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

do.end66:                                         ; preds = %if.end46.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %call60) #6
  br label %if.else.i

if.else.i:                                        ; preds = %do.end66, %if.end46.critedge.if.else.i_crit_edge
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %17, i32 0, i32 1, i32 18
  %26 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dtim_period, align 8
  %conv70 = zext i8 %27 to i32
  %mul = shl nuw nsw i32 %conv70, 10
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %17, i32 0, i32 1, i32 19
  %28 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %beacon_int, align 2
  %conv72 = zext i16 %29 to i32
  %mul73 = mul i32 %mul, %conv72
  %div = sdiv i32 %mul73, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %work, i32 noundef %call2.i) #6
  br label %out

out:                                              ; preds = %if.else.i, %do.end30, %do.end.out_crit_edge, %iwl_mvm_tdls_update_cs_state.exit.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_tdls_config_channel_switch(ptr noundef %mvm, ptr noundef %vif, i32 noundef %type, ptr noundef %peer, i1 noundef zeroext %peer_initiator, ptr noundef %chandef, i32 noundef %timestamp, i16 noundef zeroext %switch_time, i16 noundef zeroext %switch_timeout, ptr noundef %skb, i32 noundef %ch_sw_tm_ie) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_tdls_channel_switch_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 289, ptr nonnull %cmd) #6
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 289)
  %ci = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, ptr %cmd, i32 0, i32 2
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 8, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.i.not.i = icmp eq i32 %5, 0
  %cond.i = select i1 %tobool.i.i.not.i, i32 4, i32 8
  %add.ptr.i = getelementptr i8, ptr %ci, i32 %cond.i
  %6 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %8 = lshr i32 %7, 14
  %9 = trunc i32 %8 to i16
  %10 = or i16 %9, -5
  %conv = add nsw i16 %10, 290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i7 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp.not = icmp eq i32 %call.i7, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !91

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 347, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 1
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %if.end.sw.bb.i_crit_edge, label %land.lhs.true.i8

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

land.lhs.true.i8:                                 ; preds = %if.end
  %cur_sta_id.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 2
  %14 = ptrtoint ptr %cur_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cur_sta_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp2.not.i = icmp eq i8 %15, -1
  br i1 %cmp2.not.i, label %land.lhs.true.i8.if.end17.i_crit_edge, label %if.then.i10

land.lhs.true.i8.if.end17.i_crit_edge:            ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then.i10:                                      ; preds = %land.lhs.true.i8
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i9 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i9, label %land.lhs.true4.i, label %if.then.i10.do.end.i_crit_edge

if.then.i10.do.end.i_crit_edge:                   ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %if.then.i10
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b107.i = load i1, ptr @iwl_mvm_tdls_check_action.__warned, align 1
  br i1 %.b107.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_check_action.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 256, ptr noundef nonnull @.str.1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %if.then.i10.do.end.i_crit_edge
  %16 = ptrtoint ptr %cur_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cur_sta_id.i, align 8
  %idxprom.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  %cmp.i.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end.i.if.end17.i_crit_edge, label %if.then13.i

do.end.i.if.end17.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then13.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %peer, align 4
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %23, %21
  %add.ptr.i.i = getelementptr i8, ptr %peer, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_sta, ptr %19, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %27, %25
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i116.i = icmp eq i32 %or.i.i, 0
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %do.end.i.if.end17.i_crit_edge, %land.lhs.true.i8.if.end17.i_crit_edge
  %same_peer.1.off0.ph.i = phi i1 [ %cmp.i116.i, %if.then13.i ], [ false, %do.end.i.if.end17.i_crit_edge ], [ false, %land.lhs.true.i8.if.end17.i_crit_edge ]
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load i32, ptr %state.i, align 4
  %29 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %.pr.i, label %if.end17.i.if.end31_crit_edge [
    i32 0, label %if.end17.i.sw.bb.i_crit_edge
    i32 1, label %sw.bb24.i
    i32 2, label %if.end17.i.iwl_mvm_tdls_check_action.exit_crit_edge
    i32 3, label %sw.bb47.i
    i32 4, label %sw.epilog.i
  ]

if.end17.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

if.end17.i.sw.bb.i_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end17.i.if.end31_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

sw.bb.i:                                          ; preds = %if.end17.i.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge
  %same_peer.1.off0118.i = phi i1 [ %same_peer.1.off0.ph.i, %if.end17.i.sw.bb.i_crit_edge ], [ false, %if.end.sw.bb.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp20.i = icmp eq i32 %type, 2
  br i1 %cmp20.i, label %sw.bb.i.iwl_mvm_tdls_check_action.exit_crit_edge, label %sw.bb.i.if.end31_crit_edge

sw.bb.i.if.end31_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

sw.bb.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

sw.bb24.i:                                        ; preds = %if.end17.i
  br i1 %same_peer.1.off0.ph.i, label %if.else.i, label %sw.bb24.i.iwl_mvm_tdls_check_action.exit_crit_edge

sw.bb24.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

if.else.i:                                        ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp27.i = icmp ne i32 %type, 1
  %brmerge.i = or i1 %cmp27.i, %peer_initiator
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp33.i = icmp ne i32 %type, 0
  %30 = and i1 %cmp33.i, %brmerge.i
  br i1 %30, label %if.else36.i, label %if.else.i.iwl_mvm_tdls_check_action.exit_crit_edge

if.else.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

if.else36.i:                                      ; preds = %if.else.i
  %sent_timestamp.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 3, i32 6
  %31 = ptrtoint ptr %sent_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sent_timestamp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %timestamp)
  %cmp39.not.i = icmp ult i32 %32, %timestamp
  br i1 %cmp39.not.i, label %if.else36.i.if.end31_crit_edge, label %if.else36.i.iwl_mvm_tdls_check_action.exit_crit_edge

if.else36.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

if.else36.i.if.end31_crit_edge:                   ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

sw.bb47.i:                                        ; preds = %if.end17.i
  %33 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %type, label %sw.bb47.i.if.end31_crit_edge [
    i32 0, label %if.then50.i
    i32 2, label %sw.bb47.i.iwl_mvm_tdls_check_action.exit_crit_edge
  ]

sw.bb47.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

sw.bb47.i.if.end31_crit_edge:                     ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then50.i:                                      ; preds = %sw.bb47.i
  %same_peer.1.off0.ph.not.i = xor i1 %same_peer.1.off0.ph.i, true
  %brmerge131.i = or i1 %same_peer.1.off0.ph.not.i, %peer_initiator
  br i1 %brmerge131.i, label %if.then50.i.iwl_mvm_tdls_check_action.exit_crit_edge, label %if.then50.i.if.end31_crit_edge

if.then50.i.if.end31_crit_edge:                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then50.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

sw.epilog.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp65.not.i = icmp ne i32 %type, 2
  %same_peer.1.off0.not.i = xor i1 %same_peer.1.off0.ph.i, true
  %brmerge113.i = select i1 %cmp65.not.i, i1 true, i1 %same_peer.1.off0.not.i
  br i1 %brmerge113.i, label %sw.epilog.i.iwl_mvm_tdls_check_action.exit_crit_edge, label %sw.epilog.i.if.end31_crit_edge

sw.epilog.i.if.end31_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

sw.epilog.i.iwl_mvm_tdls_check_action.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_check_action.exit

iwl_mvm_tdls_check_action.exit:                   ; preds = %sw.epilog.i.iwl_mvm_tdls_check_action.exit_crit_edge, %if.then50.i.iwl_mvm_tdls_check_action.exit_crit_edge, %sw.bb47.i.iwl_mvm_tdls_check_action.exit_crit_edge, %if.else36.i.iwl_mvm_tdls_check_action.exit_crit_edge, %if.else.i.iwl_mvm_tdls_check_action.exit_crit_edge, %sw.bb24.i.iwl_mvm_tdls_check_action.exit_crit_edge, %sw.bb.i.iwl_mvm_tdls_check_action.exit_crit_edge, %if.end17.i.iwl_mvm_tdls_check_action.exit_crit_edge
  %ret.0124.i = phi i32 [ -16, %sw.epilog.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ -22, %sw.bb.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ -22, %if.else36.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ -16, %if.then50.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ -16, %if.else.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ -16, %sw.bb24.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ -16, %if.end17.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ -22, %sw.bb47.i.iwl_mvm_tdls_check_action.exit_crit_edge ]
  %34 = phi i32 [ 4, %sw.epilog.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ 0, %sw.bb.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ 1, %if.else36.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ 3, %if.then50.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ 1, %if.else.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ 1, %sw.bb24.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ %.pr.i, %if.end17.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ 3, %sw.bb47.i.iwl_mvm_tdls_check_action.exit_crit_edge ]
  %same_peer.1.off0119123.i = phi i1 [ %same_peer.1.off0.ph.i, %sw.epilog.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ %same_peer.1.off0118.i, %sw.bb.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ true, %if.else36.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ %same_peer.1.off0.ph.i, %if.then50.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ true, %if.else.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ false, %sw.bb24.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ %same_peer.1.off0.ph.i, %if.end17.i.iwl_mvm_tdls_check_action.exit_crit_edge ], [ %same_peer.1.off0.ph.i, %sw.bb47.i.iwl_mvm_tdls_check_action.exit_crit_edge ]
  %35 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvm, align 8
  %conv79.i = zext i1 %same_peer.1.off0119123.i to i32
  %conv81.i = zext i1 %peer_initiator to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_check_action, ptr noundef nonnull @.str.21, i32 noundef %type, i32 noundef %34, ptr noundef %peer, i32 noundef %conv79.i, i32 noundef %conv81.i) #6
  br label %cleanup232

if.end31:                                         ; preds = %sw.epilog.i.if.end31_crit_edge, %if.then50.i.if.end31_crit_edge, %sw.bb47.i.if.end31_crit_edge, %if.else36.i.if.end31_crit_edge, %sw.bb.i.if.end31_crit_edge, %if.end17.i.if.end31_crit_edge
  %tobool32.not = icmp eq ptr %skb, null
  br i1 %tobool32.not, label %if.end31.if.then230_crit_edge, label %lor.lhs.false

if.end31.if.then230_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then230

lor.lhs.false:                                    ; preds = %if.end31
  %len34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %38)
  %cmp35 = icmp ugt i32 %38, 200
  br i1 %cmp35, label %do.end52, label %if.end68, !prof !91

do.end52:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #6
  br label %if.then230

if.end68:                                         ; preds = %lor.lhs.false
  %conv69 = trunc i32 %type to i8
  %39 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv69, ptr %cmd, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %timestamp)
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %add.ptr.i, align 1
  %conv70 = zext i16 %switch_time to i32
  %42 = tail call i32 @llvm.bswap.i32(i32 %conv70)
  %switch_time72 = getelementptr inbounds %struct.iwl_tdls_channel_switch_timing, ptr %add.ptr.i, i32 0, i32 2
  %43 = ptrtoint ptr %switch_time72 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %switch_time72, align 1
  %conv73 = zext i16 %switch_timeout to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv73)
  %switch_timeout75 = getelementptr inbounds %struct.iwl_tdls_channel_switch_timing, ptr %add.ptr.i, i32 0, i32 3
  %45 = ptrtoint ptr %switch_timeout75 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %switch_timeout75, align 1
  %46 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !95
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end68.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end68.rcu_read_lock.exit_crit_edge:            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end68
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end68.rcu_read_lock.exit_crit_edge
  %call76 = tail call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef %peer) #6
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %rcu_read_lock.exit
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i11, label %if.then78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then78.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then78
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then78.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !96
  %50 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i.i.i.i18 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %if.then230

if.end79:                                         ; preds = %rcu_read_lock.exit
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call76, i32 0, i32 29
  %54 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %drv_priv.i, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %peer_sta_id = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, ptr %cmd, i32 0, i32 1
  %57 = ptrtoint ptr %peer_sta_id to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %peer_sta_id, align 1
  %tobool81.not = icmp eq ptr %chandef, null
  br i1 %tobool81.not, label %if.then82, label %if.end79.if.then181_crit_edge

if.end79.if.then181_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

if.then82:                                        ; preds = %if.end79
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp83 = icmp eq i32 %59, 1
  br i1 %cmp83, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then82
  %chandef87 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 3, i32 3
  %60 = ptrtoint ptr %chandef87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chandef87, align 4
  %tobool88.not = icmp eq ptr %61, null
  %tobool180.not = icmp eq ptr %chandef87, null
  %or.cond70 = or i1 %tobool180.not, %tobool88.not
  br i1 %or.cond70, label %land.lhs.true.if.end183_crit_edge, label %land.lhs.true.if.then181_crit_edge

land.lhs.true.if.then181_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

land.lhs.true.if.end183_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.else:                                          ; preds = %if.then82
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %59)
  %cmp95 = icmp eq i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp98 = icmp eq i32 %type, 2
  %or.cond = and i1 %cmp98, %cmp95
  br i1 %or.cond, label %if.then100, label %if.else.if.end183_crit_edge

if.else.if.end183_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then100:                                       ; preds = %if.else
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %62 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %chanctx_conf, align 4
  %call106 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %land.lhs.true108, label %if.then100.do.end116_crit_edge

if.then100.do.end116_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116

land.lhs.true108:                                 ; preds = %if.then100
  %call109 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true108.do.end116_crit_edge, label %land.lhs.true111

land.lhs.true108.do.end116_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %.b2 = load i1, ptr @iwl_mvm_tdls_config_channel_switch.__warned, align 1
  br i1 %.b2, label %land.lhs.true111.do.end116_crit_edge, label %if.then113

land.lhs.true111.do.end116_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116

if.then113:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_config_channel_switch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 383, ptr noundef nonnull @.str.19) #6
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %land.lhs.true111.do.end116_crit_edge, %land.lhs.true108.do.end116_crit_edge, %if.then100.do.end116_crit_edge
  %tobool118.not = icmp eq ptr %63, null
  br i1 %tobool118.not, label %land.rhs128, label %do.end116.if.then181_crit_edge

do.end116.if.then181_crit_edge:                   ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

land.rhs128:                                      ; preds = %do.end116
  %.b2991 = load i1, ptr @iwl_mvm_tdls_config_channel_switch.__already_done, align 1
  br i1 %.b2991, label %land.rhs128.cleanup_crit_edge, label %if.then139, !prof !94

land.rhs128.cleanup_crit_edge:                    ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then139:                                       ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_config_channel_switch.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %land.rhs128.cleanup_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup232

if.then181:                                       ; preds = %do.end116.if.then181_crit_edge, %land.lhs.true.if.then181_crit_edge, %if.end79.if.then181_crit_edge
  %chandef.addr.166 = phi ptr [ %chandef, %if.end79.if.then181_crit_edge ], [ %63, %do.end116.if.then181_crit_edge ], [ %chandef87, %land.lhs.true.if.then181_crit_edge ]
  %64 = ptrtoint ptr %chandef.addr.166 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chandef.addr.166, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %65, i32 0, i32 3
  %68 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hw_value.i, align 2
  %conv.i = zext i16 %69 to i32
  %70 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %67, label %land.end.i.i [
    i32 0, label %if.then181.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

if.then181.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge: ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

sw.bb1.i.i:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

sw.bb2.i.i:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

land.end.i.i:                                     ; preds = %if.then181
  %.b38.i.i = load i1, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  br i1 %.b38.i.i, label %land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge, label %if.then.i.i, !prof !94

land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 2099, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %67) #6
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

iwl_mvm_phy_band_from_nl80211.exit.i:             ; preds = %if.then.i.i, %land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge, %sw.bb2.i.i, %sw.bb1.i.i, %if.then181.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 2, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ 1, %if.then181.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge ], [ 0, %if.then.i.i ], [ 0, %land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge ]
  %call3.i = tail call zeroext i8 @iwl_mvm_get_channel_width(ptr noundef nonnull %chandef.addr.166) #6
  %call4.i = tail call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef nonnull %chandef.addr.166) #6
  %71 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %72, i32 0, i32 5, i32 8, i32 1
  %73 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %75 = and i32 %74, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i.i.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool.i.i.not.i.i, label %if.else.i.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #6
  %77 = ptrtoint ptr %ci to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %ci, align 1
  %band1.i.i = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %band1.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %retval.0.i.i, ptr %band1.i.i, align 1
  %width2.i.i = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %79 = ptrtoint ptr %width2.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %call3.i, ptr %width2.i.i, align 1
  %ctrl_pos3.i.i = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, ptr %cmd, i32 0, i32 2, i32 3
  br label %iwl_mvm_set_chan_info_chandef.exit

if.else.i.i:                                      ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = trunc i16 %69 to i8
  %channel4.i.i = getelementptr inbounds %struct.iwl_fw_channel_info_v1, ptr %ci, i32 0, i32 1
  %80 = ptrtoint ptr %channel4.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv.i.i, ptr %channel4.i.i, align 1
  %81 = ptrtoint ptr %ci to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %retval.0.i.i, ptr %ci, align 1
  %width6.i.i = getelementptr inbounds %struct.iwl_fw_channel_info_v1, ptr %ci, i32 0, i32 2
  %82 = ptrtoint ptr %width6.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %call3.i, ptr %width6.i.i, align 1
  %ctrl_pos7.i.i = getelementptr inbounds %struct.iwl_fw_channel_info_v1, ptr %ci, i32 0, i32 3
  br label %iwl_mvm_set_chan_info_chandef.exit

iwl_mvm_set_chan_info_chandef.exit:               ; preds = %if.else.i.i, %if.then.i8.i
  %ctrl_pos7.sink.i.i = phi ptr [ %ctrl_pos7.i.i, %if.else.i.i ], [ %ctrl_pos3.i.i, %if.then.i8.i ]
  %83 = ptrtoint ptr %ctrl_pos7.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %call4.i, ptr %ctrl_pos7.sink.i.i, align 1
  br label %if.end183

if.end183:                                        ; preds = %iwl_mvm_set_chan_info_chandef.exit, %if.else.if.end183_crit_edge, %land.lhs.true.if.end183_crit_edge
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %84 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dtim_period, align 8
  %conv184 = zext i8 %85 to i32
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %86 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %beacon_int, align 2
  %conv186 = zext i16 %87 to i32
  %mul = shl nuw nsw i32 %conv184, 10
  %mul187 = mul i32 %mul, %conv186
  %div = sdiv i32 %mul187, 2
  %88 = tail call i32 @llvm.bswap.i32(i32 %div)
  %max_offchan_duration = getelementptr inbounds %struct.iwl_tdls_channel_switch_timing, ptr %add.ptr.i, i32 0, i32 1
  %89 = ptrtoint ptr %max_offchan_duration to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %max_offchan_duration, align 1
  %add = add i32 %ch_sw_tm_ie, 2
  %90 = tail call i32 @llvm.bswap.i32(i32 %add)
  %frame = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, ptr %add.ptr.i, i32 0, i32 1
  %91 = ptrtoint ptr %frame to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %frame, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data, align 4
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %94 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_key, align 4
  %tobool190.not = icmp eq ptr %95, null
  br i1 %tobool190.not, label %if.end183.if.end198_crit_edge, label %if.then191

if.end183.if.end198_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

if.then191:                                       ; preds = %if.end183
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027076, i32 %97)
  %cmp193.not = icmp eq i32 %97, 1027076
  br i1 %cmp193.not, label %if.end196, label %if.then195

if.then195:                                       ; preds = %if.then191
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i21, label %if.then195.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true.i24

if.then195.rcu_read_unlock.exit32_crit_edge:      ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit32

land.lhs.true.i24:                                ; preds = %if.then195
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit32

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit32

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #6
  br label %rcu_read_unlock.exit32

rcu_read_unlock.exit32:                           ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge, %if.then195.rcu_read_unlock.exit32_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !96
  %98 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i.i.i.i28 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i30 = add i32 %101, -1
  store volatile i32 %sub.i.i.i30, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %if.then230

if.end196:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  %tx_cmd = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, ptr %add.ptr.i, i32 0, i32 1, i32 1
  %sec_ctl.i = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 6
  %102 = ptrtoint ptr %sec_ctl.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %sec_ctl.i, align 1
  %key.i = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 9
  %key1.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %95, i32 0, i32 8
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %95, i32 0, i32 7
  %103 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %keylen.i, align 2
  %conv.i33 = zext i8 %104 to i32
  %105 = call ptr @memcpy(ptr %key.i, ptr %key1.i, i32 %conv.i33)
  br label %if.end198

if.end198:                                        ; preds = %if.end196, %if.end183.if.end198_crit_edge
  %tx_cmd200 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, ptr %add.ptr.i, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %drv_priv.i, align 8
  %conv202 = trunc i32 %107 to i8
  call void @iwl_mvm_set_tx_cmd(ptr noundef %mvm, ptr noundef nonnull %skb, ptr noundef %tx_cmd200, ptr noundef %cb.i, i8 noundef zeroext %conv202) #6
  %108 = ptrtoint ptr %93 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %93, align 2
  call void @iwl_mvm_set_tx_cmd_rate(ptr noundef %mvm, ptr noundef %tx_cmd200, ptr noundef %cb.i, ptr noundef nonnull %call76, i16 noundef zeroext %109) #6
  %call.i34 = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i34, label %if.end198.rcu_read_unlock.exit45_crit_edge, label %land.lhs.true.i37

if.end198.rcu_read_unlock.exit45_crit_edge:       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit45

land.lhs.true.i37:                                ; preds = %if.end198
  %call1.i35 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit45_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit45_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit45

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit45_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit45_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit45

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #6
  br label %rcu_read_unlock.exit45

rcu_read_unlock.exit45:                           ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit45_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit45_crit_edge, %if.end198.rcu_read_unlock.exit45_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !96
  %110 = call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i.i.i.i41 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i43 = add i32 %113, -1
  store volatile i32 %sub.i.i.i43, ptr %preempt_count.i.i.i.i42, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %data206 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, ptr %add.ptr.i, i32 0, i32 1, i32 2
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data, align 4
  %116 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len34, align 4
  %118 = call ptr @memcpy(ptr %data206, ptr %115, i32 %117)
  %call209 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 39, i32 noundef 0, i16 noundef zeroext %conv, ptr noundef nonnull %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end218, label %do.end215

do.end215:                                        ; preds = %rcu_read_unlock.exit45
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %120, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %call209) #6
  br label %if.then230

if.end218:                                        ; preds = %rcu_read_unlock.exit45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp219.not = icmp eq i32 %type, 2
  br i1 %cmp219.not, label %if.else227, label %if.then221

if.then221:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %drv_priv.i, align 8
  %conv223 = trunc i32 %122 to i8
  %cur_sta_id = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 2
  %123 = ptrtoint ptr %cur_sta_id to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv223, ptr %cur_sta_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp225 = icmp eq i32 %type, 0
  %cond = select i1 %cmp225, i32 1, i32 3
  call fastcc void @iwl_mvm_tdls_update_cs_state(ptr noundef %mvm, i32 noundef %cond)
  br label %cleanup232

if.else227:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @iwl_mvm_tdls_update_cs_state(ptr noundef %mvm, i32 noundef 2)
  br label %cleanup232

if.then230:                                       ; preds = %do.end215, %rcu_read_unlock.exit32, %rcu_read_unlock.exit, %do.end52, %if.end31.if.then230_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end31.if.then230_crit_edge ], [ -22, %do.end52 ], [ -2, %rcu_read_unlock.exit ], [ %call209, %do.end215 ], [ -22, %rcu_read_unlock.exit32 ]
  %124 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp.i = icmp eq i32 %125, 0
  br i1 %cmp.i, label %if.then230.cleanup232_crit_edge, label %do.end.i46

if.then230.cleanup232_crit_edge:                  ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup232

do.end.i46:                                       ; preds = %if.then230
  %126 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mvm, align 8
  %switch.tableidx = add i32 %125, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %128 = icmp ult i32 %switch.tableidx, 4
  br i1 %128, label %switch.lookup, label %do.end.i46.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge

do.end.i46.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge: ; preds = %do.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit.i

switch.lookup:                                    ; preds = %do.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_mvm_tdls_config_channel_switch, i32 0, i32 %switch.tableidx
  %129 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %129)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %iwl_mvm_tdls_cs_state_str.exit.i

iwl_mvm_tdls_cs_state_str.exit.i:                 ; preds = %switch.lookup, %do.end.i46.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge
  %retval.0.i.i49 = phi ptr [ %switch.load, %switch.lookup ], [ null, %do.end.i46.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge ]
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %127, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i49, ptr noundef nonnull @.str.14) #6
  %130 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %state.i, align 4
  %cur_sta_id.i50 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 2
  %131 = ptrtoint ptr %cur_sta_id.i50 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -1, ptr %cur_sta_id.i50, align 8
  br label %cleanup232

cleanup232:                                       ; preds = %iwl_mvm_tdls_cs_state_str.exit.i, %if.then230.cleanup232_crit_edge, %if.else227, %if.then221, %cleanup, %iwl_mvm_tdls_check_action.exit
  %retval.0 = phi i32 [ %ret.0124.i, %iwl_mvm_tdls_check_action.exit ], [ 0, %if.then221 ], [ 0, %if.else227 ], [ 0, %cleanup ], [ %ret.0.ph, %if.then230.cleanup232_crit_edge ], [ %ret.0.ph, %iwl_mvm_tdls_cs_state_str.exit.i ]
  call void @llvm.lifetime.end.p0(i64 289, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_tdls_channel_switch(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, i8 noundef zeroext %oper_class, ptr noundef %chandef, ptr noundef %tmpl_skb, i32 noundef %ch_sw_tm_ie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_mode_specific, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_channel_switch, ptr noundef nonnull @.str.3, ptr noundef %addr, i32 noundef %7, i32 noundef %9) #6
  %tdls_cs = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1629
  %peer = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1656
  %10 = ptrtoint ptr %peer to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %peer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.not = icmp eq i8 %11, -1
  br i1 %cmp.not, label %if.end, label %do.end9

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op_mode_specific, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_channel_switch, ptr noundef nonnull @.str.4, ptr noundef %addr) #6
  br label %out

if.end:                                           ; preds = %entry
  %tdls_initiator = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 18
  %14 = ptrtoint ptr %tdls_initiator to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tdls_initiator, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool = icmp ne i8 %15, 0
  %call = tail call fastcc i32 @iwl_mvm_tdls_config_channel_switch(ptr noundef %op_mode_specific, ptr noundef %vif, i32 noundef 0, ptr noundef %addr, i1 noundef zeroext %tobool, ptr noundef %chandef, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %tmpl_skb, i32 noundef %ch_sw_tm_ie)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %if.end
  %call20 = tail call ptr @skb_copy(ptr noundef %tmpl_skb, i32 noundef 3264) #6
  %skb = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1664
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %skb, align 4
  %tobool26.not = icmp eq ptr %call20, null
  br i1 %tobool26.not, label %if.end19.out_crit_edge, label %if.end28

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %17 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drv_priv.i, align 8
  %conv31 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv31, ptr %peer, align 4
  %chandef37 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1657
  %20 = call ptr @memcpy(ptr %chandef37, ptr %chandef, i32 28)
  %21 = ptrtoint ptr %tdls_initiator to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tdls_initiator, align 1, !range !92
  %initiator = getelementptr inbounds %struct.anon.152, ptr %peer, i32 0, i32 2
  %23 = ptrtoint ptr %initiator to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %initiator, align 2
  %op_class = getelementptr inbounds %struct.anon.152, ptr %peer, i32 0, i32 1
  %24 = ptrtoint ptr %op_class to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %oper_class, ptr %op_class, align 1
  %ch_sw_tm_ie46 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1665
  %25 = ptrtoint ptr %ch_sw_tm_ie46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %ch_sw_tm_ie, ptr %ch_sw_tm_ie46, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %27 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dtim_period, align 8
  %conv47 = zext i8 %28 to i32
  %mul = shl nuw nsw i32 %conv47, 10
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %29 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %beacon_int, align 2
  %conv49 = zext i16 %30 to i32
  %mul50 = mul i32 %mul, %conv49
  %div = sdiv i32 %mul50, 1000
  %mul51 = shl nsw i32 %div, 1
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul51) #6
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %tdls_cs, i32 noundef %call2.i) #6
  br label %out

out:                                              ; preds = %if.end28, %if.end19.out_crit_edge, %if.end.out_crit_edge, %do.end9
  %ret.0 = phi i32 [ -16, %do.end9 ], [ %call, %if.end.out_crit_edge ], [ 0, %if.end28 ], [ -12, %if.end19.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tdls_cancel_channel_switch(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_mode_specific, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_cancel_channel_switch, ptr noundef nonnull @.str.5, ptr noundef %addr) #6
  %peer = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1656
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %peer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %do.end9, label %do.body15

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_mode_specific, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_cancel_channel_switch, ptr noundef nonnull @.str.6, ptr noundef %addr) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end61

do.body15:                                        ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 23
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body15.do.end24_crit_edge

do.body15.do.end24_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

land.lhs.true:                                    ; preds = %do.body15
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b92 = load i1, ptr @iwl_mvm_tdls_cancel_channel_switch.__warned, align 1
  br i1 %.b92, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_cancel_channel_switch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 584, ptr noundef nonnull @.str.1) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %do.body15.do.end24_crit_edge
  %fw_id_to_mac_id = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1050
  %8 = ptrtoint ptr %peer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %peer, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %fw_id_to_mac_id, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp28.not = icmp eq ptr %11, %sta
  br i1 %cmp28.not, label %if.end31, label %if.end61.critedge93

if.end31:                                         ; preds = %do.end24
  %cur_sta_id = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1655
  %12 = ptrtoint ptr %cur_sta_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_sta_id, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %9)
  %cmp38 = icmp eq i8 %13, %9
  br i1 %cmp38, label %land.lhs.true40, label %if.end61.critedge

land.lhs.true40:                                  ; preds = %if.end31
  %state = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1654
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp42.not.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %peer to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %peer, align 4
  %skb = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1664
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %18) #6
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %skb, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br i1 %cmp42.not.not, label %land.lhs.true40.if.end61_crit_edge, label %if.then56

land.lhs.true40.if.end61_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then56:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dtim_period, align 8
  %conv57 = zext i8 %21 to i32
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %22 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %beacon_int, align 2
  %conv59 = zext i16 %23 to i32
  %mul = shl nuw nsw i32 %conv57, 10
  %mul60 = mul i32 %mul, %conv59
  %div = sdiv i32 %mul60, 1000
  tail call void @msleep(i32 noundef %div) #6
  br label %if.end61

if.end61.critedge93:                              ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end61

if.end61.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %peer to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %peer, align 4
  %skb.c = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1664
  %25 = ptrtoint ptr %skb.c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb.c, align 4
  tail call void @consume_skb(ptr noundef %26) #6
  %27 = ptrtoint ptr %skb.c to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %skb.c, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end61

if.end61:                                         ; preds = %if.end61.critedge, %if.end61.critedge93, %if.then56, %land.lhs.true40.if.end61_crit_edge, %do.end9
  %tdls_cs = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1629
  %call63 = tail call zeroext i1 @flush_delayed_work(ptr noundef %tdls_cs) #6
  %28 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op_mode_specific, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_cancel_channel_switch, ptr noundef nonnull @.str.7, ptr noundef %addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tdls_recv_channel_switch(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %action_code = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %action_code to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %action_code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp eq i8 %3, 5
  %cond = select i1 %cmp, ptr @.str.8, ptr @.str.9
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_mode_specific, align 8
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 0, i32 1
  %status = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_recv_channel_switch, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, ptr noundef %addr, i32 noundef %9) #6
  %10 = ptrtoint ptr %action_code to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %action_code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp8 = icmp eq i8 %11, 6
  br i1 %cmp8, label %land.lhs.true, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11.not = icmp eq i32 %13, 0
  br i1 %cmp11.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true13

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true13:                                  ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1654
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp14 = icmp eq i32 %15, 1
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true13.if.end38_crit_edge

land.lhs.true13.if.end38_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %cur_sta_id = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1655
  %16 = ptrtoint ptr %cur_sta_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cur_sta_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp19.not = icmp eq i8 %17, -1
  br i1 %cmp19.not, label %land.lhs.true16.if.end38_crit_edge, label %if.then

land.lhs.true16.if.end38_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then:                                          ; preds = %land.lhs.true16
  %dep_map = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 23
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true23, label %if.then.do.end30_crit_edge

if.then.do.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

land.lhs.true23:                                  ; preds = %if.then
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end30_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end30_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b84 = load i1, ptr @iwl_mvm_tdls_recv_channel_switch.__warned, align 1
  br i1 %.b84, label %land.lhs.true26.do.end30_crit_edge, label %if.then28

land.lhs.true26.do.end30_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_tdls_recv_channel_switch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 647, ptr noundef nonnull @.str.1) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %land.lhs.true26.do.end30_crit_edge, %land.lhs.true23.do.end30_crit_edge, %if.then.do.end30_crit_edge
  %fw_id_to_mac_id = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1050
  %18 = ptrtoint ptr %cur_sta_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cur_sta_id, align 8
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %fw_id_to_mac_id, i32 0, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params, align 4
  %cmp34 = icmp eq ptr %21, %23
  br i1 %cmp34, label %if.then36, label %do.end30.if.end38_crit_edge

do.end30.if.end38_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %do.end30
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i85 = icmp eq i32 %25, 0
  br i1 %cmp.i85, label %if.then36.retry_crit_edge, label %do.end.i

if.then36.retry_crit_edge:                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

do.end.i:                                         ; preds = %if.then36
  %26 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %op_mode_specific, align 8
  %switch.tableidx = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 4
  br i1 %28, label %switch.lookup, label %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge

do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_tdls_cs_state_str.exit.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_mvm_tdls_recv_channel_switch, i32 0, i32 %switch.tableidx
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %iwl_mvm_tdls_cs_state_str.exit.i

iwl_mvm_tdls_cs_state_str.exit.i:                 ; preds = %switch.lookup, %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %do.end.i.iwl_mvm_tdls_cs_state_str.exit.i_crit_edge ]
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tdls_update_cs_state, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.14) #6
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %state, align 4
  %31 = ptrtoint ptr %cur_sta_id to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %cur_sta_id, align 8
  br label %retry

if.end38:                                         ; preds = %do.end30.if.end38_crit_edge, %land.lhs.true16.if.end38_crit_edge, %land.lhs.true13.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %entry.if.end38_crit_edge
  %32 = ptrtoint ptr %action_code to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %action_code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp41 = icmp eq i8 %33, 5
  %cond43 = select i1 %cmp41, i32 1, i32 2
  %34 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %params, align 4
  %addr45 = getelementptr inbounds %struct.ieee80211_sta, ptr %35, i32 0, i32 1
  %tdls_initiator = getelementptr inbounds %struct.ieee80211_sta, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %tdls_initiator to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tdls_initiator, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool48 = icmp ne i8 %37, 0
  %chandef = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 1
  %38 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chandef, align 4
  %timestamp = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 4
  %40 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %timestamp, align 4
  %switch_time = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 5
  %42 = ptrtoint ptr %switch_time to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %switch_time, align 4
  %switch_timeout = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 6
  %44 = ptrtoint ptr %switch_timeout to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %switch_timeout, align 2
  %tmpl_skb = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 7
  %46 = ptrtoint ptr %tmpl_skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tmpl_skb, align 4
  %ch_sw_tm_ie = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params, i32 0, i32 8
  %48 = ptrtoint ptr %ch_sw_tm_ie to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ch_sw_tm_ie, align 4
  %50 = tail call fastcc i32 @iwl_mvm_tdls_config_channel_switch(ptr noundef %op_mode_specific, ptr noundef %vif, i32 noundef %cond43, ptr noundef %addr45, i1 noundef zeroext %tobool48, ptr noundef %39, i32 noundef %41, i16 noundef zeroext %43, i16 noundef zeroext %45, ptr noundef %47, i32 noundef %49)
  br label %retry

retry:                                            ; preds = %if.end38, %iwl_mvm_tdls_cs_state_str.exit.i, %if.then36.retry_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %52 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dtim_period, align 8
  %conv50 = zext i8 %53 to i32
  %mul = shl nuw nsw i32 %conv50, 10
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %54 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %beacon_int, align 2
  %conv52 = zext i16 %55 to i32
  %mul53 = mul i32 %mul, %conv52
  %div = sdiv i32 %mul53, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #6
  %tdls_cs54 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1629
  %call.i86 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %tdls_cs54, i32 noundef %call2.i) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_get_systime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !96
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #6
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_set_tx_cmd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_set_tx_cmd_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_get_channel_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 22, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 25, i32 9}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 48, i32 9}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 223, i32 8}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 471, i32 8}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 490, i32 3}
!13 = !{ptr @__func__.iwl_mvm_tdls_channel_switch, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 513, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 518, i32 3}
!18 = !{ptr @__func__.iwl_mvm_tdls_cancel_channel_switch, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 574, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 578, i32 3}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 582, i32 12}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 613, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 626, i32 3}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 626, i32 11}
!31 = !{ptr @__func__.iwl_mvm_tdls_recv_channel_switch, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 630, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 645, i32 13}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 92, i32 9}
!38 = !{ptr @__func__.iwl_mvm_tdls_config, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 108, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 111, i32 6}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 116, i32 2}
!45 = !{ptr @__func__.iwl_mvm_tdls_update_cs_state, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 189, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 169, i32 10}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 171, i32 10}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 173, i32 10}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 175, i32 10}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 177, i32 10}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 383, i32 6}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 385, i32 8}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 427, i32 3}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 254, i32 31}
!67 = !{ptr @__func__.iwl_mvm_tdls_check_action, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tdls.c", i32 318, i32 3}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 2099, i32 3}
!79 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i8 0, i8 2}
!93 = !{!"auto-init"}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2149681544}
!96 = !{i64 2149681810}
