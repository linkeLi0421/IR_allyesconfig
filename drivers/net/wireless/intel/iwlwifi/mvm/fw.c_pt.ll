; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mvm_mod_params = type { i8, i32 }
%struct.iwl_ltr_config_cmd = type { i32, i32, i32, [4 x i32], i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_tx_ant_cfg_cmd = type { i32 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.153 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.154, %struct.list_head }
%struct.anon.154 = type { %struct.list_head }
%struct.anon.155 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_nvm_access_complete_cmd = type { i32 }
%struct.iwl_init_extended_cfg_cmd = type { i32 }
%struct.iwl_mvm_alive_data = type { i8, i32 }
%struct.iwl_fw_dbg_conf_tlv = type { i8, i8, i8, i8, %struct.iwl_fw_dbg_conf_hcmd }
%struct.iwl_fw_dbg_conf_hcmd = type { i8, i8, i16, [0 x i8] }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.iwl_phy_cfg_cmd_v3 = type { i32, %struct.iwl_calib_ctrl, %struct.iwl_phy_specific_cfg }
%struct.iwl_calib_ctrl = type { i32, i32 }
%struct.iwl_phy_specific_cfg = type { i32, i32, i32, i32 }
%struct.iwl_fw_error_recovery_cmd = type { i32, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
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
%struct.iwl_rss_config_cmd = type { i32, i8, [3 x i8], [10 x i32], [128 x i8] }
%struct.iwl_dqa_enable_cmd = type { i32 }
%struct.iwl_lmac_alive = type { i32, i32, i8, i8, i8, i8, i32, %struct.iwl_lmac_debug_addrs }
%struct.iwl_lmac_debug_addrs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_umac_alive = type { i32, i32, %struct.iwl_umac_debug_addrs }
%struct.iwl_umac_debug_addrs = type { i32, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MFUART assert id 0x%x occurred\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_mfu_assert_dump_notif = private unnamed_addr constant [30 x i8] c"iwl_mvm_mfu_assert_dump_notif\00", align 1
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MFUART assert dump, dword %u: 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@iwl_run_init_mvm_ucode.init_complete = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 4, i16 107], [28 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/fw.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to start INIT ucode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read NVM: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@iwl_run_init_mvm_ucode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Too old NVM version (0x%0x, required = 0x%0x)\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_run_init_mvm_ucode = private unnamed_addr constant [23 x i8] c"iwl_run_init_mvm_ucode\00", align 1
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"jump over all phy activities due to RF kill\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to run INIT calibrations: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RFKILL while calibrating.\0A\00", [37 x i8] zeroinitializer }, align 32
@iwlmvm_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mvm_mod_params, align 4
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to send recovery cmd %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to send recovery cmd blob was invalid %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to start RT ucode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize Smart Fifo\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to configure RSS queues: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_mvm_up.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_up = private unnamed_addr constant [11 x i8] c"iwl_mvm_up\00", align 1
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ECKV table doesn't exist in BIOS\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RT uCode started.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to start WoWLAN firmware: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_mfuart_notif = private unnamed_addr constant [24 x i8] c"iwl_mvm_rx_mfuart_notif\00", align 1
@.str.17 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"MFUART: installed ver: 0x%08x, external ver: 0x%08x, status: 0x%08x, duration: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MFUART: image size: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@iwl_run_unified_mvm_ucode.init_complete = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 4], [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to run init config command: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to run complete NVM access: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iwl_mvm_load_ucode_wait_alive.alive_cmd = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 1], [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SecBoot CPU1 Status: 0x%x, CPU2 Status: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UMAC PC: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LMAC PC: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LMAC2 PC: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Loaded ucode is not valid!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout waiting for PNVM load!\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_alive_fn = private unnamed_addr constant [13 x i8] c"iwl_alive_fn\00", align 1
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Got sku_id: 0x0%x 0x0%x 0x0%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unsupported alive notification (size %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Not valid error log pointer 0x%08X for %s uCode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Init\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RT\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Alive ucode status 0x%04x revision 0x%01X 0x%01X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Alive ucode CDB\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UMAC version: Major - 0x%x, Minor - 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@iwl_trans_start_fw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_send_tx_ant_cfg = private unnamed_addr constant [20 x i8] c"iwl_send_tx_ant_cfg\00", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"select valid tx ant: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_send_phy_cfg_cmd = private unnamed_addr constant [21 x i8] c"iwl_send_phy_cfg_cmd\00", align 1
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sending Phy CFG command: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to run INIT ucode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to send DQA enabling command: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_send_dqa_cmd = private unnamed_addr constant [21 x i8] c"iwl_mvm_send_dqa_cmd\00", align 1
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Working in DQA mode\0A\00", [43 x i8] zeroinitializer }, align 32
@__const.iwl_mvm_config_ltr.cmd = private unnamed_addr constant %struct.iwl_ltr_config_cmd { i32 16777216, i32 0, i32 0, [4 x i32] zeroinitializer, i32 0 }, align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 72, i64 120]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 104, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 108, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 626, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 635, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 651, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 665, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 677, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 686, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 700, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 715, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1492, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1500, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1562, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1573, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1617, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1735, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1762, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1782, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1831, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1839, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"init_complete\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 397, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 435, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 464, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"alive_cmd\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 260, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 304, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 320, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 323, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 327, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 341, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 348, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 151, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 178, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 201, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 212, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 217, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 219, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 273, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1077, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 47, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 615, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1521, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 87, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 89, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @.str, ptr @.str.1, ptr @iwl_run_init_mvm_ucode.init_complete, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @iwl_run_unified_mvm_ucode.init_complete, ptr @.str.19, ptr @.str.20, ptr @iwl_mvm_load_ucode_wait_alive.alive_cmd, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_run_init_mvm_ucode.init_complete to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_run_unified_mvm_ucode.init_complete to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_load_ucode_wait_alive.alive_cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_mfu_assert_dump_notif(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #7
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %data_size = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %6 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data_size, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %div27 = lshr i32 %8, 2
  %index_num = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %9 = ptrtoint ptr %index_num to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %index_num, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvm, align 8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %data, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %15) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp728.not = icmp ult i32 %8, 4
  br i1 %cmp728.not, label %if.end.for.end_crit_edge, label %do.end12.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end12.preheader:                               ; preds = %if.end
  %umax = call i32 @llvm.umax.i32(i32 %div27, i32 1)
  br label %do.end12

do.end12:                                         ; preds = %do.end12.do.end12_crit_edge, %do.end12.preheader
  %i.029 = phi i32 [ %inc, %do.end12.do.end12_crit_edge ], [ 0, %do.end12.preheader ]
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  %18 = ptrtoint ptr %index_num to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %index_num, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv15 = zext i16 %20 to i32
  %mul = mul i32 %div27, %conv15
  %add = add i32 %mul, %i.029
  %arrayidx = getelementptr i32, ptr %data1, i32 %i.029
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_mfu_assert_dump_notif, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef %23) #7
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.end12.for.end_crit_edge, label %do.end12.do.end12_crit_edge

do.end12.do.end12_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.end12.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_run_init_mvm_ucode(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %tx_ant_cmd.i = alloca %struct.iwl_tx_ant_cfg_cmd, align 4
  %calib_wait = alloca %struct.iwl_notification_wait, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %calib_wait) #7
  %0 = call ptr @memset(ptr %calib_wait, i32 255, i32 32)
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %1 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %6)
  %cmp.i = icmp ugt i32 %6, 17
  br i1 %cmp.i, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @iwl_run_unified_mvm_ucode(ptr noundef %mvm)
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.if.end19_crit_edge, label %land.rhs

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end19_crit_edge, !prof !110

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 635, i32 noundef 9, ptr noundef null) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end, %land.rhs.if.end19_crit_edge, %do.body.if.end19_crit_edge
  %rfkill_safe_init_done = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 17
  %8 = ptrtoint ptr %rfkill_safe_init_done to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rfkill_safe_init_done, align 1
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  %phy_db = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 4
  %9 = ptrtoint ptr %phy_db to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_db, align 8
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %calib_wait, ptr noundef nonnull @iwl_run_init_mvm_ucode.init_complete, i32 noundef 2, ptr noundef nonnull @iwl_wait_phy_db_entry, ptr noundef %10) #7
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 1, ptr noundef null, i1 noundef zeroext false) #7
  %call28 = call fastcc i32 @iwl_mvm_load_ucode_wait_alive(ptr noundef %mvm, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %call28) #7
  br label %remove_notif

if.end37:                                         ; preds = %if.end19
  %13 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans.i, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp38 = icmp ult i32 %18, 16
  br i1 %cmp38, label %if.then39, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then39:                                        ; preds = %if.end37
  %call40 = call i32 @iwl_mvm_send_bt_init_conf(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.if.end44_crit_edge, label %if.then39.remove_notif_crit_edge

if.then39.remove_notif_crit_edge:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_notif

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %if.then39.if.end44_crit_edge, %if.end37.if.end44_crit_edge
  %nvm_data = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %19 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nvm_data, align 8
  %tobool45.not = icmp eq ptr %20, null
  br i1 %tobool45.not, label %if.then46, label %if.end44.if.end58_crit_edge

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then46:                                        ; preds = %if.end44
  %call47 = call i32 @iwl_nvm_init(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end58_crit_edge, label %do.end53

if.then46.if.end58_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end53:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %call47) #7
  br label %remove_notif

if.end58:                                         ; preds = %if.then46.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %nvm_file_name = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 30
  %23 = ptrtoint ptr %nvm_file_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nvm_file_name, align 4
  %tobool59.not = icmp eq ptr %24, null
  br i1 %tobool59.not, label %if.end58.if.end65_crit_edge, label %if.then60

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then60:                                        ; preds = %if.end58
  %call61 = call i32 @iwl_mvm_load_nvm_to_nic(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.if.end65_crit_edge, label %if.then60.remove_notif_crit_edge

if.then60.remove_notif_crit_edge:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_notif

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.end65:                                         ; preds = %if.then60.if.end65_crit_edge, %if.end58.if.end65_crit_edge
  %25 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nvm_data, align 8
  %nvm_version = getelementptr inbounds %struct.iwl_nvm_data, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %nvm_version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nvm_version, align 4
  %29 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans.i, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg, align 8
  %nvm_ver = getelementptr inbounds %struct.iwl_cfg, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %nvm_ver to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nvm_ver, align 8
  %conv = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp68 = icmp ult i32 %28, %conv
  br i1 %cmp68, label %land.rhs76, label %if.end65.if.end120_crit_edge

if.end65.if.end120_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

land.rhs76:                                       ; preds = %if.end65
  %.b267 = load i1, ptr @iwl_run_init_mvm_ucode.__already_done, align 1
  br i1 %.b267, label %land.rhs76.if.end120_crit_edge, label %if.then87, !prof !111

land.rhs76.if.end120_crit_edge:                   ; preds = %land.rhs76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then87:                                        ; preds = %land.rhs76
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_run_init_mvm_ucode.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 679, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %28, i32 noundef %conv) #7
  br label %if.end120

if.end120:                                        ; preds = %if.then87, %land.rhs76.if.end120_crit_edge, %if.end65.if.end120_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end137, label %do.end133

do.end133:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 131072, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_run_init_mvm_ucode, ptr noundef nonnull @.str.6) #7
  br label %remove_notif

if.end137:                                        ; preds = %if.end120
  %39 = ptrtoint ptr %rfkill_safe_init_done to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %rfkill_safe_init_done, align 1
  %40 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nvm_data, align 8
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end137.cond.false.i_crit_edge, label %land.lhs.true.i

