; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/coex.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/coex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_bt_coex_cmd = type { i32, i32 }
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
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_bt_iterator_data = type { ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
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
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_bt_coex_reduced_txp_update_cmd = type { i32 }
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
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.166, [32 x i8] }
%struct.anon.166 = type { i64 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
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

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/coex.c\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_bt_coex_notif = private unnamed_addr constant [25 x i8] c"iwl_mvm_rx_bt_coex_notif\00", align 1
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BT Coex Notification received\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09BT ci compliance %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09BT primary_ch_lut %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09BT secondary_ch_lut %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09BT activity grading %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_bt_rssi_event = private unnamed_addr constant [22 x i8] c"iwl_mvm_bt_rssi_event\00", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RSSI for %pM is now %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HIGH\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOW\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"couldn't send BT_CONFIG HCMD upon RSSI event\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_ci_mask = internal constant { [15 x [3 x i64]], [88 x i8] } { [15 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] [i64 -63331869759897600, i64 0, i64 -141836999983104], [3 x i64] [i64 -281474976710656, i64 0, i64 -1086626725888], [3 x i64] [i64 -216450958555611136, i64 0, i64 -216173817200902144], [3 x i64] [i64 -2234032805292015616, i64 0, i64 -2233785969226547200], [3 x i64] [i64 -9151456279816830976, i64 -141836999983104, i64 -9151314447095037952], [3 x i64] [i64 71212082481070080, i64 -1086626725888, i64 71213165064486912], [3 x i64] [i64 67834434300149760, i64 -216173817200902144, i64 67835466149265408], [3 x i64] [i64 36309717944893440, i64 -2233785969226547200, i64 36310271978897408], [3 x i64] [i64 280371186892800, i64 -9151314447095037952, i64 280375448305664], [3 x i64] [i64 264978258984960, i64 71213165064486912, i64 0], [3 x i64] [i64 212202506158080, i64 67835466149265408, i64 0], [3 x i64] [i64 1095199883264, i64 36310271978897408, i64 0], [3 x i64] [i64 1069430079488, i64 280375448305664, i64 0], [3 x i64] [i64 4261412864, i64 0, i64 0]], [88 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to send BT_CI cmd\0A\00", [38 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@iwl_mvm_bt_notif_iterator.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_bt_notif_iterator = private unnamed_addr constant [26 x i8] c"iwl_mvm_bt_notif_iterator\00", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mac %d: bt_activity_grading %d smps_req %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't send BT_CONFIG cmd\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwl_get_coex_type.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_bt_coex_reduced_txp = private unnamed_addr constant [28 x i8] c"iwl_mvm_bt_coex_reduced_txp\00", align 1
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%sable reduced Tx Power for sta %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_from_staid_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 2048]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 145, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 493, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 494, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 495, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 497, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 499, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 531, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 546, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"iwl_ci_mask\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 16, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 482, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 286, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 321, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 400, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 723, i32 2 }
@___asan_gen_.86 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 202, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1203, i32 8 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @iwl_ci_mask, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_ci_mask to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_bt_init_conf(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %bt_cmd = alloca %struct.iwl_bt_coex_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bt_cmd) #10
  %0 = ptrtoint ptr %bt_cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %bt_cmd, align 8
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !60

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %bt_force_ant_mode = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 122
  %2 = ptrtoint ptr %bt_force_ant_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bt_force_ant_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end46 [
    i32 0, label %if.end61
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.bb33
  ], !prof !61

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 156, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end46, %sw.bb33, %if.end.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 0, %do.end46 ], [ 50331648, %sw.bb33 ], [ 33554432, %if.end.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %bt_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mode.0, ptr %bt_cmd, align 8
  br label %send_cmd

if.end61:                                         ; preds = %if.end
  %6 = ptrtoint ptr %bt_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %bt_cmd, align 8
  %enabled_modules = getelementptr inbounds %struct.iwl_bt_coex_cmd, ptr %bt_cmd, i32 0, i32 1
  %7 = ptrtoint ptr %enabled_modules to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled_modules, align 4
  %or = or i32 %8, 67108864
  store i32 %or, ptr %enabled_modules, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %9 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %10, i32 0, i32 5, i32 8, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.i.not, label %if.end61.if.end67_crit_edge, label %if.then64

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %or66 = or i32 %8, 83886080
  %14 = ptrtoint ptr %enabled_modules to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or66, ptr %enabled_modules, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  %15 = ptrtoint ptr %enabled_modules to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enabled_modules, align 4
  %or69 = or i32 %16, 268435456
  store i32 %or69, ptr %enabled_modules, align 4
  br label %send_cmd

send_cmd:                                         ; preds = %if.end67, %sw.epilog
  %last_bt_notif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118
  %17 = call ptr @memset(ptr %last_bt_notif, i32 0, i32 64)
  %call70 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 155, i32 noundef 0, i16 noundef zeroext 8, ptr noundef nonnull %bt_cmd) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bt_cmd) #10
  ret i32 %call70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_bt_coex_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_bt_coex_notif, ptr noundef nonnull @.str.1) #10
  %8 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mvm, align 8
  %bt_ci_compliance = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  %10 = ptrtoint ptr %bt_ci_compliance to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %bt_ci_compliance, align 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_bt_coex_notif, ptr noundef nonnull @.str.2, i32 noundef %11) #10
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  %primary_ch_lut = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  %14 = ptrtoint ptr %primary_ch_lut to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %primary_ch_lut, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_bt_coex_notif, ptr noundef nonnull @.str.3, i32 noundef %16) #10
  %17 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mvm, align 8
  %secondary_ch_lut = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1
  %19 = ptrtoint ptr %secondary_ch_lut to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %secondary_ch_lut, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_bt_coex_notif, ptr noundef nonnull @.str.4, i32 noundef %21) #10
  %22 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvm, align 8
  %bt_activity_grading = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %24 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %bt_activity_grading, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_bt_coex_notif, ptr noundef nonnull @.str.5, i32 noundef %26) #10
  %last_bt_notif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118
  %27 = call ptr @memcpy(ptr %last_bt_notif, ptr %data, i32 40)
  tail call fastcc void @iwl_mvm_bt_coex_notif_handle(ptr noundef %mvm)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_bt_coex_notif_handle(ptr noundef %mvm) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_bt_iterator_data, align 4
  %cmd = alloca %struct.iwl_bt_coex_ci_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #10
  %0 = getelementptr inbounds i8, ptr %data, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %last_bt_notif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %last_bt_notif, ptr %data, align 4
  %mvm1 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %mvm1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mvm, ptr %mvm1, align 4
  %primary = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %data, i32 0, i32 2
  %secondary = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %data, i32 0, i32 3
  %primary_ll = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %data, i32 0, i32 4
  %primary_load = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %data, i32 0, i32 5
  %secondary_load = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %data, i32 0, i32 6
  %4 = call ptr @memset(ptr %primary, i32 0, i32 11)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #10
  %5 = call ptr @memset(ptr %cmd, i32 0, i32 24)
  %bt_force_ant_mode = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 122
  %6 = ptrtoint ptr %bt_force_ant_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bt_force_ant_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup146_crit_edge, !prof !62

