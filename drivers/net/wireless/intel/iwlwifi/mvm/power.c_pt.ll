; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/power.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mvm_mod_params = type { i8, i32 }
%struct.iwl_beacon_filter_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.iwl_device_power_cmd = type { i16, i16 }
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
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
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
%struct.iwl_power_vifs = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }

@iwlmvm_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mvm_mod_params, align 4
@__func__.iwl_mvm_power_update_device = private unnamed_addr constant [28 x i8] c"iwl_mvm_power_update_device\00", align 1
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Sending device power command with flags = 0x%X\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power_scheme = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flags = 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"keep_alive = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"skip_over_dtim = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"skip_dtim_periods = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_data_timeout = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_data_timeout = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lprx_rssi_threshold = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_data_timeout_uapsd = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx_data_timeout_uapsd = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qndp_tid = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uapsd_ac_flags = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uapsd_max_sp = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"heavy_tx_thld_packets = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"heavy_rx_thld_packets = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"heavy_tx_thld_percentage = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"heavy_rx_thld_percentage = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uapsd_misbehaving_enable = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snooze_interval = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snooze_window = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/power.c\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_beacon_filter_send_cmd = private unnamed_addr constant [31 x i8] c"iwl_mvm_beacon_filter_send_cmd\00", align 1
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ba_enable_beacon_abort is: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ba_escape_timer is: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bf_debug_flag is: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bf_enable_beacon_filter is: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bf_energy_delta is: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bf_escape_timer is: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bf_roaming_energy_delta is: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bf_roaming_state is: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bf_temp_threshold is: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bf_temp_fast_filter is: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bf_temp_slow_filter is: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bf_threshold_absolute_low is: %d, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bf_threshold_absolute_high is: %d, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__const.iwl_mvm_power_set_ba.cmd = private unnamed_addr constant %struct.iwl_beacon_filter_cmd { i32 83886080, i32 16777216, i32 1207959552, i32 1879048192, i32 16777216, i32 83886080, i32 16777216, i32 0, i32 0, i32 100663296, i32 0, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer }, align 1
@iwl_mvm_power_is_radar.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__.iwl_mvm_power_log = private unnamed_addr constant [18 x i8] c"iwl_mvm_power_log\00", align 1
@.str.39 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Sending power table command on mac id 0x%X for power level %d, flags = 0x%X\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Keep alive = %u sec\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disable power management\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Rx timeout = %u usec\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tx timeout = %u usec\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DTIM periods to skip = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LP RX RSSI threshold = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uAPSD enabled\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Rx timeout (uAPSD) = %u usec\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Tx timeout (uAPSD) = %u usec\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QNDP TID = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ACs flags = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Max SP = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 10, i64 60]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 9]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 486, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 688, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 690, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 692, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 698, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 701, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 704, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 706, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 711, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 717, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 719, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 721, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 722, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 724, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 726, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 728, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 730, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 732, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 734, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 742, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 744, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 903, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 28, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 30, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 32, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 34, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 36, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 38, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 40, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 42, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 44, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 46, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 48, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 50, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 54, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 286, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 695, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 723, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 89, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 93, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 97, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 101, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 103, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 106, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 109, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 112, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 113, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 115, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 117, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 118, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/power.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 119, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_power_update_device(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_device_power_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ps_disabled = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  %2 = ptrtoint ptr %ps_disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ps_disabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ps_disabled1 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  %3 = ptrtoint ptr %ps_disabled1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ps_disabled1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cmd, align 4
  %7 = or i16 %6, 256
  store i16 %7, ptr %cmd, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end4
  %disable_power_off_d3 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 74
  %11 = ptrtoint ptr %disable_power_off_d3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disable_power_off_d3, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %cond.true.if.end14_crit_edge, label %cond.true.if.then10_crit_edge

cond.true.if.then10_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

cond.true.if.end14_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

cond.false:                                       ; preds = %if.end4
  %disable_power_off = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 73
  %13 = ptrtoint ptr %disable_power_off to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %disable_power_off, align 8, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %cond.false.if.end14_crit_edge, label %cond.false.if.then10_crit_edge

cond.false.if.then10_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

cond.false.if.end14_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then10:                                        ; preds = %cond.false.if.then10_crit_edge, %cond.true.if.then10_crit_edge
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cmd, align 4
  %17 = and i16 %16, -257
  store i16 %17, ptr %cmd, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %cond.false.if.end14_crit_edge, %cond.true.if.end14_crit_edge
  %ext_clock_valid = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 147
  %18 = ptrtoint ptr %ext_clock_valid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ext_clock_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.end14.do.end_crit_edge, label %if.then16

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cmd, align 4
  %22 = or i16 %21, 16
  store i16 %22, ptr %cmd, align 4
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end14.do.end_crit_edge
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cmd, align 4
  %conv24 = zext i16 %26 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_update_device, ptr noundef nonnull @.str, i32 noundef %conv24) #13
  %call27 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 119, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #13
  ret i32 %call27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_mvm_power_vif_assoc(ptr nocapture noundef readnone %mvm, ptr nocapture noundef %vif) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bss_conf, align 8
  %uapsd_misbehaving_bssid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %uapsd_misbehaving_bssid, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = call ptr @memset(ptr %uapsd_misbehaving_bssid, i32 0, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_power_uapsd_misbehaving_ap_notif(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %ap_sta_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #13
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_sta_id) #13
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data, align 1
  %8 = lshr i32 %7, 24
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ap_sta_id, align 1
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @iwl_mvm_power_uapsd_misbehav_ap_iterator, ptr noundef nonnull %ap_sta_id) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_sta_id) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_power_uapsd_misbehav_ap_iterator(ptr nocapture noundef readonly %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ap_sta_id1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %0 = ptrtoint ptr %ap_sta_id1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ap_sta_id1, align 8
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %uapsd_misbehaving_bssid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1, i32 4
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %4 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bss_conf, align 8
  %6 = call ptr @memcpy(ptr %uapsd_misbehaving_bssid, ptr %5, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_power_mac_dbgfs_read(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef %buf, i32 noundef %bufsz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %cmd.sroa.4.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1, i32 8
  %0 = ptrtoint ptr %cmd.sroa.4.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %cmd.sroa.4.0.copyload = load i16, ptr %cmd.sroa.4.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.12.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %cmd.sroa.12.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %cmd.sroa.12.0.copyload = load i16, ptr %cmd.sroa.12.0.mac_pwr_cmd.sroa_idx, align 2
  %cmd.sroa.13.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 2, i32 1
  %2 = ptrtoint ptr %cmd.sroa.13.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %cmd.sroa.13.0.copyload = load i32, ptr %cmd.sroa.13.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.14.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 2, i32 3
  %3 = ptrtoint ptr %cmd.sroa.14.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cmd.sroa.14.0.copyload = load i32, ptr %cmd.sroa.14.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.15.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 2, i32 5
  %4 = ptrtoint ptr %cmd.sroa.15.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cmd.sroa.15.0.copyload = load i32, ptr %cmd.sroa.15.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.16.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 2, i32 7
  %5 = ptrtoint ptr %cmd.sroa.16.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cmd.sroa.16.0.copyload = load i32, ptr %cmd.sroa.16.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.17.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 3, i32 1
  %6 = ptrtoint ptr %cmd.sroa.17.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cmd.sroa.17.0.copyload = load i8, ptr %cmd.sroa.17.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.18.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 35, i32 8
  %7 = ptrtoint ptr %cmd.sroa.18.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cmd.sroa.18.0.copyload = load i8, ptr %cmd.sroa.18.0.mac_pwr_cmd.sroa_idx, align 1
  %cmd.sroa.19.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 3, i32 2
  %8 = ptrtoint ptr %cmd.sroa.19.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %cmd.sroa.19.0.copyload = load i16, ptr %cmd.sroa.19.0.mac_pwr_cmd.sroa_idx, align 2
  %cmd.sroa.20.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 3, i32 3
  %9 = ptrtoint ptr %cmd.sroa.20.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %cmd.sroa.20.0.copyload = load i16, ptr %cmd.sroa.20.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.21198.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 35, i32 12
  %10 = ptrtoint ptr %cmd.sroa.21198.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %cmd.sroa.21198.0.copyload = load i8, ptr %cmd.sroa.21198.0.mac_pwr_cmd.sroa_idx, align 1
  %cmd.sroa.22.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 3, i32 5
  %11 = ptrtoint ptr %cmd.sroa.22.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %cmd.sroa.22.0.copyload = load i8, ptr %cmd.sroa.22.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.23.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 35, i32 14
  %12 = ptrtoint ptr %cmd.sroa.23.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %cmd.sroa.23.0.copyload = load i8, ptr %cmd.sroa.23.0.mac_pwr_cmd.sroa_idx, align 1
  %cmd.sroa.24.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 3, i32 6
  %13 = ptrtoint ptr %cmd.sroa.24.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %cmd.sroa.24.0.copyload = load i8, ptr %cmd.sroa.24.0.mac_pwr_cmd.sroa_idx, align 2
  %cmd.sroa.25.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 35, i32 16
  %14 = ptrtoint ptr %cmd.sroa.25.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %cmd.sroa.25.0.copyload = load i8, ptr %cmd.sroa.25.0.mac_pwr_cmd.sroa_idx, align 1
  %cmd.sroa.26.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 3, i32 7
  %15 = ptrtoint ptr %cmd.sroa.26.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %cmd.sroa.26.0.copyload = load i8, ptr %cmd.sroa.26.0.mac_pwr_cmd.sroa_idx, align 4
  %cmd.sroa.27.0.mac_pwr_cmd.sroa_idx = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 35, i32 18
  %16 = ptrtoint ptr %cmd.sroa.27.0.mac_pwr_cmd.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %cmd.sroa.27.0.copyload = load i8, ptr %cmd.sroa.27.0.mac_pwr_cmd.sroa_idx, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %17 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.1, i32 noundef %17) #13
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call2
  %sub4 = sub i32 %bufsz, %call2
  %18 = tail call i16 @llvm.bswap.i16(i16 %cmd.sroa.4.0.copyload)
  %conv = zext i16 %18 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.2, i32 noundef %conv) #13
  %add6 = add i32 %call5, %call2
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %add6
  %sub8 = sub i32 %bufsz, %add6
  %19 = tail call i16 @llvm.bswap.i16(i16 %cmd.sroa.12.0.copyload)
  %conv9 = zext i16 %19 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.3, i32 noundef %conv9) #13
  %add11 = add i32 %add6, %call10
  %conv13 = zext i16 %cmd.sroa.4.0.copyload to i32
  %and = and i32 %conv13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add11
  %sub15 = sub i32 %bufsz, %add11
  %and18 = lshr i32 %conv13, 10
  %and18.lobit = and i32 %and18, 1
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.4, i32 noundef %and18.lobit) #13
  %add21 = add i32 %call20, %add11
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %add21
  %sub23 = sub i32 %bufsz, %add21
  %conv24 = zext i8 %cmd.sroa.18.0.copyload to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.5, i32 noundef %conv24) #13
  %add26 = add i32 %add21, %call25
  %and29 = and i32 %conv13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %add26
  %sub33 = sub i32 %bufsz, %add26
  %20 = tail call i32 @llvm.bswap.i32(i32 %cmd.sroa.13.0.copyload)
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.6, i32 noundef %20) #13
  %add35 = add i32 %call34, %add26
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %add35
  %sub37 = sub i32 %bufsz, %add35
  %21 = tail call i32 @llvm.bswap.i32(i32 %cmd.sroa.14.0.copyload)
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.7, i32 noundef %21) #13
  %add39 = add i32 %add35, %call38
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.end.if.end40_crit_edge
  %pos.0 = phi i32 [ %add26, %if.end.if.end40_crit_edge ], [ %add39, %if.then31 ]
  %and43 = and i32 %conv13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end40.if.end51_crit_edge, label %if.then45

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr46 = getelementptr i8, ptr %buf, i32 %pos.0
  %sub47 = sub i32 %bufsz, %pos.0
  %conv48 = zext i8 %cmd.sroa.17.0.copyload to i32
  %call49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.8, i32 noundef %conv48) #13
  %add50 = add i32 %call49, %pos.0
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.end40.if.end51_crit_edge
  %pos.1 = phi i32 [ %add50, %if.then45 ], [ %pos.0, %if.end40.if.end51_crit_edge ]
  br i1 %tobool30.not, label %if.end51.cleanup_crit_edge, label %if.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %pos.1
  %sub59 = sub i32 %bufsz, %pos.1
  %22 = tail call i32 @llvm.bswap.i32(i32 %cmd.sroa.15.0.copyload)
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.9, i32 noundef %22) #13
  %add61 = add i32 %call60, %pos.1
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %add61
  %sub63 = sub i32 %bufsz, %add61
  %23 = tail call i32 @llvm.bswap.i32(i32 %cmd.sroa.16.0.copyload)
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.10, i32 noundef %23) #13
  %add65 = add i32 %add61, %call64
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %add65
  %sub67 = sub i32 %bufsz, %add65
  %conv68 = zext i8 %cmd.sroa.21198.0.copyload to i32
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.11, i32 noundef %conv68) #13
  %add70 = add i32 %add65, %call69
  %add.ptr71 = getelementptr i8, ptr %buf, i32 %add70
  %sub72 = sub i32 %bufsz, %add70
  %conv73 = zext i8 %cmd.sroa.22.0.copyload to i32
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.12, i32 noundef %conv73) #13
  %add75 = add i32 %add70, %call74
  %add.ptr76 = getelementptr i8, ptr %buf, i32 %add75
  %sub77 = sub i32 %bufsz, %add75
  %conv78 = zext i8 %cmd.sroa.23.0.copyload to i32
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.13, i32 noundef %conv78) #13
  %add80 = add i32 %add75, %call79
  %add.ptr81 = getelementptr i8, ptr %buf, i32 %add80
  %sub82 = sub i32 %bufsz, %add80
  %conv83 = zext i8 %cmd.sroa.24.0.copyload to i32
  %call84 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.14, i32 noundef %conv83) #13
  %add85 = add i32 %add80, %call84
  %add.ptr86 = getelementptr i8, ptr %buf, i32 %add85
  %sub87 = sub i32 %bufsz, %add85
  %conv88 = zext i8 %cmd.sroa.25.0.copyload to i32
  %call89 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr86, i32 noundef %sub87, ptr noundef nonnull @.str.15, i32 noundef %conv88) #13
  %add90 = add i32 %add85, %call89
  %add.ptr91 = getelementptr i8, ptr %buf, i32 %add90
  %sub92 = sub i32 %bufsz, %add90
  %conv93 = zext i8 %cmd.sroa.26.0.copyload to i32
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.16, i32 noundef %conv93) #13
  %add95 = add i32 %add90, %call94
  %add.ptr96 = getelementptr i8, ptr %buf, i32 %add95
  %sub97 = sub i32 %bufsz, %add95
  %conv98 = zext i8 %cmd.sroa.27.0.copyload to i32
  %call99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.17, i32 noundef %conv98) #13
  %add100 = add i32 %add95, %call99
  %add.ptr101 = getelementptr i8, ptr %buf, i32 %add100
  %sub102 = sub i32 %bufsz, %add100
  %and105 = lshr i32 %conv13, 4
  %and105.lobit = and i32 %and105, 1
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr101, i32 noundef %sub102, ptr noundef nonnull @.str.18, i32 noundef %and105.lobit) #13
  %add109 = add i32 %add100, %call108
  %and112 = and i32 %conv13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end57.cleanup_crit_edge, label %if.end115

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end115:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr116 = getelementptr i8, ptr %buf, i32 %add109
  %sub117 = sub i32 %bufsz, %add109
  %conv118 = zext i16 %cmd.sroa.19.0.copyload to i32
  %call119 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr116, i32 noundef %sub117, ptr noundef nonnull @.str.19, i32 noundef %conv118) #13
  %add120 = add i32 %call119, %add109
  %add.ptr121 = getelementptr i8, ptr %buf, i32 %add120
  %sub122 = sub i32 %bufsz, %add120
  %conv123 = zext i16 %cmd.sroa.20.0.copyload to i32
  %call124 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.20, i32 noundef %conv123) #13
  %add125 = add i32 %add120, %call124
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.end57.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add125, %if.end115 ], [ %add11, %entry.cleanup_crit_edge ], [ %pos.1, %if.end51.cleanup_crit_edge ], [ %add109, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_mvm_beacon_filter_debugfs_parameters(ptr nocapture noundef readonly %vif, ptr nocapture noundef writeonly %cmd) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dbgfs_bf1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 3
  %2 = ptrtoint ptr %dbgfs_bf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbgfs_bf1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %cmd, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %and4 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bf_roaming_energy_delta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 5
  %8 = ptrtoint ptr %bf_roaming_energy_delta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bf_roaming_energy_delta, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %bf_roaming_energy_delta7 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %bf_roaming_energy_delta7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %bf_roaming_energy_delta7, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %and10 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %bf_roaming_state = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 7
  %14 = ptrtoint ptr %bf_roaming_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bf_roaming_state, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %bf_roaming_state13 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 2
  %17 = ptrtoint ptr %bf_roaming_state13 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %bf_roaming_state13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %and16 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.then18

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_threshold = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 1
  %20 = ptrtoint ptr %bf_temp_threshold to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bf_temp_threshold, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %bf_temp_threshold19 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 3
  %23 = ptrtoint ptr %bf_temp_threshold19 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %bf_temp_threshold19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask, align 4
  %and22 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_fast_filter = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 3
  %26 = ptrtoint ptr %bf_temp_fast_filter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bf_temp_fast_filter, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %bf_temp_fast_filter25 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 4
  %29 = ptrtoint ptr %bf_temp_fast_filter25 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %bf_temp_fast_filter25, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 4
  %and28 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end32_crit_edge, label %if.then30

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_slow_filter = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 5
  %32 = ptrtoint ptr %bf_temp_slow_filter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bf_temp_slow_filter, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %bf_temp_slow_filter31 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 5
  %35 = ptrtoint ptr %bf_temp_slow_filter31 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %bf_temp_slow_filter31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge
  %36 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask, align 4
  %and34 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end38_crit_edge, label %if.then36

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %bf_debug_flag = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %bf_debug_flag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bf_debug_flag, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %bf_debug_flag37 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 7
  %41 = ptrtoint ptr %bf_debug_flag37 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %bf_debug_flag37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %42 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask, align 4
  %and40 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end44_crit_edge, label %if.then42

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %bf_escape_timer = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %bf_escape_timer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bf_escape_timer, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %bf_escape_timer43 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 8
  %47 = ptrtoint ptr %bf_escape_timer43 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %bf_escape_timer43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end38.if.end44_crit_edge
  %48 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask, align 4
  %and46 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end50_crit_edge, label %if.then48

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %ba_escape_timer = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 6
  %50 = ptrtoint ptr %ba_escape_timer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ba_escape_timer, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %ba_escape_timer49 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 9
  %53 = ptrtoint ptr %ba_escape_timer49 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %ba_escape_timer49, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end44.if.end50_crit_edge
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask, align 4
  %and52 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end56_crit_edge, label %if.then54

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %ba_enable_beacon_abort = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4
  %56 = ptrtoint ptr %ba_enable_beacon_abort to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ba_enable_beacon_abort, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %ba_enable_beacon_abort55 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 10
  %59 = ptrtoint ptr %ba_enable_beacon_abort55 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %ba_enable_beacon_abort55, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end50.if.end56_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_enable_beacon_filter(ptr noundef %mvm, ptr noundef %vif, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_beacon_filter_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cmd) #13
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.iwl_mvm_power_set_ba.cmd, i32 60)
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %bf_allowed_vif.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 15
  %1 = ptrtoint ptr %bf_allowed_vif.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bf_allowed_vif.i, align 8
  %cmp.not.i = icmp eq ptr %drv_priv.i.i, %2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry._iwl_mvm_enable_beacon_filter.exit_crit_edge