if.end137.cond.false.i_crit_edge:                 ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end137
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %41, i32 0, i32 20
  %42 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool2.not.i = icmp eq i8 %43, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %44 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i = and i8 %47, %43
  br label %iwl_mvm_get_valid_tx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.end137.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %48 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %valid_tx_ant9.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i, %cond.true.i ], [ %51, %cond.false.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #7
  %conv.i = zext i8 %cond.i to i32
  %52 = shl nuw i32 %conv.i, 24
  %53 = ptrtoint ptr %tx_ant_cmd.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tx_ant_cmd.i, align 4
  %54 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %55, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_tx_ant_cfg, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #7
  %call.i268 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 152, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %tx_ant_cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool141.not = icmp eq i32 %call.i268, 0
  br i1 %tobool141.not, label %if.end143, label %iwl_mvm_get_valid_tx_ant.exit.remove_notif_crit_edge

iwl_mvm_get_valid_tx_ant.exit.remove_notif_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_notif

if.end143:                                        ; preds = %iwl_mvm_get_valid_tx_ant.exit
  %call144 = call fastcc i32 @iwl_send_phy_cfg_cmd(ptr noundef %mvm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end154, label %do.end150

do.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %57, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %call144) #7
  br label %remove_notif

if.end154:                                        ; preds = %if.end143
  %call156 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %calib_wait, i32 noundef 200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end154.out_crit_edge, label %if.end159

if.end154.out_crit_edge:                          ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end159:                                        ; preds = %if.end154
  %58 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %status.i, align 4
  %and1.i.i270 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i270)
  %tobool.i271.not = icmp eq i32 %and1.i.i270, 0
  %60 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mvm, align 8
  br i1 %tobool.i271.not, label %do.end172, label %do.end165

do.end165:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %61, i32 noundef 131072, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_run_init_mvm_ucode, ptr noundef nonnull @.str.8) #7
  br label %out

do.end172:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %61, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %call156) #7
  br label %out

remove_notif:                                     ; preds = %do.end150, %iwl_mvm_get_valid_tx_ant.exit.remove_notif_crit_edge, %do.end133, %if.then60.remove_notif_crit_edge, %do.end53, %if.then39.remove_notif_crit_edge, %do.end34
  %ret.3 = phi i32 [ %call28, %do.end34 ], [ %call40, %if.then39.remove_notif_crit_edge ], [ %call61, %if.then60.remove_notif_crit_edge ], [ 0, %do.end133 ], [ %call.i268, %iwl_mvm_get_valid_tx_ant.exit.remove_notif_crit_edge ], [ %call144, %do.end150 ], [ %call47, %do.end53 ]
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %calib_wait) #7
  br label %out

out:                                              ; preds = %remove_notif, %do.end172, %do.end165, %if.end154.out_crit_edge
  %ret.4 = phi i32 [ %ret.3, %remove_notif ], [ 0, %do.end165 ], [ %call156, %do.end172 ], [ 0, %if.end154.out_crit_edge ]
  %62 = ptrtoint ptr %rfkill_safe_init_done to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %rfkill_safe_init_done, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @iwlmvm_mod_params to i32))
  %63 = load i8, ptr @iwlmvm_mod_params, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool179.not = icmp eq i8 %63, 0
  br i1 %tobool179.not, label %out.cleanup_crit_edge, label %land.lhs.true

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %out
  %nvm_data181 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %64 = ptrtoint ptr %nvm_data181 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nvm_data181, align 8
  %tobool182.not = icmp eq ptr %65, null
  br i1 %tobool182.not, label %if.then183, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then183:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 940) #10
  %67 = ptrtoint ptr %nvm_data181 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %nvm_data181, align 8
  %tobool187.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool187.not, label %if.then183.cleanup_crit_edge, label %if.end189

if.then183.cleanup_crit_edge:                     ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end189:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  %channels = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 28
  %bands = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 26
  %68 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %channels, ptr %bands, align 8
  %n_channels = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 26, i32 0, i32 3
  %69 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %n_channels, align 4
  %n_bitrates = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 26, i32 0, i32 4
  %70 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %n_bitrates, align 8
  %add.ptr = getelementptr i8, ptr %channels, i32 1
  %bitrates = getelementptr inbounds %struct.iwl_nvm_data, ptr %call7.i.i, i32 0, i32 26, i32 0, i32 1
  %71 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr, ptr %bitrates, align 4
  %hw_value = getelementptr %struct.iwl_nvm_data, ptr %call7.i.i, i32 1, i32 1, i32 3
  %72 = ptrtoint ptr %hw_value to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 10, ptr %hw_value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %if.then183.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -12, %if.then183.cleanup_crit_edge ], [ %ret.4, %if.end189 ], [ %ret.4, %land.lhs.true.cleanup_crit_edge ], [ %ret.4, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %calib_wait) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_run_unified_mvm_ucode(ptr noundef %mvm) unnamed_addr #0 align 64 {
entry:
  %init_wait = alloca %struct.iwl_notification_wait, align 4
  %nvm_complete = alloca %struct.iwl_nvm_access_complete_cmd, align 4
  %init_cfg = alloca %struct.iwl_init_extended_cfg_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %init_wait) #7
  %0 = call ptr @memset(ptr %init_wait, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvm_complete) #7
  %1 = ptrtoint ptr %nvm_complete to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nvm_complete, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_cfg) #7
  %2 = ptrtoint ptr %init_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33554432, ptr %init_cfg, align 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %3 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %tx_with_siso_diversity = getelementptr inbounds %struct.iwl_cfg, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %tx_with_siso_diversity to i32
  call void @__asan_loadN_noabort(i32 %7, i32 3)
  %bf.load = load i24, ptr %tx_with_siso_diversity, align 4
  %8 = and i24 %bf.load, 4194304
  %tobool.not = icmp eq i24 %8, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %init_cfg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100663296, ptr %init_cfg, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %do.body.if.end18_crit_edge, label %land.rhs

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end18_crit_edge, !prof !110

land.rhs.if.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 405, i32 noundef 9, ptr noundef null) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %land.rhs.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %rfkill_safe_init_done = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 17
  %11 = ptrtoint ptr %rfkill_safe_init_done to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rfkill_safe_init_done, align 1
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %init_wait, ptr noundef nonnull @iwl_run_unified_mvm_ucode.init_complete, i32 noundef 1, ptr noundef nonnull @iwl_wait_init_complete, ptr noundef null) #7
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 1, ptr noundef null, i1 noundef zeroext false) #7
  %call27 = call fastcc i32 @iwl_mvm_load_ucode_wait_alive(ptr noundef %mvm, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %call27) #7
  br label %error

if.end36:                                         ; preds = %if.end18
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 2, ptr noundef null, i1 noundef zeroext false) #7
  %call38 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 515, i32 noundef 4, i16 noundef zeroext 4, ptr noundef nonnull %init_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end48, label %do.end44

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %call38) #7
  br label %error

if.end48:                                         ; preds = %if.end36
  %nvm_file_name = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 30
  %16 = ptrtoint ptr %nvm_file_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvm_file_name, align 4
  %tobool49.not = icmp eq ptr %17, null
  br i1 %tobool49.not, label %if.end48.if.end61_crit_edge, label %if.then50

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then50:                                        ; preds = %if.end48
  %18 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans, align 4
  %nvm_sections = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 39
  %call53 = call i32 @iwl_read_external_nvm(ptr noundef %19, ptr noundef nonnull %17, ptr noundef %nvm_sections) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then50.error_crit_edge

if.then50.error_crit_edge:                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end56:                                         ; preds = %if.then50
  %call57 = call i32 @iwl_mvm_load_nvm_to_nic(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end56.if.end61_crit_edge, label %if.end56.error_crit_edge

if.end56.error_crit_edge:                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end61:                                         ; preds = %if.end56.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %call62 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 3072, i32 noundef 4, i16 noundef zeroext 4, ptr noundef nonnull %nvm_complete) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end72, label %do.end68

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %call62) #7
  br label %error

if.end72:                                         ; preds = %if.end61
  %call74 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %init_wait, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %nvm_data = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %22 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nvm_data, align 8
  %tobool78.not = icmp eq ptr %23, null
  br i1 %tobool78.not, label %if.then79, label %if.end77.if.end97_crit_edge

if.end77.if.end97_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then79:                                        ; preds = %if.end77
  %24 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trans, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw, align 8
  %call81 = call ptr @iwl_get_nvm(ptr noundef %25, ptr noundef %27) #7
  %28 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call81, ptr %nvm_data, align 8
  %cmp.i = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then85, label %if.then79.if.end97_crit_edge

if.then79.if.end97_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then85:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call81 to i32
  %30 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %nvm_data, align 8
  %31 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %29) #7
  br label %cleanup

if.end97:                                         ; preds = %if.then79.if.end97_crit_edge, %if.end77.if.end97_crit_edge
  %33 = ptrtoint ptr %rfkill_safe_init_done to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %rfkill_safe_init_done, align 1
  br label %cleanup

error:                                            ; preds = %do.end68, %if.end56.error_crit_edge, %if.then50.error_crit_edge, %do.end44, %do.end33
  %ret.0 = phi i32 [ %call27, %do.end33 ], [ %call38, %do.end44 ], [ %call53, %if.then50.error_crit_edge ], [ %call57, %if.end56.error_crit_edge ], [ %call62, %do.end68 ]
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %init_wait) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end97, %if.then85, %if.end72.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end97 ], [ %29, %if.then85 ], [ %call74, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_cfg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvm_complete) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %init_wait) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_wait_phy_db_entry(ptr nocapture noundef readnone %notif_wait, ptr noundef %pkt, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 107, i8 %1)
  %cmp.not = icmp eq i8 %1, 107
  br i1 %cmp.not, label %if.end26, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp5.not = icmp eq i8 %1, 4
  br i1 %cmp5.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge, !prof !111

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %entry
  %call = tail call i32 @iwl_phy_db_set_section(ptr noundef %data, ptr noundef %pkt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end26.cleanup.sink.split_crit_edge, !prof !111

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end26.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 243, %if.then.cleanup.sink.split_crit_edge ], [ 247, %if.end26.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end26.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %2 = xor i1 %cmp.not, true
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_load_ucode_wait_alive(ptr noundef %mvm, i32 noundef %ucode_type) unnamed_addr #0 align 64 {
entry:
  %alive_wait = alloca %struct.iwl_notification_wait, align 4
  %alive_data = alloca %struct.iwl_mvm_alive_data, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %alive_wait) #7
  %0 = call ptr @memset(ptr %alive_wait, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alive_data) #7
  %1 = ptrtoint ptr %alive_data to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %alive_data, align 8
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 10
  %2 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ucode_type)
  %cmp = icmp eq i32 %ucode_type, 1
  br i1 %cmp, label %entry.if.else_crit_edge, label %lor.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

lor.end:                                          ; preds = %entry
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %4 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp.i = icmp ugt i32 %9, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ucode_type)
  %cmp1 = icmp eq i32 %ucode_type, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.end.if.else_crit_edge

lor.end.if.else_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %lor.end
  %fw2 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %10 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw2, align 8
  %conf_tlv1.i = getelementptr inbounds %struct.iwl_fw, ptr %11, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %conf_tlv1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conf_tlv1.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %land.lhs.true.if.else_crit_edge, label %iwl_fw_dbg_conf_usniffer.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

iwl_fw_dbg_conf_usniffer.exit:                    ; preds = %land.lhs.true
  %usniffer.i = getelementptr inbounds %struct.iwl_fw_dbg_conf_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %usniffer.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %usniffer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.i.not = icmp eq i8 %15, 0
  br i1 %tobool2.i.not, label %iwl_fw_dbg_conf_usniffer.exit.if.else_crit_edge, label %land.lhs.true4