entry.cleanup146_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup146

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @iwl_mvm_bt_notif_iterator, ptr noundef nonnull %data) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %bt_coex_last_tcm_ts.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 131
  %15 = ptrtoint ptr %bt_coex_last_tcm_ts.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bt_coex_last_tcm_ts.i, align 8
  %add.i = sub i32 1000, %14
  %sub.i = add i32 %add.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i, label %rcu_read_lock.exit.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge

rcu_read_lock.exit.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %17 = ptrtoint ptr %bt_coex_last_tcm_ts.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %bt_coex_last_tcm_ts.i, align 8
  %18 = ptrtoint ptr %primary_ll to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %primary_ll, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i174 = icmp eq i8 %19, 0
  br i1 %tobool.not.i174, label %if.end3.i, label %if.end.i.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge

if.end.i.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split

if.end3.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %primary_load to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %primary_load, align 1
  %22 = ptrtoint ptr %secondary_load to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %secondary_load, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp5.not.i = icmp ult i8 %21, %23
  br i1 %cmp5.not.i, label %do.body.i, label %if.end3.i.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge

if.end3.i.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split

do.body.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %primary, align 4
  %26 = ptrtoint ptr %secondary to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %secondary, align 4
  store ptr %27, ptr %primary, align 4
  store ptr %25, ptr %secondary, align 4
  br label %iwl_mvm_bt_coex_tcm_based_ci.exit

iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split: ; preds = %if.end3.i.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge, %if.end.i.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge, %rcu_read_lock.exit.iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split_crit_edge
  %28 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %primary, align 4
  br label %iwl_mvm_bt_coex_tcm_based_ci.exit

iwl_mvm_bt_coex_tcm_based_ci.exit:                ; preds = %iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split, %do.body.i
  %29 = phi ptr [ %.pr, %iwl_mvm_bt_coex_tcm_based_ci.exitthread-pre-split ], [ %27, %do.body.i ]
  %tobool4.not = icmp eq ptr %29, null
  br i1 %tobool4.not, label %iwl_mvm_bt_coex_tcm_based_ci.exit.if.end55_crit_edge, label %if.then5

iwl_mvm_bt_coex_tcm_based_ci.exit.if.end55_crit_edge: ; preds = %iwl_mvm_bt_coex_tcm_based_ci.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then5:                                         ; preds = %iwl_mvm_bt_coex_tcm_based_ci.exit
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool8.not = icmp eq ptr %31, null
  br i1 %tobool8.not, label %do.end, label %if.end38, !prof !60

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 432, i32 noundef 9, ptr noundef null) #10
  call fastcc void @rcu_read_unlock()
  br label %cleanup146

if.end38:                                         ; preds = %if.then5
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp40 = icmp ult i32 %33, 2
  br i1 %cmp40, label %if.end38.if.end49_crit_edge, label %if.else

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %center_freq1, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %center_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp45 = icmp ugt i32 %35, %37
  %. = select i1 %cmp45, i32 2, i32 1
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.end38.if.end49_crit_edge
  %ci_bw_idx.0 = phi i32 [ 0, %if.end38.if.end49_crit_edge ], [ %., %if.else ]
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %31, i32 0, i32 3
  %38 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value, align 2
  %idxprom = zext i16 %39 to i32
  %arrayidx53 = getelementptr [15 x [3 x i64]], ptr @iwl_ci_mask, i32 0, i32 %idxprom, i32 %ci_bw_idx.0
  %40 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx53, align 8
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %cmd, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %29, i32 0, i32 6
  %43 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %drv_priv, align 4
  %conv = zext i16 %44 to i32
  %45 = call i32 @llvm.bswap.i32(i32 %conv)
  %primary_ch_phy_id = getelementptr inbounds %struct.iwl_bt_coex_ci_cmd, ptr %cmd, i32 0, i32 1
  %46 = ptrtoint ptr %primary_ch_phy_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %primary_ch_phy_id, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end49, %iwl_mvm_bt_coex_tcm_based_ci.exit.if.end55_crit_edge
  %47 = ptrtoint ptr %secondary to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %secondary, align 4
  %tobool57.not = icmp eq ptr %48, null
  br i1 %tobool57.not, label %if.end55.if.end131_crit_edge, label %if.then58

