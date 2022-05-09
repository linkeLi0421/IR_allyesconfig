; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mvm_mod_params = type { i8, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_beacon_filter_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.153 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.154, %struct.list_head }
%struct.anon.154 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.155 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.87, %struct.list_head, %struct.list_head, %union.anon.88 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.87 = type { %struct.list_head }
%union.anon.88 = type { %struct.hlist_node }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iwlmvm\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to create debugfs directory under %pd\0A\00", [50 x i8] zeroinitializer }, align 32
@iwlmvm_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mvm_mod_params, align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pm_params\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_pm_params_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_pm_params_read, ptr @_iwl_dbgfs_pm_params_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_pwr_lmt\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_tx_pwr_lmt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_tx_pwr_lmt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mac_params\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_mac_params_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_mac_params_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"low_latency\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_low_latency_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_low_latency_read, ptr @_iwl_dbgfs_low_latency_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"low_latency_force\00", [46 x i8] zeroinitializer }, align 32
@iwl_dbgfs_low_latency_force_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_low_latency_force_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uapsd_misbehaving\00", [46 x i8] zeroinitializer }, align 32
@iwl_dbgfs_uapsd_misbehaving_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_uapsd_misbehaving_read, ptr @_iwl_dbgfs_uapsd_misbehaving_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_phyinfo\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rx_phyinfo_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rx_phyinfo_read, ptr @_iwl_dbgfs_rx_phyinfo_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"quota_min\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_quota_min_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_quota_min_read, ptr @_iwl_dbgfs_quota_min_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"os_device_timediff\00", [45 x i8] zeroinitializer }, align 32
@iwl_dbgfs_os_device_timediff_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_os_device_timediff_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bf_params\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_bf_params_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_bf_params_read, ptr @_iwl_dbgfs_bf_params_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"../../../%pd3/%pd\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"keep_alive=\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skip_over_dtim=\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"skip_dtim_periods=\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_data_timeout=\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_data_timeout=\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lprx=\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lprx_rssi_threshold=\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snooze_enable=\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uapsd_misbehaving=\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"use_ps_poll=\00", [19 x i8] zeroinitializer }, align 32
@__func__.iwl_dbgfs_update_pm = private unnamed_addr constant [20 x i8] c"iwl_dbgfs_update_pm\00", align 1
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"debugfs: set keep_alive= %d sec\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"debugfs: keep alive period (%ld msec) is less than minimum required (%d msec)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"skip_over_dtim %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"skip_dtim_periods=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_data_timeout=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_data_timeout=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lprx %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lprx_rssi_threshold=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snooze_enable=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"uapsd_misbehaving_enable=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"use_ps_poll=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bss limit = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"type: ibss\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"type: bss\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"type: ap\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"type: p2p client\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"type: p2p go\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"type: p2p dev\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac id/color: %d / %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bssid: %pM\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Load: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QoS:\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\09%d: txop:%d - cw_min:%d - cw_max = %d - aifs = %d upasd = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ap_sta_id %d - reduced Tx power %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_dbgfs_mac_params_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"idle rx chains %d, active rx chains: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_from_staid_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__const.iwl_dbgfs_low_latency_read.format = private unnamed_addr constant [88 x i8] c"traffic=%d\0Adbgfs=%d\0Avcmd=%d\0Avif_type=%d\0Adbgfs_force_enable=%d\0Adbgfs_force=%d\0Aactual=%d\0A\00", align 1
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rx_phyinfo_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"diff=%lld\0A\00", [21 x i8] zeroinitializer }, align 32
@__const.iwl_dbgfs_bf_params_read.cmd = private unnamed_addr constant %struct.iwl_beacon_filter_cmd { i32 83886080, i32 16777216, i32 1207959552, i32 1879048192, i32 16777216, i32 83886080, i32 16777216, i32 0, i32 0, i32 100663296, i32 16777216, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer }, align 1
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bf_energy_delta = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bf_roaming_energy_delta = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bf_roaming_state = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bf_temp_threshold = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bf_temp_fast_filter = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bf_temp_slow_filter = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bf_enable_beacon_filter = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bf_debug_flag = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bf_escape_timer = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ba_escape_timer = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ba_enable_beacon_abort = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bf_energy_delta=\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bf_roaming_energy_delta=\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bf_roaming_state=\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bf_temp_threshold=\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bf_temp_fast_filter=\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bf_temp_slow_filter=\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bf_enable_beacon_filter=\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bf_debug_flag=\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bf_escape_timer=\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ba_escape_timer=\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ba_enable_beacon_abort=\00", [40 x i8] zeroinitializer }, align 32
@switch.table.iwl_dbgfs_mac_params_read = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.44, ptr @.str.44, ptr @.str.44, ptr @.str.44, ptr @.str.44, ptr @.str.45, ptr @.str.46], [56 x i8] zeroinitializer }, align 32
@switch.table.iwl_dbgfs_mac_params_read.87 = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.41, ptr @.str.41, ptr @.str.41, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.46], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 723, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 725, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 733, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_pm_params_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 700, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 735, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_tx_pwr_lmt_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 699, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 736, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_mac_params_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 698, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 737, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_low_latency_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 702, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 738, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [32 x i8] c"iwl_dbgfs_low_latency_force_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 703, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 739, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [32 x i8] c"iwl_dbgfs_uapsd_misbehaving_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 704, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 740, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_rx_phyinfo_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 705, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 741, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_quota_min_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 706, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 742, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [33 x i8] c"iwl_dbgfs_os_device_timediff_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 707, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 746, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_bf_params_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 701, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 755, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 156, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 80, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 81, i32 24 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 84, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 88, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 92, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 96, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 100, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 104, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 111, i32 22 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 115, i32 22 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 119, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 24, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 26, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 33, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 38, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 42, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 46, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 50, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 54, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 58, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 62, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 66, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 144, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 186, i32 40 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 189, i32 40 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 192, i32 40 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 195, i32 40 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 198, i32 40 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 201, i32 40 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 207, i32 39 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 209, i32 39 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 211, i32 39 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 213, i32 39 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 216, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 230, i32 7 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 237, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 240, i32 6 }
@___asan_gen_.284 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1203, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 695, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 723, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 564, i32 21 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 630, i32 36 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 684, i32 36 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 468, i32 43 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 415, i32 39 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 417, i32 39 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 419, i32 39 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 421, i32 39 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 423, i32 39 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 425, i32 39 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 427, i32 39 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 429, i32 39 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 431, i32 39 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 433, i32 39 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 435, i32 39 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 303, i32 15 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 310, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 317, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 324, i32 22 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 331, i32 22 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 338, i32 22 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 345, i32 22 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 351, i32 22 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 357, i32 22 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 364, i32 22 }
@___asan_gen_.370 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.371 = private constant [56 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 371, i32 22 }
@___asan_gen_.373 = private unnamed_addr constant [39 x i8] c"switch.table.iwl_dbgfs_mac_params_read\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [42 x i8] c"switch.table.iwl_dbgfs_mac_params_read.87\00", align 1
@llvm.compiler.used = appending global [97 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @iwl_dbgfs_pm_params_ops, ptr @.str.3, ptr @iwl_dbgfs_tx_pwr_lmt_ops, ptr @.str.4, ptr @iwl_dbgfs_mac_params_ops, ptr @.str.5, ptr @iwl_dbgfs_low_latency_ops, ptr @.str.6, ptr @iwl_dbgfs_low_latency_force_ops, ptr @.str.7, ptr @iwl_dbgfs_uapsd_misbehaving_ops, ptr @.str.8, ptr @iwl_dbgfs_rx_phyinfo_ops, ptr @.str.9, ptr @iwl_dbgfs_quota_min_ops, ptr @.str.10, ptr @iwl_dbgfs_os_device_timediff_ops, ptr @.str.11, ptr @iwl_dbgfs_bf_params_ops, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @switch.table.iwl_dbgfs_mac_params_read, ptr @switch.table.iwl_dbgfs_mac_params_read.87], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_pm_params_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_tx_pwr_lmt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_mac_params_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_low_latency_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_low_latency_force_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_uapsd_misbehaving_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rx_phyinfo_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_quota_min_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_os_device_timediff_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_bf_params_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_dbgfs_mac_params_read to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_dbgfs_mac_params_read.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_vif_dbgfs_register(ptr nocapture noundef readonly %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 12
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dbgfs_dir1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 7
  %3 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbgfs_dir1, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef nonnull %1) #9
  %5 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %dbgfs_dir1, align 8
  %tobool.not.i = icmp eq ptr %call3, null
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end11.do.body28_crit_edge, label %land.lhs.true

if.end11.do.body28_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

land.lhs.true:                                    ; preds = %if.end11
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp12 = icmp eq i32 %10, 2
  br i1 %cmp12, label %land.lhs.true13, label %land.lhs.true.do.body28_crit_edge

land.lhs.true.do.body28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

land.lhs.true13:                                  ; preds = %land.lhs.true
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %11 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p2p, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  br i1 %tobool14.not, label %land.lhs.true13.do.body22_crit_edge, label %land.lhs.true18

land.lhs.true13.do.body22_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %13 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %p2p, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20.not = icmp eq i8 %14, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.body28_crit_edge, label %land.lhs.true18.do.body22_crit_edge

land.lhs.true18.do.body22_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

land.lhs.true18.do.body28_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

do.body22:                                        ; preds = %land.lhs.true18.do.body22_crit_edge, %land.lhs.true13.do.body22_crit_edge
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef nonnull %call3, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_pm_params_ops) #9
  br label %do.body28