iwl_fw_dbg_conf_usniffer.exit.if.else_crit_edge:  ; preds = %iwl_fw_dbg_conf_usniffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true4:                                   ; preds = %iwl_fw_dbg_conf_usniffer.exit
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %18 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %11, i32 0, i32 2, i32 3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %iwl_fw_dbg_conf_usniffer.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %lor.end.if.else_crit_edge, %entry.if.else_crit_edge
  %19 = phi i1 [ %cmp.i, %land.lhs.true4.if.else_crit_edge ], [ %cmp.i, %iwl_fw_dbg_conf_usniffer.exit.if.else_crit_edge ], [ %cmp.i, %lor.end.if.else_crit_edge ], [ true, %entry.if.else_crit_edge ], [ %cmp.i, %land.lhs.true.if.else_crit_edge ]
  %fw9 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %20 = ptrtoint ptr %fw9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw9, align 8
  %arrayidx.i204 = getelementptr %struct.iwl_fw, ptr %21, i32 0, i32 2, i32 %ucode_type
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = phi i1 [ %19, %if.else ], [ %cmp.i, %if.then ]
  %fw.0 = phi ptr [ %arrayidx.i204, %if.else ], [ %arrayidx.i, %if.then ]
  %tobool.not = icmp eq ptr %fw.0, null
  br i1 %tobool.not, label %do.end, label %if.end35, !prof !110

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %23 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %ucode_type, ptr %cur_fw_img, align 8
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status) #7
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %alive_wait, ptr noundef nonnull @iwl_mvm_load_ucode_wait_alive.alive_cmd, i32 noundef 1, ptr noundef nonnull @iwl_alive_fn, ptr noundef nonnull %alive_data) #7
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %24 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trans, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 1077) #7
  %rx_mpdu_cmd.i = getelementptr inbounds %struct.iwl_trans, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %rx_mpdu_cmd.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rx_mpdu_cmd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i205 = icmp eq i8 %27, 0
  br i1 %tobool.not.i205, label %land.rhs.i, label %if.end35.if.end36.i_crit_edge

if.end35.if.end36.i_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

land.rhs.i:                                       ; preds = %if.end35
  %.b54.i = load i1, ptr @iwl_trans_start_fw.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.if.end36.i_crit_edge, label %if.then.i, !prof !111

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_trans_start_fw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 1079, i32 noundef 9, ptr noundef null) #7
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end36.i_crit_edge, %if.end35.if.end36.i_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %25, i32 0, i32 7
  call void @_clear_bit(i32 noundef 6, ptr noundef %status.i) #7
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %start_fw.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %start_fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %start_fw.i, align 4
  %call.i = call i32 %31(ptr noundef %25, ptr noundef nonnull %fw.0, i1 noundef zeroext %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i206 = icmp eq i32 %call.i, 0
  br i1 %cmp.i206, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %3, ptr %cur_fw_img, align 8
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %alive_wait) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end36.i
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %25, i32 0, i32 6
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %state.i, align 8
  %call45 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %alive_wait, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end114, label %if.then47

if.then47:                                        ; preds = %if.end43
  %34 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %39)
  %cmp50 = icmp ugt i32 %39, 17
  br i1 %cmp50, label %do.end55, label %if.else60

do.end55:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mvm, align 8
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i = add i32 %43, 10500288
  %call.i209 = call i32 @iwl_read_prph(ptr noundef %35, i32 noundef %add.i) #7
  %44 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trans_cfg, align 4
  %umac_prph_offset.i211 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %umac_prph_offset.i211 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %umac_prph_offset.i211, align 4
  %add.i212 = add i32 %47, 10500292
  %call.i213 = call i32 @iwl_read_prph(ptr noundef %35, i32 noundef %add.i212) #7
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %call.i209, i32 noundef %call.i213) #7
  br label %if.end75

if.else60:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %39)
  %cmp63 = icmp ugt i32 %39, 15
  br i1 %cmp63, label %do.end68, label %if.else60.if.end75_crit_edge

if.else60.if.end75_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.end68:                                         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mvm, align 8
  %call70 = call i32 @iwl_read_prph(ptr noundef %35, i32 noundef 10493488) #7
  %call71 = call i32 @iwl_read_prph(ptr noundef %35, i32 noundef 10493492) #7
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %call70, i32 noundef %call71) #7
  br label %if.end75

if.end75:                                         ; preds = %do.end68, %if.else60.if.end75_crit_edge, %do.end55
  %50 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trans_cfg, align 4
  %device_family77 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %device_family77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %device_family77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %53)
  %cmp78 = icmp ugt i32 %53, 16
  br i1 %cmp78, label %do.end83, label %if.end75.if.end107_crit_edge

if.end75.if.end107_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

do.end83:                                         ; preds = %if.end75
  %54 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mvm, align 8
  %umac_prph_offset.i215 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %umac_prph_offset.i215 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %umac_prph_offset.i215, align 4
  %add.i216 = add i32 %57, 10509336
  %call.i217 = call i32 @iwl_read_prph(ptr noundef %35, i32 noundef %add.i216) #7
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %55, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %call.i217) #7
  %58 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mvm, align 8
  %60 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trans_cfg, align 4
  %umac_prph_offset.i219 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %umac_prph_offset.i219 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %umac_prph_offset.i219, align 4
  %add.i220 = add i32 %63, 10509340
  %call.i221 = call i32 @iwl_read_prph(ptr noundef %35, i32 noundef %add.i220) #7
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %59, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %call.i221) #7
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %64 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %65, i32 0, i32 5, i32 8, i32 1
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %68 = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.i.not = icmp eq i32 %68, 0
  br i1 %tobool.i.i.not, label %do.end83.if.end107_crit_edge, label %do.end101

do.end83.if.end107_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

do.end101:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mvm, align 8
  %71 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trans_cfg, align 4
  %umac_prph_offset.i223 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %umac_prph_offset.i223 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %umac_prph_offset.i223, align 4
  %add.i224 = add i32 %74, 10509344
  %call.i225 = call i32 @iwl_read_prph(ptr noundef %35, i32 noundef %add.i224) #7
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %call.i225) #7
  br label %if.end107

if.end107:                                        ; preds = %do.end101, %do.end83.if.end107_crit_edge, %if.end75.if.end107_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call45)
  %cmp108 = icmp eq i32 %call45, -110
  br i1 %cmp108, label %if.then109, label %if.end107.if.end112_crit_edge

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = call i32 @iwl_fw_dbg_error_collect(ptr noundef %fwrt, i32 noundef 15) #7
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end107.if.end112_crit_edge
  %75 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %3, ptr %cur_fw_img, align 8
  br label %cleanup

if.end114:                                        ; preds = %if.end43
  %76 = ptrtoint ptr %alive_data to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %alive_data, align 8, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool115.not = icmp eq i8 %77, 0
  br i1 %tobool115.not, label %do.end120, label %if.end125

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %79, i32 noundef 0, ptr noundef nonnull @.str.25) #7
  %80 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %3, ptr %cur_fw_img, align 8
  br label %cleanup

if.end125:                                        ; preds = %if.end114
  %81 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %trans, align 4
  %call128 = call i32 @iwl_pnvm_load(ptr noundef %82, ptr noundef %notif_wait) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end139, label %do.end134

do.end134:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %84, i32 noundef 0, ptr noundef nonnull @.str.26) #7
  %85 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %3, ptr %cur_fw_img, align 8
  br label %cleanup

if.end139:                                        ; preds = %if.end125
  %86 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %trans, align 4
  %scd_base_addr = getelementptr inbounds %struct.iwl_mvm_alive_data, ptr %alive_data, i32 0, i32 1
  %88 = ptrtoint ptr %scd_base_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %scd_base_addr, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 1064) #7
  %state.i229 = getelementptr inbounds %struct.iwl_trans, ptr %87, i32 0, i32 6
  %90 = ptrtoint ptr %state.i229 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %state.i229, align 8
  %ops.i230 = getelementptr inbounds %struct.iwl_trans, ptr %87, i32 0, i32 1
  %91 = ptrtoint ptr %ops.i230 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i230, align 4
  %fw_alive.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %fw_alive.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fw_alive.i, align 4
  call void %94(ptr noundef %87, i32 noundef %89) #7
  %95 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %96 = call ptr @memset(ptr %95, i32 0, i32 1536)
  %tid_bitmap = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28, i32 0, i32 0, i32 4
  %97 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1024, ptr %tid_bitmap, align 4
  call void @_set_bit(i32 noundef 6, ptr noundef %status) #7
  %98 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i231 = icmp eq i32 %99, 0
  br i1 %cmp.i231, label %land.lhs.true.i, label %if.end139.iwl_fw_set_dbg_rec_on.exit_crit_edge

if.end139.iwl_fw_set_dbg_rec_on.exit_crit_edge:   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_fw_set_dbg_rec_on.exit

land.lhs.true.i:                                  ; preds = %if.end139
  %fw.i232 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %100 = ptrtoint ptr %fw.i232 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fw.i232, align 4
  %dbg.i = getelementptr inbounds %struct.iwl_fw, ptr %101, i32 0, i32 20
  %102 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dbg.i, align 4
  %tobool.not.i233 = icmp eq ptr %103, null
  br i1 %tobool.not.i233, label %lor.lhs.false.i, label %land.lhs.true.i.if.then.i234_crit_edge

land.lhs.true.i.if.then.i234_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i234

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %104 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fwrt, align 8
  %ini_dest.i = getelementptr inbounds %struct.iwl_trans, ptr %105, i32 0, i32 32, i32 16
  %106 = ptrtoint ptr %ini_dest.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ini_dest.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp2.not.i = icmp eq i32 %107, 0
  br i1 %cmp2.not.i, label %lor.lhs.false.i.iwl_fw_set_dbg_rec_on.exit_crit_edge, label %lor.lhs.false.i.if.then.i234_crit_edge

lor.lhs.false.i.if.then.i234_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i234

lor.lhs.false.i.iwl_fw_set_dbg_rec_on.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_fw_set_dbg_rec_on.exit

if.then.i234:                                     ; preds = %lor.lhs.false.i.if.then.i234_crit_edge, %land.lhs.true.i.if.then.i234_crit_edge
  %108 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fwrt, align 8
  %rec_on.i = getelementptr inbounds %struct.iwl_trans, ptr %109, i32 0, i32 32, i32 1
  %110 = ptrtoint ptr %rec_on.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %rec_on.i, align 1
  br label %iwl_fw_set_dbg_rec_on.exit

iwl_fw_set_dbg_rec_on.exit:                       ; preds = %if.then.i234, %lor.lhs.false.i.iwl_fw_set_dbg_rec_on.exit_crit_edge, %if.end139.iwl_fw_set_dbg_rec_on.exit_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %111 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wiphy, align 8
  call void @cfg80211_bss_flush(ptr noundef %114) #7
  br label %cleanup

