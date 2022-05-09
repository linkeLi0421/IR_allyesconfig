; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.iwl_phy_context_cmd = type { i32, i32, %struct.iwl_fw_channel_info, i32, i32, i32, i32 }
%struct.iwl_fw_channel_info = type { i32, i8, i8, i8, i8 }
%struct.iwl_phy_context_cmd_v1 = type { i32, i32, i32, i32, %struct.iwl_fw_channel_info, %struct.iwl_phy_context_cmd_tail }
%struct.iwl_phy_context_cmd_tail = type { i32, i32, i32, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.139, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.139 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.118 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.118 = type { ptr, i32 }
%struct.iwl_rlc_config_cmd = type { i32, %struct.iwl_rlc_properties, %struct.iwl_sad_properties, i8, [3 x i8] }
%struct.iwl_rlc_properties = type { i32, i32 }
%struct.iwl_sad_properties = type { i32, i32, i32, i32 }
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
%struct.iwl_fw_channel_info_v1 = type { i8, i8, i8, i8 }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid channel width=%u\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid channel definition\00", [37 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@iwl_mvm_phy_ctxt_unref.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY ctxt cmd error ver %d not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PHY ctxt cmd error. ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@iwl_mvm_phy_band_from_nl80211.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported band (%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_get_channel_width = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\01\02\00\03", [26 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_set_chan_info_chandef = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\01\02\00\03", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 10, i64 30, i64 50, i64 70, i64 4294967226, i64 4294967246, i64 4294967266, i64 4294967286]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 10, i64 30, i64 50, i64 70, i64 4294967226, i64 4294967246, i64 4294967266, i64 4294967286]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 25, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 54, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 244, i32 3 }
@___asan_gen_.22 = private constant [53 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 250, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 2099, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [39 x i8] c"switch.table.iwl_mvm_get_channel_width\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [43 x i8] c"switch.table.iwl_mvm_set_chan_info_chandef\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @switch.table.iwl_mvm_get_channel_width, ptr @switch.table.iwl_mvm_set_chan_info_chandef], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_get_channel_width to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_set_chan_info_chandef to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_get_channel_width(ptr nocapture noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %2 = icmp ult i32 %1, 6
  br i1 %2, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %1) #6
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %1 to i8
  %switch.shifted = lshr i8 47, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.iwl_mvm_get_channel_width, i32 0, i32 %1
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %4)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_get_ctrl_pos(ptr nocapture noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %4 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq1, align 4
  %sub = sub i32 %3, %5
  %6 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sub, label %do.end [
    i32 -70, label %entry.return_crit_edge
    i32 -50, label %sw.bb1
    i32 -30, label %sw.bb2
    i32 -10, label %sw.bb3
    i32 10, label %sw.bb4
    i32 30, label %sw.bb5
    i32 50, label %sw.bb6
    i32 70, label %sw.bb7
    i32 0, label %entry.sw.bb22_crit_edge
  ]

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %sw.bb22

sw.bb22:                                          ; preds = %do.end, %entry.sw.bb22_crit_edge
  br label %return

return:                                           ; preds = %sw.bb22, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %sw.bb22 ], [ 7, %sw.bb7 ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 0, %sw.bb3 ], [ 1, %sw.bb2 ], [ 2, %sw.bb1 ], [ 3, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_phy_ctxt_add(ptr noundef %mvm, ptr noundef %ctxt, ptr nocapture noundef readonly %chandef, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %ref = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 2
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !24

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  br i1 %tobool23.not, label %if.end.if.end50_crit_edge, label %land.rhs24

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.rhs24:                                       ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end44, label %land.rhs24.if.end50_crit_edge, !prof !25

land.rhs24.if.end50_crit_edge:                    ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end44:                                         ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef null) #6
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %land.rhs24.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %channel = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 4
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %channel, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %width60 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 3
  %11 = ptrtoint ptr %width60 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width60, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %12 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq1, align 4
  %center_freq161 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 5
  %14 = ptrtoint ptr %center_freq161 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %center_freq161, align 4
  %call62 = tail call fastcc i32 @iwl_mvm_phy_ctxt_apply(ptr noundef %mvm, ptr noundef %ctxt, ptr noundef %chandef, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic, i32 noundef 1)
  ret i32 %call62
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_phy_ctxt_apply(ptr noundef %mvm, ptr noundef %ctxt, ptr nocapture noundef readonly %chandef, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_phy_context_cmd, align 4
  %cmd8 = alloca %struct.iwl_phy_context_cmd_v1, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 1) #6
  %conv = zext i8 %call to i32
  %call.off = add i8 %call, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.off)
  %switch = icmp ult i8 %call.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #6
  %2 = getelementptr inbounds i8, ptr %cmd, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %4 = ptrtoint ptr %ctxt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctxt, align 4
  %conv.i = zext i16 %5 to i32
  %color.i = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 1
  %6 = ptrtoint ptr %color.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %color.i, align 2
  %conv1.i = zext i16 %7 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %shl2.i, %conv.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cmd, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %action) #6
  %action3.i = getelementptr inbounds %struct.iwl_phy_context_cmd, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %action3.i, align 4
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 8
  %14 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp ne i32 %17, 0
  %not.or.cond.i.i = and i1 %cmp.i.i, %tobool.i.not.i.i
  %21 = select i1 %not.or.cond.i.i, i32 16777216, i32 0
  %lmac_id.i = getelementptr inbounds %struct.iwl_phy_context_cmd, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %lmac_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %lmac_id.i, align 4
  %ci.i = getelementptr inbounds %struct.iwl_phy_context_cmd, ptr %cmd, i32 0, i32 2
  call fastcc void @iwl_mvm_set_chan_info_chandef(ptr noundef %mvm, ptr noundef %ci.i, ptr noundef %chandef) #6
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 8
  %call2.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %24, i8 noundef zeroext 5, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call2.i)
  %cmp.i = icmp ult i8 %call2.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.then.iwl_mvm_phy_ctxt_cmd_data.exit_crit_edge