entry._iwl_mvm_enable_beacon_filter.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_enable_beacon_filter.exit

lor.lhs.false.i:                                  ; preds = %entry
  %dtim_period.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %3 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dtim_period.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i._iwl_mvm_enable_beacon_filter.exit_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i._iwl_mvm_enable_beacon_filter.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_enable_beacon_filter.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 2
  br i1 %cmp2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false1.i._iwl_mvm_enable_beacon_filter.exit_crit_edge

lor.lhs.false1.i._iwl_mvm_enable_beacon_filter.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_enable_beacon_filter.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false1.i
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p2p.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false3.i._iwl_mvm_enable_beacon_filter.exit_crit_edge

lor.lhs.false3.i._iwl_mvm_enable_beacon_filter.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_enable_beacon_filter.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %cqm_rssi_thold.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 28
  %9 = ptrtoint ptr %cqm_rssi_thold.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cqm_rssi_thold.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.iwl_mvm_beacon_filter_set_cqm_params.exit.i_crit_edge, label %if.then.i.i

if.end.i.iwl_mvm_beacon_filter_set_cqm_params.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_beacon_filter_set_cqm_params.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %cqm_rssi_hyst.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 29
  %11 = ptrtoint ptr %cqm_rssi_hyst.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cqm_rssi_hyst.i.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cmd, align 4
  %sub.i.i = sub i32 0, %10
  %15 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #13
  %bf_roaming_state.i.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %bf_roaming_state.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bf_roaming_state.i.i, align 4
  br label %iwl_mvm_beacon_filter_set_cqm_params.exit.i

iwl_mvm_beacon_filter_set_cqm_params.exit.i:      ; preds = %if.then.i.i, %if.end.i.iwl_mvm_beacon_filter_set_cqm_params.exit.i_crit_edge
  %ba_enabled.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 15
  %17 = ptrtoint ptr %ba_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ba_enabled.i.i, align 1, !range !119
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 24
  %ba_enable_beacon_abort.i.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 10
  %21 = ptrtoint ptr %ba_enable_beacon_abort.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ba_enable_beacon_abort.i.i, align 4
  %mask.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i1 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i1, label %iwl_mvm_beacon_filter_set_cqm_params.exit.i.if.end.i2_crit_edge, label %if.then.i

iwl_mvm_beacon_filter_set_cqm_params.exit.i.if.end.i2_crit_edge: ; preds = %iwl_mvm_beacon_filter_set_cqm_params.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i2

if.then.i:                                        ; preds = %iwl_mvm_beacon_filter_set_cqm_params.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dbgfs_bf1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 3
  %24 = ptrtoint ptr %dbgfs_bf1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dbgfs_bf1.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cmd, align 4
  br label %if.end.i2

if.end.i2:                                        ; preds = %if.then.i, %iwl_mvm_beacon_filter_set_cqm_params.exit.i.if.end.i2_crit_edge
  %and4.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i2.if.end8.i_crit_edge, label %if.then6.i

if.end.i2.if.end8.i_crit_edge:                    ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #15
  %bf_roaming_energy_delta.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 5
  %28 = ptrtoint ptr %bf_roaming_energy_delta.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bf_roaming_energy_delta.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %bf_roaming_energy_delta7.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 1
  %31 = ptrtoint ptr %bf_roaming_energy_delta7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bf_roaming_energy_delta7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i2.if.end8.i_crit_edge
  %and10.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then12.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_roaming_state.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 7
  %32 = ptrtoint ptr %bf_roaming_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bf_roaming_state.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #13
  %bf_roaming_state13.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 2
  %35 = ptrtoint ptr %bf_roaming_state13.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %bf_roaming_state13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end14.i_crit_edge
  %and16.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then18.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_threshold.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 1
  %36 = ptrtoint ptr %bf_temp_threshold.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bf_temp_threshold.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  %bf_temp_threshold19.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 3
  %39 = ptrtoint ptr %bf_temp_threshold19.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %bf_temp_threshold19.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end20.i_crit_edge
  %and22.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end26.i_crit_edge, label %if.then24.i

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_fast_filter.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 3
  %40 = ptrtoint ptr %bf_temp_fast_filter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bf_temp_fast_filter.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  %bf_temp_fast_filter25.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 4
  %43 = ptrtoint ptr %bf_temp_fast_filter25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bf_temp_fast_filter25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end20.i.if.end26.i_crit_edge
  %and28.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end32.i_crit_edge, label %if.then30.i

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_slow_filter.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 5
  %44 = ptrtoint ptr %bf_temp_slow_filter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bf_temp_slow_filter.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  %bf_temp_slow_filter31.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 5
  %47 = ptrtoint ptr %bf_temp_slow_filter31.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %bf_temp_slow_filter31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end26.i.if.end32.i_crit_edge
  %and34.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then36.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_debug_flag.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %bf_debug_flag.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bf_debug_flag.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  %bf_debug_flag37.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 7
  %51 = ptrtoint ptr %bf_debug_flag37.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %bf_debug_flag37.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end38.i_crit_edge
  %and40.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.if.end44.i_crit_edge, label %if.then42.i

if.end38.i.if.end44.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_escape_timer.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 5
  %52 = ptrtoint ptr %bf_escape_timer.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bf_escape_timer.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #13
  %bf_escape_timer43.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 8
  %55 = ptrtoint ptr %bf_escape_timer43.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %bf_escape_timer43.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.end38.i.if.end44.i_crit_edge
  %and46.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end44.i.if.end50.i_crit_edge, label %if.then48.i

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  %ba_escape_timer.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 6
  %56 = ptrtoint ptr %ba_escape_timer.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ba_escape_timer.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  %ba_escape_timer49.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 9
  %59 = ptrtoint ptr %ba_escape_timer49.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ba_escape_timer49.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.end44.i.if.end50.i_crit_edge
  %and52.i = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.iwl_mvm_beacon_filter_debugfs_parameters.exit_crit_edge, label %if.then54.i

if.end50.i.iwl_mvm_beacon_filter_debugfs_parameters.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_beacon_filter_debugfs_parameters.exit

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  %ba_enable_beacon_abort.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4
  %60 = ptrtoint ptr %ba_enable_beacon_abort.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ba_enable_beacon_abort.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  %63 = ptrtoint ptr %ba_enable_beacon_abort.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ba_enable_beacon_abort.i.i, align 4
  br label %iwl_mvm_beacon_filter_debugfs_parameters.exit

iwl_mvm_beacon_filter_debugfs_parameters.exit:    ; preds = %if.then54.i, %if.end50.i.iwl_mvm_beacon_filter_debugfs_parameters.exit_crit_edge
  %call5.i = call fastcc i32 @iwl_mvm_beacon_filter_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd, i32 noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %iwl_mvm_beacon_filter_debugfs_parameters.exit._iwl_mvm_enable_beacon_filter.exit_crit_edge