if.end55.if.end131_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then58:                                        ; preds = %if.end55
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool65.not = icmp eq ptr %50, null
  br i1 %tobool65.not, label %do.end83, label %if.end99, !prof !60

do.end83:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 455, i32 noundef 9, ptr noundef null) #10
  call fastcc void @rcu_read_unlock()
  br label %cleanup146

if.end99:                                         ; preds = %if.then58
  %width101 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %width101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp102 = icmp ult i32 %52, 2
  br i1 %cmp102, label %if.end99.if.end116_crit_edge, label %if.else105

if.end99.if.end116_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.else105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq1107 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %center_freq1107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %center_freq1107, align 4
  %center_freq110 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %center_freq110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %center_freq110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp111 = icmp ugt i32 %54, %56
  %.172 = select i1 %cmp111, i32 2, i32 1
  br label %if.end116

if.end116:                                        ; preds = %if.else105, %if.end99.if.end116_crit_edge
  %ci_bw_idx.1 = phi i32 [ 0, %if.end99.if.end116_crit_edge ], [ %.172, %if.else105 ]
  %hw_value119 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 3
  %57 = ptrtoint ptr %hw_value119 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hw_value119, align 2
  %idxprom120 = zext i16 %58 to i32
  %arrayidx123 = getelementptr [15 x [3 x i64]], ptr @iwl_ci_mask, i32 0, i32 %idxprom120, i32 %ci_bw_idx.1
  %59 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx123, align 8
  %bt_secondary_ci = getelementptr inbounds %struct.iwl_bt_coex_ci_cmd, ptr %cmd, i32 0, i32 2
  %61 = ptrtoint ptr %bt_secondary_ci to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %60, ptr %bt_secondary_ci, align 4
  %drv_priv125 = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %48, i32 0, i32 6
  %62 = ptrtoint ptr %drv_priv125 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %drv_priv125, align 4
  %conv127 = zext i16 %63 to i32
  %64 = call i32 @llvm.bswap.i32(i32 %conv127)
  %secondary_ch_phy_id = getelementptr inbounds %struct.iwl_bt_coex_ci_cmd, ptr %cmd, i32 0, i32 3
  %65 = ptrtoint ptr %secondary_ch_phy_id to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %secondary_ch_phy_id, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end116, %if.end55.if.end131_crit_edge
  %call.i175 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i175, label %if.end131.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i178

if.end131.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i178:                               ; preds = %if.end131
  %call1.i176 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176)
  %tobool.not.i177 = icmp eq i32 %call1.i176, 0
  br i1 %tobool.not.i177, label %land.lhs.true.i178.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i180

land.lhs.true.i178.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i180:                              ; preds = %land.lhs.true.i178
  %.b4.i179 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i179, label %land.lhs.true2.i180.rcu_read_unlock.exit_crit_edge, label %if.then.i181

land.lhs.true2.i180.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i181:                                     ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i181, %land.lhs.true2.i180.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i178.rcu_read_unlock.exit_crit_edge, %if.end131.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %66 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i182 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i182 to ptr
  %preempt_count.i.i.i.i183 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i183, align 4
  %sub.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i183, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %last_bt_ci_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 119
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %cmd, ptr noundef dereferenceable(24) %last_bt_ci_cmd, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool132.not = icmp eq i32 %bcmp, 0
  br i1 %tobool132.not, label %rcu_read_unlock.exit.cleanup146_crit_edge, label %if.then133

rcu_read_unlock.exit.cleanup146_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup146

if.then133:                                       ; preds = %rcu_read_unlock.exit
  %call134 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 93, i32 noundef 0, i16 noundef zeroext 24, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then133.if.end143_crit_edge, label %do.end140

if.then133.if.end143_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

do.end140:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %71, i32 noundef 0, ptr noundef nonnull @.str.10) #10
  br label %if.end143

if.end143:                                        ; preds = %do.end140, %if.then133.if.end143_crit_edge
  %72 = call ptr @memcpy(ptr %last_bt_ci_cmd, ptr %cmd, i32 24)
  br label %cleanup146

cleanup146:                                       ; preds = %if.end143, %rcu_read_unlock.exit.cleanup146_crit_edge, %do.end83, %do.end, %entry.cleanup146_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_bt_rssi_event(ptr noundef %mvm, ptr noundef %vif, i32 noundef %rssi_event) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !60

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 514, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %bt_force_ant_mode = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 122
  %1 = ptrtoint ptr %bt_force_ant_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bt_force_ant_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp25.not = icmp eq i32 %2, 0
  br i1 %cmp25.not, label %if.end33, label %if.end.cleanup_crit_edge, !prof !62

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %3 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ap_sta_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp34 = icmp eq i8 %4, -1
  br i1 %cmp34, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %bt_activity_grading = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 5
  %5 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bt_activity_grading, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp38 = icmp eq i32 %6, 0
  br i1 %cmp38, label %if.end37.cleanup_crit_edge, label %do.end45

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end45:                                         ; preds = %if.end37
  %7 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvm, align 8
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %9 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bss_conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rssi_event)
  %cmp46 = icmp eq i32 %rssi_event, 0
  %cond = select i1 %cmp46, ptr @.str.7, ptr @.str.8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %8, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_bt_rssi_event, ptr noundef nonnull @.str.6, ptr noundef %10, ptr noundef nonnull %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rssi_event)
  %cmp50 = icmp eq i32 %rssi_event, 1
  br i1 %cmp50, label %do.end45.if.end62_crit_edge, label %lor.lhs.false

do.end45.if.end62_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