if.then.iwl_mvm_phy_ctxt_cmd_data.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_ctxt_cmd_data.exit

if.then.i:                                        ; preds = %if.then
  %rxchain_info.i = getelementptr inbounds %struct.iwl_phy_context_cmd, ptr %cmd, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chains_dynamic)
  %cmp.i10.i = icmp eq i8 %chains_dynamic, 1
  br i1 %cmp.i10.i, label %land.lhs.true.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call zeroext i1 @iwl_mvm_rx_diversity_allowed(ptr noundef %mvm, ptr noundef %ctxt) #6
  %spec.select.i.i = select i1 %call.i.i, i8 2, i8 1
  %spec.select38.i.i = select i1 %call.i.i, i8 2, i8 %chains_static
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then.i.if.end.i.i_crit_edge
  %active_cnt.0.i.i = phi i8 [ %chains_dynamic, %if.then.i.if.end.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %idle_cnt.0.i.i = phi i8 [ %chains_static, %if.then.i.if.end.i.i_crit_edge ], [ %spec.select38.i.i, %land.lhs.true.i.i ]
  %fw_static_smps_request.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 129
  %25 = ptrtoint ptr %fw_static_smps_request.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fw_static_smps_request.i.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp ne i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %active_cnt.0.i.i)
  %cmp6.i.i = icmp eq i8 %active_cnt.0.i.i, 1
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp6.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %idle_cnt.0.i.i)
  %cmp10.i.i = icmp eq i8 %idle_cnt.0.i.i, 1
  %or.cond39.i.i = select i1 %or.cond.i.i, i1 %cmp10.i.i, i1 false
  %nvm_data.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %27 = ptrtoint ptr %nvm_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nvm_data.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.cond.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.cond.false.i.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %valid_rx_ant.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %valid_rx_ant.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %valid_rx_ant.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 8
  %valid_rx_ant3.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %valid_rx_ant3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %valid_rx_ant3.i.i.i, align 1
  %and.i.i.i = and i8 %34, %30
  br label %iwl_mvm_get_valid_rx_ant.exit.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, %if.end.i.i.cond.false.i.i.i_crit_edge
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw, align 8
  %valid_rx_ant9.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %valid_rx_ant9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %valid_rx_ant9.i.i.i, align 1
  br label %iwl_mvm_get_valid_rx_ant.exit.i.i

iwl_mvm_get_valid_rx_ant.exit.i.i:                ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i8 [ %and.i.i.i, %cond.true.i.i.i ], [ %38, %cond.false.i.i.i ]
  %conv15.i.i = zext i8 %cond.i.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv15.i.i, 1
  %39 = zext i8 %idle_cnt.0.i.i to i32
  %.op.i.i = shl nuw nsw i32 %39, 10
  %shl17.i.i = select i1 %or.cond39.i.i, i32 0, i32 %.op.i.i
  %40 = or i32 %shl.i.i, %shl17.i.i
  %41 = zext i8 %active_cnt.0.i.i to i32
  %.op40.i.i = shl nuw nsw i32 %41, 12
  %shl19.i.i = select i1 %or.cond39.i.i, i32 0, i32 %.op40.i.i
  %42 = or i32 %40, %shl19.i.i
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = ptrtoint ptr %rxchain_info.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rxchain_info.i, align 4
  %dbgfs_rx_phyinfo.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 85
  %45 = ptrtoint ptr %dbgfs_rx_phyinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dbgfs_rx_phyinfo.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool21.not.i.i = icmp eq i16 %46, 0
  br i1 %tobool21.not.i.i, label %iwl_mvm_get_valid_rx_ant.exit.i.i.iwl_mvm_phy_ctxt_cmd_data.exit_crit_edge, label %if.then24.i.i, !prof !24

iwl_mvm_get_valid_rx_ant.exit.i.i.iwl_mvm_phy_ctxt_cmd_data.exit_crit_edge: ; preds = %iwl_mvm_get_valid_rx_ant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_ctxt_cmd_data.exit

if.then24.i.i:                                    ; preds = %iwl_mvm_get_valid_rx_ant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.i.i = zext i16 %46 to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv26.i.i) #6
  %48 = ptrtoint ptr %rxchain_info.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rxchain_info.i, align 4
  br label %iwl_mvm_phy_ctxt_cmd_data.exit