do.body28:                                        ; preds = %do.body22, %land.lhs.true18.do.body28_crit_edge, %land.lhs.true.do.body28_crit_edge, %if.end11.do.body28_crit_edge
  %15 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dbgfs_dir1, align 8
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %16, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_tx_pwr_lmt_ops) #9
  %17 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dbgfs_dir1, align 8
  %call35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_mac_params_ops) #9
  %19 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dbgfs_dir1, align 8
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %20, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_low_latency_ops) #9
  %21 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dbgfs_dir1, align 8
  %call45 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef %22, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_low_latency_force_ops) #9
  %23 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dbgfs_dir1, align 8
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef %24, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_uapsd_misbehaving_ops) #9
  %25 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dbgfs_dir1, align 8
  %call55 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %26, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_rx_phyinfo_ops) #9
  %27 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dbgfs_dir1, align 8
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %28, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_quota_min_ops) #9
  %29 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dbgfs_dir1, align 8
  %call65 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %30, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_os_device_timediff_ops) #9
  %31 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp69 = icmp eq i32 %32, 2
  br i1 %cmp69, label %land.lhs.true70, label %do.body28.if.end81_crit_edge

do.body28.if.end81_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true70:                                  ; preds = %do.body28
  %p2p71 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %33 = ptrtoint ptr %p2p71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %p2p71, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool72.not = icmp eq i8 %34, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %land.lhs.true70.if.end81_crit_edge

land.lhs.true70.if.end81_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %bf_allowed_vif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 15
  %35 = ptrtoint ptr %bf_allowed_vif to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bf_allowed_vif, align 8
  %cmp74 = icmp eq ptr %drv_priv.i, %36
  br i1 %cmp74, label %do.body76, label %land.lhs.true73.if.end81_crit_edge

land.lhs.true73.if.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

do.body76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dbgfs_dir1, align 8
  %call78 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %38, ptr noundef %vif, ptr noundef nonnull @iwl_dbgfs_bf_params_ops) #9
  br label %if.end81

if.end81:                                         ; preds = %do.body76, %land.lhs.true73.if.end81_crit_edge, %land.lhs.true70.if.end81_crit_edge, %do.body28.if.end81_crit_edge
  %39 = ptrtoint ptr %dbgfs_dir1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dbgfs_dir1, align 8
  %call83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull %1, ptr noundef %40)
  %name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 8
  %debugfs_dir84 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 69
  %43 = ptrtoint ptr %debugfs_dir84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %debugfs_dir84, align 8
  %call86 = call ptr @debugfs_create_symlink(ptr noundef %42, ptr noundef %44, ptr noundef nonnull %buf) #9
  %dbgfs_slink = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %dbgfs_slink to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call86, ptr %dbgfs_slink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_vif_dbgfs_clean(ptr nocapture noundef readnone %mvm, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbgfs_slink = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %dbgfs_slink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbgfs_slink, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %dbgfs_slink to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dbgfs_slink, align 4
  %dbgfs_dir = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 7
  %3 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbgfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %4) #9
  %5 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dbgfs_dir, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_pm_params_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #9
  %4 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %call2 = call i32 @iwl_mvm_power_mac_dbgfs_read(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 512) #9
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_pm_params_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !209

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #9
  %5 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !210
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !209

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !213
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.16, ptr noundef nonnull dereferenceable(11) %buf, i32 11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.then.i8, label %if.else.i

if.then.i8:                                       ; preds = %if.end
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i32 11
  %call3.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 1
  br i1 %cmp.not.i, label %sw.bb.i.i, label %if.then.i8.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then.i8.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else.i:                                        ; preds = %if.end
  %bcmp13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) @.str.18, ptr noundef nonnull dereferenceable(15) %buf, i32 15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp13)
  %tobool6.not.i = icmp eq i32 %bcmp13, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else13.i

if.then7.i:                                       ; preds = %if.else.i
  %add.ptr8.i = getelementptr inbounds i8, ptr %buf, i32 15
  %call9.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr8.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.not.i, label %do.end24.i.i, label %if.then7.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then7.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else13.i:                                      ; preds = %if.else.i
  %bcmp14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) @.str.19, ptr noundef nonnull dereferenceable(18) %buf, i32 18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp14)
  %tobool15.not.i = icmp eq i32 %bcmp14, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.else22.i

if.then16.i:                                      ; preds = %if.else13.i
  %add.ptr17.i = getelementptr inbounds i8, ptr %buf, i32 18
  %call18.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr17.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 1
  br i1 %cmp19.not.i, label %do.end35.i.i, label %if.then16.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then16.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else22.i:                                      ; preds = %if.else13.i
  %bcmp15 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @.str.20, ptr noundef nonnull dereferenceable(16) %buf, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15)
  %tobool24.not.i = icmp eq i32 %bcmp15, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.else31.i

if.then25.i:                                      ; preds = %if.else22.i
  %add.ptr26.i = getelementptr inbounds i8, ptr %buf, i32 16
  %call27.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr26.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27.i)
  %cmp28.not.i = icmp eq i32 %call27.i, 1
  br i1 %cmp28.not.i, label %do.end44.i.i, label %if.then25.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then25.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else31.i:                                      ; preds = %if.else22.i
  %bcmp16 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @.str.21, ptr noundef nonnull dereferenceable(16) %buf, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16)
  %tobool33.not.i = icmp eq i32 %bcmp16, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.else40.i

if.then34.i:                                      ; preds = %if.else31.i
  %add.ptr35.i = getelementptr inbounds i8, ptr %buf, i32 16
  %call36.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr35.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36.i)
  %cmp37.not.i = icmp eq i32 %call36.i, 1
  br i1 %cmp37.not.i, label %do.end52.i.i, label %if.then34.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then34.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else40.i:                                      ; preds = %if.else31.i
  %bcmp17 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.22, ptr noundef nonnull dereferenceable(5) %buf, i32 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp17)
  %tobool42.not.i = icmp eq i32 %bcmp17, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else49.i

if.then43.i:                                      ; preds = %if.else40.i
  %add.ptr44.i = getelementptr inbounds i8, ptr %buf, i32 5
  %call45.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr44.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45.i)
  %cmp46.not.i = icmp eq i32 %call45.i, 1
  br i1 %cmp46.not.i, label %do.end60.i.i, label %if.then43.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then43.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else49.i:                                      ; preds = %if.else40.i
  %bcmp18 = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) @.str.23, ptr noundef nonnull dereferenceable(20) %buf, i32 20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp18)
  %tobool51.not.i = icmp eq i32 %bcmp18, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.else62.i

if.then52.i:                                      ; preds = %if.else49.i
  %add.ptr53.i = getelementptr inbounds i8, ptr %buf, i32 20
  %call54.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr53.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call54.i)
  %cmp55.not.i = icmp eq i32 %call54.i, 1
  br i1 %cmp55.not.i, label %if.end57.i, label %if.then52.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then52.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.end57.i:                                       ; preds = %if.then52.i
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %14 = add i32 %13, -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %14)
  %15 = icmp ult i32 %14, -65
  br i1 %15, label %if.end57.i.iwl_dbgfs_pm_params_write.exit_crit_edge, label %do.end72.i.i

if.end57.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else62.i:                                      ; preds = %if.else49.i
  %bcmp19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) @.str.24, ptr noundef nonnull dereferenceable(14) %buf, i32 14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp19)
  %tobool64.not.i = icmp eq i32 %bcmp19, 0
  br i1 %tobool64.not.i, label %if.then65.i, label %if.else71.i

if.then65.i:                                      ; preds = %if.else62.i
  %add.ptr66.i = getelementptr inbounds i8, ptr %buf, i32 14
  %call67.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr66.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.i)
  %cmp68.not.i = icmp eq i32 %call67.i, 1
  br i1 %cmp68.not.i, label %do.end80.i.i, label %if.then65.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then65.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else71.i:                                      ; preds = %if.else62.i
  %bcmp20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) @.str.25, ptr noundef nonnull dereferenceable(18) %buf, i32 18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp20)
  %tobool73.not.i = icmp eq i32 %bcmp20, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %if.else80.i

if.then74.i:                                      ; preds = %if.else71.i
  %add.ptr75.i = getelementptr inbounds i8, ptr %buf, i32 18
  %call76.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr75.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call76.i)
  %cmp77.not.i = icmp eq i32 %call76.i, 1
  br i1 %cmp77.not.i, label %do.end90.i.i, label %if.then74.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then74.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.else80.i:                                      ; preds = %if.else71.i
  %bcmp21 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @.str.26, ptr noundef nonnull dereferenceable(12) %buf, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool82.not.i = icmp eq i32 %bcmp21, 0
  br i1 %tobool82.not.i, label %if.then83.i, label %if.else80.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.else80.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

if.then83.i:                                      ; preds = %if.else80.i
  %add.ptr84.i = getelementptr inbounds i8, ptr %buf, i32 12
  %call85.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr84.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call85.i)
  %cmp86.not.i = icmp eq i32 %call85.i, 1
  br i1 %cmp86.not.i, label %do.end100.i.i, label %if.then83.i.iwl_dbgfs_pm_params_write.exit_crit_edge

if.then83.i.iwl_dbgfs_pm_params_write.exit_crit_edge: ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_pm_params_write.exit

sw.bb.i.i:                                        ; preds = %if.then.i8
  %mutex2.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex2.i, i32 noundef 0) #9
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %dbgfs_pm1.i3.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 2, i32 5
  %mask.i4.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %18 = ptrtoint ptr %mask.i4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask.i4.i, align 4
  %or.i5.i = or i32 %19, 1
  store i32 %or.i5.i, ptr %mask.i4.i, align 4
  %dtim_period.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %dtim_period.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dtim_period.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  %narrow.i.i = select i1 %tobool.not.i.i, i8 1, i8 %21
  %conv..i.i = zext i8 %narrow.i.i to i32
  %beacon_int.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %22 = ptrtoint ptr %beacon_int.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %beacon_int.i.i, align 2
  %conv3.i.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.27, i32 noundef %17) #9
  %mul7.i.i = mul i32 %17, 1000
  %mul.i.i = mul nuw nsw i32 %conv3.i.i, 3
  %mul8.i.i = mul nuw nsw i32 %mul.i.i, %conv..i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul7.i.i, i32 %mul8.i.i)
  %cmp.i.i9 = icmp slt i32 %mul7.i.i, %mul8.i.i
  br i1 %cmp.i.i9, label %do.end13.i.i, label %sw.bb.i.i.if.end.i.i10_crit_edge