iwl_mvm_beacon_filter_debugfs_parameters.exit._iwl_mvm_enable_beacon_filter.exit_crit_edge: ; preds = %iwl_mvm_beacon_filter_debugfs_parameters.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_enable_beacon_filter.exit

if.then7.i:                                       ; preds = %iwl_mvm_beacon_filter_debugfs_parameters.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bf_data.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 14
  %64 = ptrtoint ptr %bf_data.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %bf_data.i, align 4
  br label %_iwl_mvm_enable_beacon_filter.exit

_iwl_mvm_enable_beacon_filter.exit:               ; preds = %if.then7.i, %iwl_mvm_beacon_filter_debugfs_parameters.exit._iwl_mvm_enable_beacon_filter.exit_crit_edge, %lor.lhs.false3.i._iwl_mvm_enable_beacon_filter.exit_crit_edge, %lor.lhs.false1.i._iwl_mvm_enable_beacon_filter.exit_crit_edge, %lor.lhs.false.i._iwl_mvm_enable_beacon_filter.exit_crit_edge, %entry._iwl_mvm_enable_beacon_filter.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false3.i._iwl_mvm_enable_beacon_filter.exit_crit_edge ], [ 0, %lor.lhs.false1.i._iwl_mvm_enable_beacon_filter.exit_crit_edge ], [ 0, %lor.lhs.false.i._iwl_mvm_enable_beacon_filter.exit_crit_edge ], [ 0, %entry._iwl_mvm_enable_beacon_filter.exit_crit_edge ], [ 0, %if.then7.i ], [ %call5.i, %iwl_mvm_beacon_filter_debugfs_parameters.exit._iwl_mvm_enable_beacon_filter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cmd) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_disable_beacon_filter(ptr noundef %mvm, ptr nocapture noundef %vif, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_beacon_filter_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cmd.i) #13
  %0 = call ptr @memset(ptr %cmd.i, i32 0, i32 60)
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry._iwl_mvm_disable_beacon_filter.exit_crit_edge

entry._iwl_mvm_disable_beacon_filter.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_disable_beacon_filter.exit

lor.lhs.false.i:                                  ; preds = %entry
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %3 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p2p.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i._iwl_mvm_disable_beacon_filter.exit_crit_edge

lor.lhs.false.i._iwl_mvm_disable_beacon_filter.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_disable_beacon_filter.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call1.i = call fastcc i32 @iwl_mvm_beacon_filter_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i, i32 noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i._iwl_mvm_disable_beacon_filter.exit_crit_edge

if.end.i._iwl_mvm_disable_beacon_filter.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_iwl_mvm_disable_beacon_filter.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_data.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 14
  %5 = ptrtoint ptr %bf_data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bf_data.i, align 4
  br label %_iwl_mvm_disable_beacon_filter.exit

_iwl_mvm_disable_beacon_filter.exit:              ; preds = %if.then3.i, %if.end.i._iwl_mvm_disable_beacon_filter.exit_crit_edge, %lor.lhs.false.i._iwl_mvm_disable_beacon_filter.exit_crit_edge, %entry._iwl_mvm_disable_beacon_filter.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i._iwl_mvm_disable_beacon_filter.exit_crit_edge ], [ 0, %entry._iwl_mvm_disable_beacon_filter.exit_crit_edge ], [ 0, %if.then3.i ], [ %call1.i, %if.end.i._iwl_mvm_disable_beacon_filter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cmd.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_power_update_ps(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %disable_ps.i = alloca i8, align 1
  %vifs = alloca %struct.iwl_power_vifs, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vifs) #13
  %0 = getelementptr inbounds %struct.iwl_power_vifs, ptr %vifs, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %vifs, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %3 = ptrtoint ptr %vifs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mvm, ptr %vifs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !120

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 903, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @iwl_mvm_power_get_vifs_iterator, ptr noundef nonnull %vifs) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %disable_ps.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %frombool.i = zext i1 %cmp.i to i8
  %8 = ptrtoint ptr %disable_ps.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %disable_ps.i, align 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @iwl_mvm_power_ps_disabled_iterator, ptr noundef nonnull %disable_ps.i) #13
  %ps_disabled.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  %11 = ptrtoint ptr %ps_disabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ps_disabled.i, align 4
  %13 = ptrtoint ptr %disable_ps.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %disable_ps.i, align 1, !range !119
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp2.not.i = icmp eq i8 %12, %14
  br i1 %cmp2.not.i, label %if.end.if.end28_crit_edge, label %if.then.i

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then.i:                                        ; preds = %if.end
  %15 = ptrtoint ptr %ps_disabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ps_disabled.i, align 4
  %call.i41 = call i32 @iwl_mvm_power_update_device(ptr noundef %mvm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool10.not.i = icmp eq i32 %call.i41, 0
  br i1 %tobool10.not.i, label %if.then.i.if.end28_crit_edge, label %iwl_mvm_power_set_ps.exit

if.then.i.if.end28_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

iwl_mvm_power_set_ps.exit:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.i = icmp ne i8 %12, 0
  %frombool6.i = zext i1 %tobool5.i to i8
  %16 = ptrtoint ptr %ps_disabled.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool6.i, ptr %ps_disabled.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %disable_ps.i) #13
  br label %cleanup

if.end28:                                         ; preds = %if.then.i.if.end28_crit_edge, %if.end.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %disable_ps.i) #13
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = call fastcc i32 @iwl_mvm_power_set_ba(ptr noundef %mvm, ptr noundef nonnull %18)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %iwl_mvm_power_set_ps.exit
  %retval.0 = phi i32 [ %call32, %if.then30 ], [ %call.i41, %iwl_mvm_power_set_ps.exit ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vifs) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_power_get_vifs_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %0 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp ult i16 %3, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p2p.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %ieee80211_vif_type_p2p.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.end
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.then.i.i.sw.epilog_crit_edge [
    i32 2, label %if.then.i.i.sw.bb64_crit_edge
    i32 3, label %if.then.i.i.sw.bb_crit_edge
    i32 9, label %if.then.i.i.sw.bb_crit_edge129
    i32 6, label %if.then.i.i.sw.bb28_crit_edge
    i32 8, label %if.then.i.i.sw.bb64_crit_edge130
  ]

if.then.i.i.sw.bb64_crit_edge130:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb64

if.then.i.i.sw.bb28_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb28

if.then.i.i.sw.bb_crit_edge129:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.then.i.i.sw.bb_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.then.i.i.sw.bb64_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb64

if.then.i.i.sw.epilog_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

ieee80211_vif_type_p2p.exit:                      ; preds = %land.end
  %10 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %6, label %ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb100
    i32 9, label %ieee80211_vif_type_p2p.exit.sw.bb_crit_edge
    i32 3, label %ieee80211_vif_type_p2p.exit.sw.bb_crit_edge131
    i32 6, label %ieee80211_vif_type_p2p.exit.sw.bb28_crit_edge
    i32 8, label %ieee80211_vif_type_p2p.exit.sw.bb64_crit_edge
  ]

ieee80211_vif_type_p2p.exit.sw.bb64_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb64

ieee80211_vif_type_p2p.exit.sw.bb28_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb28

ieee80211_vif_type_p2p.exit.sw.bb_crit_edge131:   ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

ieee80211_vif_type_p2p.exit.sw.bb_crit_edge:      ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge:  ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %ieee80211_vif_type_p2p.exit.sw.bb_crit_edge, %ieee80211_vif_type_p2p.exit.sw.bb_crit_edge131, %if.then.i.i.sw.bb_crit_edge, %if.then.i.i.sw.bb_crit_edge129
  %ap_vif = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 3
  %11 = ptrtoint ptr %ap_vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ap_vif, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %sw.bb.if.end_crit_edge, label %do.end, !prof !121

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 573, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %13 = ptrtoint ptr %ap_vif to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vif, ptr %ap_vif, align 4
  br i1 %4, label %if.then26, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ap_active = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 7
  %14 = ptrtoint ptr %ap_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ap_active, align 2
  br label %sw.epilog

sw.bb28:                                          ; preds = %ieee80211_vif_type_p2p.exit.sw.bb28_crit_edge, %if.then.i.i.sw.bb28_crit_edge
  %monitor_vif = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 4
  %15 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %monitor_vif, align 4
  %tobool30.not = icmp eq ptr %16, null
  br i1 %tobool30.not, label %sw.bb28.if.end52_crit_edge, label %do.end46, !prof !121

sw.bb28.if.end52_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

do.end46:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 581, i32 noundef 9, ptr noundef null) #13
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %sw.bb28.if.end52_crit_edge
  %17 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vif, ptr %monitor_vif, align 4
  br i1 %4, label %if.then62, label %if.end52.sw.epilog_crit_edge

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then62:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %monitor_active = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 8
  %18 = ptrtoint ptr %monitor_active to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %monitor_active, align 1
  br label %sw.epilog

sw.bb64:                                          ; preds = %ieee80211_vif_type_p2p.exit.sw.bb64_crit_edge, %if.then.i.i.sw.bb64_crit_edge, %if.then.i.i.sw.bb64_crit_edge130
  %p2p_vif = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 2
  %19 = ptrtoint ptr %p2p_vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p2p_vif, align 4
  %tobool66.not = icmp eq ptr %20, null
  br i1 %tobool66.not, label %sw.bb64.if.end88_crit_edge, label %do.end82, !prof !121

sw.bb64.if.end88_crit_edge:                       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

do.end82:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 589, i32 noundef 9, ptr noundef null) #13
  br label %if.end88

if.end88:                                         ; preds = %do.end82, %sw.bb64.if.end88_crit_edge
  %21 = ptrtoint ptr %p2p_vif to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vif, ptr %p2p_vif, align 4
  br i1 %4, label %if.then98, label %if.end88.sw.epilog_crit_edge

if.end88.sw.epilog_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then98:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %p2p_active = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 5
  %22 = ptrtoint ptr %p2p_active to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %p2p_active, align 4
  br label %sw.epilog

sw.bb100:                                         ; preds = %ieee80211_vif_type_p2p.exit
  %bss_vif = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 1
  %23 = ptrtoint ptr %bss_vif to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vif, ptr %bss_vif, align 4
  br i1 %4, label %if.then102, label %sw.bb100.sw.epilog_crit_edge

sw.bb100.sw.epilog_crit_edge:                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then102:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  %bss_active = getelementptr inbounds %struct.iwl_power_vifs, ptr %_data, i32 0, i32 6
  %24 = ptrtoint ptr %bss_active to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %bss_active, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then102, %sw.bb100.sw.epilog_crit_edge, %if.then98, %if.end88.sw.epilog_crit_edge, %if.then62, %if.end52.sw.epilog_crit_edge, %if.then26, %if.end.sw.epilog_crit_edge, %ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge, %if.then.i.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_power_set_ba(ptr noundef %mvm, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_beacon_filter_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cmd) #13
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.iwl_mvm_power_set_ba.cmd, i32 60)
  %bf_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 14
  %1 = ptrtoint ptr %bf_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bf_data, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ba_escape_timer = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 9
  %6 = ptrtoint ptr %ba_escape_timer to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 150994944, ptr %ba_escape_timer, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %pm_enabled = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 9
  %7 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pm_enabled, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end4.lor.end_crit_edge, label %lor.lhs.false

if.end4.lor.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.lhs.false:                                    ; preds = %if.end4
  %ps_disabled = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  %9 = ptrtoint ptr %ps_disabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ps_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %ps = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 38
  %11 = ptrtoint ptr %ps to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ps, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false7.lor.end_crit_edge, label %lor.rhs

lor.lhs.false7.lor.end_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  %low_latency_actual.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %13 = ptrtoint ptr %low_latency_actual.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %low_latency_actual.i, align 8
  %14 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i.not = icmp eq i8 %14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false7.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %if.end4.lor.end_crit_edge
  %15 = phi i1 [ false, %lor.lhs.false7.lor.end_crit_edge ], [ false, %lor.lhs.false.lor.end_crit_edge ], [ false, %if.end4.lor.end_crit_edge ], [ %tobool.i.not, %lor.rhs ]
  %ba_enabled = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 15
  %frombool = zext i1 %15 to i8
  %16 = ptrtoint ptr %ba_enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %ba_enabled, align 1
  %bf_allowed_vif.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 15
  %17 = ptrtoint ptr %bf_allowed_vif.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bf_allowed_vif.i, align 8
  %cmp.not.i = icmp eq ptr %drv_priv.i, %18
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %lor.end
  %dtim_period.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %19 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dtim_period.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.not.i = icmp eq i32 %22, 2
  br i1 %cmp2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false1.i.cleanup_crit_edge

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false1.i
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %23 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p2p.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false3.i.cleanup_crit_edge

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %cqm_rssi_thold.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 28
  %25 = ptrtoint ptr %cqm_rssi_thold.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cqm_rssi_thold.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.end.i.iwl_mvm_beacon_filter_set_cqm_params.exit.i_crit_edge, label %if.then.i.i

if.end.i.iwl_mvm_beacon_filter_set_cqm_params.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_beacon_filter_set_cqm_params.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %cqm_rssi_hyst.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 29
  %27 = ptrtoint ptr %cqm_rssi_hyst.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cqm_rssi_hyst.i.i, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cmd, align 4
  %sub.i.i = sub i32 0, %26
  %31 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #13
  %bf_roaming_state.i.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 2
  %32 = ptrtoint ptr %bf_roaming_state.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bf_roaming_state.i.i, align 4
  br label %iwl_mvm_beacon_filter_set_cqm_params.exit.i