iwl_mvm_phy_ctxt_cmd_data.exit:                   ; preds = %if.then24.i.i, %iwl_mvm_get_valid_rx_ant.exit.i.i.iwl_mvm_phy_ctxt_cmd_data.exit_crit_edge, %if.then.iwl_mvm_phy_ctxt_cmd_data.exit_crit_edge
  %call4 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 8, i32 noundef 0, i16 noundef zeroext 32, ptr noundef nonnull %cmd) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #6
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call)
  %cmp5 = icmp ult i8 %call, 3
  br i1 %cmp5, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd8) #6
  %49 = getelementptr inbounds i8, ptr %cmd8, i32 8
  %50 = call ptr @memset(ptr %49, i32 0, i32 32)
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i56 = getelementptr %struct.iwl_fw, ptr %52, i32 0, i32 5, i32 8, i32 1
  %53 = ptrtoint ptr %arrayidx.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i.i.i.i56, align 4
  %55 = lshr i32 %54, 14
  %56 = trunc i32 %55 to i16
  %57 = or i16 %56, -5
  %conv10 = add nsw i16 %57, 41
  %58 = ptrtoint ptr %ctxt to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ctxt, align 4
  %conv.i57 = zext i16 %59 to i32
  %color.i58 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 1
  %60 = ptrtoint ptr %color.i58 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %color.i58, align 2
  %conv1.i59 = zext i16 %61 to i32
  %shl2.i60 = shl nuw nsw i32 %conv1.i59, 8
  %or.i61 = or i32 %shl2.i60, %conv.i57
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i61) #6
  %63 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %cmd8, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %action) #6
  %action3.i62 = getelementptr inbounds %struct.iwl_phy_context_cmd, ptr %cmd8, i32 0, i32 1
  %65 = ptrtoint ptr %action3.i62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %action3.i62, align 4
  %ci.i63 = getelementptr inbounds %struct.iwl_phy_context_cmd_v1, ptr %cmd8, i32 0, i32 4
  %66 = ptrtoint ptr %arrayidx.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i.i.i.i56, align 4
  %68 = and i32 %67, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.i.not.i.i = icmp eq i32 %68, 0
  %cond.i.i = select i1 %tobool.i.i.not.i.i, i32 4, i32 8
  %add.ptr.i.i = getelementptr i8, ptr %ci.i63, i32 %cond.i.i
  call fastcc void @iwl_mvm_set_chan_info_chandef(ptr noundef %mvm, ptr noundef %ci.i63, ptr noundef %chandef) #6
  %rxchain_info.i64 = getelementptr inbounds %struct.iwl_phy_context_cmd_tail, ptr %add.ptr.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chains_dynamic)
  %cmp.i.i65 = icmp eq i8 %chains_dynamic, 1
  br i1 %cmp.i.i65, label %land.lhs.true.i.i69, label %if.then7.if.end.i.i80_crit_edge

if.then7.if.end.i.i80_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i80

land.lhs.true.i.i69:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i66 = tail call zeroext i1 @iwl_mvm_rx_diversity_allowed(ptr noundef %mvm, ptr noundef %ctxt) #6
  %spec.select.i.i67 = select i1 %call.i.i66, i8 2, i8 1
  %spec.select38.i.i68 = select i1 %call.i.i66, i8 2, i8 %chains_static
  br label %if.end.i.i80

if.end.i.i80:                                     ; preds = %land.lhs.true.i.i69, %if.then7.if.end.i.i80_crit_edge
  %active_cnt.0.i.i70 = phi i8 [ %chains_dynamic, %if.then7.if.end.i.i80_crit_edge ], [ %spec.select.i.i67, %land.lhs.true.i.i69 ]
  %idle_cnt.0.i.i71 = phi i8 [ %chains_static, %if.then7.if.end.i.i80_crit_edge ], [ %spec.select38.i.i68, %land.lhs.true.i.i69 ]
  %fw_static_smps_request.i.i72 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 129
  %69 = ptrtoint ptr %fw_static_smps_request.i.i72 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fw_static_smps_request.i.i72, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i73 = icmp ne i8 %70, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %active_cnt.0.i.i70)
  %cmp6.i.i74 = icmp eq i8 %active_cnt.0.i.i70, 1
  %or.cond.i.i75 = select i1 %tobool.not.i.i73, i1 %cmp6.i.i74, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %idle_cnt.0.i.i71)
  %cmp10.i.i76 = icmp eq i8 %idle_cnt.0.i.i71, 1
  %or.cond39.i.i77 = select i1 %or.cond.i.i75, i1 %cmp10.i.i76, i1 false
  %nvm_data.i.i.i78 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %71 = ptrtoint ptr %nvm_data.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nvm_data.i.i.i78, align 8
  %tobool.not.i.i.i79 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i.i79, label %if.end.i.i80.cond.false.i.i.i88_crit_edge, label %land.lhs.true.i.i.i83

if.end.i.i80.cond.false.i.i.i88_crit_edge:        ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i.i88