sw.bb.i.i.if.end.i.i10_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i10

do.end13.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %27, ptr noundef nonnull @.str.28, i32 noundef %mul7.i.i, i32 noundef %mul8.i.i) #9
  br label %if.end.i.i10

if.end.i.i10:                                     ; preds = %do.end13.i.i, %sw.bb.i.i.if.end.i.i10_crit_edge
  %conv19.i.i = trunc i32 %17 to i16
  %28 = ptrtoint ptr %dbgfs_pm1.i3.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv19.i.i, ptr %dbgfs_pm1.i3.i, align 4
  br label %iwl_dbgfs_update_pm.exit.i

do.end24.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex11.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex11.i, i32 noundef 0) #9
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  %mask.i13.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %31 = ptrtoint ptr %mask.i13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask.i13.i, align 4
  %or.i14.i = or i32 %32, 2
  store i32 %or.i14.i, ptr %mask.i13.i, align 4
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.i.i = icmp ne i32 %30, 0
  %cond27.i.i = select i1 %tobool26.i.i, ptr @.str.30, ptr @.str.31
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %34, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond27.i.i) #9
  %skip_over_dtim.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1
  %frombool.i.i = zext i1 %tobool26.i.i to i8
  %35 = ptrtoint ptr %skip_over_dtim.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool.i.i, ptr %skip_over_dtim.i.i, align 4
  br label %iwl_dbgfs_update_pm.exit.i

do.end35.i.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex18.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex18.i, i32 noundef 0) #9
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  %mask.i20.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %38 = ptrtoint ptr %mask.i20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask.i20.i, align 4
  %or.i21.i = or i32 %39, 4
  store i32 %or.i21.i, ptr %mask.i20.i, align 4
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.32, i32 noundef %37) #9
  %conv39.i.i = trunc i32 %37 to i8
  %skip_dtim_periods.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 1
  %42 = ptrtoint ptr %skip_dtim_periods.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv39.i.i, ptr %skip_dtim_periods.i.i, align 1
  br label %iwl_dbgfs_update_pm.exit.i

do.end44.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex25.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex25.i, i32 noundef 0) #9
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %mask.i27.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %45 = ptrtoint ptr %mask.i27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask.i27.i, align 4
  %or.i28.i = or i32 %46, 8
  store i32 %or.i28.i, ptr %mask.i27.i, align 4
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %48, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.33, i32 noundef %44) #9
  %rx_data_timeout.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 2, i32 6
  %49 = ptrtoint ptr %rx_data_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %44, ptr %rx_data_timeout.i.i, align 4
  br label %iwl_dbgfs_update_pm.exit.i

do.end52.i.i:                                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex32.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex32.i, i32 noundef 0) #9
  %50 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i, align 4
  %mask.i34.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %52 = ptrtoint ptr %mask.i34.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask.i34.i, align 4
  %or.i35.i = or i32 %53, 16
  store i32 %or.i35.i, ptr %mask.i34.i, align 4
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %55, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.34, i32 noundef %51) #9
  %tx_data_timeout.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3
  %56 = ptrtoint ptr %tx_data_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %51, ptr %tx_data_timeout.i.i, align 4
  br label %iwl_dbgfs_update_pm.exit.i

do.end60.i.i:                                     ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex39.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex39.i, i32 noundef 0) #9
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i, align 4
  %mask.i41.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %59 = ptrtoint ptr %mask.i41.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask.i41.i, align 4
  %or.i42.i = or i32 %60, 64
  store i32 %or.i42.i, ptr %mask.i41.i, align 4
  %61 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool62.i.i = icmp ne i32 %58, 0
  %cond63.i.i = select i1 %tobool62.i.i, ptr @.str.30, ptr @.str.31
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %62, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond63.i.i) #9
  %lprx_ena.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 2
  %frombool67.i.i = zext i1 %tobool62.i.i to i8
  %63 = ptrtoint ptr %lprx_ena.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %frombool67.i.i, ptr %lprx_ena.i.i, align 2
  br label %iwl_dbgfs_update_pm.exit.i

do.end72.i.i:                                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex46.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex46.i, i32 noundef 0) #9
  %64 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i, align 4
  %mask.i48.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %66 = ptrtoint ptr %mask.i48.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mask.i48.i, align 4
  %or.i49.i = or i32 %67, 128
  store i32 %or.i49.i, ptr %mask.i48.i, align 4
  %68 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %69, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.36, i32 noundef %65) #9
  %lprx_rssi_threshold.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 4
  %70 = ptrtoint ptr %lprx_rssi_threshold.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %65, ptr %lprx_rssi_threshold.i.i, align 4
  br label %iwl_dbgfs_update_pm.exit.i

do.end80.i.i:                                     ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex53.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex53.i, i32 noundef 0) #9
  %71 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i, align 4
  %mask.i55.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %73 = ptrtoint ptr %mask.i55.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mask.i55.i, align 4
  %or.i56.i = or i32 %74, 256
  store i32 %or.i56.i, ptr %mask.i55.i, align 4
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %76, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.37, i32 noundef %72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool84.i.i = icmp ne i32 %72, 0
  %snooze_ena.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 8
  %frombool85.i.i = zext i1 %tobool84.i.i to i8
  %77 = ptrtoint ptr %snooze_ena.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %frombool85.i.i, ptr %snooze_ena.i.i, align 4
  br label %iwl_dbgfs_update_pm.exit.i

do.end90.i.i:                                     ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex60.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex60.i, i32 noundef 0) #9
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i, align 4
  %mask.i62.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %80 = ptrtoint ptr %mask.i62.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mask.i62.i, align 4
  %or.i63.i = or i32 %81, 512
  store i32 %or.i63.i, ptr %mask.i62.i, align 4
  %82 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %83, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.38, i32 noundef %79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool94.i.i = icmp ne i32 %79, 0
  %uapsd_misbehaving.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 9
  %frombool95.i.i = zext i1 %tobool94.i.i to i8
  %84 = ptrtoint ptr %uapsd_misbehaving.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %frombool95.i.i, ptr %uapsd_misbehaving.i.i, align 1
  br label %iwl_dbgfs_update_pm.exit.i

do.end100.i.i:                                    ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %85 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i, align 4
  %mask.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %87 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mask.i.i, align 4
  %or.i.i = or i32 %88, 1024
  store i32 %or.i.i, ptr %mask.i.i, align 4
  %89 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %10, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %90, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_update_pm, ptr noundef nonnull @.str.39, i32 noundef %86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool104.i.i = icmp ne i32 %86, 0
  %use_ps_poll.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2
  %frombool105.i.i = zext i1 %tobool104.i.i to i8
  %91 = ptrtoint ptr %use_ps_poll.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %frombool105.i.i, ptr %use_ps_poll.i.i, align 2
  br label %iwl_dbgfs_update_pm.exit.i

iwl_dbgfs_update_pm.exit.i:                       ; preds = %do.end100.i.i, %do.end90.i.i, %do.end80.i.i, %do.end72.i.i, %do.end60.i.i, %do.end52.i.i, %do.end44.i.i, %do.end35.i.i, %do.end24.i.i, %if.end.i.i10
  %mutex7.i = phi ptr [ %mutex2.i, %if.end.i.i10 ], [ %mutex11.i, %do.end24.i.i ], [ %mutex18.i, %do.end35.i.i ], [ %mutex25.i, %do.end44.i.i ], [ %mutex32.i, %do.end52.i.i ], [ %mutex39.i, %do.end60.i.i ], [ %mutex46.i, %do.end72.i.i ], [ %mutex53.i, %do.end80.i.i ], [ %mutex60.i, %do.end90.i.i ], [ %mutex.i, %do.end100.i.i ]
  %call100.i = call i32 @iwl_mvm_power_update_mac(ptr noundef %10) #9
  call void @mutex_unlock(ptr noundef %mutex7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool102.not.i = icmp eq i32 %call100.i, 0
  %spec.select.i = select i1 %tobool102.not.i, i32 %3, i32 %call100.i
  br label %iwl_dbgfs_pm_params_write.exit

iwl_dbgfs_pm_params_write.exit:                   ; preds = %iwl_dbgfs_update_pm.exit.i, %if.then83.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.else80.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then74.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then65.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.end57.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then52.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then43.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then34.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then25.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then16.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then7.i.iwl_dbgfs_pm_params_write.exit_crit_edge, %if.then.i8.iwl_dbgfs_pm_params_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %iwl_dbgfs_update_pm.exit.i ], [ -22, %if.then.i8.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then7.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then16.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then25.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then34.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then43.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then52.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.end57.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then65.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then74.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.then83.i.iwl_dbgfs_pm_params_write.exit_crit_edge ], [ -22, %if.else80.i.iwl_dbgfs_pm_params_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_pm_params_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_pm_params_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_mac_dbgfs_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_tx_pwr_lmt_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %txpower = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 42
  %3 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txpower, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.40, i32 noundef %4) #9
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_mac_params_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #9
  %4 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %ap_sta_id2 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1
  %5 = ptrtoint ptr %ap_sta_id2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ap_sta_id2, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p2p.i, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i201 = icmp eq i8 %10, 0
  %switch.tableidx222 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx222)
  %11 = icmp ult i32 %switch.tableidx222, 10
  br i1 %tobool.not.i201, label %ieee80211_vif_type_p2p.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  br i1 %11, label %switch.hole_check, label %if.then.i.i.sw.epilog_crit_edge

if.then.i.i.sw.epilog_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

ieee80211_vif_type_p2p.exit:                      ; preds = %entry
  br i1 %11, label %switch.hole_check223, label %ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge

ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge:  ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.then.i.i
  %switch.maskindex = trunc i32 %switch.tableidx222 to i16
  %switch.shifted = lshr i16 903, %switch.maskindex
  %12 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %switch.lobit.not = icmp eq i16 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.hole_check.sw.epilog.sink.split_crit_edge