iwl_mvm_beacon_filter_set_cqm_params.exit.i:      ; preds = %if.then.i.i, %if.end.i.iwl_mvm_beacon_filter_set_cqm_params.exit.i_crit_edge
  %33 = ptrtoint ptr %ba_enabled to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ba_enabled, align 1, !range !119
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 24
  %ba_enable_beacon_abort.i.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 10
  %37 = ptrtoint ptr %ba_enable_beacon_abort.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ba_enable_beacon_abort.i.i, align 4
  %mask.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i21 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i21, label %iwl_mvm_beacon_filter_set_cqm_params.exit.i.if.end.i22_crit_edge, label %if.then.i

iwl_mvm_beacon_filter_set_cqm_params.exit.i.if.end.i22_crit_edge: ; preds = %iwl_mvm_beacon_filter_set_cqm_params.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i22

if.then.i:                                        ; preds = %iwl_mvm_beacon_filter_set_cqm_params.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dbgfs_bf1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 3
  %40 = ptrtoint ptr %dbgfs_bf1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dbgfs_bf1.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  %43 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cmd, align 4
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i, %iwl_mvm_beacon_filter_set_cqm_params.exit.i.if.end.i22_crit_edge
  %and4.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i22.if.end8.i_crit_edge, label %if.then6.i

if.end.i22.if.end8.i_crit_edge:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #15
  %bf_roaming_energy_delta.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 5
  %44 = ptrtoint ptr %bf_roaming_energy_delta.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bf_roaming_energy_delta.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  %bf_roaming_energy_delta7.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 1
  %47 = ptrtoint ptr %bf_roaming_energy_delta7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %bf_roaming_energy_delta7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i22.if.end8.i_crit_edge
  %and10.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then12.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_roaming_state.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 7
  %48 = ptrtoint ptr %bf_roaming_state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bf_roaming_state.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  %bf_roaming_state13.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 2
  %51 = ptrtoint ptr %bf_roaming_state13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %bf_roaming_state13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end14.i_crit_edge
  %and16.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then18.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_threshold.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 1
  %52 = ptrtoint ptr %bf_temp_threshold.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bf_temp_threshold.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #13
  %bf_temp_threshold19.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 3
  %55 = ptrtoint ptr %bf_temp_threshold19.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %bf_temp_threshold19.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end20.i_crit_edge
  %and22.i = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end26.i_crit_edge, label %if.then24.i

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_fast_filter.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 3
  %56 = ptrtoint ptr %bf_temp_fast_filter.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bf_temp_fast_filter.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  %bf_temp_fast_filter25.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 4
  %59 = ptrtoint ptr %bf_temp_fast_filter25.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %bf_temp_fast_filter25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end20.i.if.end26.i_crit_edge
  %and28.i = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end32.i_crit_edge, label %if.then30.i

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_temp_slow_filter.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 3, i32 5
  %60 = ptrtoint ptr %bf_temp_slow_filter.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bf_temp_slow_filter.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  %bf_temp_slow_filter31.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 5
  %63 = ptrtoint ptr %bf_temp_slow_filter31.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %bf_temp_slow_filter31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end26.i.if.end32.i_crit_edge
  %and34.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then36.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_debug_flag.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %bf_debug_flag.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bf_debug_flag.i, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #13
  %bf_debug_flag37.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 7
  %67 = ptrtoint ptr %bf_debug_flag37.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %bf_debug_flag37.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end38.i_crit_edge
  %and40.i = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.if.end44.i_crit_edge, label %if.then42.i

if.end38.i.if.end44.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf_escape_timer.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 5
  %68 = ptrtoint ptr %bf_escape_timer.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bf_escape_timer.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #13
  %bf_escape_timer43.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 8
  %71 = ptrtoint ptr %bf_escape_timer43.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %bf_escape_timer43.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.end38.i.if.end44.i_crit_edge
  %and46.i = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end44.i.if.end50.i_crit_edge, label %if.then48.i

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  %ba_escape_timer.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 6
  %72 = ptrtoint ptr %ba_escape_timer.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ba_escape_timer.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #13
  %ba_escape_timer49.i = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 9
  %75 = ptrtoint ptr %ba_escape_timer49.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %ba_escape_timer49.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.end44.i.if.end50.i_crit_edge
  %and52.i = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.iwl_mvm_beacon_filter_debugfs_parameters.exit_crit_edge, label %if.then54.i

if.end50.i.iwl_mvm_beacon_filter_debugfs_parameters.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_beacon_filter_debugfs_parameters.exit

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  %ba_enable_beacon_abort.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4
  %76 = ptrtoint ptr %ba_enable_beacon_abort.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ba_enable_beacon_abort.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #13
  %79 = ptrtoint ptr %ba_enable_beacon_abort.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %ba_enable_beacon_abort.i.i, align 4
  br label %iwl_mvm_beacon_filter_debugfs_parameters.exit

iwl_mvm_beacon_filter_debugfs_parameters.exit:    ; preds = %if.then54.i, %if.end50.i.iwl_mvm_beacon_filter_debugfs_parameters.exit_crit_edge
  %call5.i = call fastcc i32 @iwl_mvm_beacon_filter_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %iwl_mvm_beacon_filter_debugfs_parameters.exit.cleanup_crit_edge

iwl_mvm_beacon_filter_debugfs_parameters.exit.cleanup_crit_edge: ; preds = %iwl_mvm_beacon_filter_debugfs_parameters.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7.i:                                       ; preds = %iwl_mvm_beacon_filter_debugfs_parameters.exit
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %bf_data to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %bf_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %iwl_mvm_beacon_filter_debugfs_parameters.exit.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %lor.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false3.i.cleanup_crit_edge ], [ 0, %lor.lhs.false1.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %lor.end.cleanup_crit_edge ], [ 0, %if.then7.i ], [ %call5.i, %iwl_mvm_beacon_filter_debugfs_parameters.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_power_update_mac(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %disable_ps.i = alloca i8, align 1
  %vifs = alloca %struct.iwl_power_vifs, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vifs) #13
  %0 = getelementptr inbounds %struct.iwl_power_vifs, ptr %vifs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_power_vifs, ptr %vifs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iwl_power_vifs, ptr %vifs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.iwl_power_vifs, ptr %vifs, i32 0, i32 5
  %4 = getelementptr inbounds %struct.iwl_power_vifs, ptr %vifs, i32 0, i32 6
  %5 = getelementptr inbounds %struct.iwl_power_vifs, ptr %vifs, i32 0, i32 7
  %6 = getelementptr inbounds i8, ptr %vifs, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %8 = ptrtoint ptr %vifs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mvm, ptr %vifs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !120

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 927, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @iwl_mvm_power_get_vifs_iterator, ptr noundef nonnull %vifs) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !120

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 615, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @iwl_mvm_power_disable_pm_iterator, ptr noundef null) #13
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %tobool24.not.i = icmp eq ptr %16, null
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %16, i32 0, i32 19
  %spec.select.i = select i1 %tobool24.not.i, ptr null, ptr %drv_priv.i.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %tobool29.not.i = icmp eq ptr %18, null
  %drv_priv.i150.i = getelementptr inbounds %struct.ieee80211_vif, ptr %18, i32 0, i32 19
  %p2p_mvmvif.0.i = select i1 %tobool29.not.i, ptr null, ptr %drv_priv.i150.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %tobool34.not.i = icmp eq ptr %20, null
  %drv_priv.i151.i = getelementptr inbounds %struct.ieee80211_vif, ptr %20, i32 0, i32 19
  %ap_mvmvif.0.i = select i1 %tobool34.not.i, ptr null, ptr %drv_priv.i151.i
  %call39.i = call i32 @iwl_mvm_tdls_sta_count(ptr noundef %mvm, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end.i.iwl_mvm_power_set_pm.exit_crit_edge

if.end.i.iwl_mvm_power_set_pm.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_set_pm.exit

if.end42.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %4, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool43.not.i = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool50.not153.i = icmp eq i8 %24, 0
  br i1 %tobool43.not.i, label %if.end48.thread.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end42.i
  br i1 %tobool50.not153.i, label %land.lhs.true45.i, label %land.lhs.true75.i

land.lhs.true45.i:                                ; preds = %land.lhs.true.i
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not.i = icmp eq i8 %26, 0
  br i1 %tobool46.not.i, label %land.lhs.true45.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true45.i.if.end89.i_crit_edge

land.lhs.true45.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89.i

land.lhs.true45.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end48.thread.i:                                ; preds = %if.end42.i
  br i1 %tobool50.not153.i, label %if.end48.thread.i.iwl_mvm_power_set_pm.exit_crit_edge, label %if.end48.thread.i.cleanup.sink.split.i_crit_edge

if.end48.thread.i.cleanup.sink.split.i_crit_edge: ; preds = %if.end48.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end48.thread.i.iwl_mvm_power_set_pm.exit_crit_edge: ; preds = %if.end48.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_set_pm.exit

land.lhs.true75.i:                                ; preds = %land.lhs.true.i
  %phy_ctxt.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %spec.select.i, i32 0, i32 23
  %27 = ptrtoint ptr %phy_ctxt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_ctxt.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  %phy_ctxt66.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %p2p_mvmvif.0.i, i32 0, i32 23
  %31 = ptrtoint ptr %phy_ctxt66.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_ctxt66.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %34)
  %cmp69.i = icmp eq i16 %30, %34
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool77.not.i = icmp eq i8 %.pr, 0
  br i1 %tobool77.not.i, label %if.end89.i.thread, label %land.lhs.true75.i.if.end89.i_crit_edge

land.lhs.true75.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89.i

if.end89.i:                                       ; preds = %land.lhs.true75.i.if.end89.i_crit_edge, %land.lhs.true45.i.if.end89.i_crit_edge
  %client_same_channel.0.off0.i71 = phi i1 [ %cmp69.i, %land.lhs.true75.i.if.end89.i_crit_edge ], [ false, %land.lhs.true45.i.if.end89.i_crit_edge ]
  %phy_ctxt80.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %spec.select.i, i32 0, i32 23
  %36 = ptrtoint ptr %phy_ctxt80.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_ctxt80.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 4
  %phy_ctxt83.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %ap_mvmvif.0.i, i32 0, i32 23
  %40 = ptrtoint ptr %phy_ctxt83.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_ctxt83.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %43)
  %cmp86.i = icmp eq i16 %39, %43
  %brmerge.i = select i1 %client_same_channel.0.off0.i71, i1 true, i1 %cmp86.i
  br i1 %brmerge.i, label %if.end89.i.iwl_mvm_power_set_pm.exit_crit_edge, label %if.end99.i

if.end89.i.iwl_mvm_power_set_pm.exit_crit_edge:   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_set_pm.exit

if.end89.i.thread:                                ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #15
  %pm_enabled112.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %spec.select.i, i32 0, i32 10
  %44 = ptrtoint ptr %pm_enabled112.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %pm_enabled112.i, align 2
  br label %cleanup.sink.split.i

if.end99.i:                                       ; preds = %if.end89.i
  %pm_enabled98.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %spec.select.i, i32 0, i32 10
  %45 = ptrtoint ptr %pm_enabled98.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %pm_enabled98.i, align 2
  br i1 %tobool50.not153.i, label %if.end99.i.iwl_mvm_power_set_pm.exit_crit_edge, label %if.end99.i.cleanup.sink.split.i_crit_edge

if.end99.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end99.i.iwl_mvm_power_set_pm.exit_crit_edge:   ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_set_pm.exit

cleanup.sink.split.i:                             ; preds = %if.end99.i.cleanup.sink.split.i_crit_edge, %if.end89.i.thread, %if.end48.thread.i.cleanup.sink.split.i_crit_edge, %land.lhs.true45.i.cleanup.sink.split.i_crit_edge
  %p2p_mvmvif.0.sink.i = phi ptr [ %spec.select.i, %land.lhs.true45.i.cleanup.sink.split.i_crit_edge ], [ %p2p_mvmvif.0.i, %if.end99.i.cleanup.sink.split.i_crit_edge ], [ %p2p_mvmvif.0.i, %if.end48.thread.i.cleanup.sink.split.i_crit_edge ], [ %p2p_mvmvif.0.i, %if.end89.i.thread ]
  %pm_enabled113.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %p2p_mvmvif.0.sink.i, i32 0, i32 10
  %46 = ptrtoint ptr %pm_enabled113.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %pm_enabled113.i, align 2
  br label %iwl_mvm_power_set_pm.exit

iwl_mvm_power_set_pm.exit:                        ; preds = %cleanup.sink.split.i, %if.end99.i.iwl_mvm_power_set_pm.exit_crit_edge, %if.end89.i.iwl_mvm_power_set_pm.exit_crit_edge, %if.end48.thread.i.iwl_mvm_power_set_pm.exit_crit_edge, %if.end.i.iwl_mvm_power_set_pm.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %disable_ps.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %47 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i = icmp eq i32 %47, 1
  %frombool.i = zext i1 %cmp.i to i8
  %48 = ptrtoint ptr %disable_ps.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool.i, ptr %disable_ps.i, align 1
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @iwl_mvm_power_ps_disabled_iterator, ptr noundef nonnull %disable_ps.i) #13
  %ps_disabled.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  %51 = ptrtoint ptr %ps_disabled.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ps_disabled.i, align 4
  %53 = ptrtoint ptr %disable_ps.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %disable_ps.i, align 1, !range !119
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp2.not.i = icmp eq i8 %52, %54
  br i1 %cmp2.not.i, label %iwl_mvm_power_set_pm.exit.if.end28_crit_edge, label %if.then.i