land.lhs.true.i.i.i83:                            ; preds = %if.end.i.i80
  %valid_rx_ant.i.i.i81 = getelementptr inbounds %struct.iwl_nvm_data, ptr %72, i32 0, i32 21
  %73 = ptrtoint ptr %valid_rx_ant.i.i.i81 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %valid_rx_ant.i.i.i81, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool2.not.i.i.i82 = icmp eq i8 %74, 0
  br i1 %tobool2.not.i.i.i82, label %land.lhs.true.i.i.i83.cond.false.i.i.i88_crit_edge, label %cond.true.i.i.i86

land.lhs.true.i.i.i83.cond.false.i.i.i88_crit_edge: ; preds = %land.lhs.true.i.i.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i.i88

cond.true.i.i.i86:                                ; preds = %land.lhs.true.i.i.i83
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fw, align 8
  %valid_rx_ant3.i.i.i84 = getelementptr inbounds %struct.iwl_fw, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %valid_rx_ant3.i.i.i84 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %valid_rx_ant3.i.i.i84, align 1
  %and.i.i.i85 = and i8 %78, %74
  br label %iwl_mvm_get_valid_rx_ant.exit.i.i98

cond.false.i.i.i88:                               ; preds = %land.lhs.true.i.i.i83.cond.false.i.i.i88_crit_edge, %if.end.i.i80.cond.false.i.i.i88_crit_edge
  %79 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw, align 8
  %valid_rx_ant9.i.i.i87 = getelementptr inbounds %struct.iwl_fw, ptr %80, i32 0, i32 16
  %81 = ptrtoint ptr %valid_rx_ant9.i.i.i87 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %valid_rx_ant9.i.i.i87, align 1
  br label %iwl_mvm_get_valid_rx_ant.exit.i.i98

iwl_mvm_get_valid_rx_ant.exit.i.i98:              ; preds = %cond.false.i.i.i88, %cond.true.i.i.i86
  %cond.i.i.i89 = phi i8 [ %and.i.i.i85, %cond.true.i.i.i86 ], [ %82, %cond.false.i.i.i88 ]
  %conv15.i.i90 = zext i8 %cond.i.i.i89 to i32
  %shl.i.i91 = shl nuw nsw i32 %conv15.i.i90, 1
  %83 = zext i8 %idle_cnt.0.i.i71 to i32
  %.op.i.i92 = shl nuw nsw i32 %83, 10
  %shl17.i.i93 = select i1 %or.cond39.i.i77, i32 0, i32 %.op.i.i92
  %84 = or i32 %shl.i.i91, %shl17.i.i93
  %85 = zext i8 %active_cnt.0.i.i70 to i32
  %.op40.i.i94 = shl nuw nsw i32 %85, 12
  %shl19.i.i95 = select i1 %or.cond39.i.i77, i32 0, i32 %.op40.i.i94
  %86 = or i32 %84, %shl19.i.i95
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #6
  %88 = ptrtoint ptr %rxchain_info.i64 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %rxchain_info.i64, align 4
  %dbgfs_rx_phyinfo.i.i96 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 85
  %89 = ptrtoint ptr %dbgfs_rx_phyinfo.i.i96 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %dbgfs_rx_phyinfo.i.i96, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool21.not.i.i97 = icmp eq i16 %90, 0
  br i1 %tobool21.not.i.i97, label %iwl_mvm_get_valid_rx_ant.exit.i.i98.iwl_mvm_phy_ctxt_set_rxchain.exit.i_crit_edge, label %if.then24.i.i100, !prof !24

iwl_mvm_get_valid_rx_ant.exit.i.i98.iwl_mvm_phy_ctxt_set_rxchain.exit.i_crit_edge: ; preds = %iwl_mvm_get_valid_rx_ant.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_ctxt_set_rxchain.exit.i

if.then24.i.i100:                                 ; preds = %iwl_mvm_get_valid_rx_ant.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.i.i99 = zext i16 %90 to i32
  %91 = tail call i32 @llvm.bswap.i32(i32 %conv26.i.i99) #6
  %92 = ptrtoint ptr %rxchain_info.i64 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %rxchain_info.i64, align 4
  br label %iwl_mvm_phy_ctxt_set_rxchain.exit.i

iwl_mvm_phy_ctxt_set_rxchain.exit.i:              ; preds = %if.then24.i.i100, %iwl_mvm_get_valid_rx_ant.exit.i.i98.iwl_mvm_phy_ctxt_set_rxchain.exit.i_crit_edge
  br i1 %tobool.not.i.i.i79, label %iwl_mvm_phy_ctxt_set_rxchain.exit.i.cond.false.i.i_crit_edge, label %land.lhs.true.i10.i

iwl_mvm_phy_ctxt_set_rxchain.exit.i.cond.false.i.i_crit_edge: ; preds = %iwl_mvm_phy_ctxt_set_rxchain.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i

land.lhs.true.i10.i:                              ; preds = %iwl_mvm_phy_ctxt_set_rxchain.exit.i
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %72, i32 0, i32 20
  %93 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool2.not.i.i = icmp eq i8 %94, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i10.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i10.i.cond.false.i.i_crit_edge:     ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fw, align 8
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %96, i32 0, i32 15
  %97 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i = and i8 %98, %94
  br label %iwl_mvm_phy_ctxt_cmd_data_v1.exit