lor.lhs.false:                                    ; preds = %do.end45
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 4
  %bt_shared_single_ant = getelementptr inbounds %struct.iwl_cfg, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %bt_shared_single_ant to i32
  call void @__asan_loadN_noabort(i32 %13, i32 3)
  %bf.load = load i24, ptr %bt_shared_single_ant, align 4
  %14 = and i24 %bf.load, 2097152
  %tobool52.not = icmp eq i24 %14, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %lor.lhs.false.if.end62_crit_edge

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call fastcc i32 @iwl_get_coex_type(ptr noundef %mvm, ptr noundef %vif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call54)
  %cmp55 = icmp ne i32 %call54, 1
  br label %if.end62

if.end62:                                         ; preds = %lor.lhs.false53, %lor.lhs.false.if.end62_crit_edge, %do.end45.if.end62_crit_edge
  %.sink88 = phi i1 [ false, %lor.lhs.false.if.end62_crit_edge ], [ false, %do.end45.if.end62_crit_edge ], [ %cmp55, %lor.lhs.false53 ]
  %15 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ap_sta_id, align 8
  %call61 = tail call fastcc i32 @iwl_mvm_bt_coex_reduced_txp(ptr noundef %mvm, i8 noundef zeroext %16, i1 noundef zeroext %.sink88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool63.not = icmp eq i32 %call61, 0
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %do.end68

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.9) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.end62.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_get_coex_type(ptr nocapture noundef readonly %mvm, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %4 = ptrtoint ptr %chanctx_conf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf1, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @iwl_get_coex_type.__warned, align 1
  br i1 %.b41, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_get_coex_type.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.13) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.then11_crit_edge, label %lor.lhs.false

do.end8.if.then11_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.end8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end12, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %do.end8.if.then11_crit_edge
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i42, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %if.then11
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 4
  %bt_shared_single_ant = getelementptr inbounds %struct.iwl_cfg, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %bt_shared_single_ant to i32
  call void @__asan_loadN_noabort(i32 %12, i32 3)
  %bf.load = load i24, ptr %bt_shared_single_ant, align 4
  %13 = and i24 %bf.load, 2097152
  %tobool13.not = icmp eq i24 %13, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i51, label %if.then14.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true.i54

if.then14.rcu_read_unlock.exit61_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit61

land.lhs.true.i54:                                ; preds = %if.then14
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit61

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit61

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_unlock.exit61

rcu_read_unlock.exit61:                           ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, %if.then14.rcu_read_unlock.exit61_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %drv_priv = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %drv_priv, align 4
  %primary_ch_phy_id16 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 119, i32 1
  %16 = ptrtoint ptr %primary_ch_phy_id16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %primary_ch_phy_id16, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp19 = icmp eq i32 %18, %conv
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %primary_ch_lut = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 3
  %19 = ptrtoint ptr %primary_ch_lut to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %primary_ch_lut, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  br label %if.end28

if.else:                                          ; preds = %if.end15
  %secondary_ch_phy_id18 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 119, i32 3
  %22 = ptrtoint ptr %secondary_ch_phy_id18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %secondary_ch_phy_id18, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp23 = icmp eq i32 %24, %conv
  br i1 %cmp23, label %if.then25, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %secondary_ch_lut = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 4
  %25 = ptrtoint ptr %secondary_ch_lut to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %secondary_ch_lut, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.else.if.end28_crit_edge, %if.then21
  %ret.0 = phi i32 [ %21, %if.then21 ], [ %27, %if.then25 ], [ 2, %if.else.if.end28_crit_edge ]
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i62, label %if.end28.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