cleanup:                                          ; preds = %iwl_fw_set_dbg_rec_on.exit, %do.end134, %do.end120, %if.end112, %if.then40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.then40 ], [ %call45, %if.end112 ], [ %call128, %do.end134 ], [ 0, %iwl_fw_set_dbg_rec_on.exit ], [ -5, %do.end120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alive_data) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %alive_wait) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_bt_init_conf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_nvm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_load_nvm_to_nic(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_send_phy_cfg_cmd(ptr noundef %mvm) unnamed_addr #0 align 64 {
entry:
  %phy_cfg_cmd = alloca %struct.iwl_phy_cfg_cmd_v3, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %phy_cfg_cmd) #7
  %0 = getelementptr inbounds %struct.iwl_phy_cfg_cmd_v3, ptr %phy_cfg_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_phy_cfg_cmd_v3, ptr %phy_cfg_cmd, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.iwl_phy_cfg_cmd_v3, ptr %phy_cfg_cmd, i32 0, i32 2
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 10
  %3 = getelementptr inbounds i8, ptr %phy_cfg_cmd, i32 12
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %5 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_fw_img, align 8
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %7 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp.i = icmp ugt i32 %12, 17
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 8
  %tx_with_siso_diversity = getelementptr inbounds %struct.iwl_cfg, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %tx_with_siso_diversity to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %bf.load = load i24, ptr %tx_with_siso_diversity, align 4
  %16 = and i24 %bf.load, 4194304
  %tobool.not = icmp eq i24 %16, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %17 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %iwl_mvm_get_valid_rx_ant.exit.thread24.i, label %land.lhs.true.i.i

iwl_mvm_get_valid_rx_ant.exit.thread24.i:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fw8.i25.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %19 = ptrtoint ptr %fw8.i25.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw8.i25.i, align 8
  %valid_rx_ant9.i26.i = getelementptr inbounds %struct.iwl_fw, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %valid_rx_ant9.i26.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %valid_rx_ant9.i26.i, align 1
  %conv27.i = zext i8 %22 to i32
  br label %cond.false.i17.i

land.lhs.true.i.i:                                ; preds = %if.end
  %valid_rx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %18, i32 0, i32 21
  %23 = ptrtoint ptr %valid_rx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %valid_rx_ant.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool2.not.i.i = icmp eq i8 %24, 0
  %fw8.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %25 = ptrtoint ptr %fw8.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw8.i.i, align 8
  %valid_rx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %valid_rx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %valid_rx_ant9.i.i, align 1
  %and.i.i = select i1 %tobool2.not.i.i, i8 -1, i8 %24
  %conv22.in.i = and i8 %28, %and.i.i
  %conv22.i = zext i8 %conv22.in.i to i32
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %18, i32 0, i32 20
  %29 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.i11.i = icmp eq i8 %30, 0
  br i1 %tobool2.not.i11.i, label %land.lhs.true.i.i.cond.false.i17.i_crit_edge, label %cond.true.i15.i

land.lhs.true.i.i.cond.false.i17.i_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i17.i

cond.true.i15.i:                                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %26, i32 0, i32 15
  %31 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i14.i = and i8 %32, %30
  br label %iwl_mvm_get_phy_config.exit

cond.false.i17.i:                                 ; preds = %land.lhs.true.i.i.cond.false.i17.i_crit_edge, %iwl_mvm_get_valid_rx_ant.exit.thread24.i
  %conv23.i = phi i32 [ %conv22.i, %land.lhs.true.i.i.cond.false.i17.i_crit_edge ], [ %conv27.i, %iwl_mvm_get_valid_rx_ant.exit.thread24.i ]
  %fw8.i16.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %33 = ptrtoint ptr %fw8.i16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw8.i16.i, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_get_phy_config.exit

iwl_mvm_get_phy_config.exit:                      ; preds = %cond.false.i17.i, %cond.true.i15.i
  %conv21.i = phi i32 [ %conv22.i, %cond.true.i15.i ], [ %conv23.i, %cond.false.i17.i ]
  %cond.i18.i = phi i8 [ %and.i14.i, %cond.true.i15.i ], [ %36, %cond.false.i17.i ]
  %conv2.i = zext i8 %cond.i18.i to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 16
  %shl3.i = shl nuw nsw i32 %conv21.i, 20
  %or.i = or i32 %shl3.i, %shl.i
  %or4.i = or i32 %or.i, -16711681
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %37 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw.i, align 8
  %phy_config5.i = getelementptr inbounds %struct.iwl_fw, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %phy_config5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phy_config5.i, align 4
  %and.i = and i32 %or4.i, %40
  %extra_phy_cfg_flags = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %10, i32 0, i32 4
  %41 = ptrtoint ptr %extra_phy_cfg_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %extra_phy_cfg_flags, align 4
  %43 = or i32 %and.i, %42
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %phy_cfg_cmd to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %phy_cfg_cmd, align 4
  %event_trigger = getelementptr %struct.iwl_fw, ptr %38, i32 0, i32 13, i32 %6, i32 1
  %46 = ptrtoint ptr %event_trigger to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %event_trigger, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %1, align 4
  %arrayidx18 = getelementptr %struct.iwl_fw, ptr %38, i32 0, i32 13, i32 %6
  %49 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx18, align 4
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %0, align 4
  %call22 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %38, i8 noundef zeroext 1, i8 noundef zeroext 106, i8 noundef zeroext 99) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call22)
  %cmp = icmp eq i8 %call22, 3
  br i1 %cmp, label %if.then24, label %iwl_mvm_get_phy_config.exit.do.end_crit_edge

iwl_mvm_get_phy_config.exit.do.end_crit_edge:     ; preds = %iwl_mvm_get_phy_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then24:                                        ; preds = %iwl_mvm_get_phy_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %52 = call ptr @memset(ptr %2, i32 0, i32 16)
  br label %do.end

do.end:                                           ; preds = %if.then24, %iwl_mvm_get_phy_config.exit.do.end_crit_edge
  %cond = phi i16 [ 28, %if.then24 ], [ 12, %iwl_mvm_get_phy_config.exit.do.end_crit_edge ]
  %53 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mvm, align 8
  %55 = ptrtoint ptr %phy_cfg_cmd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phy_cfg_cmd, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %54, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_phy_cfg_cmd, ptr noundef nonnull @.str.38, i32 noundef %56) #7
  %call34 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 106, i32 noundef 0, i16 noundef zeroext %cond, ptr noundef nonnull %phy_cfg_cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %phy_cfg_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_mvm_sar_select_profile(ptr nocapture readnone %mvm, i32 %prof_a, i32 %prof_b) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_mvm_get_sar_geo_profile(ptr nocapture noundef readnone %mvm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 -2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_mvm_ppag_send_cmd(ptr nocapture noundef readnone %mvm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_mvm_get_acpi_tables(ptr nocapture noundef %mvm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_send_recovery_cmd(ptr noundef %mvm, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %recovery_cmd = alloca %struct.iwl_fw_error_recovery_cmd, align 4
  %host_cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %error_log_size1 = getelementptr inbounds %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %error_log_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_log_size1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %recovery_cmd) #7
  %4 = getelementptr inbounds %struct.iwl_fw_error_recovery_cmd, ptr %recovery_cmd, i32 0, i32 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %flags)
  %6 = ptrtoint ptr %recovery_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %recovery_cmd, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %host_cmd) #7
  %8 = getelementptr inbounds i8, ptr %host_cmd, i32 32
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !113
  %10 = ptrtoint ptr %host_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %recovery_cmd, ptr %host_cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %host_cmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %host_cmd, i32 0, i32 1
  %flags4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %host_cmd, i32 0, i32 4
  %11 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %12 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %flags4, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %host_cmd, i32 0, i32 5
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 519, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %host_cmd, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8, ptr %len, align 4
  %arrayinit.start6 = getelementptr inbounds %struct.iwl_host_cmd, ptr %host_cmd, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayinit.start6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %arrayinit.start6, align 2
  %arrayinit.end7 = getelementptr inbounds %struct.iwl_host_cmd, ptr %host_cmd, i32 0, i32 7
  %16 = ptrtoint ptr %arrayinit.end7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayinit.end7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.if.end25_crit_edge, label %if.then14

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then14:                                        ; preds = %if.end
  %error_recovery_buf = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 97
  %17 = ptrtoint ptr %error_recovery_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %error_recovery_buf, align 8
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %if.end17

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arrayinit.cur.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arrayinit.cur.ptr, align 4
  %conv = trunc i32 %3 to i16
  %20 = ptrtoint ptr %arrayinit.start6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %arrayinit.start6, align 2
  %arrayidx23 = getelementptr inbounds %struct.iwl_host_cmd, ptr %host_cmd, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx23, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %3)
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %4, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end17, %if.end.if.end25_crit_edge
  %call = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %host_cmd) #7
  %error_recovery_buf26 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 97
  %24 = ptrtoint ptr %error_recovery_buf26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %error_recovery_buf26, align 8
  call void @kfree(ptr noundef %25) #7
  %26 = ptrtoint ptr %error_recovery_buf26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %error_recovery_buf26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.end33, label %do.end

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %call) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  br i1 %tobool13.not, label %if.end33.cleanup_crit_edge, label %if.then36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end33
  %29 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resp_pkt, align 4
  %data38 = getelementptr inbounds %struct.iwl_rx_packet, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %data38 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %data38, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool39.not = icmp eq i32 %32, 0
  br i1 %tobool39.not, label %if.then36.cleanup_crit_edge, label %do.end44

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then36.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %host_cmd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %recovery_cmd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_up(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %tx_ant_cmd.i = alloca %struct.iwl_tx_ant_cfg_cmd, align 4
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #7
  %0 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !110

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1554, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 1045) #7
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i470 = tail call i32 %7(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i470)
  %tobool25.not = icmp eq i32 %call.i470, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %8 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %13)
  %cmp.i.i = icmp ugt i32 %13, 17
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call fastcc i32 @iwl_run_unified_mvm_ucode(ptr noundef %mvm) #7
  br label %iwl_mvm_load_rt_fw.exit

if.end.i:                                         ; preds = %if.end27
  %call2.i = tail call i32 @iwl_run_init_mvm_ucode(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %call2.i) #7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @iwlmvm_mod_params to i32))
  %16 = load i8, ptr @iwlmvm_mod_params, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not.i = icmp eq i8 %16, 0
  br i1 %tobool7.not.i, label %do.end.i.do.end34_crit_edge, label %do.end.i.if.end41_crit_edge

do.end.i.if.end41_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end.i.do.end34_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end10.i:                                       ; preds = %if.end.i
  %fwrt.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  tail call void @iwl_fw_dbg_stop_sync(ptr noundef %fwrt.i) #7
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 1091) #7
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %stop_device.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %stop_device.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop_device.i.i, align 4
  tail call void %22(ptr noundef %18) #7
  %state.i.i = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 6
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state.i.i, align 8
  %24 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 1045) #7
  %ops.i43.i = getelementptr inbounds %struct.iwl_trans, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i43.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i.i = tail call i32 %29(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.do.end34_crit_edge

if.end10.i.do.end34_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end15.i:                                       ; preds = %if.end10.i
  %rfkill_safe_init_done.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 17
  %30 = ptrtoint ptr %rfkill_safe_init_done.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %rfkill_safe_init_done.i, align 1
  %call16.i = tail call fastcc i32 @iwl_mvm_load_ucode_wait_alive(ptr noundef %mvm, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.do.end34_crit_edge

if.end15.i.do.end34_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end19.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %rfkill_safe_init_done.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %rfkill_safe_init_done.i, align 1
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt.i, i32 noundef 2, ptr noundef null, i1 noundef zeroext false) #7
  %cur_fw_img.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 10
  %32 = ptrtoint ptr %cur_fw_img.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cur_fw_img.i, align 8
  %call24.i = tail call i32 @iwl_init_paging(ptr noundef %fwrt.i, i32 noundef %33) #7
  br label %iwl_mvm_load_rt_fw.exit

iwl_mvm_load_rt_fw.exit:                          ; preds = %if.end19.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call24.i, %if.end19.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool29.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool29.not, label %iwl_mvm_load_rt_fw.exit.if.end41_crit_edge, label %iwl_mvm_load_rt_fw.exit.do.end34_crit_edge

iwl_mvm_load_rt_fw.exit.do.end34_crit_edge:       ; preds = %iwl_mvm_load_rt_fw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

iwl_mvm_load_rt_fw.exit.if.end41_crit_edge:       ; preds = %iwl_mvm_load_rt_fw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end34:                                         ; preds = %iwl_mvm_load_rt_fw.exit.do.end34_crit_edge, %if.end15.i.do.end34_crit_edge, %if.end10.i.do.end34_crit_edge, %do.end.i.do.end34_crit_edge
  %retval.0.i491 = phi i32 [ %retval.0.i, %iwl_mvm_load_rt_fw.exit.do.end34_crit_edge ], [ %call16.i, %if.end15.i.do.end34_crit_edge ], [ %call.i.i, %if.end10.i.do.end34_crit_edge ], [ %call2.i, %do.end.i.do.end34_crit_edge ]
  %34 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i491) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -132, i32 %retval.0.i491)
  %cmp37.not = icmp eq i32 %retval.0.i491, -132
  br i1 %cmp37.not, label %do.end34.error_crit_edge, label %if.then38