cond.false.i.i:                                   ; preds = %land.lhs.true.i10.i.cond.false.i.i_crit_edge, %iwl_mvm_phy_ctxt_set_rxchain.exit.i.cond.false.i.i_crit_edge
  %99 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fw, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %100, i32 0, i32 15
  %101 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_phy_ctxt_cmd_data_v1.exit

iwl_mvm_phy_ctxt_cmd_data_v1.exit:                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i11.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %102, %cond.false.i.i ]
  %conv.i101 = zext i8 %cond.i11.i to i32
  %103 = shl nuw i32 %conv.i101, 24
  %104 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %add.ptr.i.i, align 4
  %call11 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 8, i32 noundef 0, i16 noundef zeroext %conv10, ptr noundef nonnull %cmd8) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd8) #6
  br label %if.end16

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %106, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %conv) #6
  br label %cleanup

if.end16:                                         ; preds = %iwl_mvm_phy_ctxt_cmd_data_v1.exit, %iwl_mvm_phy_ctxt_cmd_data.exit
  %ret.0 = phi i32 [ %call4, %iwl_mvm_phy_ctxt_cmd_data.exit ], [ %call11, %iwl_mvm_phy_ctxt_cmd_data_v1.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %108, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %ret.0) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %action)
  %cmp26.not = icmp eq i32 %action, 3
  br i1 %cmp26.not, label %if.end25.cleanup_crit_edge, label %if.then28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = call fastcc i32 @iwl_mvm_phy_send_rlc(ptr noundef %mvm, ptr noundef %ctxt, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %do.end21, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end21 ], [ %call29, %if.then28 ], [ -95, %do.end ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_phy_ctxt_ref(ptr noundef %mvm, ptr nocapture noundef %ctxt) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !25

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ref = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 2
  %1 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ref, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %ref, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_phy_ctxt_changed(ptr noundef %mvm, ptr noundef %ctxt, ptr nocapture noundef readonly %chandef, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !25

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 302, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %call24 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %2, i8 noundef zeroext 5, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call24)
  %cmp25 = icmp ugt i8 %call24, 1
  br i1 %cmp25, label %land.lhs.true, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end
  %channel = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 4
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel, align 4
  %5 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chandef, align 4
  %cmp27 = icmp eq ptr %4, %6
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true29:                                  ; preds = %land.lhs.true
  %width = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 3
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 4
  %width30 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %9 = ptrtoint ptr %width30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp31 = icmp eq i32 %8, %10
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true29.if.end39_crit_edge

land.lhs.true29.if.end39_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %center_freq1 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 5
  %11 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq1, align 4
  %center_freq134 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %13 = ptrtoint ptr %center_freq134 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp35 = icmp eq i32 %12, %14
  br i1 %cmp35, label %if.then37, label %land.lhs.true33.if.end39_crit_edge

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call fastcc i32 @iwl_mvm_phy_send_rlc(ptr noundef %mvm, ptr noundef %ctxt, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic)
  br label %cleanup62

if.end39:                                         ; preds = %land.lhs.true33.if.end39_crit_edge, %land.lhs.true29.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end.if.end39_crit_edge
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %16, i32 0, i32 5, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i, align 4
  %19 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end39.if.end54_crit_edge, label %land.lhs.true43

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

land.lhs.true43:                                  ; preds = %if.end39
  %channel44 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 4
  %20 = ptrtoint ptr %channel44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channel44, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chandef, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp47.not = icmp eq i32 %23, %27
  br i1 %cmp47.not, label %land.lhs.true43.if.end54_crit_edge, label %if.then49

land.lhs.true43.if.end54_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then49:                                        ; preds = %land.lhs.true43
  %call50 = tail call fastcc i32 @iwl_mvm_phy_ctxt_apply(ptr noundef %mvm, ptr noundef %ctxt, ptr noundef %chandef, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end54_crit_edge, label %if.then49.cleanup62_crit_edge

if.then49.cleanup62_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.then49.if.end54_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end54:                                         ; preds = %if.then49.if.end54_crit_edge, %land.lhs.true43.if.end54_crit_edge, %if.end39.if.end54_crit_edge
  %action.1 = phi i32 [ 1, %if.then49.if.end54_crit_edge ], [ 2, %land.lhs.true43.if.end54_crit_edge ], [ 2, %if.end39.if.end54_crit_edge ]
  %28 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chandef, align 4
  %channel56 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 4
  %30 = ptrtoint ptr %channel56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %channel56, align 4
  %width57 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %31 = ptrtoint ptr %width57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width57, align 4
  %width58 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 3
  %33 = ptrtoint ptr %width58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %width58, align 4
  %center_freq159 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %34 = ptrtoint ptr %center_freq159 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %center_freq159, align 4
  %center_freq160 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 5
  %36 = ptrtoint ptr %center_freq160 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %center_freq160, align 4
  %call61 = tail call fastcc i32 @iwl_mvm_phy_ctxt_apply(ptr noundef %mvm, ptr noundef %ctxt, ptr noundef %chandef, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic, i32 noundef %action.1)
  br label %cleanup62

cleanup62:                                        ; preds = %if.end54, %if.then49.cleanup62_crit_edge, %if.then37
  %retval.1 = phi i32 [ %call38, %if.then37 ], [ %call61, %if.end54 ], [ %call50, %if.then49.cleanup62_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_phy_send_rlc(ptr noundef %mvm, ptr noundef %ctxt, i8 noundef zeroext %chains_static, i8 noundef zeroext %chains_dynamic) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_rlc_config_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct.iwl_rlc_config_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %3 = ptrtoint ptr %ctxt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ctxt, align 4
  %conv = zext i16 %4 to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cmd, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %8, i8 noundef zeroext 5, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call)
  %cmp = icmp ult i8 %call, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chains_dynamic)
  %cmp.i = icmp eq i8 %chains_dynamic, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end17.if.end.i_crit_edge

do.end17.if.end.i_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i1 @iwl_mvm_rx_diversity_allowed(ptr noundef %mvm, ptr noundef %ctxt) #6
  %spec.select.i = select i1 %call.i, i8 2, i8 1
  %spec.select38.i = select i1 %call.i, i8 2, i8 %chains_static
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %do.end17.if.end.i_crit_edge
  %active_cnt.0.i = phi i8 [ %chains_dynamic, %do.end17.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %idle_cnt.0.i = phi i8 [ %chains_static, %do.end17.if.end.i_crit_edge ], [ %spec.select38.i, %land.lhs.true.i ]
  %fw_static_smps_request.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 129
  %9 = ptrtoint ptr %fw_static_smps_request.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_static_smps_request.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %active_cnt.0.i)
  %cmp6.i = icmp eq i8 %active_cnt.0.i, 1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp6.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %idle_cnt.0.i)
  %cmp10.i = icmp eq i8 %idle_cnt.0.i, 1
  %or.cond39.i = select i1 %or.cond.i, i1 %cmp10.i, i1 false
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %11 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.cond.false.i.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %valid_rx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %valid_rx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %valid_rx_ant.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 8
  %valid_rx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %valid_rx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid_rx_ant3.i.i, align 1
  %and.i.i = and i8 %18, %14
  br label %iwl_mvm_get_valid_rx_ant.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.end.i.cond.false.i.i_crit_edge
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 8
  %valid_rx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %valid_rx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %valid_rx_ant9.i.i, align 1
  br label %iwl_mvm_get_valid_rx_ant.exit.i