if.end28.rcu_read_unlock.exit72_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %if.end28
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #10
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %if.end28.rcu_read_unlock.exit72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit72, %rcu_read_unlock.exit61, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 255, %rcu_read_unlock.exit ], [ 2, %rcu_read_unlock.exit61 ], [ %ret.0, %rcu_read_unlock.exit72 ]
  %28 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i69 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %31, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_bt_coex_reduced_txp(ptr noundef %mvm, i8 noundef zeroext %sta_id, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_bt_coex_reduced_txp_update_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %conv.i = zext i8 %sta_id to i32
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %3, %conv.i
  br i1 %cmp.not.i, label %do.body.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1204, ptr noundef nonnull @.str.21) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 29
  %tobool.not = icmp eq ptr %drv_priv.i.i, null
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.end.i.cleanup_crit_edge, label %if.end

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %bt_reduced_txpower = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 1, i32 1
  %6 = ptrtoint ptr %bt_reduced_txpower to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bt_reduced_txpower, align 8, !range !64
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %frombool)
  %cmp = icmp eq i8 %7, %frombool
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drv_priv.i.i, align 8
  %or = or i32 %9, 128
  %spec.select = select i1 %enable, ptr @.str.18, ptr @.str.19
  %spec.select33 = select i1 %enable, i32 %or, i32 %9
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_bt_coex_reduced_txp, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.select, i32 noundef %conv.i) #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %spec.select33)
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cmd, align 4
  %14 = ptrtoint ptr %bt_reduced_txpower to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %bt_reduced_txpower, align 8
  %call20 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 92, i32 noundef 1, i16 noundef zeroext 4, ptr noundef nonnull %cmd) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @iwl_mvm_coex_agg_time_limit(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %phy_ctxt2 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 40
  %2 = ptrtoint ptr %phy_ctxt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ctxt2, align 8
  %ttc_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 6
  %4 = ptrtoint ptr %ttc_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ttc_status, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %conv3 = zext i16 %7 to i32
  %shl = shl nuw i32 1, %conv3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bt_activity_grading = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 5
  %8 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bt_activity_grading, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ult i32 %10, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc i32 @iwl_get_coex_type(ptr noundef %mvm, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %switch.selectcmp.case1 = icmp eq i32 %call9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call9)
  %switch.selectcmp.case2 = icmp eq i32 %call9, 255
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %11 = select i1 %switch.selectcmp, i16 4000, i16 1200
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 4000, %entry.cleanup_crit_edge ], [ 4000, %if.end.cleanup_crit_edge ], [ %11, %if.end7 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_bt_coex_is_mimo_allowed(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %phy_ctxt2 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 40
  %2 = ptrtoint ptr %phy_ctxt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ctxt2, align 8
  %ttc_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 6
  %4 = ptrtoint ptr %ttc_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ttc_status, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %conv3 = zext i16 %7 to i32
  %shl = shl nuw i32 1, %conv3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bt_activity_grading = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 5
  %8 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bt_activity_grading, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ult i32 %10, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc i32 @iwl_get_coex_type(ptr noundef %mvm, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10 = icmp ne i32 %call9, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp10, %if.end7 ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_bt_coex_is_ant_avail(ptr nocapture noundef readonly %mvm, i8 noundef zeroext %ant) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %bt_shared_single_ant = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bt_shared_single_ant to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %bt_shared_single_ant, align 4
  %3 = and i24 %bf.load, 2097152
  %tobool.not = icmp eq i24 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %non_shared_ant = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %non_shared_ant to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %non_shared_ant, align 1
  %and9 = and i8 %5, %ant
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and9)
  %tobool3.not = icmp eq i8 %and9, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bt_activity_grading = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 5
  %6 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bt_activity_grading, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ult i32 %8, 3
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end5 ], [ true, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_bt_coex_is_shared_ant_avail(ptr nocapture noundef readonly %mvm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %bt_shared_single_ant = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bt_shared_single_ant to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %bt_shared_single_ant, align 4
  %3 = and i24 %bf.load, 2097152
  %tobool.not = icmp eq i24 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bt_activity_grading = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 5
  %4 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bt_activity_grading, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ult i32 %6, 3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_bt_coex_is_tpc_allowed(ptr nocapture noundef readonly %mvm, i32 noundef %band) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp.not = icmp eq i32 %band, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bt_activity_grading = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 118, i32 5
  %0 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bt_activity_grading, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp ugt i32 %2, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp1, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_bt_coex_get_single_ant_msk(ptr nocapture noundef readonly %mvm, i8 noundef zeroext %enabled_ants) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 4
  %non_shared_ant = getelementptr inbounds %struct.iwl_cfg, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %non_shared_ant to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %non_shared_ant, align 1
  %and8 = and i8 %8, %enabled_ants
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and8)
  %tobool.not = icmp eq i8 %and8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call zeroext i8 @first_antenna(i8 noundef zeroext %enabled_ants) #10
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i8 [ %call4, %if.end ], [ %8, %land.lhs.true.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @first_antenna(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_bt_coex_tx_prio(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %info, i8 noundef zeroext %ac) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdr, align 2
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %3, i32 0, i32 5, i32 8, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i.not = icmp eq i32 %6, 0
  %band = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 536870912
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bt_tx_prio = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 120
  %8 = ptrtoint ptr %bt_tx_prio to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bt_tx_prio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end6, label %if.then3, !prof !62

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i8 %9, -1
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = and i16 %1, 3072
  %trunc = trunc i16 %10 to i12
  %11 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.22)
  switch i12 %trunc, label %if.else43 [
    i12 -2048, label %if.then14
    i12 0, label %if.then38
  ], !prof !66

if.then14:                                        ; preds = %if.end6
  %12 = and i16 %1, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %12)
  %cmp.i59 = icmp eq i16 %12, -30720
  br i1 %cmp.i59, label %if.then22, label %if.else, !prof !62

if.then22:                                        ; preds = %if.then14
  %13 = zext i8 %ac to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %ac, label %sw.default [
    i8 2, label %sw.bb
    i8 1, label %sw.bb27
    i8 0, label %if.then22.cleanup_crit_edge
  ]

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %.lobit = lshr exact i32 %6, 3
  %14 = trunc i32 %.lobit to i8
  br label %cleanup

sw.bb27:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %conv31 = select i1 %tobool.i.i.not, i8 3, i8 2
  br label %cleanup

sw.default:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %15 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr1, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  %. = select i1 %tobool.i.not, i8 0, i8 3
  br label %cleanup

if.then38:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %18 = and i16 %1, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %18)
  %cmp.i61 = icmp eq i16 %18, -24576
  %conv42 = select i1 %cmp.i61, i8 0, i8 3
  br label %cleanup

if.else43:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %10)
  %cmp.i62 = icmp eq i16 %10, 1024
  %.58 = select i1 %cmp.i62, i8 3, i8 0
  br label %cleanup