switch.hole_check.sw.epilog.sink.split_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.hole_check223:                             ; preds = %ieee80211_vif_type_p2p.exit
  %switch.maskindex225 = trunc i32 %switch.tableidx222 to i16
  %switch.shifted226 = lshr i16 903, %switch.maskindex225
  %13 = and i16 %switch.shifted226, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %switch.lobit227.not = icmp eq i16 %13, 0
  br i1 %switch.lobit227.not, label %switch.hole_check223.sw.epilog_crit_edge, label %switch.hole_check223.sw.epilog.sink.split_crit_edge

switch.hole_check223.sw.epilog.sink.split_crit_edge: ; preds = %switch.hole_check223
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

switch.hole_check223.sw.epilog_crit_edge:         ; preds = %switch.hole_check223
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %switch.hole_check223.sw.epilog.sink.split_crit_edge, %switch.hole_check.sw.epilog.sink.split_crit_edge
  %switch.table.iwl_dbgfs_mac_params_read.87.sink = phi ptr [ @switch.table.iwl_dbgfs_mac_params_read, %switch.hole_check.sw.epilog.sink.split_crit_edge ], [ @switch.table.iwl_dbgfs_mac_params_read.87, %switch.hole_check223.sw.epilog.sink.split_crit_edge ]
  %switch.gep228 = getelementptr inbounds [10 x ptr], ptr %switch.table.iwl_dbgfs_mac_params_read.87.sink, i32 0, i32 %switch.tableidx222
  %14 = ptrtoint ptr %switch.gep228 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load229 = load ptr, ptr %switch.gep228, align 4
  %call33 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 512, ptr noundef nonnull %switch.load229) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %switch.hole_check223.sw.epilog_crit_edge, %switch.hole_check.sw.epilog_crit_edge, %ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge, %if.then.i.i.sw.epilog_crit_edge
  %pos.0 = phi i32 [ 0, %ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge ], [ 0, %if.then.i.i.sw.epilog_crit_edge ], [ %call33, %sw.epilog.sink.split ], [ 0, %switch.hole_check.sw.epilog_crit_edge ], [ 0, %switch.hole_check223.sw.epilog_crit_edge ]
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %pos.0
  %sub37 = sub i32 512, %pos.0
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id, align 4
  %conv = zext i16 %16 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %17 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %color, align 2
  %conv38 = zext i16 %18 to i32
  %call39 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv38) #9
  %add40 = add i32 %call39, %pos.0
  %add.ptr42 = getelementptr i8, ptr %buf, i32 %add40
  %sub43 = sub i32 512, %add40
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bss_conf, align 8
  %call44 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.48, ptr noundef %20) #9
  %add45 = add i32 %call44, %add40
  %add.ptr47 = getelementptr i8, ptr %buf, i32 %add45
  %sub48 = sub i32 512, %add45
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id, align 4
  %idxprom = zext i16 %22 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %3, i32 0, i32 133, i32 7, i32 2, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %call50 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.49, i32 noundef %24) #9
  %add51 = add i32 %call50, %add45
  %add.ptr53 = getelementptr i8, ptr %buf, i32 %add51
  %sub54 = sub i32 512, %add51
  %call55 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.50) #9
  %add56 = add i32 %add51, %call55
  %add.ptr59 = getelementptr i8, ptr %buf, i32 %add56
  %sub60 = sub i32 512, %add56
  %arrayidx61 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 26, i32 2
  %25 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx61, align 2
  %conv62 = zext i16 %26 to i32
  %cw_min = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 0, i32 1
  %27 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cw_min, align 2
  %conv65 = zext i16 %28 to i32
  %cw_max = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 26, i32 3
  %29 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cw_max, align 2
  %conv68 = zext i16 %30 to i32
  %aifs = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 0, i32 3
  %31 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %aifs, align 2
  %conv71 = zext i8 %32 to i32
  %uapsd = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 26, i32 4
  %33 = ptrtoint ptr %uapsd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %uapsd, align 2, !range !207
  %35 = zext i8 %34 to i32
  %call75 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %conv62, i32 noundef %conv65, i32 noundef %conv68, i32 noundef %conv71, i32 noundef %35) #9
  %add76 = add i32 %call75, %add56
  %add.ptr59.1 = getelementptr i8, ptr %buf, i32 %add76
  %sub60.1 = sub i32 512, %add76
  %arrayidx61.1 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx61.1, align 2
  %conv62.1 = zext i16 %37 to i32
  %cw_min.1 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 27
  %38 = ptrtoint ptr %cw_min.1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cw_min.1, align 2
  %conv65.1 = zext i16 %39 to i32
  %cw_max.1 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 1, i32 2
  %40 = ptrtoint ptr %cw_max.1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cw_max.1, align 2
  %conv68.1 = zext i16 %41 to i32
  %aifs.1 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 28
  %42 = ptrtoint ptr %aifs.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %aifs.1, align 2
  %conv71.1 = zext i8 %43 to i32
  %uapsd.1 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 1, i32 5
  %44 = ptrtoint ptr %uapsd.1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %uapsd.1, align 2, !range !207
  %46 = zext i8 %45 to i32
  %call75.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59.1, i32 noundef %sub60.1, ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef %conv62.1, i32 noundef %conv65.1, i32 noundef %conv68.1, i32 noundef %conv71.1, i32 noundef %46) #9
  %add76.1 = add i32 %call75.1, %add76
  %add.ptr59.2 = getelementptr i8, ptr %buf, i32 %add76.1
  %sub60.2 = sub i32 512, %add76.1
  %arrayidx61.2 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 30
  %47 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx61.2, align 2
  %conv62.2 = zext i16 %48 to i32
  %cw_min.2 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 2, i32 1
  %49 = ptrtoint ptr %cw_min.2 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cw_min.2, align 2
  %conv65.2 = zext i16 %50 to i32
  %cw_max.2 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 31
  %51 = ptrtoint ptr %cw_max.2 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cw_max.2, align 2
  %conv68.2 = zext i16 %52 to i32
  %aifs.2 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 2, i32 3
  %53 = ptrtoint ptr %aifs.2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %aifs.2, align 2
  %conv71.2 = zext i8 %54 to i32
  %uapsd.2 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 32
  %55 = ptrtoint ptr %uapsd.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %uapsd.2, align 2, !range !207
  %57 = zext i8 %56 to i32
  %call75.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59.2, i32 noundef %sub60.2, ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef %conv62.2, i32 noundef %conv65.2, i32 noundef %conv68.2, i32 noundef %conv71.2, i32 noundef %57) #9
  %add76.2 = add i32 %call75.2, %add76.1
  %add.ptr59.3 = getelementptr i8, ptr %buf, i32 %add76.2
  %sub60.3 = sub i32 512, %add76.2
  %arrayidx61.3 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 3
  %58 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx61.3, align 2
  %conv62.3 = zext i16 %59 to i32
  %cw_min.3 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 32, i32 2
  %60 = ptrtoint ptr %cw_min.3 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %cw_min.3, align 2
  %conv65.3 = zext i16 %61 to i32
  %cw_max.3 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 3, i32 2
  %62 = ptrtoint ptr %cw_max.3 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cw_max.3, align 2
  %conv68.3 = zext i16 %63 to i32
  %aifs.3 = getelementptr %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 32, i32 3
  %64 = ptrtoint ptr %aifs.3 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %aifs.3, align 2
  %conv71.3 = zext i8 %65 to i32
  %uapsd.3 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 3, i32 5
  %66 = ptrtoint ptr %uapsd.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %uapsd.3, align 2, !range !207
  %68 = zext i8 %67 to i32
  %call75.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59.3, i32 noundef %sub60.3, ptr noundef nonnull @.str.51, i32 noundef 3, i32 noundef %conv62.3, i32 noundef %conv65.3, i32 noundef %conv68.3, i32 noundef %conv71.3, i32 noundef %68) #9
  %add76.3 = add i32 %call75.3, %add76.2
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp77 = icmp eq i32 %70, 2
  br i1 %cmp77, label %land.lhs.true, label %sw.epilog.if.end93_crit_edge

sw.epilog.if.end93_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

land.lhs.true:                                    ; preds = %sw.epilog
  %conv79 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp80.not = icmp eq i8 %6, -1
  br i1 %cmp80.not, label %land.lhs.true.if.end93_crit_edge, label %if.then

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then:                                          ; preds = %land.lhs.true
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 2
  %71 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %72, i32 0, i32 5, i32 6
  %73 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %conv79)
  %cmp.not.i = icmp ugt i32 %74, %conv79
  br i1 %cmp.not.i, label %do.body.i, label %if.then.if.end93_crit_edge

if.then.if.end93_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.body.i:                                        ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 6, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i202 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i202, label %land.lhs.true.i203, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i203:                               ; preds = %do.body.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i203.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i203.do.end.i_crit_edge:            ; preds = %land.lhs.true.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i203
  %.b16.i = load i1, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 1204, ptr noundef nonnull @.str.57) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i203.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %3, i32 0, i32 44, i32 %conv79
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %76, null
  %cmp.i.i = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %76, i32 0, i32 29
  %tobool83.not = icmp eq ptr %drv_priv.i.i, null
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %tobool83.not
  br i1 %or.cond, label %do.end.i.if.end93_crit_edge, label %if.then84

do.end.i.if.end93_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then84:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr86 = getelementptr i8, ptr %buf, i32 %add76.3
  %sub87 = sub i32 512, %add76.3
  %bt_reduced_txpower = getelementptr inbounds %struct.ieee80211_sta, ptr %76, i32 1, i32 1
  %77 = ptrtoint ptr %bt_reduced_txpower to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bt_reduced_txpower, align 8, !range !207
  %79 = zext i8 %78 to i32
  %call91 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr86, i32 noundef %sub87, ptr noundef nonnull @.str.52, i32 noundef %conv79, i32 noundef %79) #9
  %add92 = add i32 %call91, %add76.3
  br label %if.end93