iwl_mvm_get_valid_rx_ant.exit.i:                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %22, %cond.false.i.i ]
  %conv15.i = zext i8 %cond.i.i to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 1
  %23 = zext i8 %idle_cnt.0.i to i32
  %.op.i = shl nuw nsw i32 %23, 10
  %shl17.i = select i1 %or.cond39.i, i32 0, i32 %.op.i
  %24 = or i32 %shl.i, %shl17.i
  %25 = zext i8 %active_cnt.0.i to i32
  %.op40.i = shl nuw nsw i32 %25, 12
  %shl19.i = select i1 %or.cond39.i, i32 0, i32 %.op40.i
  %26 = or i32 %24, %shl19.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %0, align 4
  %dbgfs_rx_phyinfo.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 85
  %29 = ptrtoint ptr %dbgfs_rx_phyinfo.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dbgfs_rx_phyinfo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool21.not.i = icmp eq i16 %30, 0
  br i1 %tobool21.not.i, label %iwl_mvm_get_valid_rx_ant.exit.i.iwl_mvm_phy_ctxt_set_rxchain.exit_crit_edge, label %if.then24.i, !prof !24

iwl_mvm_get_valid_rx_ant.exit.i.iwl_mvm_phy_ctxt_set_rxchain.exit_crit_edge: ; preds = %iwl_mvm_get_valid_rx_ant.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_ctxt_set_rxchain.exit

if.then24.i:                                      ; preds = %iwl_mvm_get_valid_rx_ant.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.i = zext i16 %30 to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv26.i) #6
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %0, align 4
  br label %iwl_mvm_phy_ctxt_set_rxchain.exit

iwl_mvm_phy_ctxt_set_rxchain.exit:                ; preds = %if.then24.i, %iwl_mvm_get_valid_rx_ant.exit.i.iwl_mvm_phy_ctxt_set_rxchain.exit_crit_edge
  %call19 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 132360, i32 noundef 0, i16 noundef zeroext 32, ptr noundef nonnull %cmd) #6
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_phy_ctxt_set_rxchain.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %iwl_mvm_phy_ctxt_set_rxchain.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_phy_ctxt_unref(ptr noundef %mvm, ptr noundef %ctxt) local_unnamed_addr #0 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !25

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 339, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool24.not = icmp eq ptr %ctxt, null
  br i1 %tobool24.not, label %land.rhs32, label %if.end80.critedge

land.rhs32:                                       ; preds = %if.end
  %.b142 = load i1, ptr @iwl_mvm_phy_ctxt_unref.__already_done, align 1
  br i1 %.b142, label %land.rhs32.if.end129_crit_edge, label %if.then43, !prof !24

land.rhs32.if.end129_crit_edge:                   ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then43:                                        ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_phy_ctxt_unref.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef null) #6
  br label %if.end129