iwl_mvm_power_set_pm.exit.if.end28_crit_edge:     ; preds = %iwl_mvm_power_set_pm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then.i:                                        ; preds = %iwl_mvm_power_set_pm.exit
  %55 = ptrtoint ptr %ps_disabled.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %ps_disabled.i, align 4
  %call.i68 = call i32 @iwl_mvm_power_update_device(ptr noundef %mvm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool10.not.i = icmp eq i32 %call.i68, 0
  br i1 %tobool10.not.i, label %if.then.i.if.end28_crit_edge, label %iwl_mvm_power_set_ps.exit

if.then.i.if.end28_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

iwl_mvm_power_set_ps.exit:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool5.i = icmp ne i8 %52, 0
  %frombool6.i = zext i1 %tobool5.i to i8
  %56 = ptrtoint ptr %ps_disabled.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool6.i, ptr %ps_disabled.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %disable_ps.i) #13
  br label %cleanup

if.end28:                                         ; preds = %if.then.i.if.end28_crit_edge, %iwl_mvm_power_set_pm.exit.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %disable_ps.i) #13
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %0, align 4
  %tobool29.not = icmp eq ptr %58, null
  br i1 %tobool29.not, label %if.end28.if.end36_crit_edge, label %if.then30

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then30:                                        ; preds = %if.end28
  %call32 = call fastcc i32 @iwl_mvm_power_send_cmd(ptr noundef %mvm, ptr noundef nonnull %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end36_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %tobool37.not = icmp eq ptr %60, null
  br i1 %tobool37.not, label %if.end36.if.end44_crit_edge, label %if.then38

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then38:                                        ; preds = %if.end36
  %call40 = call fastcc i32 @iwl_mvm_power_send_cmd(ptr noundef %mvm, ptr noundef nonnull %60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then38.if.end44_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end44:                                         ; preds = %if.then38.if.end44_crit_edge, %if.end36.if.end44_crit_edge
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %0, align 4
  %tobool46.not = icmp eq ptr %62, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %call49 = call fastcc i32 @iwl_mvm_power_set_ba(ptr noundef %mvm, ptr noundef nonnull %62)
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end44.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %iwl_mvm_power_set_ps.exit
  %retval.0 = phi i32 [ %call49, %if.then47 ], [ %call.i68, %iwl_mvm_power_set_ps.exit ], [ %call32, %if.then30.cleanup_crit_edge ], [ %call40, %if.then38.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vifs) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_power_send_cmd(ptr noundef %mvm, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  %is_p2p_standalone.i.i = alloca i8, align 1
  %cmd = alloca %struct.iwl_mac_power_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 36)
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %3 to i32
  %color.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %color.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %color.i, align 2
  %conv1.i = zext i16 %5 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %shl2.i, %conv.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cmd, align 4
  %dtim_period.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %8 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dtim_period.i, align 8
  %conv3.i = zext i8 %9 to i32
  %beacon_int.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %10 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %beacon_int.i, align 2
  %conv5.i = zext i16 %11 to i32
  %mul6.i = mul nuw nsw i32 %conv3.i, 3072
  %mul.i.i = mul i32 %mul6.i, %conv5.i
  %sub.i = add i32 %mul.i.i, 999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 25999999, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 25999999
  %div.i = udiv i32 %sub.i, 1000000
  %12 = trunc i32 %div.i to i16
  %conv9.i = select i1 %cmp.i, i16 %12, i16 25
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #13
  %keep_alive_seconds.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %keep_alive_seconds.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %keep_alive_seconds.i, align 2
  %ps_disabled.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  %15 = ptrtoint ptr %ps_disabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ps_disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.iwl_mvm_power_build_cmd.exit_crit_edge

entry.iwl_mvm_power_build_cmd.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_build_cmd.exit

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i, align 4
  %19 = or i16 %18, 256
  store i16 %19, ptr %flags.i, align 4
  %ps.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 38
  %20 = ptrtoint ptr %ps.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ps.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not.i = icmp eq i8 %21, 0
  br i1 %tobool14.not.i, label %if.end.i.iwl_mvm_power_build_cmd.exit_crit_edge, label %lor.lhs.false.i

if.end.i.iwl_mvm_power_build_cmd.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_build_cmd.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %pm_enabled.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 9
  %22 = ptrtoint ptr %pm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pm_enabled.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not.i = icmp eq i8 %23, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i.iwl_mvm_power_build_cmd.exit_crit_edge, label %if.end17.i

lor.lhs.false.i.iwl_mvm_power_build_cmd.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_build_cmd.exit

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %low_latency_actual.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %24 = ptrtoint ptr %low_latency_actual.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %low_latency_actual.i.i, align 8
  %25 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.i.not.i = icmp eq i8 %25, 0
  br i1 %tobool.i.not.i, label %if.end17.i.if.end26.i_crit_edge, label %land.lhs.true.i

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.end17.i
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %26 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %p2p.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not.i = icmp eq i8 %27, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %land.lhs.true22.i

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %29, i32 0, i32 5, i32 8, i32 2
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  br label %iwl_mvm_power_build_cmd.exit

if.end26.i:                                       ; preds = %land.lhs.true.i.if.end26.i_crit_edge, %if.end17.i.if.end26.i_crit_edge
  %32 = or i16 %18, 768
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %flags.i, align 4
  %beacon_rate.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 25
  %34 = ptrtoint ptr %beacon_rate.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %beacon_rate.i, align 4
  %tobool32.not.i = icmp eq ptr %35, null
  br i1 %tobool32.not.i, label %if.end26.i.if.end51.i_crit_edge, label %land.lhs.true33.i

if.end26.i.if.end51.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

land.lhs.true33.i:                                ; preds = %if.end26.i
  %bitrate.i = getelementptr inbounds %struct.ieee80211_rate, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bitrate.i, align 4
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %37, label %land.lhs.true33.i.if.end51.i_crit_edge [
    i16 10, label %land.lhs.true33.i.if.then46.i_crit_edge
    i16 60, label %land.lhs.true33.i.if.then46.i_crit_edge14
  ]

land.lhs.true33.i.if.then46.i_crit_edge14:        ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i

land.lhs.true33.i.if.then46.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46.i

land.lhs.true33.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then46.i:                                      ; preds = %land.lhs.true33.i.if.then46.i_crit_edge, %land.lhs.true33.i.if.then46.i_crit_edge14
  %39 = or i16 %18, 776
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %flags.i, align 4
  %lprx_rssi_threshold.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 7
  %41 = ptrtoint ptr %lprx_rssi_threshold.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 75, ptr %lprx_rssi_threshold.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %land.lhs.true33.i.if.end51.i_crit_edge, %if.end26.i.if.end51.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %narrow.i.i = select i1 %tobool.not.i.i, i8 1, i8 %9
  %conv..i.i = zext i8 %narrow.i.i to i32
  %skip_dtim_periods.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 8
  %42 = ptrtoint ptr %skip_dtim_periods.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %skip_dtim_periods.i.i, align 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags.i, align 4
  %45 = and i16 %44, -1025
  store i16 %45, ptr %flags.i, align 4
  %46 = tail call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i.i.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i, label %if.end51.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end51.i.rcu_read_lock.exit.i.i.i_crit_edge:    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end51.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #13
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end51.i.rcu_read_lock.exit.i.i.i_crit_edge
  %chanctx_conf1.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %50 = ptrtoint ptr %chanctx_conf1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %chanctx_conf1.i.i.i, align 4
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b46.i.i.i = load i1, ptr @iwl_mvm_power_is_radar.__warned, align 1
  br i1 %.b46.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_mvm_power_is_radar.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 286, ptr noundef nonnull @.str.35) #13
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge
  %tobool10.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool10.not.i.i.i, label %do.end23.i.i.i, label %if.then38.critedge.i.i.i, !prof !120

do.end23.i.i.i:                                   ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 287, i32 noundef 9, ptr noundef null) #13
  br label %if.end41.i.i.i

if.then38.critedge.i.i.i:                         ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %flags.i.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool40.i.i.i = icmp ne i32 %and.i.i.i, 0
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.then38.critedge.i.i.i, %do.end23.i.i.i
  %radar_detect.0.off0.i.i.i = phi i1 [ %tobool40.i.i.i, %if.then38.critedge.i.i.i ], [ false, %do.end23.i.i.i ]
  %call.i47.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i47.i.i.i, label %if.end41.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge, label %land.lhs.true.i50.i.i.i

if.end41.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge: ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_is_radar.exit.i.i

land.lhs.true.i50.i.i.i:                          ; preds = %if.end41.i.i.i
  %call1.i48.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i.i.i)
  %tobool.not.i49.i.i.i = icmp eq i32 %call1.i48.i.i.i, 0
  br i1 %tobool.not.i49.i.i.i, label %land.lhs.true.i50.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge, label %land.lhs.true2.i52.i.i.i

land.lhs.true.i50.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge: ; preds = %land.lhs.true.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_is_radar.exit.i.i

land.lhs.true2.i52.i.i.i:                         ; preds = %land.lhs.true.i50.i.i.i
  %.b4.i51.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51.i.i.i, label %land.lhs.true2.i52.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge, label %if.then.i53.i.i.i

land.lhs.true2.i52.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_is_radar.exit.i.i

if.then.i53.i.i.i:                                ; preds = %land.lhs.true2.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #13
  br label %iwl_mvm_power_is_radar.exit.i.i

iwl_mvm_power_is_radar.exit.i.i:                  ; preds = %if.then.i53.i.i.i, %land.lhs.true2.i52.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge, %land.lhs.true.i50.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge, %if.end41.i.i.i.iwl_mvm_power_is_radar.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %56 = tail call i32 @llvm.read_register.i32(metadata !109) #13
  %and.i.i.i.i.i54.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i54.i.i.i to ptr
  %preempt_count.i.i.i.i55.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i55.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i55.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %narrow.i.i)
  %cmp.i.i = icmp ugt i8 %narrow.i.i, 9
  %or.cond.i.i = select i1 %radar_detect.0.off0.i.i.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i.i, label %iwl_mvm_power_is_radar.exit.i.i.iwl_mvm_power_config_skip_dtim.exit.i_crit_edge, label %if.end5.i.i

iwl_mvm_power_is_radar.exit.i.i.iwl_mvm_power_config_skip_dtim.exit.i_crit_edge: ; preds = %iwl_mvm_power_is_radar.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_config_skip_dtim.exit.i

if.end5.i.i:                                      ; preds = %iwl_mvm_power_is_radar.exit.i.i
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %60 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %status.i.i, align 4
  %62 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool7.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %63 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp9.not.i.i = icmp eq i32 %63, 3
  br i1 %cmp9.not.i.i, label %if.then8.i.i.if.end53.i.i_crit_edge, label %if.then8.i.i.iwl_mvm_power_config_skip_dtim.exit.i_crit_edge

if.then8.i.i.iwl_mvm_power_config_skip_dtim.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_config_skip_dtim.exit.i

if.then8.i.i.if.end53.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i.i

if.else.i.i:                                      ; preds = %if.end5.i.i
  %64 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %beacon_int.i, align 2
  %conv14.i.i = zext i16 %65 to i32
  %mul.i270.i = mul nuw nsw i32 %conv14.i.i, %conv..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i270.i)
  %tobool15.not.i.i = icmp eq i32 %mul.i270.i, 0
  br i1 %tobool15.not.i.i, label %cleanup.thread.i.i, label %cleanup.i.i, !prof !120

cleanup.thread.i.i:                               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 321, i32 noundef 9, ptr noundef null) #13
  br label %iwl_mvm_power_config_skip_dtim.exit.i

cleanup.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %div.i.i = udiv i32 306, %mul.i270.i
  %conv44.i.i = and i32 %div.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv44.i.i)
  %cmp45.i.i = icmp eq i32 %conv44.i.i, 0
  %conv41.i.i = trunc i32 %div.i.i to i8
  %conv41.op.i.i = add i8 %conv41.i.i, 1
  %phi.bo.i.i = select i1 %cmp45.i.i, i8 2, i8 %conv41.op.i.i
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %cleanup.i.i, %if.then8.i.i.if.end53.i.i_crit_edge
  %skip.1.i.i = phi i8 [ %phi.bo.i.i, %cleanup.i.i ], [ 3, %if.then8.i.i.if.end53.i.i_crit_edge ]
  %66 = ptrtoint ptr %skip_dtim_periods.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %skip.1.i.i, ptr %skip_dtim_periods.i.i, align 1
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags.i, align 4
  %69 = or i16 %68, 1024
  store i16 %69, ptr %flags.i, align 4
  br label %iwl_mvm_power_config_skip_dtim.exit.i

iwl_mvm_power_config_skip_dtim.exit.i:            ; preds = %if.end53.i.i, %cleanup.thread.i.i, %if.then8.i.i.iwl_mvm_power_config_skip_dtim.exit.i_crit_edge, %iwl_mvm_power_is_radar.exit.i.i.iwl_mvm_power_config_skip_dtim.exit.i_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %status.i, align 4
  %72 = and i32 %71, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool53.not.i = icmp eq i32 %72, 0
  br i1 %tobool53.not.i, label %if.else.i, label %if.then54.i