if.end93:                                         ; preds = %if.then84, %do.end.i.if.end93_crit_edge, %if.then.if.end93_crit_edge, %land.lhs.true.if.end93_crit_edge, %sw.epilog.if.end93_crit_edge
  %pos.3 = phi i32 [ %add76.3, %land.lhs.true.if.end93_crit_edge ], [ %add76.3, %sw.epilog.if.end93_crit_edge ], [ %add92, %if.then84 ], [ %add76.3, %if.then.if.end93_crit_edge ], [ %add76.3, %do.end.i.if.end93_crit_edge ]
  %80 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %83, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end93.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end93.rcu_read_lock.exit_crit_edge:            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end93
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 696, ptr noundef nonnull @.str.59) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end93.rcu_read_lock.exit_crit_edge
  %chanctx_conf94 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 9
  %84 = ptrtoint ptr %chanctx_conf94 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %chanctx_conf94, align 4
  %call96 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %rcu_read_lock.exit.do.end106_crit_edge

rcu_read_lock.exit.do.end106_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

land.lhs.true98:                                  ; preds = %rcu_read_lock.exit
  %call99 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true98.do.end106_crit_edge, label %land.lhs.true101

land.lhs.true98.do.end106_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

land.lhs.true101:                                 ; preds = %land.lhs.true98
  %.b200 = load i1, ptr @iwl_dbgfs_mac_params_read.__warned, align 1
  br i1 %.b200, label %land.lhs.true101.do.end106_crit_edge, label %if.then103

land.lhs.true101.do.end106_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

if.then103:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_dbgfs_mac_params_read.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 237, ptr noundef nonnull @.str.54) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then103, %land.lhs.true101.do.end106_crit_edge, %land.lhs.true98.do.end106_crit_edge, %rcu_read_lock.exit.do.end106_crit_edge
  %tobool108.not = icmp eq ptr %85, null
  br i1 %tobool108.not, label %do.end106.if.end117_crit_edge, label %if.then109

do.end106.if.end117_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then109:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr111 = getelementptr i8, ptr %buf, i32 %pos.3
  %sub112 = sub i32 512, %pos.3
  %rx_chains_static = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %rx_chains_static to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %rx_chains_static, align 4
  %conv113 = zext i8 %87 to i32
  %rx_chains_dynamic = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %rx_chains_dynamic to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rx_chains_dynamic, align 1
  %conv114 = zext i8 %89 to i32
  %call115 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.55, i32 noundef %conv113, i32 noundef %conv114) #9
  %add116 = add i32 %call115, %pos.3
  br label %if.end117

if.end117:                                        ; preds = %if.then109, %do.end106.if.end117_crit_edge
  %pos.4 = phi i32 [ %add116, %if.then109 ], [ %pos.3, %do.end106.if.end117_crit_edge ]
  %call.i204 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i204, label %if.end117.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i207

if.end117.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i207:                               ; preds = %if.end117
  %call1.i205 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i205)
  %tobool.not.i206 = icmp eq i32 %call1.i205, 0
  br i1 %tobool.not.i206, label %land.lhs.true.i207.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i209

land.lhs.true.i207.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i209:                              ; preds = %land.lhs.true.i207
  %.b4.i208 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i208, label %land.lhs.true2.i209.rcu_read_unlock.exit_crit_edge, label %if.then.i210

land.lhs.true2.i209.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i210:                                     ; preds = %land.lhs.true2.i209
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i210, %land.lhs.true2.i209.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i207.rcu_read_unlock.exit_crit_edge, %if.end117.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %90 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i211 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i211 to ptr
  %preempt_count.i.i.i.i212 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i212, align 4
  %sub.i.i.i = add i32 %93, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i212, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  %call120 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.4) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #9
  ret i32 %call120
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_low_latency_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %format = alloca [88 x i8], align 1
  %buf = alloca [89 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %2 = call ptr @memcpy(ptr %format, ptr @__const.iwl_dbgfs_low_latency_read.format, i32 88)
  call void @llvm.lifetime.start.p0(i64 89, ptr nonnull %buf) #9
  %3 = call ptr @memset(ptr %buf, i32 0, i32 89)
  %low_latency = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 11
  %4 = ptrtoint ptr %low_latency to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %low_latency, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %conv = zext i8 %bf.lshr to i32
  %and = and i32 %conv, 1
  %and7 = lshr i32 %conv, 1
  %and7.lobit = and i32 %and7, 1
  %and17 = lshr i32 %conv, 2
  %and17.lobit = and i32 %and17, 1
  %and27 = lshr i32 %conv, 3
  %and27.lobit = and i32 %and27, 1
  %and37 = lshr i32 %conv, 4
  %and37.lobit = and i32 %and37, 1
  %and47.lobit = lshr i32 %conv, 5
  %5 = lshr i8 %bf.load, 1
  %.lobit = and i8 %5, 1
  %6 = zext i8 %.lobit to i32
  %call60 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 88, ptr noundef nonnull %format, i32 noundef %and, i32 noundef %and7.lobit, i32 noundef %and17.lobit, i32 noundef %and27.lobit, i32 noundef %and37.lobit, i32 noundef %and47.lobit, i32 noundef %6) #9
  %call62 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call60) #9
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  ret i32 %call62
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_low_latency_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 10)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 9)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !209

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #9
  %5 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !210
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !209

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #9
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %value.i, align 1, !annotation !213
  %call2.i = call i32 @kstrtou8(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_low_latency_write.exit_crit_edge

if.end.iwl_dbgfs_low_latency_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_low_latency_write.exit

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i = icmp ugt i8 %13, 1
  br i1 %cmp.i, label %if.end.i.iwl_dbgfs_low_latency_write.exit_crit_edge, label %if.end5.i

if.end.i.iwl_dbgfs_low_latency_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_low_latency_write.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.i = icmp ne i8 %15, 0
  %call7.i = call i32 @iwl_mvm_update_low_latency(ptr noundef %10, ptr noundef %1, i1 noundef zeroext %tobool6.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %iwl_dbgfs_low_latency_write.exit

iwl_dbgfs_low_latency_write.exit:                 ; preds = %if.end5.i, %if.end.i.iwl_dbgfs_low_latency_write.exit_crit_edge, %if.end.iwl_dbgfs_low_latency_write.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.end5.i ], [ %call2.i, %if.end.iwl_dbgfs_low_latency_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_low_latency_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_low_latency_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_low_latency_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_update_low_latency(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_low_latency_force_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 10)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 9)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !209

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #9
  %5 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !210
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !209

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #9
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %value.i, align 1, !annotation !213
  %call2.i = call i32 @kstrtou8(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_low_latency_force_write.exit_crit_edge

if.end.iwl_dbgfs_low_latency_force_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_low_latency_force_write.exit

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i = icmp ugt i8 %13, 3
  br i1 %cmp.i, label %if.end.i.iwl_dbgfs_low_latency_force_write.exit_crit_edge, label %if.end5.i

if.end.i.iwl_dbgfs_low_latency_force_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_low_latency_force_write.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp7.i = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp13.i = icmp eq i8 %15, 1
  %call15.i = call i32 @iwl_mvm_update_low_latency(ptr noundef %10, ptr noundef %1, i1 noundef zeroext %cmp13.i, i32 noundef 32) #9
  %call16.i = call i32 @iwl_mvm_update_low_latency(ptr noundef %10, ptr noundef %1, i1 noundef zeroext %cmp7.i, i32 noundef 16) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %iwl_dbgfs_low_latency_force_write.exit

iwl_dbgfs_low_latency_force_write.exit:           ; preds = %if.end5.i, %if.end.i.iwl_dbgfs_low_latency_force_write.exit_crit_edge, %if.end.iwl_dbgfs_low_latency_force_write.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.end5.i ], [ %call2.i, %if.end.iwl_dbgfs_low_latency_force_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_low_latency_force_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_low_latency_force_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_low_latency_force_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_uapsd_misbehaving_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %uapsd_misbehaving_bssid = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1, i32 4
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.61, ptr noundef %uapsd_misbehaving_bssid)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_uapsd_misbehaving_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 20)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 19)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !209

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #9
  %5 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !210
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !209

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 8
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %uapsd_misbehaving_bssid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1, i32 4
  %call2.i = call zeroext i1 @mac_pton(ptr noundef nonnull %buf, ptr noundef %uapsd_misbehaving_bssid.i) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  %spec.select.i = select i1 %call2.i, i32 %3, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rx_phyinfo_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 8
  %dbgfs_rx_phyinfo = getelementptr inbounds %struct.iwl_mvm, ptr %4, i32 0, i32 85
  %5 = ptrtoint ptr %dbgfs_rx_phyinfo to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dbgfs_rx_phyinfo, align 8
  %conv = zext i16 %6 to i32
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.62, i32 noundef %conv) #9
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_rx_phyinfo_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value.i = alloca i16, align 2
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 10)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 9)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !209

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #9
  %5 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !210
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !209

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #9
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %value.i, align 2, !annotation !213
  %call2.i = call i32 @kstrtou16(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_rx_phyinfo_write.exit_crit_edge

if.end.iwl_dbgfs_rx_phyinfo_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_rx_phyinfo_write.exit

if.end.i:                                         ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %12 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i8 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i9 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i9, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i10

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i10:                              ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i10.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i10.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i10
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i11

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i11:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 696, ptr noundef nonnull @.str.59) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i11, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i10.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf3.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %chanctx_conf3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %chanctx_conf3.i, align 4
  %call5.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end14.i_crit_edge

rcu_read_lock.exit.i.do.end14.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call7.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end14.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @iwl_dbgfs_rx_phyinfo_write.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true9.i.do.end14.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.end14.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_dbgfs_rx_phyinfo_write.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 600, ptr noundef nonnull @.str.54) #9
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then11.i, %land.lhs.true9.i.do.end14.i_crit_edge, %land.lhs.true.i.do.end14.i_crit_edge, %rcu_read_lock.exit.i.do.end14.i_crit_edge
  %tobool16.not.i = icmp eq ptr %17, null
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %do.end14.i
  %call.i2.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2.i, label %if.then17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.then17.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.then17.i
  %call1.i3.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.then17.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %18 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i9.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %iwl_dbgfs_rx_phyinfo_write.exit