if.end80.critedge:                                ; preds = %if.end
  %ref = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %ctxt, i32 0, i32 2
  %1 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ref, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp82 = icmp eq i32 %dec, 0
  br i1 %cmp82, label %if.then83, label %if.end80.critedge.if.end129_crit_edge

if.end80.critedge.if.end129_crit_edge:            ; preds = %if.end80.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then83:                                        ; preds = %if.end80.critedge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #6
  %3 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool84.not = icmp eq ptr %9, null
  br i1 %tobool84.not, label %while.body.1, label %if.then83.while.end_crit_edge

if.then83.while.end_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %if.then83
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool84.not.1 = icmp eq ptr %11, null
  br i1 %tobool84.not.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool84.not.2 = icmp eq ptr %13, null
  br i1 %tobool84.not.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %tobool84.not.3 = icmp eq ptr %15, null
  br i1 %tobool84.not.3, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  %tobool84.not.4 = icmp eq ptr %17, null
  br i1 %tobool84.not.4, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.5, align 4
  %tobool84.not.5 = icmp eq ptr %19, null
  br label %while.end

while.end:                                        ; preds = %while.body.5, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %if.then83.while.end_crit_edge
  %.lcssa = phi ptr [ %9, %if.then83.while.end_crit_edge ], [ %11, %while.body.1.while.end_crit_edge ], [ %13, %while.body.2.while.end_crit_edge ], [ %15, %while.body.3.while.end_crit_edge ], [ %17, %while.body.4.while.end_crit_edge ], [ %19, %while.body.5 ]
  %tobool84.not.lcssa = phi i1 [ %tobool84.not, %if.then83.while.end_crit_edge ], [ %tobool84.not.1, %while.body.1.while.end_crit_edge ], [ %tobool84.not.2, %while.body.2.while.end_crit_edge ], [ %tobool84.not.3, %while.body.3.while.end_crit_edge ], [ %tobool84.not.4, %while.body.4.while.end_crit_edge ], [ %tobool84.not.5, %while.body.5 ]
  br i1 %tobool84.not.lcssa, label %do.end107, label %if.end123, !prof !25

do.end107:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end123:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.lcssa, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef, ptr noundef %21, i32 noundef 0) #6
  %call125 = call i32 @iwl_mvm_phy_ctxt_changed(ptr noundef %mvm, ptr noundef nonnull %ctxt, ptr noundef nonnull %chandef, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %do.end107
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #6
  br label %if.end129

if.end129:                                        ; preds = %cleanup, %if.end80.critedge.if.end129_crit_edge, %if.then43, %land.rhs32.if.end129_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_phy_ctx_count(ptr nocapture noundef readonly %mvm) local_unnamed_addr #0 align 64 {
entry:
  %phy_ctxt_counter = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_ctxt_counter) #6
  %0 = ptrtoint ptr %phy_ctxt_counter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %phy_ctxt_counter, align 4
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @iwl_mvm_binding_iterator, ptr noundef nonnull %phy_ctxt_counter) #6
  %3 = ptrtoint ptr %phy_ctxt_counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_ctxt_counter, align 4
  %call.i = call i32 @__sw_hweight8(i32 noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_ctxt_counter) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_binding_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %0 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %conv = zext i16 %6 to i32
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %_data, i32 %div2.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %8
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_set_chan_info_chandef(ptr nocapture noundef readonly %mvm, ptr nocapture noundef writeonly %ci, ptr nocapture noundef readonly %chandef) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %5 to i32
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %3, label %land.end.i [
    i32 0, label %entry.iwl_mvm_phy_band_from_nl80211.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.iwl_mvm_phy_band_from_nl80211.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit

land.end.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  br i1 %.b38.i, label %land.end.i.iwl_mvm_phy_band_from_nl80211.exit_crit_edge, label %if.then.i, !prof !24

land.end.i.iwl_mvm_phy_band_from_nl80211.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_phy_band_from_nl80211.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2099, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %3) #6
  br label %iwl_mvm_phy_band_from_nl80211.exit

iwl_mvm_phy_band_from_nl80211.exit:               ; preds = %if.then.i, %land.end.i.iwl_mvm_phy_band_from_nl80211.exit_crit_edge, %sw.bb2.i, %sw.bb1.i, %entry.iwl_mvm_phy_band_from_nl80211.exit_crit_edge
  %retval.0.i = phi i8 [ 2, %sw.bb2.i ], [ 0, %sw.bb1.i ], [ 1, %entry.iwl_mvm_phy_band_from_nl80211.exit_crit_edge ], [ 0, %if.then.i ], [ 0, %land.end.i.iwl_mvm_phy_band_from_nl80211.exit_crit_edge ]
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %7 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %switch.hole_check, label %iwl_mvm_phy_band_from_nl80211.exit.do.end.i_crit_edge

iwl_mvm_phy_band_from_nl80211.exit.do.end.i_crit_edge: ; preds = %iwl_mvm_phy_band_from_nl80211.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %iwl_mvm_phy_band_from_nl80211.exit.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %8) #6
  br label %iwl_mvm_get_channel_width.exit