cleanup:                                          ; preds = %if.else43, %if.then38, %if.else, %sw.default, %sw.bb27, %sw.bb, %if.then22.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %sub, %if.then3 ], [ 0, %sw.default ], [ %conv31, %sw.bb27 ], [ %14, %sw.bb ], [ %conv42, %if.then38 ], [ 0, %entry.cleanup_crit_edge ], [ 3, %if.then22.cleanup_crit_edge ], [ %., %if.else ], [ %.58, %if.else43 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_bt_coex_vif_change(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iwl_mvm_bt_coex_notif_handle(ptr noundef %mvm)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_bt_notif_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mvm1 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 1
  %0 = ptrtoint ptr %mvm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvm1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !60

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %ap_ibss_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 8
  %6 = ptrtoint ptr %ap_ibss_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ap_ibss_active, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool26.not = icmp eq i8 %7, 0
  br i1 %tobool26.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %chanctx_conf33 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %8 = ptrtoint ptr %chanctx_conf33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %chanctx_conf33, align 4
  %call35 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true, label %sw.epilog.do.end44_crit_edge

sw.epilog.do.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

land.lhs.true:                                    ; preds = %sw.epilog
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true.do.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true
  %.b336 = load i1, ptr @iwl_mvm_bt_notif_iterator.__warned, align 1
  br i1 %.b336, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_bt_notif_iterator.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 286, ptr noundef nonnull @.str.13) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true.do.end44_crit_edge, %sw.epilog.do.end44_crit_edge
  %tobool46.not = icmp eq ptr %9, null
  br i1 %tobool46.not, label %do.end44.if.then48_crit_edge, label %lor.lhs.false

do.end44.if.then48_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false:                                    ; preds = %do.end44
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp47.not = icmp eq i32 %13, 0
  br i1 %cmp47.not, label %if.end54, label %lor.lhs.false.if.then48_crit_edge

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %do.end44.if.then48_crit_edge
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp50 = icmp eq i32 %15, 2
  br i1 %cmp50, label %if.then51, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_mvm_update_smps(ptr noundef %1, ptr noundef %vif, i32 noundef 0, i32 noundef 0) #10
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %16 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ap_sta_id, align 8
  %call52 = tail call fastcc i32 @iwl_mvm_bt_coex_reduced_txp(ptr noundef %1, i8 noundef zeroext %17, i1 noundef zeroext false)
  %last_bt_coex_event.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 22
  %18 = ptrtoint ptr %last_bt_coex_event.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %last_bt_coex_event.i, align 4
  %bt_coex_max_thold.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 14, i32 5
  %19 = ptrtoint ptr %bt_coex_max_thold.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bt_coex_max_thold.i, align 4
  %bt_coex_min_thold.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 21
  %20 = ptrtoint ptr %bt_coex_min_thold.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bt_coex_min_thold.i, align 4
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %22, i32 0, i32 5, i32 8, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i, align 4
  %25 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not = icmp eq i32 %25, 0
  %. = select i1 %tobool.i.not, i32 3, i32 4
  %26 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_data, align 4
  %bt_activity_grading58 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %bt_activity_grading58 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %bt_activity_grading58, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %.)
  %cmp59.not = icmp ult i32 %30, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp62 = icmp ugt i32 %30, 1
  %spec.select = select i1 %cmp62, i32 3, i32 0
  %smps_mode.0 = select i1 %cmp59.not, i32 %spec.select, i32 2
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %31 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %assoc, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool66.not = icmp eq i8 %32, 0
  %spec.select337 = select i1 %tobool66.not, i32 0, i32 %smps_mode.0
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %33 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_ctxt, align 8
  %tobool69.not = icmp eq ptr %34, null
  br i1 %tobool69.not, label %if.end54.do.end79_crit_edge, label %land.lhs.true70

if.end54.do.end79_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

land.lhs.true70:                                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %rrc_status = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 7
  %35 = ptrtoint ptr %rrc_status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rrc_status, align 1
  %conv = zext i8 %36 to i32
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %34, align 4
  %conv72 = zext i16 %38 to i32
  %shl = shl nuw i32 1, %conv72
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  %spec.select338 = select i1 %tobool73.not, i32 %spec.select337, i32 0
  br label %do.end79

do.end79:                                         ; preds = %land.lhs.true70, %if.end54.do.end79_crit_edge
  %smps_mode.2 = phi i32 [ %spec.select337, %if.end54.do.end79_crit_edge ], [ %spec.select338, %land.lhs.true70 ]
  %39 = ptrtoint ptr %mvm1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mvm1, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %id81 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %43 = ptrtoint ptr %id81 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %id81, align 4
  %conv82 = zext i16 %44 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_bt_notif_iterator, ptr noundef nonnull @.str.14, i32 noundef %conv82, i32 noundef %30, i32 noundef %smps_mode.2) #10
  %45 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp86 = icmp eq i32 %46, 2
  br i1 %cmp86, label %if.then88, label %do.end79.if.end89_crit_edge

do.end79.if.end89_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then88:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_mvm_update_smps(ptr noundef %1, ptr noundef %vif, i32 noundef 0, i32 noundef %smps_mode.2) #10
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %do.end79.if.end89_crit_edge
  %low_latency_actual.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %47 = ptrtoint ptr %low_latency_actual.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %low_latency_actual.i, align 8
  %48 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i339.not = icmp eq i8 %48, 0
  br i1 %tobool.i339.not, label %if.end89.if.end93_crit_edge, label %if.then91

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %primary_ll = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 4
  %49 = ptrtoint ptr %primary_ll to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %primary_ll, align 4
  %primary = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 2
  %50 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %primary, align 4
  %secondary = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 3
  %52 = ptrtoint ptr %secondary to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %secondary, align 4
  store ptr %9, ptr %primary, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end89.if.end93_crit_edge
  %53 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp95 = icmp eq i32 %54, 3
  br i1 %cmp95, label %if.then97, label %if.end136