if.end19.i:                                       ; preds = %do.end14.i
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %drv_priv.i, align 4
  %idxprom.i = zext i16 %23 to i32
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %10, i32 0, i32 87, i32 %idxprom.i
  %call.i11.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i11.i, label %if.end19.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true.i14.i

if.end19.i.rcu_read_unlock.exit21.i_crit_edge:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit21.i

land.lhs.true.i14.i:                              ; preds = %if.end19.i
  %call1.i12.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit21.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit21.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 724, ptr noundef nonnull @.str.60) #9
  br label %rcu_read_unlock.exit21.i

rcu_read_unlock.exit21.i:                         ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, %if.end19.i.rcu_read_unlock.exit21.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %24 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i18.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i20.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i20.i, ptr %preempt_count.i.i.i.i19.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %value.i, align 2
  %dbgfs_rx_phyinfo.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 85
  %30 = ptrtoint ptr %dbgfs_rx_phyinfo.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %dbgfs_rx_phyinfo.i, align 8
  %min_def.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %17, i32 0, i32 1
  %rx_chains_static.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %17, i32 0, i32 2
  %31 = ptrtoint ptr %rx_chains_static.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_chains_static.i, align 4
  %rx_chains_dynamic.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %17, i32 0, i32 3
  %33 = ptrtoint ptr %rx_chains_dynamic.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_chains_dynamic.i, align 1
  %call20.i = call i32 @iwl_mvm_phy_ctxt_changed(ptr noundef %10, ptr noundef %arrayidx.i, ptr noundef %min_def.i, i8 noundef zeroext %32, i8 noundef zeroext %34) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool22.not.i = icmp eq i32 %call20.i, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 %3, i32 %call20.i
  br label %iwl_dbgfs_rx_phyinfo_write.exit

iwl_dbgfs_rx_phyinfo_write.exit:                  ; preds = %rcu_read_unlock.exit21.i, %rcu_read_unlock.exit.i, %if.end.iwl_dbgfs_rx_phyinfo_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %rcu_read_unlock.exit21.i ], [ -22, %rcu_read_unlock.exit.i ], [ %call2.i, %if.end.iwl_dbgfs_rx_phyinfo_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_rx_phyinfo_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_rx_phyinfo_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_phy_ctxt_changed(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_quota_min_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #9
  %dbgfs_quota_min = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 4
  %2 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %3 = ptrtoint ptr %dbgfs_quota_min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dbgfs_quota_min, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull @.str.63, i32 noundef %4) #9
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_quota_min_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value.i = alloca i16, align 2
  %ret.i = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !209

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #9
  %5 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !210
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !209

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #9
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %value.i, align 2, !annotation !213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #9
  %call2.i = call i32 @kstrtou16(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %value.i) #9
  %12 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_quota_min_write.exit_crit_edge

if.end.iwl_dbgfs_quota_min_write.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_quota_min_write.exit

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 95, i16 %14)
  %cmp.i = icmp ugt i16 %14, 95
  br i1 %cmp.i, label %if.end.i.iwl_dbgfs_quota_min_write.exit_crit_edge, label %if.end5.i

if.end.i.iwl_dbgfs_quota_min_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_quota_min_write.exit

if.end5.i:                                        ; preds = %if.end.i
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %dbgfs_quota_min.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %dbgfs_quota_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dbgfs_quota_min.i, align 4
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_interfaces(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @iwl_dbgfs_quota_check, ptr noundef nonnull %ret.i) #9
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.i = icmp eq i32 %19, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end5.i.if.end12.i_crit_edge

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %value.i, align 2
  %conv9.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %dbgfs_quota_min.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv9.i, ptr %dbgfs_quota_min.i, align 4
  %call11.i = call i32 @iwl_mvm_update_quotas(ptr noundef %10, i1 noundef zeroext false, ptr noundef null) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end12.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  %23 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not.i = icmp eq i32 %24, 0
  %spec.select.i = select i1 %tobool14.not.i, i32 %3, i32 %24
  br label %iwl_dbgfs_quota_min_write.exit

iwl_dbgfs_quota_min_write.exit:                   ; preds = %if.end12.i, %if.end.i.iwl_dbgfs_quota_min_write.exit_crit_edge, %if.end.iwl_dbgfs_quota_min_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end12.i ], [ %call2.i, %if.end.iwl_dbgfs_quota_min_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_quota_min_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_quota_min_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_quota_min_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_dbgfs_quota_check(ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbgfs_quota_min = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %dbgfs_quota_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dbgfs_quota_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -22, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_update_quotas(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_os_device_timediff_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %curr_gp2 = alloca i32, align 4
  %curr_os = alloca i64, align 8
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_gp2) #9
  %4 = ptrtoint ptr %curr_gp2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %curr_gp2, align 4, !annotation !213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %curr_os) #9
  %5 = ptrtoint ptr %curr_os to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %curr_os, align 8, !annotation !213
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %6 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @iwl_mvm_get_sync_time(ptr noundef %3, i32 noundef 7, ptr noundef nonnull %curr_gp2, ptr noundef nonnull %curr_os, ptr noundef null) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  %7 = ptrtoint ptr %curr_os to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %curr_os, align 8
  %9 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #12, !srcloc !216
  %asmresult.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i = extractvalue { i64, i32 } %9, 1
  %10 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i, i32 %asmresult4.i) #12, !srcloc !217
  %asmresult10.i = extractvalue { i64, i32 } %10, 0
  %div161274 = lshr i64 %asmresult10.i, 9
  %11 = ptrtoint ptr %curr_os to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %div161274, ptr %curr_os, align 8
  %12 = ptrtoint ptr %curr_gp2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %curr_gp2, align 4
  %conv183 = zext i32 %13 to i64
  %sub184 = sub nsw i64 %div161274, %conv183
  %call186 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.64, i64 noundef %sub184) #9
  %call189 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call186) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %curr_os) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_gp2) #9
  ret i32 %call189
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_get_sync_time(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_bf_params_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %cmd = alloca %struct.iwl_beacon_filter_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cmd) #9
  %3 = call ptr @memcpy(ptr %cmd, ptr @__const.iwl_dbgfs_bf_params_read.cmd, i32 60)
  call void @iwl_mvm_beacon_filter_debugfs_parameters(ptr noundef %1, ptr noundef nonnull %cmd) #9
  %bf_data = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 14
  %4 = ptrtoint ptr %bf_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bf_data, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 16777216
  %6 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %10) #9
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %call2
  %sub5 = sub i32 256, %call2
  %bf_roaming_energy_delta = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %bf_roaming_energy_delta to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bf_roaming_energy_delta, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.66, i32 noundef %13) #9
  %add7 = add i32 %call6, %call2
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add7
  %sub10 = sub i32 256, %add7
  %bf_roaming_state = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %bf_roaming_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bf_roaming_state, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.67, i32 noundef %16) #9
  %add12 = add i32 %call11, %add7
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add12
  %sub15 = sub i32 256, %add12
  %bf_temp_threshold = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %bf_temp_threshold to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bf_temp_threshold, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.68, i32 noundef %19) #9
  %add17 = add i32 %call16, %add12
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %add17
  %sub20 = sub i32 256, %add17
  %bf_temp_fast_filter = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %bf_temp_fast_filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bf_temp_fast_filter, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.69, i32 noundef %22) #9
  %add22 = add i32 %call21, %add17
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %add22
  %sub25 = sub i32 256, %add22
  %bf_temp_slow_filter = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 5
  %23 = ptrtoint ptr %bf_temp_slow_filter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bf_temp_slow_filter, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %call26 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.70, i32 noundef %25) #9
  %add27 = add i32 %call26, %add22
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %add27
  %sub30 = sub i32 256, %add27
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %call32 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.71, i32 noundef %28) #9
  %add33 = add i32 %call32, %add27
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %add33
  %sub36 = sub i32 256, %add33
  %bf_debug_flag = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 7
  %29 = ptrtoint ptr %bf_debug_flag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bf_debug_flag, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %call37 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.72, i32 noundef %31) #9
  %add38 = add i32 %call37, %add33
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %add38
  %sub41 = sub i32 256, %add38
  %bf_escape_timer = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 8
  %32 = ptrtoint ptr %bf_escape_timer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bf_escape_timer, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.73, i32 noundef %34) #9
  %add43 = add i32 %call42, %add38
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %add43
  %sub46 = sub i32 256, %add43
  %ba_escape_timer = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 9
  %35 = ptrtoint ptr %ba_escape_timer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ba_escape_timer, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %call47 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.74, i32 noundef %37) #9
  %add48 = add i32 %call47, %add43
  %add.ptr50 = getelementptr i8, ptr %buf, i32 %add48
  %sub51 = sub i32 256, %add48
  %ba_enable_beacon_abort = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 10
  %38 = ptrtoint ptr %ba_enable_beacon_abort to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ba_enable_beacon_abort, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %call52 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.75, i32 noundef %40) #9
  %add53 = add i32 %call52, %add48
  %call55 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add53) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cmd) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  ret i32 %call55
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_bf_params_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 256)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 255)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !208
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !209

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #9
  %5 = call i32 @llvm.read_register.i32(metadata !197) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !210
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !209

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #9
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %value.i, align 4, !annotation !213
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @.str.76, ptr noundef nonnull dereferenceable(16) %buf, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.then.i8, label %if.else.i

if.then.i8:                                       ; preds = %if.end
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i32 16
  %call3.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i8.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then.i8.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end.i:                                         ; preds = %if.then.i8
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %13)
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %if.end.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb.i.i

if.end.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else.i:                                        ; preds = %if.end
  %bcmp11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) @.str.77, ptr noundef nonnull dereferenceable(24) %buf, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp11)
  %tobool10.not.i = icmp eq i32 %bcmp11, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else22.i

if.then11.i:                                      ; preds = %if.else.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %buf, i32 24
  %call13.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr12.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 1
  br i1 %cmp14.not.i, label %if.end16.i, label %if.then11.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then11.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end16.i:                                       ; preds = %if.then11.i
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %17 = icmp ugt i32 %16, 255
  br i1 %17, label %if.end16.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb2.i.i