switch.hole_check:                                ; preds = %iwl_mvm_phy_band_from_nl80211.exit
  %switch.maskindex = trunc i32 %8 to i8
  %switch.shifted = lshr i8 47, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.iwl_mvm_set_chan_info_chandef, i32 0, i32 %8
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %11)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %iwl_mvm_get_channel_width.exit

iwl_mvm_get_channel_width.exit:                   ; preds = %switch.lookup, %do.end.i
  %retval.0.i10 = phi i8 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %12 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %center_freq.i, align 4
  %center_freq1.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %16 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %center_freq1.i, align 4
  %sub.i = sub i32 %15, %17
  %18 = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %sub.i, label %do.end.i14 [
    i32 -70, label %iwl_mvm_get_channel_width.exit.iwl_mvm_get_ctrl_pos.exit_crit_edge
    i32 -50, label %sw.bb1.i11
    i32 -30, label %sw.bb2.i12
    i32 -10, label %sw.bb3.i13
    i32 10, label %sw.bb4.i
    i32 30, label %sw.bb5.i
    i32 50, label %sw.bb6.i
    i32 70, label %sw.bb7.i
    i32 0, label %iwl_mvm_get_channel_width.exit.sw.bb22.i_crit_edge
  ]

iwl_mvm_get_channel_width.exit.sw.bb22.i_crit_edge: ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

iwl_mvm_get_channel_width.exit.iwl_mvm_get_ctrl_pos.exit_crit_edge: ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

sw.bb1.i11:                                       ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

sw.bb2.i12:                                       ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

sw.bb3.i13:                                       ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

sw.bb4.i:                                         ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

sw.bb5.i:                                         ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

sw.bb6.i:                                         ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

sw.bb7.i:                                         ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_ctrl_pos.exit

do.end.i14:                                       ; preds = %iwl_mvm_get_channel_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %sw.bb22.i

sw.bb22.i:                                        ; preds = %do.end.i14, %iwl_mvm_get_channel_width.exit.sw.bb22.i_crit_edge
  br label %iwl_mvm_get_ctrl_pos.exit

iwl_mvm_get_ctrl_pos.exit:                        ; preds = %sw.bb22.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i13, %sw.bb2.i12, %sw.bb1.i11, %iwl_mvm_get_channel_width.exit.iwl_mvm_get_ctrl_pos.exit_crit_edge
  %retval.0.i15 = phi i8 [ 0, %sw.bb22.i ], [ 7, %sw.bb7.i ], [ 6, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 0, %sw.bb3.i13 ], [ 1, %sw.bb2.i12 ], [ 2, %sw.bb1.i11 ], [ 3, %iwl_mvm_get_channel_width.exit.iwl_mvm_get_ctrl_pos.exit_crit_edge ]
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %19 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %20, i32 0, i32 5, i32 8, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.i.not.i, label %if.else.i, label %if.then.i16

if.then.i16:                                      ; preds = %iwl_mvm_get_ctrl_pos.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %25 = ptrtoint ptr %ci to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %ci, align 1
  %band1.i = getelementptr inbounds %struct.iwl_fw_channel_info, ptr %ci, i32 0, i32 1
  %26 = ptrtoint ptr %band1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %retval.0.i, ptr %band1.i, align 1
  %width2.i = getelementptr inbounds %struct.iwl_fw_channel_info, ptr %ci, i32 0, i32 2
  %27 = ptrtoint ptr %width2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %retval.0.i10, ptr %width2.i, align 1
  %ctrl_pos3.i = getelementptr inbounds %struct.iwl_fw_channel_info, ptr %ci, i32 0, i32 3
  br label %iwl_mvm_set_chan_info.exit

if.else.i:                                        ; preds = %iwl_mvm_get_ctrl_pos.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i16 %5 to i8
  %channel4.i = getelementptr inbounds %struct.iwl_fw_channel_info_v1, ptr %ci, i32 0, i32 1
  %28 = ptrtoint ptr %channel4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %channel4.i, align 1
  %29 = ptrtoint ptr %ci to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %retval.0.i, ptr %ci, align 1
  %width6.i = getelementptr inbounds %struct.iwl_fw_channel_info_v1, ptr %ci, i32 0, i32 2
  %30 = ptrtoint ptr %width6.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %retval.0.i10, ptr %width6.i, align 1
  %ctrl_pos7.i = getelementptr inbounds %struct.iwl_fw_channel_info_v1, ptr %ci, i32 0, i32 3
  br label %iwl_mvm_set_chan_info.exit

iwl_mvm_set_chan_info.exit:                       ; preds = %if.else.i, %if.then.i16
  %ctrl_pos7.sink.i = phi ptr [ %ctrl_pos7.i, %if.else.i ], [ %ctrl_pos3.i, %if.then.i16 ]
  %31 = ptrtoint ptr %ctrl_pos7.sink.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %retval.0.i15, ptr %ctrl_pos7.sink.i, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_rx_diversity_allowed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c", i32 25, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c", i32 54, i32 3}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c", i32 341, i32 6}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c", i32 244, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/phy-ctxt.c", i32 250, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 2099, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i8 0, i8 2}