if.then54.i:                                      ; preds = %iwl_mvm_power_config_skip_dtim.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %rx_data_timeout.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 3
  %73 = ptrtoint ptr %rx_data_timeout.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 270991360, ptr %rx_data_timeout.i, align 4
  %tx_data_timeout.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 4
  %74 = ptrtoint ptr %tx_data_timeout.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 270991360, ptr %tx_data_timeout.i, align 4
  br label %if.end73.i

if.else.i:                                        ; preds = %iwl_mvm_power_config_skip_dtim.exit.i
  %75 = ptrtoint ptr %low_latency_actual.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i272.i = load i8, ptr %low_latency_actual.i.i, align 8
  %76 = and i8 %bf.load.i272.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.i273.not.i = icmp eq i8 %76, 0
  br i1 %tobool.i273.not.i, label %if.else.i.if.else69.i_crit_edge, label %land.lhs.true57.i

if.else.i.if.else69.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else69.i

land.lhs.true57.i:                                ; preds = %if.else.i
  %p2p58.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %77 = ptrtoint ptr %p2p58.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %p2p58.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool59.not.i = icmp eq i8 %78, 0
  br i1 %tobool59.not.i, label %land.lhs.true57.i.if.else69.i_crit_edge, label %land.lhs.true61.i

land.lhs.true57.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else69.i

land.lhs.true61.i:                                ; preds = %land.lhs.true57.i
  %fw62.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %79 = ptrtoint ptr %fw62.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw62.i, align 8
  %arrayidx.i.i275.i = getelementptr %struct.iwl_fw, ptr %80, i32 0, i32 5, i32 8, i32 2
  %81 = ptrtoint ptr %arrayidx.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx.i.i275.i, align 4
  %83 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i276.not.i = icmp eq i32 %83, 0
  br i1 %tobool.i276.not.i, label %land.lhs.true61.i.if.else69.i_crit_edge, label %if.then66.i

land.lhs.true61.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else69.i

if.then66.i:                                      ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_data_timeout67.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 4
  %84 = ptrtoint ptr %tx_data_timeout67.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 524288, ptr %tx_data_timeout67.i, align 4
  %rx_data_timeout68.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 3
  %85 = ptrtoint ptr %rx_data_timeout68.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 10485760, ptr %rx_data_timeout68.i, align 4
  br label %if.end73.i

if.else69.i:                                      ; preds = %land.lhs.true61.i.if.else69.i_crit_edge, %land.lhs.true57.i.if.else69.i_crit_edge, %if.else.i.if.else69.i_crit_edge
  %rx_data_timeout70.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 3
  %86 = ptrtoint ptr %rx_data_timeout70.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1601830656, ptr %rx_data_timeout70.i, align 4
  %tx_data_timeout71.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 4
  %87 = ptrtoint ptr %tx_data_timeout71.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1601830656, ptr %tx_data_timeout71.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else69.i, %if.then66.i, %if.then54.i
  %uapsd_misbehaving_bssid.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1, i32 4
  %bss_conf.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %88 = ptrtoint ptr %bss_conf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bss_conf.i.i, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %uapsd_misbehaving_bssid.i.i, ptr noundef dereferenceable(6) %89, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i277.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i277.i, label %if.end73.i.if.end76.i_crit_edge, label %if.end.i.i

if.end73.i.if.end76.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

if.end.i.i:                                       ; preds = %if.end73.i
  %p2p.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %90 = ptrtoint ptr %p2p.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %p2p.i.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool2.not.i.i = icmp eq i8 %91, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %oppps_ctwindow.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 44, i32 1
  %92 = ptrtoint ptr %oppps_ctwindow.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %oppps_ctwindow.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %tobool4.not.i.i = icmp sgt i8 %93, -1
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end6.i.i_crit_edge, label %land.lhs.true.i.i.if.end76.i_crit_edge

land.lhs.true.i.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

land.lhs.true.i.i.if.end6.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  %call7.i.i = tail call i32 @iwl_mvm_phy_ctx_count(ptr noundef %mvm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i.i)
  %cmp.i278.i = icmp sgt i32 %call7.i.i, 1
  br i1 %cmp.i278.i, label %if.end6.i.i.if.end76.i_crit_edge, label %if.end10.i.i

if.end6.i.i.if.end76.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %94 = ptrtoint ptr %p2p.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %p2p.i.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool12.not.i.i = icmp eq i8 %95, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.then75.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.then75.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_p2p_standalone.i.i) #13
  %96 = ptrtoint ptr %is_p2p_standalone.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %is_p2p_standalone.i.i, align 1
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %97 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fw.i.i.i, align 8
  %_capa.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %98, i32 0, i32 5, i32 8
  %99 = ptrtoint ptr %_capa.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %_capa.i.i.i.i, align 4
  %101 = and i32 %100, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not.i.i.i = icmp eq i32 %101, 0
  br i1 %tobool.i.not.i.i.i, label %if.then13.i.i.cleanup21.critedge.i.i_crit_edge, label %iwl_mvm_is_p2p_scm_uapsd_supported.exit.i.i

if.then13.i.i.cleanup21.critedge.i.i_crit_edge:   ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21.critedge.i.i

iwl_mvm_is_p2p_scm_uapsd_supported.exit.i.i:      ; preds = %if.then13.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 10) to i32))
  %102 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 10), align 4
  %and.i.i279.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i279.i)
  %tobool.not.i.i280.i = icmp eq i32 %and.i.i279.i, 0
  br i1 %tobool.not.i.i280.i, label %if.end16.i.i, label %iwl_mvm_is_p2p_scm_uapsd_supported.exit.i.i.cleanup21.critedge.i.i_crit_edge

iwl_mvm_is_p2p_scm_uapsd_supported.exit.i.i.cleanup21.critedge.i.i_crit_edge: ; preds = %iwl_mvm_is_p2p_scm_uapsd_supported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21.critedge.i.i

if.end16.i.i:                                     ; preds = %iwl_mvm_is_p2p_scm_uapsd_supported.exit.i.i
  %hw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %103 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %104, i32 noundef 0, ptr noundef nonnull @iwl_mvm_p2p_standalone_iterator, ptr noundef nonnull %is_p2p_standalone.i.i) #13
  %105 = ptrtoint ptr %is_p2p_standalone.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %is_p2p_standalone.i.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool17.not.not.i.i = icmp eq i8 %106, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_p2p_standalone.i.i) #13
  br i1 %tobool17.not.not.i.i, label %if.end16.i.i.if.end76.i_crit_edge, label %if.end16.i.i.if.then75.i_crit_edge

if.end16.i.i.if.then75.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75.i

if.end16.i.i.if.end76.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

cleanup21.critedge.i.i:                           ; preds = %iwl_mvm_is_p2p_scm_uapsd_supported.exit.i.i.cleanup21.critedge.i.i_crit_edge, %if.then13.i.i.cleanup21.critedge.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_p2p_standalone.i.i) #13
  br label %if.end76.i

if.then75.i:                                      ; preds = %if.end16.i.i.if.then75.i_crit_edge, %if.end10.i.i.if.then75.i_crit_edge
  %107 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %status.i, align 4
  %109 = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i282.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i282.i, label %lor.lhs.false.i.i, label %if.then75.i.if.end.i285.i_crit_edge

if.then75.i.if.end.i285.i_crit_edge:              ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i285.i

lor.lhs.false.i.i:                                ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %flags.i, align 4
  %112 = and i16 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool2.not.i284.i = icmp eq i16 %112, 0
  %spec.select116.i.i = select i1 %tobool2.not.i284.i, i32 1354956800, i32 270991360
  br label %if.end.i285.i

if.end.i285.i:                                    ; preds = %lor.lhs.false.i.i, %if.then75.i.if.end.i285.i_crit_edge
  %.sink114.i.i = phi i32 [ 270991360, %if.then75.i.if.end.i285.i_crit_edge ], [ %spec.select116.i.i, %lor.lhs.false.i.i ]
  %rx_data_timeout_uapsd3.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 5
  %113 = ptrtoint ptr %rx_data_timeout_uapsd3.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink114.i.i, ptr %rx_data_timeout_uapsd3.i.i, align 4
  %tx_data_timeout_uapsd4.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 6
  %114 = ptrtoint ptr %tx_data_timeout_uapsd4.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink114.i.i, ptr %tx_data_timeout_uapsd4.i.i, align 4
  %use_ps_poll.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2
  %115 = ptrtoint ptr %use_ps_poll.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %use_ps_poll.i.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool5.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool5.not.i.i, label %for.cond.preheader.i.i, label %if.then6.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i285.i
  %uapsd_ac_flags.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 13
  %qndp_tid37.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 12
  %uapsd.i.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 4
  %117 = ptrtoint ptr %uapsd.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %uapsd.i.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool12.not.i286.i = icmp eq i8 %118, 0
  br i1 %tobool12.not.i286.i, label %for.cond.preheader.i.i.for.inc.i.i_crit_edge, label %if.end14.i.i

for.cond.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i285.i
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %flags.i, align 4
  %121 = or i16 %120, 2
  store i16 %121, ptr %flags.i, align 4
  br label %if.end76.i

if.end14.i.i:                                     ; preds = %for.cond.preheader.i.i
  %122 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %status.i, align 4
  %124 = and i32 %123, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool17.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.end14.i.i.land.lhs.true.i287.i_crit_edge

if.end14.i.i.land.lhs.true.i287.i_crit_edge:      ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i287.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %flags.i, align 4
  %127 = or i16 %126, 2
  store i16 %127, ptr %flags.i, align 4
  br label %land.lhs.true.i287.i

land.lhs.true.i287.i:                             ; preds = %if.then18.i.i, %if.end14.i.i.land.lhs.true.i287.i_crit_edge
  %128 = ptrtoint ptr %uapsd_ac_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %uapsd_ac_flags.i.i, align 4
  %conv26.i.i = or i8 %129, 1
  store i8 %conv26.i.i, ptr %uapsd_ac_flags.i.i, align 4
  %acm.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 18, i32 0, i32 4
  %130 = ptrtoint ptr %acm.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %acm.i.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool30.not.i.i = icmp eq i8 %131, 0
  br i1 %tobool30.not.i.i, label %sw.bb.i.i, label %land.lhs.true.i287.i.for.inc.i.i_crit_edge

land.lhs.true.i287.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true.i287.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb.i.i:                                        ; preds = %land.lhs.true.i287.i
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %qndp_tid37.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 6, ptr %qndp_tid37.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb.i.i, %land.lhs.true.i287.i.for.inc.i.i_crit_edge, %for.cond.preheader.i.i.for.inc.i.i_crit_edge
  %tid_found.1.off0.i.i = phi i1 [ false, %land.lhs.true.i287.i.for.inc.i.i_crit_edge ], [ true, %sw.bb.i.i ], [ false, %for.cond.preheader.i.i.for.inc.i.i_crit_edge ]
  %uapsd.1.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 18, i32 1, i32 5
  %133 = ptrtoint ptr %uapsd.1.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %uapsd.1.i.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool12.not.1.i.i = icmp eq i8 %134, 0
  br i1 %tobool12.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end14.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

if.end14.1.i.i:                                   ; preds = %for.inc.i.i
  %135 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %status.i, align 4
  %137 = and i32 %136, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool17.not.1.i.i = icmp eq i32 %137, 0
  br i1 %tobool17.not.1.i.i, label %if.then18.1.i.i, label %if.end14.1.i.i.if.end23.1.i.i_crit_edge

if.end14.1.i.i.if.end23.1.i.i_crit_edge:          ; preds = %if.end14.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.1.i.i

if.then18.1.i.i:                                  ; preds = %if.end14.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %flags.i, align 4
  %140 = or i16 %139, 2
  store i16 %140, ptr %flags.i, align 4
  br label %if.end23.1.i.i

if.end23.1.i.i:                                   ; preds = %if.then18.1.i.i, %if.end14.1.i.i.if.end23.1.i.i_crit_edge
  %141 = ptrtoint ptr %uapsd_ac_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %uapsd_ac_flags.i.i, align 4
  %conv26.1.i.i = or i8 %142, 2
  store i8 %conv26.1.i.i, ptr %uapsd_ac_flags.i.i, align 4
  br i1 %tid_found.1.off0.i.i, label %if.end23.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

if.end23.1.i.i.for.inc.1.i.i_crit_edge:           ; preds = %if.end23.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %if.end23.1.i.i
  %acm.1.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 18, i32 1, i32 4
  %143 = ptrtoint ptr %acm.1.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %acm.1.i.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool30.not.1.i.i = icmp eq i8 %144, 0
  br i1 %tobool30.not.1.i.i, label %sw.bb32.1.i.i, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