if.end16.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else22.i:                                      ; preds = %if.else.i
  %bcmp12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) @.str.78, ptr noundef nonnull dereferenceable(17) %buf, i32 17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp12)
  %tobool24.not.i = icmp eq i32 %bcmp12, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.else36.i

if.then25.i:                                      ; preds = %if.else22.i
  %add.ptr26.i = getelementptr inbounds i8, ptr %buf, i32 17
  %call27.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr26.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27.i)
  %cmp28.not.i = icmp eq i32 %call27.i, 1
  br i1 %cmp28.not.i, label %if.end30.i, label %if.then25.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then25.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end30.i:                                       ; preds = %if.then25.i
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %20 = icmp ugt i32 %19, 255
  br i1 %20, label %if.end30.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb3.i.i

if.end30.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else36.i:                                      ; preds = %if.else22.i
  %bcmp13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) @.str.79, ptr noundef nonnull dereferenceable(18) %buf, i32 18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp13)
  %tobool38.not.i = icmp eq i32 %bcmp13, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.else50.i

if.then39.i:                                      ; preds = %if.else36.i
  %add.ptr40.i = getelementptr inbounds i8, ptr %buf, i32 18
  %call41.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr40.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41.i)
  %cmp42.not.i = icmp eq i32 %call41.i, 1
  br i1 %cmp42.not.i, label %if.end44.i, label %if.then39.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then39.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end44.i:                                       ; preds = %if.then39.i
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %22)
  %23 = icmp ugt i32 %22, 255
  br i1 %23, label %if.end44.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb4.i.i

if.end44.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else50.i:                                      ; preds = %if.else36.i
  %bcmp14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) @.str.80, ptr noundef nonnull dereferenceable(20) %buf, i32 20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp14)
  %tobool52.not.i = icmp eq i32 %bcmp14, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.else64.i

if.then53.i:                                      ; preds = %if.else50.i
  %add.ptr54.i = getelementptr inbounds i8, ptr %buf, i32 20
  %call55.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr54.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call55.i)
  %cmp56.not.i = icmp eq i32 %call55.i, 1
  br i1 %cmp56.not.i, label %if.end58.i, label %if.then53.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then53.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end58.i:                                       ; preds = %if.then53.i
  %24 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %25)
  %26 = icmp ugt i32 %25, 255
  br i1 %26, label %if.end58.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb5.i.i

if.end58.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else64.i:                                      ; preds = %if.else50.i
  %bcmp15 = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) @.str.81, ptr noundef nonnull dereferenceable(20) %buf, i32 20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15)
  %tobool66.not.i = icmp eq i32 %bcmp15, 0
  br i1 %tobool66.not.i, label %if.then67.i, label %if.else78.i

if.then67.i:                                      ; preds = %if.else64.i
  %add.ptr68.i = getelementptr inbounds i8, ptr %buf, i32 20
  %call69.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr68.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69.i)
  %cmp70.not.i = icmp eq i32 %call69.i, 1
  br i1 %cmp70.not.i, label %if.end72.i, label %if.then67.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then67.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end72.i:                                       ; preds = %if.then67.i
  %27 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %28)
  %29 = icmp ugt i32 %28, 255
  br i1 %29, label %if.end72.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb6.i.i

if.end72.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else78.i:                                      ; preds = %if.else64.i
  %bcmp16 = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) @.str.82, ptr noundef nonnull dereferenceable(24) %buf, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16)
  %tobool80.not.i = icmp eq i32 %bcmp16, 0
  br i1 %tobool80.not.i, label %if.then81.i, label %if.else92.i

if.then81.i:                                      ; preds = %if.else78.i
  %add.ptr82.i = getelementptr inbounds i8, ptr %buf, i32 24
  %call83.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr82.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call83.i)
  %cmp84.not.i = icmp eq i32 %call83.i, 1
  br i1 %cmp84.not.i, label %if.end86.i, label %if.then81.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then81.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end86.i:                                       ; preds = %if.then81.i
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %if.end86.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %land.lhs.true.i

if.end86.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else92.i:                                      ; preds = %if.else78.i
  %bcmp17 = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) @.str.83, ptr noundef nonnull dereferenceable(14) %buf, i32 14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp17)
  %tobool94.not.i = icmp eq i32 %bcmp17, 0
  br i1 %tobool94.not.i, label %if.then95.i, label %if.else106.i

if.then95.i:                                      ; preds = %if.else92.i
  %add.ptr96.i = getelementptr inbounds i8, ptr %buf, i32 14
  %call97.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr96.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call97.i)
  %cmp98.not.i = icmp eq i32 %call97.i, 1
  br i1 %cmp98.not.i, label %if.end100.i, label %if.then95.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then95.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end100.i:                                      ; preds = %if.then95.i
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %if.end100.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb8.i.i

if.end100.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else106.i:                                     ; preds = %if.else92.i
  %bcmp18 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @.str.84, ptr noundef nonnull dereferenceable(16) %buf, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp18)
  %tobool108.not.i = icmp eq i32 %bcmp18, 0
  br i1 %tobool108.not.i, label %if.then109.i, label %if.else120.i

if.then109.i:                                     ; preds = %if.else106.i
  %add.ptr110.i = getelementptr inbounds i8, ptr %buf, i32 16
  %call111.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr110.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call111.i)
  %cmp112.not.i = icmp eq i32 %call111.i, 1
  br i1 %cmp112.not.i, label %if.end114.i, label %if.then109.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then109.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end114.i:                                      ; preds = %if.then109.i
  %36 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %37)
  %38 = icmp ugt i32 %37, 1024
  br i1 %38, label %if.end114.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb9.i.i

if.end114.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else120.i:                                     ; preds = %if.else106.i
  %bcmp19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @.str.85, ptr noundef nonnull dereferenceable(16) %buf, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp19)
  %tobool122.not.i = icmp eq i32 %bcmp19, 0
  br i1 %tobool122.not.i, label %if.then123.i, label %if.else134.i

if.then123.i:                                     ; preds = %if.else120.i
  %add.ptr124.i = getelementptr inbounds i8, ptr %buf, i32 16
  %call125.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr124.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call125.i)
  %cmp126.not.i = icmp eq i32 %call125.i, 1
  br i1 %cmp126.not.i, label %if.end128.i, label %if.then123.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then123.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end128.i:                                      ; preds = %if.then123.i
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %40)
  %41 = icmp ugt i32 %40, 1024
  br i1 %41, label %if.end128.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb11.i.i

if.end128.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.else134.i:                                     ; preds = %if.else120.i
  %bcmp20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) @.str.86, ptr noundef nonnull dereferenceable(23) %buf, i32 23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp20)
  %tobool136.not.i = icmp eq i32 %bcmp20, 0
  br i1 %tobool136.not.i, label %if.then137.i, label %if.else134.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.else134.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.then137.i:                                     ; preds = %if.else134.i
  %add.ptr138.i = getelementptr inbounds i8, ptr %buf, i32 23
  %call139.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr138.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call139.i)
  %cmp140.not.i = icmp eq i32 %call139.i, 1
  br i1 %cmp140.not.i, label %if.end142.i, label %if.then137.i.iwl_dbgfs_bf_params_write.exit_crit_edge

if.then137.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

if.end142.i:                                      ; preds = %if.then137.i
  %42 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %if.end142.i.iwl_dbgfs_bf_params_write.exit_crit_edge, label %sw.bb10.i.i

if.end142.i.iwl_dbgfs_bf_params_write.exit_crit_edge: ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_dbgfs_bf_params_write.exit

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex13.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex13.i, i32 noundef 0) #9
  %45 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.i, align 4
  %mask.i14.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %mask.i14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask.i14.i, align 4
  %or.i15.i = or i32 %48, 1
  store i32 %or.i15.i, ptr %mask.i14.i, align 4
  %dbgfs_bf1.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 3
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb2.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex25.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex25.i, i32 noundef 0) #9
  %49 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value.i, align 4
  %mask.i26.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %mask.i26.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask.i26.i, align 4
  %or.i27.i = or i32 %52, 2
  store i32 %or.i27.i, ptr %mask.i26.i, align 4
  %bf_roaming_energy_delta.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 5
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb3.i.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex33.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex33.i, i32 noundef 0) #9
  %53 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value.i, align 4
  %mask.i34.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %mask.i34.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mask.i34.i, align 4
  %or.i35.i = or i32 %56, 4
  store i32 %or.i35.i, ptr %mask.i34.i, align 4
  %bf_roaming_state.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 7
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb4.i.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex41.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex41.i, i32 noundef 0) #9
  %57 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value.i, align 4
  %mask.i42.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %mask.i42.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask.i42.i, align 4
  %or.i43.i = or i32 %60, 8
  store i32 %or.i43.i, ptr %mask.i42.i, align 4
  %bf_temp_threshold.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 1
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb5.i.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex49.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex49.i, i32 noundef 0) #9
  %61 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value.i, align 4
  %mask.i50.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %mask.i50.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mask.i50.i, align 4
  %or.i51.i = or i32 %64, 16
  store i32 %or.i51.i, ptr %mask.i50.i, align 4
  %bf_temp_fast_filter.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 3
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb6.i.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex57.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex57.i, i32 noundef 0) #9
  %65 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %value.i, align 4
  %mask.i58.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %mask.i58.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mask.i58.i, align 4
  %or.i59.i = or i32 %68, 32
  store i32 %or.i59.i, ptr %mask.i58.i, align 4
  %bf_temp_slow_filter.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 5
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb8.i.i:                                       ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex73.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex73.i, i32 noundef 0) #9
  %69 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %value.i, align 4
  %mask.i74.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %mask.i74.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask.i74.i, align 4
  %or.i75.i = or i32 %72, 128
  store i32 %or.i75.i, ptr %mask.i74.i, align 4
  %bf_debug_flag.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 4
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb9.i.i:                                       ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex81.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex81.i, i32 noundef 0) #9
  %73 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %value.i, align 4
  %mask.i82.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %mask.i82.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mask.i82.i, align 4
  %or.i83.i = or i32 %76, 256
  store i32 %or.i83.i, ptr %mask.i82.i, align 4
  %bf_escape_timer.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 5
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb10.i.i:                                      ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex89.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex89.i, i32 noundef 0) #9
  %77 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %value.i, align 4
  %mask.i90.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %mask.i90.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mask.i90.i, align 4
  %or.i91.i = or i32 %80, 1024
  store i32 %or.i91.i, ptr %mask.i90.i, align 4
  %ba_enable_beacon_abort.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4
  br label %iwl_dbgfs_update_bf.exit.thread.i