do.end34.error_crit_edge:                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then38:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %call39 = tail call i32 @iwl_fw_dbg_error_collect(ptr noundef %fwrt, i32 noundef 16) #7
  br label %error

if.end41:                                         ; preds = %iwl_mvm_load_rt_fw.exit.if.end41_crit_edge, %do.end.i.if.end41_crit_edge
  %fwrt42 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  tail call void @iwl_get_shared_mem_conf(ptr noundef %fwrt42) #7
  %call43 = tail call i32 @iwl_mvm_sf_update(ptr noundef %mvm, ptr noundef null, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.if.end53_crit_edge, label %do.end49

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %37, i32 noundef 0, ptr noundef nonnull @.str.12) #7
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %if.end41.if.end53_crit_edge
  %38 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans, align 4
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 32, i32 10
  %40 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i, label %iwl_trans_dbg_ini_valid.exit, label %if.end53.if.end66_crit_edge

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

iwl_trans_dbg_ini_valid.exit:                     ; preds = %if.end53
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %39, i32 0, i32 32, i32 11
  %42 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp2.i.not = icmp eq i32 %43, 0
  br i1 %cmp2.i.not, label %if.then56, label %iwl_trans_dbg_ini_valid.exit.if.end66_crit_edge

iwl_trans_dbg_ini_valid.exit.if.end66_crit_edge:  ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then56:                                        ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conf = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %44 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %conf, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %45 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw, align 8
  %dbg = getelementptr inbounds %struct.iwl_fw, ptr %46, i32 0, i32 20
  %47 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dbg, align 4
  %tobool58.not = icmp eq ptr %48, null
  %spec.store.select = sext i1 %tobool58.not to i8
  store i8 %spec.store.select, ptr %conf, align 4
  %call65 = tail call i32 @iwl_fw_start_dbg_conf(ptr noundef %fwrt42, i8 noundef zeroext 0) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %iwl_trans_dbg_ini_valid.exit.if.end66_crit_edge, %if.end53.if.end66_crit_edge
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %49 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i471 = icmp eq ptr %50, null
  br i1 %tobool.not.i471, label %if.end66.cond.false.i_crit_edge, label %land.lhs.true.i

if.end66.cond.false.i_crit_edge:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end66
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.i = icmp eq i8 %52, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i = and i8 %56, %52
  br label %iwl_mvm_get_valid_tx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.end66.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %57 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %valid_tx_ant9.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i, %cond.true.i ], [ %60, %cond.false.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #7
  %conv.i = zext i8 %cond.i to i32
  %61 = shl nuw i32 %conv.i, 24
  %62 = ptrtoint ptr %tx_ant_cmd.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tx_ant_cmd.i, align 4
  %63 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %64, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_tx_ant_cfg, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #7
  %call.i472 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 152, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %tx_ant_cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i472)
  %tobool69.not = icmp eq i32 %call.i472, 0
  br i1 %tobool69.not, label %if.end71, label %iwl_mvm_get_valid_tx_ant.exit.error_crit_edge