sw.bb32.1.i.i:                                    ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %qndp_tid37.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 5, ptr %qndp_tid37.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %sw.bb32.1.i.i, %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %if.end23.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %tid_found.1.off0.1.i.i = phi i1 [ true, %if.end23.1.i.i.for.inc.1.i.i_crit_edge ], [ false, %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge ], [ true, %sw.bb32.1.i.i ], [ %tid_found.1.off0.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %uapsd.2.i.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32
  %146 = ptrtoint ptr %uapsd.2.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %uapsd.2.i.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool12.not.2.i.i = icmp eq i8 %147, 0
  br i1 %tobool12.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end14.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

if.end14.2.i.i:                                   ; preds = %for.inc.1.i.i
  %148 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %status.i, align 4
  %150 = and i32 %149, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool17.not.2.i.i = icmp eq i32 %150, 0
  br i1 %tobool17.not.2.i.i, label %if.then18.2.i.i, label %if.end14.2.i.i.if.end23.2.i.i_crit_edge

if.end14.2.i.i.if.end23.2.i.i_crit_edge:          ; preds = %if.end14.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.2.i.i

if.then18.2.i.i:                                  ; preds = %if.end14.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %flags.i, align 4
  %153 = or i16 %152, 2
  store i16 %153, ptr %flags.i, align 4
  br label %if.end23.2.i.i

if.end23.2.i.i:                                   ; preds = %if.then18.2.i.i, %if.end14.2.i.i.if.end23.2.i.i_crit_edge
  %154 = ptrtoint ptr %uapsd_ac_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %uapsd_ac_flags.i.i, align 4
  %conv26.2.i.i = or i8 %155, 4
  store i8 %conv26.2.i.i, ptr %uapsd_ac_flags.i.i, align 4
  br i1 %tid_found.1.off0.1.i.i, label %if.end23.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

if.end23.2.i.i.for.inc.2.i.i_crit_edge:           ; preds = %if.end23.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %if.end23.2.i.i
  %acm.2.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 18, i32 2, i32 4
  %156 = ptrtoint ptr %acm.2.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %acm.2.i.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool30.not.2.i.i = icmp eq i8 %157, 0
  br i1 %tobool30.not.2.i.i, label %sw.bb34.2.i.i, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

sw.bb34.2.i.i:                                    ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %158 = ptrtoint ptr %qndp_tid37.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %qndp_tid37.i.i, align 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %sw.bb34.2.i.i, %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %if.end23.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %tid_found.1.off0.2.i.i = phi i1 [ true, %if.end23.2.i.i.for.inc.2.i.i_crit_edge ], [ false, %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge ], [ true, %sw.bb34.2.i.i ], [ %tid_found.1.off0.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %uapsd.3.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 18, i32 3, i32 5
  %159 = ptrtoint ptr %uapsd.3.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %uapsd.3.i.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool12.not.3.i.i = icmp eq i8 %160, 0
  br i1 %tobool12.not.3.i.i, label %for.inc.2.i.i.for.inc.3thread-pre-split.i.i_crit_edge, label %if.end14.3.i.i

for.inc.2.i.i.for.inc.3thread-pre-split.i.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3thread-pre-split.i.i

if.end14.3.i.i:                                   ; preds = %for.inc.2.i.i
  %161 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %status.i, align 4
  %163 = and i32 %162, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool17.not.3.i.i = icmp eq i32 %163, 0
  br i1 %tobool17.not.3.i.i, label %if.then18.3.i.i, label %if.end14.3.i.i.if.end23.3.i.i_crit_edge

if.end14.3.i.i.if.end23.3.i.i_crit_edge:          ; preds = %if.end14.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.3.i.i

if.then18.3.i.i:                                  ; preds = %if.end14.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %164 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %flags.i, align 4
  %166 = or i16 %165, 2
  store i16 %166, ptr %flags.i, align 4
  br label %if.end23.3.i.i

if.end23.3.i.i:                                   ; preds = %if.then18.3.i.i, %if.end14.3.i.i.if.end23.3.i.i_crit_edge
  %167 = ptrtoint ptr %uapsd_ac_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %uapsd_ac_flags.i.i, align 4
  %conv26.3.i.i = or i8 %168, 8
  store i8 %conv26.3.i.i, ptr %uapsd_ac_flags.i.i, align 4
  br i1 %tid_found.1.off0.2.i.i, label %if.end23.3.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.3.i.i

if.end23.3.i.i.for.inc.3.i.i_crit_edge:           ; preds = %if.end23.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

land.lhs.true.3.i.i:                              ; preds = %if.end23.3.i.i
  %acm.3.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 18, i32 3, i32 4
  %169 = ptrtoint ptr %acm.3.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %acm.3.i.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool30.not.3.i.i = icmp eq i8 %170, 0
  br i1 %tobool30.not.3.i.i, label %sw.bb36.3.i.i, label %land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge

land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge:      ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

sw.bb36.3.i.i:                                    ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %171 = ptrtoint ptr %qndp_tid37.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %qndp_tid37.i.i, align 1
  br label %for.inc.3thread-pre-split.i.i

for.inc.3thread-pre-split.i.i:                    ; preds = %sw.bb36.3.i.i, %for.inc.2.i.i.for.inc.3thread-pre-split.i.i_crit_edge
  %172 = ptrtoint ptr %uapsd_ac_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %.pr.i.i = load i8, ptr %uapsd_ac_flags.i.i, align 4
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.3thread-pre-split.i.i, %land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge, %if.end23.3.i.i.for.inc.3.i.i_crit_edge
  %173 = phi i8 [ %.pr.i.i, %for.inc.3thread-pre-split.i.i ], [ %conv26.3.i.i, %land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge ], [ %conv26.3.i.i, %if.end23.3.i.i.for.inc.3.i.i_crit_edge ]
  %174 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %flags.i, align 4
  %176 = or i16 %175, 16
  store i16 %176, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %173)
  %cmp45.i288.i = icmp eq i8 %173, 15
  br i1 %cmp45.i288.i, label %if.then47.i.i, label %for.inc.3.i.i.if.end56.i.i_crit_edge

for.inc.3.i.i.if.end56.i.i_crit_edge:             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i.i

if.then47.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %177 = or i16 %175, 8208
  %178 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %flags.i, align 4
  %snooze_interval.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 9
  %179 = ptrtoint ptr %snooze_interval.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 6400, ptr %snooze_interval.i.i, align 2
  %180 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %status.i, align 4
  %182 = and i32 %181, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool54.not.i.i = icmp eq i32 %182, 0
  %conv55.i.i = select i1 %tobool54.not.i.i, i16 12800, i16 6400
  %snooze_window.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 10
  %183 = ptrtoint ptr %snooze_window.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv55.i.i, ptr %snooze_window.i.i, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then47.i.i, %for.inc.3.i.i.if.end56.i.i_crit_edge
  %hw.i289.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %184 = ptrtoint ptr %hw.i289.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hw.i289.i, align 4
  %uapsd_max_sp_len.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %185, i32 0, i32 26
  %186 = ptrtoint ptr %uapsd_max_sp_len.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %uapsd_max_sp_len.i.i, align 1
  %uapsd_max_sp.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 14
  %188 = ptrtoint ptr %uapsd_max_sp.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %uapsd_max_sp.i.i, align 1
  %189 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %flags.i, align 4
  %191 = and i16 %190, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %tobool60.not.i.i = icmp eq i16 %191, 0
  %spec.select.i.i = select i1 %tobool60.not.i.i, i8 20, i8 30
  %spec.select115.i.i = select i1 %tobool60.not.i.i, i8 8, i8 20
  %192 = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 15
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %spec.select.i.i, ptr %192, align 2
  %194 = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 16
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %spec.select115.i.i, ptr %194, align 1
  %heavy_tx_thld_percentage.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 17
  %196 = ptrtoint ptr %heavy_tx_thld_percentage.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 50, ptr %heavy_tx_thld_percentage.i.i, align 4
  %heavy_rx_thld_percentage.i.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 18
  %197 = ptrtoint ptr %heavy_rx_thld_percentage.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 50, ptr %heavy_rx_thld_percentage.i.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end56.i.i, %if.then6.i.i, %cleanup21.critedge.i.i, %if.end16.i.i.if.end76.i_crit_edge, %if.end6.i.i.if.end76.i_crit_edge, %land.lhs.true.i.i.if.end76.i_crit_edge, %if.end73.i.if.end76.i_crit_edge
  %mask.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 2, i32 1
  %198 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %mask.i, align 8
  %and.i = and i32 %199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool77.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool77.not.i, label %if.end76.i.if.end82.i_crit_edge, label %if.then78.i

if.end76.i.if.end82.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82.i

if.then78.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  %dbgfs_pm.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 5
  %200 = ptrtoint ptr %dbgfs_pm.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %dbgfs_pm.i, align 8
  %202 = call i16 @llvm.bswap.i16(i16 %201) #13
  %203 = ptrtoint ptr %keep_alive_seconds.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %keep_alive_seconds.i, align 2
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then78.i, %if.end76.i.if.end82.i_crit_edge
  %and85.i = and i32 %199, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.end82.i.if.end101.i_crit_edge, label %if.then87.i

if.end82.i.if.end101.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.i

if.then87.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  %skip_over_dtim.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1
  %204 = ptrtoint ptr %skip_over_dtim.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %skip_over_dtim.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool89.not.i = icmp eq i8 %205, 0
  %206 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %flags.i, align 4
  %208 = and i16 %207, -1025
  %masksel.i = select i1 %tobool89.not.i, i16 0, i16 1024
  %.sink.i = or i16 %208, %masksel.i
  store i16 %.sink.i, ptr %flags.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then87.i, %if.end82.i.if.end101.i_crit_edge
  %and104.i = and i32 %199, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end101.i.if.end110.i_crit_edge, label %if.then106.i

if.end101.i.if.end110.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110.i

if.then106.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  %rx_data_timeout108.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 6
  %209 = ptrtoint ptr %rx_data_timeout108.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %rx_data_timeout108.i, align 4
  %211 = call i32 @llvm.bswap.i32(i32 %210) #13
  %rx_data_timeout109.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 3
  %212 = ptrtoint ptr %rx_data_timeout109.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %rx_data_timeout109.i, align 4
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then106.i, %if.end101.i.if.end110.i_crit_edge
  %and113.i = and i32 %199, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %if.end110.i.if.end119.i_crit_edge, label %if.then115.i

if.end110.i.if.end119.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119.i

if.then115.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_data_timeout117.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3
  %213 = ptrtoint ptr %tx_data_timeout117.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %tx_data_timeout117.i, align 8
  %215 = call i32 @llvm.bswap.i32(i32 %214) #13
  %tx_data_timeout118.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 4
  %216 = ptrtoint ptr %tx_data_timeout118.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %tx_data_timeout118.i, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then115.i, %if.end110.i.if.end119.i_crit_edge
  %and122.i = and i32 %199, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %if.end119.i.if.end127.i_crit_edge, label %if.then124.i

if.end119.i.if.end127.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127.i

if.then124.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  %skip_dtim_periods.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 1
  %217 = ptrtoint ptr %skip_dtim_periods.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %skip_dtim_periods.i, align 1
  %219 = ptrtoint ptr %skip_dtim_periods.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %skip_dtim_periods.i.i, align 1
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then124.i, %if.end119.i.if.end127.i_crit_edge
  %and130.i = and i32 %199, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.end127.i.if.end146.i_crit_edge, label %if.then132.i

if.end127.i.if.end146.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146.i

if.then132.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #15
  %lprx_ena.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 2
  %220 = ptrtoint ptr %lprx_ena.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %lprx_ena.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool134.not.i = icmp eq i8 %221, 0
  %222 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %flags.i, align 4
  %224 = and i16 %223, -9
  %masksel294.i = select i1 %tobool134.not.i, i16 0, i16 8
  %.sink292.i = or i16 %224, %masksel294.i
  store i16 %.sink292.i, ptr %flags.i, align 4
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then132.i, %if.end127.i.if.end146.i_crit_edge
  %and149.i = and i32 %199, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %if.end146.i.if.end156.i_crit_edge, label %if.then151.i

if.end146.i.if.end156.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156.i

if.then151.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #15
  %lprx_rssi_threshold153.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 4
  %225 = ptrtoint ptr %lprx_rssi_threshold153.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %lprx_rssi_threshold153.i, align 8
  %conv154.i = trunc i32 %226 to i8
  %lprx_rssi_threshold155.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 7
  %227 = ptrtoint ptr %lprx_rssi_threshold155.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv154.i, ptr %lprx_rssi_threshold155.i, align 4
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then151.i, %if.end146.i.if.end156.i_crit_edge
  %and159.i = and i32 %199, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %if.end156.i.if.end175.i_crit_edge, label %if.then161.i

if.end156.i.if.end175.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175.i

if.then161.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #15
  %snooze_ena.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 8
  %228 = ptrtoint ptr %snooze_ena.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %snooze_ena.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool163.not.i = icmp eq i8 %229, 0
  %230 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %flags.i, align 4
  %232 = and i16 %231, -8193
  %masksel295.i = select i1 %tobool163.not.i, i16 0, i16 8192
  %.sink293.i = or i16 %232, %masksel295.i
  store i16 %.sink293.i, ptr %flags.i, align 4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then161.i, %if.end156.i.if.end175.i_crit_edge
  %and178.i = and i32 %199, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i)
  %tobool179.not.i = icmp eq i32 %and178.i, 0
  br i1 %tobool179.not.i, label %if.end175.i.iwl_mvm_power_build_cmd.exit_crit_edge, label %if.then180.i

if.end175.i.iwl_mvm_power_build_cmd.exit_crit_edge: ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_build_cmd.exit