sw.bb11.i.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %81 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %value.i, align 4
  %mask.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mask.i.i, align 4
  %or.i.i = or i32 %84, 512
  store i32 %or.i.i, ptr %mask.i.i, align 4
  %ba_escape_timer.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 6
  br label %iwl_dbgfs_update_bf.exit.thread.i

iwl_dbgfs_update_bf.exit.thread.i:                ; preds = %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %.ph.i = phi i32 [ %46, %sw.bb.i.i ], [ %50, %sw.bb2.i.i ], [ %54, %sw.bb3.i.i ], [ %58, %sw.bb4.i.i ], [ %62, %sw.bb5.i.i ], [ %66, %sw.bb6.i.i ], [ %70, %sw.bb8.i.i ], [ %74, %sw.bb9.i.i ], [ %78, %sw.bb10.i.i ], [ %82, %sw.bb11.i.i ]
  %mutex19.ph.i = phi ptr [ %mutex13.i, %sw.bb.i.i ], [ %mutex25.i, %sw.bb2.i.i ], [ %mutex33.i, %sw.bb3.i.i ], [ %mutex41.i, %sw.bb4.i.i ], [ %mutex49.i, %sw.bb5.i.i ], [ %mutex57.i, %sw.bb6.i.i ], [ %mutex73.i, %sw.bb8.i.i ], [ %mutex81.i, %sw.bb9.i.i ], [ %mutex89.i, %sw.bb10.i.i ], [ %mutex.i, %sw.bb11.i.i ]
  %ba_escape_timer.sink.i.ph.i = phi ptr [ %dbgfs_bf1.i.i, %sw.bb.i.i ], [ %bf_roaming_energy_delta.i.i, %sw.bb2.i.i ], [ %bf_roaming_state.i.i, %sw.bb3.i.i ], [ %bf_temp_threshold.i.i, %sw.bb4.i.i ], [ %bf_temp_fast_filter.i.i, %sw.bb5.i.i ], [ %bf_temp_slow_filter.i.i, %sw.bb6.i.i ], [ %bf_debug_flag.i.i, %sw.bb8.i.i ], [ %bf_escape_timer.i.i, %sw.bb9.i.i ], [ %ba_enable_beacon_abort.i.i, %sw.bb10.i.i ], [ %ba_escape_timer.i.i, %sw.bb11.i.i ]
  %85 = ptrtoint ptr %ba_escape_timer.sink.i.ph.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.ph.i, ptr %ba_escape_timer.sink.i.ph.i, align 4
  br label %if.else164.i

land.lhs.true.i:                                  ; preds = %if.end86.i
  %mutex65.i = getelementptr inbounds %struct.iwl_mvm, ptr %10, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex65.i, i32 noundef 0) #9
  %86 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value.i, align 4
  %mask.i66.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %88 = ptrtoint ptr %mask.i66.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mask.i66.i, align 4
  %or.i67.i = or i32 %89, 64
  store i32 %or.i67.i, ptr %mask.i66.i, align 4
  %bf_enable_beacon_filter.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 7
  %90 = ptrtoint ptr %bf_enable_beacon_filter.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %bf_enable_beacon_filter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool161.not.i = icmp eq i32 %87, 0
  br i1 %tobool161.not.i, label %if.then162.i, label %land.lhs.true.i.if.else164.i_crit_edge

land.lhs.true.i.if.else164.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else164.i

if.then162.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call163.i = call i32 @iwl_mvm_disable_beacon_filter(ptr noundef %10, ptr noundef %1, i32 noundef 0) #9
  br label %if.end166.i

if.else164.i:                                     ; preds = %land.lhs.true.i.if.else164.i_crit_edge, %iwl_dbgfs_update_bf.exit.thread.i
  %mutex1998.i = phi ptr [ %mutex19.ph.i, %iwl_dbgfs_update_bf.exit.thread.i ], [ %mutex65.i, %land.lhs.true.i.if.else164.i_crit_edge ]
  %call165.i = call i32 @iwl_mvm_enable_beacon_filter(ptr noundef %10, ptr noundef %1, i32 noundef 0) #9
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.else164.i, %if.then162.i
  %mutex1997.i = phi ptr [ %mutex1998.i, %if.else164.i ], [ %mutex65.i, %if.then162.i ]
  %ret.0.i = phi i32 [ %call165.i, %if.else164.i ], [ %call163.i, %if.then162.i ]
  call void @mutex_unlock(ptr noundef %mutex1997.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool168.not.i = icmp eq i32 %ret.0.i, 0
  %spec.select.i = select i1 %tobool168.not.i, i32 %3, i32 %ret.0.i
  br label %iwl_dbgfs_bf_params_write.exit

iwl_dbgfs_bf_params_write.exit:                   ; preds = %if.end166.i, %if.end142.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then137.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.else134.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end128.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then123.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end114.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then109.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end100.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then95.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end86.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then81.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end72.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then67.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end58.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then53.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end44.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then39.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end30.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then25.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end16.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then11.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.end.i.iwl_dbgfs_bf_params_write.exit_crit_edge, %if.then.i8.iwl_dbgfs_bf_params_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end166.i ], [ -22, %if.then.i8.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then11.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end16.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then25.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end30.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then39.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end44.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then53.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end58.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then67.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end72.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then81.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end86.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then95.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end100.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then109.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end114.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then123.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end128.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.then137.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.end142.i.iwl_dbgfs_bf_params_write.exit_crit_edge ], [ -22, %if.else134.i.iwl_dbgfs_bf_params_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_bf_params_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_bf_params_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_beacon_filter_debugfs_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_disable_beacon_filter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_enable_beacon_filter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195}
!llvm.named.register.sp = !{!197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 723, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 725, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 733, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 735, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 736, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 737, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 738, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 739, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 740, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 741, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 742, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 746, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 755, i32 21}
!26 = !{ptr @iwl_dbgfs_pm_params_ops, !27, !"iwl_dbgfs_pm_params_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 700, i32 1}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!30 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 80, i32 15}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 81, i32 24}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 84, i32 22}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 88, i32 22}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 92, i32 22}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 96, i32 22}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 100, i32 22}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 104, i32 22}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 111, i32 22}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 115, i32 22}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 119, i32 22}
!57 = !{ptr @__func__.iwl_dbgfs_update_pm, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 24, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 26, i32 4}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 33, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 38, i32 3}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 42, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 46, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 50, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 54, i32 3}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 58, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 62, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 66, i32 3}
!82 = !{ptr @iwl_dbgfs_tx_pwr_lmt_ops, !83, !"iwl_dbgfs_tx_pwr_lmt_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 699, i32 1}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 144, i32 30}
!86 = !{ptr @iwl_dbgfs_mac_params_ops, !87, !"iwl_dbgfs_mac_params_ops", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 698, i32 1}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 186, i32 40}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 189, i32 40}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 192, i32 40}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 195, i32 40}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 198, i32 40}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 201, i32 40}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 207, i32 39}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 209, i32 39}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 211, i32 39}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 213, i32 39}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 216, i32 6}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 230, i32 7}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 237, i32 17}
!114 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 240, i32 6}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1203, i32 8}
!120 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!128 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @iwl_dbgfs_low_latency_ops, !130, !"iwl_dbgfs_low_latency_ops", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 702, i32 1}
!131 = !{ptr @iwl_dbgfs_low_latency_force_ops, !132, !"iwl_dbgfs_low_latency_force_ops", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 703, i32 1}
!133 = !{ptr @iwl_dbgfs_uapsd_misbehaving_ops, !134, !"iwl_dbgfs_uapsd_misbehaving_ops", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 704, i32 1}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 564, i32 21}
!137 = !{ptr @iwl_dbgfs_rx_phyinfo_ops, !138, !"iwl_dbgfs_rx_phyinfo_ops", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 705, i32 1}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 630, i32 36}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 600, i32 17}
!143 = !{ptr @iwl_dbgfs_quota_min_ops, !144, !"iwl_dbgfs_quota_min_ops", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 706, i32 1}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 684, i32 36}
!147 = !{ptr @iwl_dbgfs_os_device_timediff_ops, !148, !"iwl_dbgfs_os_device_timediff_ops", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 707, i32 1}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 468, i32 43}
!151 = !{ptr @iwl_dbgfs_bf_params_ops, !152, !"iwl_dbgfs_bf_params_ops", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 701, i32 1}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 415, i32 39}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 417, i32 39}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 419, i32 39}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 421, i32 39}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 423, i32 39}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 425, i32 39}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 427, i32 39}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 429, i32 39}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 431, i32 39}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 433, i32 39}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 435, i32 39}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 303, i32 15}
!177 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 310, i32 22}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 317, i32 22}
!181 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 324, i32 22}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 331, i32 22}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 338, i32 22}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 345, i32 22}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 351, i32 22}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 357, i32 22}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 364, i32 22}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs-vif.c", i32 371, i32 22}
!197 = !{!"sp"}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i8 0, i8 2}
!208 = !{i64 2153549218, i64 2153549243}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 6044773}
!211 = !{i64 6044970}
!212 = !{i64 2153530203}
!213 = !{!"auto-init"}
!214 = !{i64 2149494464}
!215 = !{i64 2149494730}
!216 = !{i64 932055, i64 932082, i64 932104, i64 932132}
!217 = !{i64 932463, i64 932490, i64 932523, i64 932544, i64 932571, i64 932597}