iwl_mvm_get_valid_tx_ant.exit.error_crit_edge:    ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end71:                                         ; preds = %iwl_mvm_get_valid_tx_ant.exit
  %65 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %trans, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %70)
  %cmp.i = icmp ugt i32 %70, 17
  br i1 %cmp.i, label %if.end71.if.end78_crit_edge, label %if.then73

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then73:                                        ; preds = %if.end71
  %phy_db = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 4
  %71 = ptrtoint ptr %phy_db to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy_db, align 8
  %call74 = call i32 @iwl_send_phy_db_data(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end78_crit_edge, label %if.then73.error_crit_edge

if.then73.error_crit_edge:                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then73.if.end78_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end78:                                         ; preds = %if.then73.if.end78_crit_edge, %if.end71.if.end78_crit_edge
  %call79 = call fastcc i32 @iwl_send_phy_cfg_cmd(ptr noundef %mvm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.error_crit_edge

if.end78.error_crit_edge:                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end82:                                         ; preds = %if.end78
  %call83 = call i32 @iwl_mvm_send_bt_init_conf(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.error_crit_edge

if.end82.error_crit_edge:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end86:                                         ; preds = %if.end82
  %fw87 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %73 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw87, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %74, i32 0, i32 5, i32 8, i32 1
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx.i.i, align 4
  %77 = and i32 %76, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not = icmp eq i32 %77, 0
  br i1 %tobool.i.not, label %if.end86.if.end95_crit_edge, label %if.then89

if.end86.if.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then89:                                        ; preds = %if.end86
  %call91 = call i32 @iwl_set_soc_latency(ptr noundef %fwrt42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then89.if.end95_crit_edge, label %if.then89.error_crit_edge

if.then89.error_crit_edge:                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then89.if.end95_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.end95:                                         ; preds = %if.then89.if.end95_crit_edge, %if.end86.if.end95_crit_edge
  %call97 = call i32 @iwl_configure_rxq(ptr noundef %fwrt42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end95.error_crit_edge

if.end95.error_crit_edge:                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end100:                                        ; preds = %if.end95
  %78 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fw87, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %79, i32 0, i32 5, i32 8, i32 2
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %82 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i.i.not = icmp eq i32 %82, 0
  br i1 %tobool.i.i.not, label %if.end100.if.end114_crit_edge, label %if.then102

if.end100.if.end114_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then102:                                       ; preds = %if.end100
  %call103 = call fastcc i32 @iwl_send_rss_cfg_cmd(ptr noundef %mvm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then102.if.end114_crit_edge, label %do.end109

if.then102.if.end114_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

do.end109:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %84, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %call103) #7
  br label %error

if.end114:                                        ; preds = %if.then102.if.end114_crit_edge, %if.end100.if.end114_crit_edge
  %85 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw87, align 8
  %num_stations500 = getelementptr inbounds %struct.iwl_fw, ptr %86, i32 0, i32 5, i32 6
  %87 = ptrtoint ptr %num_stations500 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_stations500, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp117501.not = icmp eq i32 %88, 0
  br i1 %cmp117501.not, label %if.end114.for.end_crit_edge, label %if.end114.do.body123_crit_edge

if.end114.do.body123_crit_edge:                   ; preds = %if.end114
  br label %do.body123

if.end114.for.end_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body123:                                       ; preds = %do.body123.do.body123_crit_edge, %if.end114.do.body123_crit_edge
  %i.0502 = phi i32 [ %inc, %do.body123.do.body123_crit_edge ], [ 0, %if.end114.do.body123_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %i.0502
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0502, 1
  %90 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fw87, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %91, i32 0, i32 5, i32 6
  %92 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_stations, align 4
  %cmp117 = icmp ult i32 %inc, %93
  br i1 %cmp117, label %do.body123.do.body123_crit_edge, label %do.body123.for.end_crit_edge

do.body123.for.end_crit_edge:                     ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body123.do.body123_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

for.end:                                          ; preds = %do.body123.for.end_crit_edge, %if.end114.for.end_crit_edge
  %.lcssa = phi ptr [ %86, %if.end114.for.end_crit_edge ], [ %91, %do.body123.for.end_crit_edge ]
  %peer = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 158, i32 3
  %94 = ptrtoint ptr %peer to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %peer, align 4
  %last_quota_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 137
  %95 = call ptr @memset(ptr %last_quota_cmd, i32 255, i32 64)
  %_capa.i474 = getelementptr inbounds %struct.iwl_fw, ptr %.lcssa, i32 0, i32 5, i32 8
  %96 = ptrtoint ptr %_capa.i474 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %_capa.i474, align 4
  %98 = and i32 %97, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.i475.not = icmp eq i32 %98, 0
  br i1 %tobool.i475.not, label %for.end.if.end138_crit_edge, label %if.then133

for.end.if.end138_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then133:                                       ; preds = %for.end
  %call134 = call fastcc i32 @iwl_mvm_send_dqa_cmd(ptr noundef %mvm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then133.if.end138_crit_edge, label %if.then133.error_crit_edge

if.then133.error_crit_edge:                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then133.if.end138_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.end138:                                        ; preds = %if.then133.if.end138_crit_edge, %for.end.if.end138_crit_edge
  %99 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fw87, align 8
  %call140 = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %100, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call140)
  %cmp141 = icmp ult i8 %call140, 12
  br i1 %cmp141, label %if.then143, label %if.end138.if.end148_crit_edge

if.end138.if.end148_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then143:                                       ; preds = %if.end138
  %call144 = call i32 @iwl_mvm_add_aux_sta(ptr noundef %mvm, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then143.if.end148_crit_edge, label %if.then143.error_crit_edge

if.then143.error_crit_edge:                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then143.if.end148_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.end148:                                        ; preds = %if.then143.if.end148_crit_edge, %if.end138.if.end148_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wiphy, align 8
  %arrayidx155 = getelementptr %struct.wiphy, ptr %104, i32 0, i32 53, i32 0
  %105 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx155, align 4
  %tobool149.not = icmp eq ptr %106, null
  br i1 %tobool149.not, label %while.body.1, label %if.end148.while.end_crit_edge

if.end148.while.end_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %if.end148
  %arrayidx155.1 = getelementptr %struct.wiphy, ptr %104, i32 0, i32 53, i32 1
  %107 = ptrtoint ptr %arrayidx155.1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx155.1, align 4
  %tobool149.not.1 = icmp eq ptr %108, null
  br i1 %tobool149.not.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %arrayidx155.2 = getelementptr %struct.wiphy, ptr %104, i32 0, i32 53, i32 2
  %109 = ptrtoint ptr %arrayidx155.2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx155.2, align 4
  %tobool149.not.2 = icmp eq ptr %110, null
  br i1 %tobool149.not.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %arrayidx155.3 = getelementptr %struct.wiphy, ptr %104, i32 0, i32 53, i32 3
  %111 = ptrtoint ptr %arrayidx155.3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx155.3, align 4
  %tobool149.not.3 = icmp eq ptr %112, null
  br i1 %tobool149.not.3, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %arrayidx155.4 = getelementptr %struct.wiphy, ptr %104, i32 0, i32 53, i32 4
  %113 = ptrtoint ptr %arrayidx155.4 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx155.4, align 4
  %tobool149.not.4 = icmp eq ptr %114, null
  br i1 %tobool149.not.4, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx155.5 = getelementptr %struct.wiphy, ptr %104, i32 0, i32 53, i32 5
  %115 = ptrtoint ptr %arrayidx155.5 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx155.5, align 4
  %tobool149.not.5 = icmp eq ptr %116, null
  br label %while.end

while.end:                                        ; preds = %while.body.5, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %if.end148.while.end_crit_edge
  %.lcssa512 = phi ptr [ %106, %if.end148.while.end_crit_edge ], [ %108, %while.body.1.while.end_crit_edge ], [ %110, %while.body.2.while.end_crit_edge ], [ %112, %while.body.3.while.end_crit_edge ], [ %114, %while.body.4.while.end_crit_edge ], [ %116, %while.body.5 ]
  %tobool149.not.lcssa = phi i1 [ %tobool149.not, %if.end148.while.end_crit_edge ], [ %tobool149.not.1, %while.body.1.while.end_crit_edge ], [ %tobool149.not.2, %while.body.2.while.end_crit_edge ], [ %tobool149.not.3, %while.body.3.while.end_crit_edge ], [ %tobool149.not.4, %while.body.4.while.end_crit_edge ], [ %tobool149.not.5, %while.body.5 ]
  br i1 %tobool149.not.lcssa, label %land.rhs165, label %if.end213.critedge

land.rhs165:                                      ; preds = %while.end
  %.b465 = load i1, ptr @iwl_mvm_up.__already_done, align 1
  br i1 %.b465, label %land.rhs165.if.then352_crit_edge, label %if.then176, !prof !111

land.rhs165.if.then352_crit_edge:                 ; preds = %land.rhs165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then352

if.then176:                                       ; preds = %land.rhs165
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_mvm_up.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1661, i32 noundef 9, ptr noundef null) #7
  br label %if.then352

if.end213.critedge:                               ; preds = %while.end
  %117 = ptrtoint ptr %.lcssa512 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %.lcssa512, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef, ptr noundef %118, i32 noundef 0) #7
  %arrayidx219 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 87, i32 0
  %call220 = call i32 @iwl_mvm_phy_ctxt_add(ptr noundef %mvm, ptr noundef %arrayidx219, ptr noundef nonnull %chandef, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %for.cond215, label %if.end213.critedge.error_crit_edge

if.end213.critedge.error_crit_edge:               ; preds = %if.end213.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.cond215:                                      ; preds = %if.end213.critedge
  %arrayidx219.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 87, i32 1
  %call220.1 = call i32 @iwl_mvm_phy_ctxt_add(ptr noundef %mvm, ptr noundef %arrayidx219.1, ptr noundef nonnull %chandef, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.1)
  %tobool221.not.1 = icmp eq i32 %call220.1, 0
  br i1 %tobool221.not.1, label %for.cond215.1, label %for.cond215.error_crit_edge

for.cond215.error_crit_edge:                      ; preds = %for.cond215
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.cond215.1:                                    ; preds = %for.cond215
  %arrayidx219.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 87, i32 2
  %call220.2 = call i32 @iwl_mvm_phy_ctxt_add(ptr noundef %mvm, ptr noundef %arrayidx219.2, ptr noundef nonnull %chandef, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.2)
  %tobool221.not.2 = icmp eq i32 %call220.2, 0
  br i1 %tobool221.not.2, label %for.cond215.2, label %for.cond215.1.error_crit_edge

for.cond215.1.error_crit_edge:                    ; preds = %for.cond215.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.cond215.2:                                    ; preds = %for.cond215.1
  %119 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fw87, align 8
  %arrayidx.i.i.i477 = getelementptr %struct.iwl_fw, ptr %120, i32 0, i32 5, i32 8, i32 2
  %121 = ptrtoint ptr %arrayidx.i.i.i477 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %arrayidx.i.i.i477, align 4
  %123 = and i32 %122, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.i.not.i = icmp eq i32 %123, 0
  br i1 %tobool.i.not.i, label %for.cond215.2.if.else_crit_edge, label %iwl_mvm_is_tt_in_fw.exit

for.cond215.2.if.else_crit_edge:                  ; preds = %for.cond215.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

iwl_mvm_is_tt_in_fw.exit:                         ; preds = %for.cond215.2
  %124 = ptrtoint ptr %arrayidx.i.i.i477 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %arrayidx.i.i.i477, align 4
  %126 = and i32 %125, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i7.i.not = icmp eq i32 %126, 0
  br i1 %tobool.i7.i.not, label %iwl_mvm_is_tt_in_fw.exit.if.else_crit_edge, label %if.then228

iwl_mvm_is_tt_in_fw.exit.if.else_crit_edge:       ; preds = %iwl_mvm_is_tt_in_fw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then228:                                       ; preds = %iwl_mvm_is_tt_in_fw.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call229 = call i32 @iwl_mvm_send_temp_report_ths_cmd(ptr noundef %mvm) #7
  br label %if.end230

if.else:                                          ; preds = %iwl_mvm_is_tt_in_fw.exit.if.else_crit_edge, %for.cond215.2.if.else_crit_edge
  call void @iwl_mvm_tt_tx_backoff(ptr noundef %mvm, i32 noundef 0) #7
  br label %if.end230

if.end230:                                        ; preds = %if.else, %if.then228
  %127 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fw87, align 8
  %arrayidx.i.i.i479 = getelementptr %struct.iwl_fw, ptr %128, i32 0, i32 5, i32 8, i32 2
  %129 = ptrtoint ptr %arrayidx.i.i.i479 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %arrayidx.i.i.i479, align 4
  %131 = and i32 %130, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i.i480.not = icmp eq i32 %131, 0
  br i1 %tobool.i.i480.not, label %if.end230.if.end237_crit_edge, label %if.then232

if.end230.if.end237_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

if.then232:                                       ; preds = %if.end230
  %cooling_dev = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 126
  %132 = ptrtoint ptr %cooling_dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cooling_dev, align 8
  %call233 = call i32 @iwl_mvm_ctdp_command(ptr noundef %mvm, i32 noundef 1, i32 noundef %133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.then232.if.end237_crit_edge, label %if.then232.error_crit_edge

if.then232.error_crit_edge:                       ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then232.if.end237_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

if.end237:                                        ; preds = %if.then232.if.end237_crit_edge, %if.end230.if.end237_crit_edge
  %134 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fw87, align 8
  %arrayidx.i.i482 = getelementptr %struct.iwl_fw, ptr %135, i32 0, i32 5, i32 8, i32 1
  %136 = ptrtoint ptr %arrayidx.i.i482 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %arrayidx.i.i482, align 4
  %138 = and i32 %137, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.i483.not = icmp eq i32 %138, 0
  br i1 %tobool.i483.not, label %if.then241, label %if.end237.if.end274_crit_edge

if.end237.if.end274_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274

if.then241:                                       ; preds = %if.end237
  %call243 = call fastcc i32 @iwl_mvm_config_ltr(ptr noundef %mvm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.then241.if.end274_crit_edge, label %do.end260, !prof !111

if.then241.if.end274_crit_edge:                   ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274

do.end260:                                        ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1706, i32 noundef 9, ptr noundef null) #7
  br label %if.end274

if.end274:                                        ; preds = %do.end260, %if.then241.if.end274_crit_edge, %if.end237.if.end274_crit_edge
  %call275 = call i32 @iwl_mvm_power_update_device(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.end278, label %if.end274.error_crit_edge

if.end274.error_crit_edge:                        ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end278:                                        ; preds = %if.end274
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %139 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %status, align 4
  %141 = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool280.not = icmp eq i32 %141, 0
  br i1 %tobool280.not, label %if.then281, label %if.end278.if.end286_crit_edge

if.end278.if.end286_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end286

if.then281:                                       ; preds = %if.end278
  %call282 = call i32 @iwl_mvm_init_mcc(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %if.then281.if.end286_crit_edge, label %if.then281.error_crit_edge

if.then281.error_crit_edge:                       ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then281.if.end286_crit_edge:                   ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end286

if.end286:                                        ; preds = %if.then281.if.end286_crit_edge, %if.end278.if.end286_crit_edge
  %142 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %fw87, align 8
  %_capa.i484 = getelementptr inbounds %struct.iwl_fw, ptr %143, i32 0, i32 5, i32 8
  %144 = ptrtoint ptr %_capa.i484 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %_capa.i484, align 4
  %146 = and i32 %145, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.i485.not = icmp eq i32 %146, 0
  br i1 %tobool.i485.not, label %if.end286.if.end295_crit_edge, label %if.then290

if.end286.if.end295_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end295

if.then290:                                       ; preds = %if.end286
  %scan_type = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 51
  %147 = ptrtoint ptr %scan_type to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %scan_type, align 8
  %hb_scan_type = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 52
  %148 = ptrtoint ptr %hb_scan_type to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %hb_scan_type, align 4
  %call291 = call i32 @iwl_mvm_config_scan(ptr noundef %mvm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %if.then290.if.end295_crit_edge, label %if.then290.error_crit_edge

if.then290.error_crit_edge:                       ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then290.if.end295_crit_edge:                   ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end295

if.end295:                                        ; preds = %if.then290.if.end295_crit_edge, %if.end286.if.end295_crit_edge
  %149 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %status, align 4
  %151 = and i32 %150, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool298.not = icmp eq i32 %151, 0
  br i1 %tobool298.not, label %if.end295.if.end300_crit_edge, label %if.then299

if.end295.if.end300_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300

if.then299:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #9
  call void @iwl_mvm_send_recovery_cmd(ptr noundef %mvm, i32 noundef 1)
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %if.end295.if.end300_crit_edge
  %152 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %153, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_up, ptr noundef nonnull @.str.14) #7
  call void @iwl_mvm_leds_sync(ptr noundef %mvm) #7
  call void @iwl_mvm_ftm_initiator_smooth_config(ptr noundef %mvm) #7
  %154 = ptrtoint ptr %fw87 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fw87, align 8
  %arrayidx.i.i487 = getelementptr %struct.iwl_fw, ptr %155, i32 0, i32 5, i32 8, i32 1
  %156 = ptrtoint ptr %arrayidx.i.i487 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %arrayidx.i.i487, align 4
  %158 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %159, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_up, ptr noundef nonnull @.str.15) #7
  br label %cleanup

error:                                            ; preds = %if.then290.error_crit_edge, %if.then281.error_crit_edge, %if.end274.error_crit_edge, %if.then232.error_crit_edge, %for.cond215.1.error_crit_edge, %for.cond215.error_crit_edge, %if.end213.critedge.error_crit_edge, %if.then143.error_crit_edge, %if.then133.error_crit_edge, %do.end109, %if.end95.error_crit_edge, %if.then89.error_crit_edge, %if.end82.error_crit_edge, %if.end78.error_crit_edge, %if.then73.error_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.error_crit_edge, %if.then38, %do.end34.error_crit_edge
  %ret.4 = phi i32 [ %retval.0.i491, %if.then38 ], [ -132, %do.end34.error_crit_edge ], [ %call.i472, %iwl_mvm_get_valid_tx_ant.exit.error_crit_edge ], [ %call79, %if.end78.error_crit_edge ], [ %call83, %if.end82.error_crit_edge ], [ %call91, %if.then89.error_crit_edge ], [ %call97, %if.end95.error_crit_edge ], [ %call103, %do.end109 ], [ %call134, %if.then133.error_crit_edge ], [ %call144, %if.then143.error_crit_edge ], [ %call233, %if.then232.error_crit_edge ], [ %call275, %if.end274.error_crit_edge ], [ %call291, %if.then290.error_crit_edge ], [ %call282, %if.then281.error_crit_edge ], [ %call74, %if.then73.error_crit_edge ], [ %call220, %if.end213.critedge.error_crit_edge ], [ %call220.1, %for.cond215.error_crit_edge ], [ %call220.2, %for.cond215.1.error_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @iwlmvm_mod_params to i32))
  %160 = load i8, ptr @iwlmvm_mod_params, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool350.not = icmp eq i8 %160, 0
  br i1 %tobool350.not, label %error.if.then352_crit_edge, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error.if.then352_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then352

if.then352:                                       ; preds = %error.if.then352_crit_edge, %if.then176, %land.rhs165.if.then352_crit_edge
  %ret.4499 = phi i32 [ %ret.4, %error.if.then352_crit_edge ], [ 0, %if.then176 ], [ 0, %land.rhs165.if.then352_crit_edge ]
  call void @iwl_mvm_stop_device(ptr noundef %mvm) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then352, %error.cleanup_crit_edge, %if.end300, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end300 ], [ %call.i470, %if.end.cleanup_crit_edge ], [ %ret.4, %error.cleanup_crit_edge ], [ %ret.4499, %if.then352 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_error_collect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_get_shared_mem_conf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_sf_update(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_start_dbg_conf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_phy_db_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_set_soc_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_configure_rxq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_send_rss_cfg_cmd(ptr noundef %mvm) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_rss_config_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 172)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %cmd, align 4
  %3 = getelementptr inbounds %struct.iwl_rss_config_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 63, ptr %3, align 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_rx_queues, align 8
  %conv6 = zext i8 %10 to i16
  %sub = add nsw i16 %conv6, -1
  %rem.lhs.trunc = trunc i32 %i.015 to i16
  %rem14 = srem i16 %rem.lhs.trunc, %sub
  %11 = trunc i16 %rem14 to i8
  %conv7 = add nuw i8 %11, 1
  %arrayidx = getelementptr %struct.iwl_rss_config_cmd, ptr %cmd, i32 0, i32 4, i32 %i.015
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %secret_key = getelementptr inbounds %struct.iwl_rss_config_cmd, ptr %cmd, i32 0, i32 3
  call void @netdev_rss_key_fill(ptr noundef %secret_key, i32 noundef 40) #7
  %call = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 179, i32 noundef 0, i16 noundef zeroext 176, ptr noundef nonnull %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_send_dqa_cmd(ptr noundef %mvm) unnamed_addr #0 align 64 {
entry:
  %dqa_cmd = alloca %struct.iwl_dqa_enable_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqa_cmd) #7
  %0 = ptrtoint ptr %dqa_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dqa_cmd, align 4
  %call1 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 1280, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %dqa_cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %1 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mvm, align 8
  br i1 %tobool.not, label %do.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %call1) #7
  br label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %2, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_send_dqa_cmd, ptr noundef nonnull @.str.41) #7
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqa_cmd) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_add_aux_sta(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_phy_ctxt_add(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_temp_report_ths_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_tt_tx_backoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_ctdp_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_config_ltr(ptr noundef %mvm) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_ltr_config_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #7
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.iwl_mvm_config_ltr.cmd, i32 32)
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %1 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans, align 4
  %ltr_enabled = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %ltr_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ltr_enabled, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 238, i32 noundef 0, i16 noundef zeroext 32, ptr noundef nonnull %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_init_mcc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_config_scan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_leds_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_ftm_initiator_smooth_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_stop_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_load_d3_fw(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %tx_ant_cmd.i = alloca %struct.iwl_tx_ant_cfg_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !110

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1774, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %1 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 1045) #7
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i98 = tail call i32 %6(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool25.not = icmp eq i32 %call.i98, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call28 = tail call fastcc i32 @iwl_mvm_load_ucode_wait_alive(ptr noundef %mvm, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.16, i32 noundef %call28) #7
  br label %error

if.end37:                                         ; preds = %if.end27
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %9 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end37.cond.false.i_crit_edge, label %land.lhs.true.i

if.end37.cond.false.i_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end37
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %13 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i = and i8 %16, %12
  br label %iwl_mvm_get_valid_tx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.end37.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %17 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid_tx_ant9.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i, %cond.true.i ], [ %20, %cond.false.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #7
  %conv.i = zext i8 %cond.i to i32
  %21 = shl nuw i32 %conv.i, 24
  %22 = ptrtoint ptr %tx_ant_cmd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tx_ant_cmd.i, align 4
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_tx_ant_cfg, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #7
  %call.i99 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 152, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %tx_ant_cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool40.not = icmp eq i32 %call.i99, 0
  br i1 %tobool40.not, label %if.end42, label %iwl_mvm_get_valid_tx_ant.exit.error_crit_edge

iwl_mvm_get_valid_tx_ant.exit.error_crit_edge:    ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end42:                                         ; preds = %iwl_mvm_get_valid_tx_ant.exit
  %phy_db = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 4
  %25 = ptrtoint ptr %phy_db to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_db, align 8
  %call43 = call i32 @iwl_send_phy_db_data(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.error_crit_edge

if.end42.error_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end46:                                         ; preds = %if.end42
  %call47 = call fastcc i32 @iwl_send_phy_cfg_cmd(ptr noundef %mvm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.cond.preheader, label %if.end46.error_crit_edge

if.end46.error_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.cond.preheader:                               ; preds = %if.end46
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw, align 8
  %num_stations100 = getelementptr inbounds %struct.iwl_fw, ptr %28, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %num_stations100 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_stations100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp51101.not = icmp eq i32 %30, 0
  br i1 %cmp51101.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.do.body57_crit_edge

for.cond.preheader.do.body57_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body57

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body57:                                        ; preds = %do.body57.do.body57_crit_edge, %for.cond.preheader.do.body57_crit_edge
  %i.0102 = phi i32 [ %inc, %do.body57.do.body57_crit_edge ], [ 0, %for.cond.preheader.do.body57_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %i.0102
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0102, 1
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %33, i32 0, i32 5, i32 6
  %34 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_stations, align 4
  %cmp51 = icmp ult i32 %inc, %35
  br i1 %cmp51, label %do.body57.do.body57_crit_edge, label %do.body57.for.end_crit_edge

do.body57.for.end_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body57.do.body57_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

for.end:                                          ; preds = %do.body57.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %28, %for.cond.preheader.for.end_crit_edge ], [ %33, %do.body57.for.end_crit_edge ]
  %call65 = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %.lcssa, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call65)
  %cmp66 = icmp ult i8 %call65, 12
  br i1 %cmp66, label %if.then68, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %for.end
  %call69 = call i32 @iwl_mvm_add_aux_sta(ptr noundef %mvm, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.cleanup_crit_edge, label %if.then68.error_crit_edge

if.then68.error_crit_edge:                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %if.then68.error_crit_edge, %if.end46.error_crit_edge, %if.end42.error_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.error_crit_edge, %do.end34
  %ret.0 = phi i32 [ %call28, %do.end34 ], [ %call.i99, %iwl_mvm_get_valid_tx_ant.exit.error_crit_edge ], [ %call43, %if.end42.error_crit_edge ], [ %call47, %if.end46.error_crit_edge ], [ %call69, %if.then68.error_crit_edge ]
  call void @iwl_mvm_stop_device(ptr noundef %mvm) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then68.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call.i98, %if.end.cleanup_crit_edge ], [ 0, %if.then68.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_mfuart_notif(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #7
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
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %external_ver = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %11 = ptrtoint ptr %external_ver to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %external_ver, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %status = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %14 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %status, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %duration = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %17 = ptrtoint ptr %duration to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %duration, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_mfuart_notif, ptr noundef nonnull @.str.17, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #7
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %5, align 1
  %22 = and i32 %21, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %22)
  %cmp = icmp eq i32 %22, 402653184
  br i1 %cmp, label %do.end8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  %image_size = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %25 = ptrtoint ptr %image_size to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %image_size, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_mfuart_notif, ptr noundef nonnull @.str.18, i32 noundef %27) #7
  br label %if.end

if.end:                                           ; preds = %do.end8, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_wait_init_complete(ptr nocapture noundef readnone %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.not = icmp eq i8 %1, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 232, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_external_nvm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_nvm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_phy_db_set_section(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_alive_fn(ptr nocapture noundef %notif_wait, ptr noundef readonly %pkt, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pkt, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %sub.i = add nsw i32 %3, -4
  %add.ptr = getelementptr i8, ptr %notif_wait, i32 -288
  %fw = getelementptr i8, ptr %notif_wait, i32 -280
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %call1 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %call1.off = add i8 %call1, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call1.off)
  %switch = icmp ult i8 %call1.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub.i)
  %cmp5 = icmp ult i32 %sub.i, 128
  br i1 %cmp5, label %if.then.cleanup163_crit_edge, label %cleanup

if.then.cleanup163_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %data8 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %umac_data = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 13, i32 1
  %arrayidx10 = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 7, i32 1
  %6 = ptrtoint ptr %data8 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %data8, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %sku_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 15, i32 1
  %9 = ptrtoint ptr %sku_id to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %sku_id, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %trans = getelementptr i8, ptr %notif_wait, i32 -284
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans, align 4
  %sku_id14 = getelementptr inbounds %struct.iwl_trans, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %sku_id14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %sku_id14, align 4
  %arrayidx18 = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 16
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx18, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans, align 4
  %arrayidx21 = getelementptr %struct.iwl_trans, ptr %19, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %arrayidx21, align 4
  %arrayidx24 = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 16, i32 1
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx24, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trans, align 4
  %arrayidx27 = getelementptr %struct.iwl_trans, ptr %25, i32 0, i32 15, i32 2
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx27, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %29 = load ptr, ptr %trans, align 4
  %sku_id30 = getelementptr inbounds %struct.iwl_trans, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %sku_id30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sku_id30, align 4
  %arrayidx34 = getelementptr %struct.iwl_trans, ptr %29, i32 0, i32 15, i32 1
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx34, align 4
  %arrayidx37 = getelementptr %struct.iwl_trans, ptr %29, i32 0, i32 15, i32 2
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx37, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alive_fn, ptr noundef nonnull @.str.27, i32 noundef %31, i32 noundef %33, i32 noundef %35) #7
  br label %if.end101

if.else:                                          ; preds = %entry
  %36 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %pkt, align 1
  %38 = and i32 %37, -12648448
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %do.end84 [
    i32 120, label %if.then43
    i32 72, label %if.then64
  ]

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %sub.i)
  %cmp45 = icmp ult i32 %sub.i, 116
  br i1 %cmp45, label %if.then43.cleanup163_crit_edge, label %cleanup57

if.then43.cleanup163_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

cleanup57:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %data49 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %umac_data51 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 13, i32 1
  %arrayidx55 = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 7, i32 1
  %41 = ptrtoint ptr %data49 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %data49, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  br label %if.end101

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %sub.i)
  %cmp65 = icmp ult i32 %sub.i, 68
  br i1 %cmp65, label %if.then64.cleanup163_crit_edge, label %cleanup74

if.then64.cleanup163_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

cleanup74:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %data69 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %umac_data71 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 7, i32 1
  %44 = ptrtoint ptr %data69 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %data69, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  br label %if.end101

do.end84:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i230 = add nsw i32 %39, -4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 179, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %sub.i230) #7
  br label %cleanup163

if.end101:                                        ; preds = %cleanup74, %cleanup57, %cleanup
  %umac.3 = phi ptr [ %umac_data, %cleanup ], [ %umac_data51, %cleanup57 ], [ %umac_data71, %cleanup74 ]
  %lmac2.2 = phi ptr [ %arrayidx10, %cleanup ], [ %arrayidx55, %cleanup57 ], [ null, %cleanup74 ]
  %status.3 = phi i16 [ %8, %cleanup ], [ %43, %cleanup57 ], [ %46, %cleanup74 ]
  %lmac1.3 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %dbg_ptrs = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 3, i32 1
  %47 = ptrtoint ptr %dbg_ptrs to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %dbg_ptrs, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %trans102 = getelementptr i8, ptr %notif_wait, i32 -284
  %50 = ptrtoint ptr %trans102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trans102, align 4
  %error_event_table_tlv_status.i = getelementptr inbounds %struct.iwl_trans, ptr %51, i32 0, i32 32, i32 9
  %52 = ptrtoint ptr %error_event_table_tlv_status.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %error_event_table_tlv_status.i, align 8
  %and.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end101.if.then23.i_crit_edge, label %lor.lhs.false.i

if.end101.if.then23.i_crit_edge:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %if.end101
  %lmac_error_event_table2.i = getelementptr inbounds %struct.iwl_trans, ptr %51, i32 0, i32 32, i32 5
  %54 = ptrtoint ptr %lmac_error_event_table2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lmac_error_event_table2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %49)
  %cmp.not.i = icmp eq i32 %55, %49
  br i1 %cmp.not.i, label %lor.lhs.false.i.iwl_fw_lmac1_set_alive_err_table.exit_crit_edge, label %do.end.i, !prof !111

lor.lhs.false.i.iwl_fw_lmac1_set_alive_err_table.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_fw_lmac1_set_alive_err_table.exit

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 274, i32 noundef 9, ptr noundef null) #7
  br label %if.then23.i

if.then23.i:                                      ; preds = %do.end.i, %if.end101.if.then23.i_crit_edge
  %lmac_error_event_table25.i = getelementptr inbounds %struct.iwl_trans, ptr %51, i32 0, i32 32, i32 5
  %56 = ptrtoint ptr %lmac_error_event_table25.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %49, ptr %lmac_error_event_table25.i, align 4
  br label %iwl_fw_lmac1_set_alive_err_table.exit

iwl_fw_lmac1_set_alive_err_table.exit:            ; preds = %if.then23.i, %lor.lhs.false.i.iwl_fw_lmac1_set_alive_err_table.exit_crit_edge
  %tobool103.not = icmp eq ptr %lmac2.2, null
  br i1 %tobool103.not, label %iwl_fw_lmac1_set_alive_err_table.exit.if.end110_crit_edge, label %if.then104

iwl_fw_lmac1_set_alive_err_table.exit.if.end110_crit_edge: ; preds = %iwl_fw_lmac1_set_alive_err_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then104:                                       ; preds = %iwl_fw_lmac1_set_alive_err_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_ptrs105 = getelementptr inbounds %struct.iwl_lmac_alive, ptr %lmac2.2, i32 0, i32 7
  %57 = ptrtoint ptr %dbg_ptrs105 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %dbg_ptrs105, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %trans102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trans102, align 4
  %arrayidx109 = getelementptr %struct.iwl_trans, ptr %61, i32 0, i32 32, i32 5, i32 1
  %62 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %arrayidx109, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then104, %iwl_fw_lmac1_set_alive_err_table.exit.if.end110_crit_edge
  %dbg_ptrs111 = getelementptr inbounds %struct.iwl_umac_alive, ptr %umac.3, i32 0, i32 2
  %63 = ptrtoint ptr %dbg_ptrs111 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %dbg_ptrs111, align 1
  %65 = and i32 %64, -193
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool112.not = icmp eq i32 %65, 0
  br i1 %tobool112.not, label %if.end110.if.end130_crit_edge, label %if.then113

if.end110.if.end130_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then113:                                       ; preds = %if.end110
  %67 = ptrtoint ptr %trans102 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %trans102, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg, align 8
  %min_umac_error_event_table = getelementptr inbounds %struct.iwl_cfg, ptr %70, i32 0, i32 30
  %71 = ptrtoint ptr %min_umac_error_event_table to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %min_umac_error_event_table, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %72)
  %cmp115.not = icmp ult i32 %66, %72
  br i1 %cmp115.not, label %do.end123, label %if.then117