if.then180.i:                                     ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #15
  %uapsd_misbehaving.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 3, i32 1, i32 9
  %233 = ptrtoint ptr %uapsd_misbehaving.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %uapsd_misbehaving.i, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool182.not.i = icmp eq i8 %234, 0
  %235 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %flags.i, align 4
  %237 = and i16 %236, 16
  %238 = or i16 %236, 16
  %storemerge.i = select i1 %tobool182.not.i, i16 %237, i16 %238
  store i16 %storemerge.i, ptr %flags.i, align 4
  br label %iwl_mvm_power_build_cmd.exit

iwl_mvm_power_build_cmd.exit:                     ; preds = %if.then180.i, %if.end175.i.iwl_mvm_power_build_cmd.exit_crit_edge, %land.lhs.true22.i, %lor.lhs.false.i.iwl_mvm_power_build_cmd.exit_crit_edge, %if.end.i.iwl_mvm_power_build_cmd.exit_crit_edge, %entry.iwl_mvm_power_build_cmd.exit_crit_edge
  %239 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mvm, align 8
  %241 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %cmd, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %243 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  %flags.i5 = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 1
  %244 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %flags.i5, align 4
  %246 = call i16 @llvm.bswap.i16(i16 %245) #13
  %conv.i6 = zext i16 %246 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %240, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.39, i32 noundef %242, i32 noundef %243, i32 noundef %conv.i6) #13
  %247 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mvm, align 8
  %249 = ptrtoint ptr %keep_alive_seconds.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %keep_alive_seconds.i, align 2
  %251 = call i16 @llvm.bswap.i16(i16 %250) #13
  %conv7.i = zext i16 %251 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %248, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.40, i32 noundef %conv7.i) #13
  %252 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %flags.i5, align 4
  %254 = and i16 %253, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %254)
  %tobool.not.i8 = icmp eq i16 %254, 0
  %255 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mvm, align 8
  br i1 %tobool.not.i8, label %do.end13.i, label %do.end18.i

do.end13.i:                                       ; preds = %iwl_mvm_power_build_cmd.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %256, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.41) #13
  br label %iwl_mvm_power_log.exit

do.end18.i:                                       ; preds = %iwl_mvm_power_build_cmd.exit
  %rx_data_timeout.i9 = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 3
  %257 = ptrtoint ptr %rx_data_timeout.i9 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %rx_data_timeout.i9, align 4
  %259 = call i32 @llvm.bswap.i32(i32 %258) #13
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %256, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.42, i32 noundef %259) #13
  %260 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mvm, align 8
  %tx_data_timeout.i10 = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 4
  %262 = ptrtoint ptr %tx_data_timeout.i10 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %tx_data_timeout.i10, align 4
  %264 = call i32 @llvm.bswap.i32(i32 %263) #13
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %261, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.43, i32 noundef %264) #13
  %265 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %flags.i5, align 4
  %267 = and i16 %266, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %267)
  %tobool29.not.i = icmp eq i16 %267, 0
  br i1 %tobool29.not.i, label %do.end18.i.if.end37.i_crit_edge, label %do.end33.i

do.end18.i.if.end37.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

do.end33.i:                                       ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %268 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mvm, align 8
  %skip_dtim_periods.i11 = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 8
  %270 = ptrtoint ptr %skip_dtim_periods.i11 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %skip_dtim_periods.i11, align 1
  %conv35.i = zext i8 %271 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %269, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.44, i32 noundef %conv35.i) #13
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end33.i, %do.end18.i.if.end37.i_crit_edge
  %272 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %flags.i5, align 4
  %274 = and i16 %273, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %274)
  %tobool41.not.i = icmp eq i16 %274, 0
  br i1 %tobool41.not.i, label %if.end37.i.if.end49.i_crit_edge, label %do.end45.i

if.end37.i.if.end49.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

do.end45.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %275 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mvm, align 8
  %lprx_rssi_threshold.i12 = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 7
  %277 = ptrtoint ptr %lprx_rssi_threshold.i12 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %lprx_rssi_threshold.i12, align 4
  %conv47.i = zext i8 %278 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %276, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.45, i32 noundef %conv47.i) #13
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end45.i, %if.end37.i.if.end49.i_crit_edge
  %279 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %flags.i5, align 4
  %281 = and i16 %280, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %281)
  %tobool53.not.i13 = icmp eq i16 %281, 0
  br i1 %tobool53.not.i13, label %if.end49.i.iwl_mvm_power_log.exit_crit_edge, label %do.end57.i

if.end49.i.iwl_mvm_power_log.exit_crit_edge:      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_mvm_power_log.exit

do.end57.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %282 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %283, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.46) #13
  %284 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %mvm, align 8
  %rx_data_timeout_uapsd.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 5
  %286 = ptrtoint ptr %rx_data_timeout_uapsd.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %rx_data_timeout_uapsd.i, align 4
  %288 = call i32 @llvm.bswap.i32(i32 %287) #13
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %285, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.47, i32 noundef %288) #13
  %289 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %mvm, align 8
  %tx_data_timeout_uapsd.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 6
  %291 = ptrtoint ptr %tx_data_timeout_uapsd.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %tx_data_timeout_uapsd.i, align 4
  %293 = call i32 @llvm.bswap.i32(i32 %292) #13
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %290, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.48, i32 noundef %293) #13
  %294 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %mvm, align 8
  %qndp_tid.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 12
  %296 = ptrtoint ptr %qndp_tid.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %qndp_tid.i, align 1
  %conv74.i = zext i8 %297 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %295, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.49, i32 noundef %conv74.i) #13
  %298 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mvm, align 8
  %uapsd_ac_flags.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 13
  %300 = ptrtoint ptr %uapsd_ac_flags.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %uapsd_ac_flags.i, align 4
  %conv80.i = zext i8 %301 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %299, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.50, i32 noundef %conv80.i) #13
  %302 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mvm, align 8
  %uapsd_max_sp.i = getelementptr inbounds %struct.iwl_mac_power_cmd, ptr %cmd, i32 0, i32 14
  %304 = ptrtoint ptr %uapsd_max_sp.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %uapsd_max_sp.i, align 1
  %conv86.i = zext i8 %305 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %303, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_power_log, ptr noundef nonnull @.str.51, i32 noundef %conv86.i) #13
  br label %iwl_mvm_power_log.exit

iwl_mvm_power_log.exit:                           ; preds = %do.end57.i, %if.end49.i.iwl_mvm_power_log.exit_crit_edge, %do.end13.i
  %mac_pwr_cmd = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 1, i32 4
  %306 = call ptr @memcpy(ptr %mac_pwr_cmd, ptr %cmd, i32 40)
  %call1 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 169, i32 noundef 0, i16 noundef zeroext 40, ptr noundef nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_beacon_filter_send_cmd(ptr noundef %mvm, ptr noundef %cmd, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvm, align 8
  %ba_enable_beacon_abort = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 10
  %2 = ptrtoint ptr %ba_enable_beacon_abort to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ba_enable_beacon_abort, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.22, i32 noundef %4) #13
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  %ba_escape_timer = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 9
  %7 = ptrtoint ptr %ba_escape_timer to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %ba_escape_timer, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.23, i32 noundef %9) #13
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  %bf_debug_flag = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 7
  %12 = ptrtoint ptr %bf_debug_flag to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %bf_debug_flag, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.24, i32 noundef %14) #13
  %15 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvm, align 8
  %bf_enable_beacon_filter = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 6
  %17 = ptrtoint ptr %bf_enable_beacon_filter to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %bf_enable_beacon_filter, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.25, i32 noundef %19) #13
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %cmd, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.26, i32 noundef %24) #13
  %25 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mvm, align 8
  %bf_escape_timer = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 8
  %27 = ptrtoint ptr %bf_escape_timer to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %bf_escape_timer, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.27, i32 noundef %29) #13
  %30 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mvm, align 8
  %bf_roaming_energy_delta = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 1
  %32 = ptrtoint ptr %bf_roaming_energy_delta to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %bf_roaming_energy_delta, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.28, i32 noundef %34) #13
  %35 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvm, align 8
  %bf_roaming_state = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 2
  %37 = ptrtoint ptr %bf_roaming_state to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %bf_roaming_state, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.29, i32 noundef %39) #13
  %40 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mvm, align 8
  %bf_temp_threshold = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 3
  %42 = ptrtoint ptr %bf_temp_threshold to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %bf_temp_threshold, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.30, i32 noundef %44) #13
  %45 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mvm, align 8
  %bf_temp_fast_filter = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 4
  %47 = ptrtoint ptr %bf_temp_fast_filter to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %bf_temp_fast_filter, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %46, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.31, i32 noundef %49) #13
  %50 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mvm, align 8
  %bf_temp_slow_filter = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 5
  %52 = ptrtoint ptr %bf_temp_slow_filter to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %bf_temp_slow_filter, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.32, i32 noundef %54) #13
  %55 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mvm, align 8
  %bf_threshold_absolute_low = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 11
  %57 = ptrtoint ptr %bf_threshold_absolute_low to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %bf_threshold_absolute_low, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %arrayidx80 = getelementptr %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 11, i32 1
  %60 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx80, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.33, i32 noundef %59, i32 noundef %62) #13
  %63 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mvm, align 8
  %bf_threshold_absolute_high = getelementptr inbounds %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 12
  %65 = ptrtoint ptr %bf_threshold_absolute_high to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %bf_threshold_absolute_high, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %arrayidx90 = getelementptr %struct.iwl_beacon_filter_cmd, ptr %cmd, i32 0, i32 12, i32 1
  %68 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx90, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %64, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_beacon_filter_send_cmd, ptr noundef nonnull @.str.34, i32 noundef %67, i32 noundef %70) #13
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %71 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %72, i32 0, i32 5, i32 7, i32 1
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %arrayidx.i.i, align 4
  %75 = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i.not = icmp eq i32 %75, 0
  %. = select i1 %tobool.i.not, i16 44, i16 60
  %call93 = tail call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 210, i32 noundef %flags, i16 noundef zeroext %., ptr noundef %cmd) #13
  ret i32 %call93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_power_ps_disabled_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %0 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp ult i16 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %ps_disabled = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 12
  %4 = ptrtoint ptr %ps_disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ps_disabled, align 1, !range !119
  %6 = ptrtoint ptr %_data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %_data, align 1, !range !119
  %or10 = or i8 %7, %5
  store i8 %or10, ptr %_data, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @iwl_mvm_power_disable_pm_iterator(ptr nocapture noundef readnone %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef writeonly %vif) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 9
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pm_enabled, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_tdls_sta_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
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
declare dso_local i32 @iwl_mvm_phy_ctx_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_p2p_standalone_iterator(ptr nocapture noundef writeonly %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %2 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p2p.i, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %ieee80211_vif_type_p2p.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %1, label %if.then.i.i.sw.epilog_crit_edge [
    i32 9, label %if.then.i.i.sw.epilog.sink.split_crit_edge
    i32 3, label %if.then.i.i.sw.epilog.sink.split_crit_edge7
  ]

if.then.i.i.sw.epilog.sink.split_crit_edge7:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.then.i.i.sw.epilog.sink.split_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.then.i.i.sw.epilog_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

ieee80211_vif_type_p2p.exit:                      ; preds = %entry
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge [
    i32 9, label %ieee80211_vif_type_p2p.exit.sw.epilog.sink.split_crit_edge
    i32 3, label %ieee80211_vif_type_p2p.exit.sw.epilog.sink.split_crit_edge8
    i32 2, label %sw.bb1
  ]

ieee80211_vif_type_p2p.exit.sw.epilog.sink.split_crit_edge8: ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

ieee80211_vif_type_p2p.exit.sw.epilog.sink.split_crit_edge: ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge:  ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %ieee80211_vif_type_p2p.exit
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %assoc, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.sw.epilog.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %ieee80211_vif_type_p2p.exit.sw.epilog.sink.split_crit_edge, %ieee80211_vif_type_p2p.exit.sw.epilog.sink.split_crit_edge8, %if.then.i.i.sw.epilog.sink.split_crit_edge, %if.then.i.i.sw.epilog.sink.split_crit_edge7
  %8 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %_data, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %ieee80211_vif_type_p2p.exit.sw.epilog_crit_edge, %if.then.i.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__func__.iwl_mvm_power_update_device, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 486, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 688, i32 39}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 690, i32 39}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 692, i32 39}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 698, i32 39}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 701, i32 39}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 704, i32 40}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 706, i32 40}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 711, i32 6}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 717, i32 39}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 719, i32 39}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 721, i32 39}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 722, i32 39}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 724, i32 39}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 726, i32 39}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 728, i32 39}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 730, i32 39}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 732, i32 39}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 734, i32 39}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 742, i32 39}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 744, i32 39}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 903, i32 2}
!45 = !{ptr @__func__.iwl_mvm_beacon_filter_send_cmd, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 28, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 30, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 32, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 34, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 36, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 38, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 40, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 42, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 44, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 46, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 48, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 50, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 54, i32 2}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 286, i32 17}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__func__.iwl_mvm_power_log, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 89, i32 2}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 93, i32 2}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 97, i32 3}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 101, i32 2}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 103, i32 2}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 106, i32 3}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 109, i32 3}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 112, i32 3}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 113, i32 3}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 115, i32 3}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 117, i32 3}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 118, i32 3}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/power.c", i32 119, i32 3}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i8 0, i8 2}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2149382363}
!123 = !{i64 2149382629}