if.then97:                                        ; preds = %if.end93
  %ap_ibss_active98 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 8
  %55 = ptrtoint ptr %ap_ibss_active98 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ap_ibss_active98, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool99.not = icmp eq i8 %56, 0
  br i1 %tobool99.not, label %if.then97.cleanup_crit_edge, label %if.end101

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end101:                                        ; preds = %if.then97
  %primary102 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 2
  %57 = ptrtoint ptr %primary102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %primary102, align 4
  %cmp103 = icmp eq ptr %9, %58
  br i1 %cmp103, label %if.end101.cleanup_crit_edge, label %if.end106

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end106:                                        ; preds = %if.end101
  %primary_ll107 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 4
  %59 = ptrtoint ptr %primary_ll107 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %primary_ll107, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool108.not = icmp eq i8 %60, 0
  br i1 %tobool108.not, label %if.then109, label %if.end106.if.end115_crit_edge

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %primary102 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %9, ptr %primary102, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.end106.if.end115_crit_edge
  %.sink = phi ptr [ %58, %if.then109 ], [ %9, %if.end106.if.end115_crit_edge ]
  %62 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %.sink, ptr %62, align 4
  %64 = ptrtoint ptr %primary102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %primary102, align 4
  %cmp117 = icmp eq ptr %65, %9
  br i1 %cmp117, label %if.then119, label %if.else122

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %id81 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %id81, align 4
  %idxprom = zext i16 %67 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 133, i32 7, i32 2, i32 %idxprom
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %conv121 = trunc i32 %69 to i8
  %primary_load = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 5
  %70 = ptrtoint ptr %primary_load to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv121, ptr %primary_load, align 1
  br label %cleanup

if.else122:                                       ; preds = %if.end115
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %62, align 4
  %cmp124 = icmp eq ptr %72, %9
  br i1 %cmp124, label %if.then126, label %if.else122.cleanup_crit_edge

if.else122.cleanup_crit_edge:                     ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then126:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %id81 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %id81, align 4
  %idxprom131 = zext i16 %74 to i32
  %arrayidx132 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 133, i32 7, i32 2, i32 %idxprom131
  %75 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx132, align 4
  %conv133 = trunc i32 %76 to i8
  %secondary_load = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 6
  %77 = ptrtoint ptr %secondary_load to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv133, ptr %secondary_load, align 2
  br label %cleanup

if.end136:                                        ; preds = %if.end93
  %primary137 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 2
  %78 = ptrtoint ptr %primary137 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %primary137, align 4
  %tobool138.not = icmp eq ptr %79, null
  %cmp141 = icmp eq ptr %79, %9
  %or.cond = select i1 %tobool138.not, i1 true, i1 %cmp141
  br i1 %or.cond, label %if.end136.if.end151.sink.split_crit_edge, label %if.else145

if.end136.if.end151.sink.split_crit_edge:         ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151.sink.split

if.else145:                                       ; preds = %if.end136
  %secondary146 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 3
  %80 = ptrtoint ptr %secondary146 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %secondary146, align 4
  %tobool147.not = icmp eq ptr %81, null
  br i1 %tobool147.not, label %if.else145.if.end151.sink.split_crit_edge, label %if.else145.if.end151_crit_edge

if.else145.if.end151_crit_edge:                   ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.else145.if.end151.sink.split_crit_edge:        ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %if.else145.if.end151.sink.split_crit_edge, %if.end136.if.end151.sink.split_crit_edge
  %secondary146.sink = phi ptr [ %primary137, %if.end136.if.end151.sink.split_crit_edge ], [ %secondary146, %if.else145.if.end151.sink.split_crit_edge ]
  %82 = ptrtoint ptr %secondary146.sink to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %9, ptr %secondary146.sink, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %if.else145.if.end151_crit_edge
  %83 = ptrtoint ptr %primary137 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %primary137, align 4
  %cmp153 = icmp eq ptr %84, %9
  br i1 %cmp153, label %if.then155, label %if.else164

if.then155:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %id81 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %id81, align 4
  %idxprom160 = zext i16 %86 to i32
  %arrayidx161 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 133, i32 7, i32 2, i32 %idxprom160
  %87 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx161, align 4
  %conv162 = trunc i32 %88 to i8
  %primary_load163 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 5
  %89 = ptrtoint ptr %primary_load163 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv162, ptr %primary_load163, align 1
  br label %if.end178

if.else164:                                       ; preds = %if.end151
  %secondary165 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 3
  %90 = ptrtoint ptr %secondary165 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %secondary165, align 4
  %cmp166 = icmp eq ptr %91, %9
  br i1 %cmp166, label %if.then168, label %if.else164.if.end178_crit_edge

if.else164.if.end178_crit_edge:                   ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then168:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %id81 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %id81, align 4
  %idxprom173 = zext i16 %93 to i32
  %arrayidx174 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 133, i32 7, i32 2, i32 %idxprom173
  %94 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx174, align 4
  %conv175 = trunc i32 %95 to i8
  %secondary_load176 = getelementptr inbounds %struct.iwl_bt_iterator_data, ptr %_data, i32 0, i32 6
  %96 = ptrtoint ptr %secondary_load176 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv175, ptr %secondary_load176, align 2
  br label %if.end178

if.end178:                                        ; preds = %if.then168, %if.else164.if.end178_crit_edge, %if.then155
  %call179 = tail call fastcc i32 @iwl_get_coex_type(ptr noundef %1, ptr noundef %vif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call179)
  %cmp180 = icmp eq i32 %call179, 1
  br i1 %cmp180, label %if.end178.if.then193_crit_edge, label %lor.lhs.false182

if.end178.if.then193_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then193

lor.lhs.false182:                                 ; preds = %if.end178
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 3
  %97 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cfg, align 4
  %bt_shared_single_ant = getelementptr inbounds %struct.iwl_cfg, ptr %98, i32 0, i32 21
  %99 = ptrtoint ptr %bt_shared_single_ant to i32
  call void @__asan_loadN_noabort(i32 %99, i32 3)
  %bf.load = load i24, ptr %bt_shared_single_ant, align 4
  %100 = and i24 %bf.load, 2097152
  %tobool183.not = icmp eq i24 %100, 0
  br i1 %tobool183.not, label %lor.lhs.false184, label %lor.lhs.false182.if.then193_crit_edge

lor.lhs.false182.if.then193_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then193