if.then117:                                       ; preds = %if.then113
  %error_event_table_tlv_status.i233 = getelementptr inbounds %struct.iwl_trans, ptr %68, i32 0, i32 32, i32 9
  %73 = ptrtoint ptr %error_event_table_tlv_status.i233 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %error_event_table_tlv_status.i233, align 8
  %and.i234 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool.not.i235 = icmp eq i32 %and.i234, 0
  br i1 %tobool.not.i235, label %if.then117.if.then23.i239_crit_edge, label %lor.lhs.false.i237

if.then117.if.then23.i239_crit_edge:              ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i239

lor.lhs.false.i237:                               ; preds = %if.then117
  %umac_error_event_table2.i = getelementptr inbounds %struct.iwl_trans, ptr %68, i32 0, i32 32, i32 6
  %75 = ptrtoint ptr %umac_error_event_table2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %umac_error_event_table2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %66)
  %cmp.not.i236 = icmp eq i32 %76, %66
  br i1 %cmp.not.i236, label %lor.lhs.false.i237.if.end130_crit_edge, label %do.end.i238, !prof !111

lor.lhs.false.i237.if.end130_crit_edge:           ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

do.end.i238:                                      ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 284, i32 noundef 9, ptr noundef null) #7
  br label %if.then23.i239

if.then23.i239:                                   ; preds = %do.end.i238, %if.then117.if.then23.i239_crit_edge
  %umac_error_event_table25.i = getelementptr inbounds %struct.iwl_trans, ptr %68, i32 0, i32 32, i32 6
  %77 = ptrtoint ptr %umac_error_event_table25.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %66, ptr %umac_error_event_table25.i, align 4
  br label %if.end130

do.end123:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 8
  %cur_fw_img = getelementptr i8, ptr %notif_wait, i32 2784
  %80 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp125 = icmp eq i32 %81, 1
  %cond = select i1 %cmp125, ptr @.str.30, ptr @.str.31
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %79, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %66, ptr noundef nonnull %cond) #7
  br label %if.end130

if.end130:                                        ; preds = %do.end123, %if.then23.i239, %lor.lhs.false.i237.if.end130_crit_edge, %if.end110.if.end130_crit_edge
  %scd_base_ptr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 6
  %82 = ptrtoint ptr %scd_base_ptr to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %scd_base_ptr, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %scd_base_addr = getelementptr inbounds %struct.iwl_mvm_alive_data, ptr %data, i32 0, i32 1
  %85 = ptrtoint ptr %scd_base_addr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %scd_base_addr, align 4
  %conv132 = zext i16 %status.3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13570, i16 %status.3)
  %cmp133 = icmp eq i16 %status.3, -13570
  %frombool = zext i1 %cmp133 to i8
  %86 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool, ptr %data, align 4
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 8
  %ver_type = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2, i32 1, i32 1
  %89 = ptrtoint ptr %ver_type to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ver_type, align 1
  %conv141 = zext i8 %90 to i32
  %ver_subtype = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2, i32 1
  %91 = ptrtoint ptr %ver_subtype to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ver_subtype, align 1
  %conv142 = zext i8 %92 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %88, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alive_fn, ptr noundef nonnull @.str.32, i32 noundef %conv132, i32 noundef %conv141, i32 noundef %conv142) #7
  br i1 %tobool103.not, label %if.end130.do.end158_crit_edge, label %do.end150

if.end130.do.end158_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end158

do.end150:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %94, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alive_fn, ptr noundef nonnull @.str.33) #7
  br label %do.end158

do.end158:                                        ; preds = %do.end150, %if.end130.do.end158_crit_edge
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 8
  %97 = ptrtoint ptr %umac.3 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %umac.3, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %umac_minor = getelementptr inbounds %struct.iwl_umac_alive, ptr %umac.3, i32 0, i32 1
  %100 = ptrtoint ptr %umac_minor to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %umac_minor, align 1
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %96, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alive_fn, ptr noundef nonnull @.str.34, i32 noundef %99, i32 noundef %102) #7
  %tobool.not.i240 = icmp eq ptr %lmac1.3, null
  br i1 %tobool.not.i240, label %do.end158.if.end.i_crit_edge, label %if.then.i

do.end158.if.end.i_crit_edge:                     ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %ver_type to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ver_type, align 1
  %fw_ver.i = getelementptr i8, ptr %notif_wait, i32 3668
  %105 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %fw_ver.i, align 4
  %106 = ptrtoint ptr %ver_subtype to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ver_subtype, align 1
  %subtype.i = getelementptr i8, ptr %notif_wait, i32 3669
  %108 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %subtype.i, align 1
  %109 = ptrtoint ptr %lmac1.3 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %lmac1.3, align 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #7
  %lmac_major.i = getelementptr i8, ptr %notif_wait, i32 3672
  %112 = ptrtoint ptr %lmac_major.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %lmac_major.i, align 4
  %ucode_minor.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2
  %113 = ptrtoint ptr %ucode_minor.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %ucode_minor.i, align 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #7
  %lmac_minor.i = getelementptr i8, ptr %notif_wait, i32 3676
  %116 = ptrtoint ptr %lmac_minor.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %lmac_minor.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end158.if.end.i_crit_edge
  %tobool7.not.i = icmp eq ptr %umac.3, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup163_crit_edge, label %if.then8.i

if.end.i.cleanup163_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %umac.3 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %umac.3, align 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #7
  %umac_major11.i = getelementptr i8, ptr %notif_wait, i32 3680
  %120 = ptrtoint ptr %umac_major11.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %umac_major11.i, align 4
  %121 = ptrtoint ptr %umac_minor to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %umac_minor, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  %umac_minor14.i = getelementptr i8, ptr %notif_wait, i32 3684
  %124 = ptrtoint ptr %umac_minor14.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %umac_minor14.i, align 4
  br label %cleanup163

cleanup163:                                       ; preds = %if.then8.i, %if.end.i.cleanup163_crit_edge, %do.end84, %if.then64.cleanup163_crit_edge, %if.then43.cleanup163_crit_edge, %if.then.cleanup163_crit_edge
  %retval.3 = phi i1 [ false, %do.end84 ], [ true, %if.end.i.cleanup163_crit_edge ], [ true, %if.then8.i ], [ false, %if.then.cleanup163_crit_edge ], [ false, %if.then43.cleanup163_crit_edge ], [ false, %if.then64.cleanup163_crit_edge ]
  ret i1 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pnvm_load(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_bss_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_dbg_stop_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_init_paging(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !94, !96, !98, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 104, i32 3}
!2 = !{ptr @__func__.iwl_mvm_mfu_assert_dump_notif, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 108, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @iwl_run_init_mvm_ucode.init_complete, !6, !"init_complete", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 626, i32 19}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 635, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 651, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 665, i32 4}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 677, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__func__.iwl_run_init_mvm_ucode, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 686, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 700, i32 3}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 715, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1492, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1500, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1562, i32 3}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1573, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1617, i32 4}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1661, i32 6}
!35 = !{ptr @__func__.iwl_mvm_up, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1735, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1762, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1782, i32 3}
!42 = !{ptr @__func__.iwl_mvm_rx_mfuart_notif, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1831, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1839, i32 3}
!47 = !{ptr @iwl_run_unified_mvm_ucode.init_complete, !48, !"init_complete", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 397, i32 19}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 435, i32 3}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 464, i32 3}
!53 = !{ptr @iwl_mvm_load_ucode_wait_alive.alive_cmd, !54, !"alive_cmd", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 260, i32 19}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 304, i32 4}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 320, i32 4}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 323, i32 4}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 327, i32 5}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 341, i32 3}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 348, i32 3}
!67 = !{ptr @__func__.iwl_alive_fn, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 151, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 178, i32 3}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 201, i32 4}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 212, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 217, i32 3}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 219, i32 2}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 273, i32 6}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1077, i32 2}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1079, i32 2}
!88 = !{ptr @__func__.iwl_send_tx_ant_cfg, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 47, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__func__.iwl_send_phy_cfg_cmd, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 615, i32 2}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 1521, i32 3}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 87, i32 3}
!98 = !{ptr @__func__.iwl_mvm_send_dqa_cmd, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/fw.c", i32 89, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i8 0, i8 2}
!113 = !{!"auto-init"}