lor.lhs.false184:                                 ; preds = %lor.lhs.false182
  %101 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %assoc, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool187.not = icmp eq i8 %102, 0
  br i1 %tobool187.not, label %lor.lhs.false184.if.then193_crit_edge, label %lor.lhs.false188

lor.lhs.false184.if.then193_crit_edge:            ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then193

lor.lhs.false188:                                 ; preds = %lor.lhs.false184
  %bt_activity_grading190 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 5
  %103 = ptrtoint ptr %bt_activity_grading190 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bt_activity_grading190, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp191 = icmp eq i32 %104, 0
  br i1 %cmp191, label %lor.lhs.false188.if.then193_crit_edge, label %if.end196

lor.lhs.false188.if.then193_crit_edge:            ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then193

if.then193:                                       ; preds = %lor.lhs.false188.if.then193_crit_edge, %lor.lhs.false184.if.then193_crit_edge, %lor.lhs.false182.if.then193_crit_edge, %if.end178.if.then193_crit_edge
  %ap_sta_id194 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %105 = ptrtoint ptr %ap_sta_id194 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ap_sta_id194, align 8
  %call195 = tail call fastcc i32 @iwl_mvm_bt_coex_reduced_txp(ptr noundef %1, i8 noundef zeroext %106, i1 noundef zeroext false)
  %last_bt_coex_event.i341 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 22
  %107 = ptrtoint ptr %last_bt_coex_event.i341 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %last_bt_coex_event.i341, align 4
  %bt_coex_max_thold.i342 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 14, i32 5
  %108 = ptrtoint ptr %bt_coex_max_thold.i342 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %bt_coex_max_thold.i342, align 4
  %bt_coex_min_thold.i343 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 21
  %109 = ptrtoint ptr %bt_coex_min_thold.i343 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %bt_coex_min_thold.i343, align 4
  br label %cleanup

if.end196:                                        ; preds = %lor.lhs.false188
  %ave_beacon_signal = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 18
  %110 = ptrtoint ptr %ave_beacon_signal to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ave_beacon_signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool197.not = icmp eq i32 %111, 0
  %spec.store.select = select i1 %tobool197.not, i32 -100, i32 %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %spec.store.select)
  %cmp200 = icmp sgt i32 %spec.store.select, -62
  br i1 %cmp200, label %if.then202, label %if.else215

if.then202:                                       ; preds = %if.end196
  %ap_sta_id203 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %112 = ptrtoint ptr %ap_sta_id203 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ap_sta_id203, align 8
  %call204 = tail call fastcc i32 @iwl_mvm_bt_coex_reduced_txp(ptr noundef %1, i8 noundef zeroext %113, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then202.if.end232_crit_edge, label %if.then202.if.end232.sink.split_crit_edge

if.then202.if.end232.sink.split_crit_edge:        ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232.sink.split

if.then202.if.end232_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

if.else215:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %spec.store.select)
  %cmp216 = icmp ult i32 %spec.store.select, -65
  br i1 %cmp216, label %if.then218, label %if.else215.if.end232_crit_edge

if.else215.if.end232_crit_edge:                   ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

if.then218:                                       ; preds = %if.else215
  %ap_sta_id219 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %114 = ptrtoint ptr %ap_sta_id219 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ap_sta_id219, align 8
  %call220 = tail call fastcc i32 @iwl_mvm_bt_coex_reduced_txp(ptr noundef %1, i8 noundef zeroext %115, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.then218.if.end232_crit_edge, label %if.then218.if.end232.sink.split_crit_edge

if.then218.if.end232.sink.split_crit_edge:        ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232.sink.split

if.then218.if.end232_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

if.end232.sink.split:                             ; preds = %if.then218.if.end232.sink.split_crit_edge, %if.then202.if.end232.sink.split_crit_edge
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %117, i32 noundef 0, ptr noundef nonnull @.str.15) #10
  br label %if.end232

if.end232:                                        ; preds = %if.end232.sink.split, %if.then218.if.end232_crit_edge, %if.else215.if.end232_crit_edge, %if.then202.if.end232_crit_edge
  %last_bt_coex_event.i345 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 22
  %118 = ptrtoint ptr %last_bt_coex_event.i345 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %spec.store.select, ptr %last_bt_coex_event.i345, align 4
  %bt_coex_max_thold.i346 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 14, i32 5
  %119 = ptrtoint ptr %bt_coex_max_thold.i346 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -62, ptr %bt_coex_max_thold.i346, align 4
  %bt_coex_min_thold.i347 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 21
  %120 = ptrtoint ptr %bt_coex_min_thold.i347 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -65, ptr %bt_coex_min_thold.i347, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end232, %if.then193, %if.then126, %if.else122.cleanup_crit_edge, %if.then119, %if.end101.cleanup_crit_edge, %if.then97.cleanup_crit_edge, %if.then51, %if.then48.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_update_smps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 145, i32 2}
!2 = !{ptr @__func__.iwl_mvm_rx_bt_coex_notif, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 493, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 494, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 495, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 497, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 499, i32 2}
!13 = !{ptr @__func__.iwl_mvm_bt_rssi_event, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 531, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 546, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 482, i32 4}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 286, i32 17}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.iwl_mvm_bt_notif_iterator, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 321, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 400, i32 4}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @iwl_ci_mask, !38, !"iwl_ci_mask", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 16, i32 21}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 109, i32 17}
!41 = !{ptr @__func__.iwl_mvm_bt_coex_reduced_txp, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/coex.c", i32 202, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1203, i32 8}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2149791456}
!64 = !{i8 0, i8 2}
!65 = !{i64 2149791722}
!66 = !{!"branch_weights", i32 1, i32 4000, i32 1}
