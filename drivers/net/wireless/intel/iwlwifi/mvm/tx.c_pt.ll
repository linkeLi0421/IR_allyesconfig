; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.60 = type { i16, i16 }
%struct.iwl_tx_cmd = type { i16, i16, i32, %struct.anon.186, i32, i8, i8, i8, i8, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, %union.anon.187 }
%struct.anon.186 = type { i8, i8, i16 }
%union.anon.187 = type { %struct.anon.190 }
%struct.anon.190 = type { %struct.anon.191, [0 x %struct.ieee80211_hdr] }
%struct.anon.191 = type {}
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.162, %struct.anon.163, %struct.anon.163, %struct.list_head, %union.anon.164, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.177, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.179, %struct.list_head, %struct.anon.181, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.162 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.163 = type { i64, i64, i64, i64 }
%union.anon.164 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.167, %struct.anon.172, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.166], i32, i32, i32, [6 x i32] }
%struct.anon.166 = type { [15 x i32], i32 }
%struct.anon.167 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.171 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.171 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.172 = type { %struct.delayed_work, i32, i64 }
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
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.176 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.173, %struct.anon.174, %struct.anon.175, i8 }
%struct.anon.173 = type { [4 x i32], i32 }
%struct.anon.174 = type { [4 x i32], i32, i32 }
%struct.anon.175 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.176 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.177 = type { %struct.delayed_work, i32, i8, %struct.anon.178 }
%struct.anon.178 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.179 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.180, %struct.list_head }
%struct.anon.180 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.181 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.153, %struct.anon.154, %struct.iwl_dma_ptr }
%struct.anon.153 = type { i8, i8, i32 }
%struct.anon.154 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i32, i32, i32, i32, i8, i8, i16, i16, i8, [5 x i8], [0 x i8] }
%struct.iwl_fw_dbg_trigger_ba = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.192 }
%union.anon.192 = type { %struct.anon.196, [32 x i8] }
%struct.anon.196 = type { i64 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.206 }
%union.anon.206 = type { %struct.anon.212, [16 x i8] }
%struct.anon.212 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.219 = type { i8, %union.anon.220 }
%union.anon.220 = type <{ %struct.anon.225, [17 x i8] }>
%struct.anon.225 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.anon.236 = type { i8, i8, i8, i8, %struct.ieee80211_tpc_report_ie }
%struct.ieee80211_tpc_report_ie = type { i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.155, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.155 = type { i32, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
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
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.165, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.165 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.144 }>
%struct.anon.144 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_mvm_sta = type { i32, i32, i32, i16, i16, i32, i32, i8, i8, %struct.spinlock, [9 x %struct.iwl_mvm_tid_data], [8 x i8], %union.anon.199, ptr, [4 x ptr], ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.iwl_mvm_tid_data = type { i16, i16, i32, i8, i8, i32, i16, i16, i16, i32, i32, i32 }
%union.anon.199 = type { %struct.iwl_lq_sta }
%struct.iwl_lq_sta = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, %struct.rs_rate, i32, ptr, i32, i8, %struct.iwl_lq_cmd, [2 x %struct.iwl_scale_tbl_info], i8, i32, i8, i32, %struct.lq_sta_pers }
%struct.rs_rate = type { i32, i32, i8, i32, i8, i8, i8, i8 }
%struct.iwl_lq_cmd = type { i8, i8, i16, i8, i8, i8, i8, [4 x i8], i16, i8, i8, i32, [16 x i32], i32 }
%struct.iwl_scale_tbl_info = type { %struct.rs_rate, i32, ptr, [17 x %struct.iwl_rate_scale_data], [16 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32 }
%struct.lq_sta_pers = type { i32, i8, i32, i8, [4 x i8], i8, [8 x [17 x %struct.rs_rate_stats]], ptr, %struct.spinlock }
%struct.rs_rate_stats = type { i64, i64 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.157, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.157 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.158] }
%struct.anon.158 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_probe_resp_data = type { %struct.callback_head, %struct.iwl_probe_resp_data_notif, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.iwl_probe_resp_data_notif = type { i32, i32, %struct.iwl_p2p_noa_attr, i8, [3 x i8] }
%struct.iwl_p2p_noa_attr = type { i8, i8, i8, i8, i8, [2 x %struct.ieee80211_p2p_noa_desc], i8 }
%struct.iwl_device_tx_cmd = type { %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_mvm_tx_resp = type { i8, i8, i8, i8, i32, i16, i8, [3 x i8], [3 x i8], [3 x i8], i16, i8, i8, i32, i16, i16, i8, i8, i16, i16, i16, %struct.agg_tx_status }
%struct.agg_tx_status = type { i16, i16 }
%struct.iwl_mvm_compressed_ba_tfd = type { i16, i16, i8, i8, [2 x i8] }
%struct.iwl_mvm_ba_notif = type <{ [6 x i8], i16, i8, i8, i16, i64, i16, i16, i8, i8, i8, i8 }>
%struct.iwl_tx_path_flush_cmd_v1 = type { i32, i16, i16 }
%struct.iwl_tx_path_flush_cmd = type { i32, i16, i16 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_tx_path_flush_cmd_rsp = type { i16, i16, [16 x %struct.iwl_flush_queue_info] }
%struct.iwl_flush_queue_info = type { i16, i16, i16, i16 }
%struct.sk_buff_list = type { ptr, ptr }

@iwl_mvm_set_tx_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/tx.c\00", [52 x i8] zeroinitializer }, align 32
@tid_to_mac80211_ac = external dso_local local_unnamed_addr constant [0 x i8], align 1
@iwl_mvm_set_tx_cmd.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_skb_non_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_skb_non_sta.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No queue was found. Dropping TX\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tx_skb_non_sta = private unnamed_addr constant [23 x i8] c"iwl_mvm_tx_skb_non_sta\00", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"station Id %d, queue=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_skb_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_skb_sta.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DELAY\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FEW_BYTES\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT_PRIO\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QUIET_PERIOD\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CALC_TTAK\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INTERNAL_CROSSED_RETRY\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SHORT_LIMIT\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LONG_LIMIT\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNDERRUN\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRAIN_FLOW\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RFKILL_FLUSH\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIFE_EXPIRE\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEST_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HOST_ABORTED\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BT_RETRY\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STA_INVALID\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FRAG_DROPPED\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TID_DISABLE\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FIFO_FLUSHED\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMALL_CF_POLL\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FW_DROP\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"STA_COLOR_MISMATCH\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_ba_notif = private unnamed_addr constant [20 x i8] c"iwl_mvm_rx_ba_notif\00", align 1
@.str.30 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"BA_NOTIFICATION Received from sta_id = %d, flags %x, sent:%d, acked:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_ba_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"BA_NOTIFICATION Received from %pM, sta_id = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"TID = %d, SeqCtl = %d, bitmap = 0x%llx, scd_flow = %d, scd_ssn = %d sent:%d, acked:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reduced txp from ba notif %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to send flush command (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_flush_sta_tids = private unnamed_addr constant [23 x i8] c"iwl_mvm_flush_sta_tids\00", align 1
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"flush for sta id %d tid mask 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_mvm_flush_sta_tids.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_flush_sta_tids.__already_done.36 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sta_id %d != rsp_sta_id %d\00", [37 x i8] zeroinitializer }, align 32
@iwl_mvm_flush_sta_tids.__already_done.38 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"num_flushed_queues %d\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tid %d queue_id %d read-before %d read-after %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BAR sent to %pM, tid %d, ssn %d\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iwl_mvm_tx_csum_pre_bz.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No support for requested checksum\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_csum_pre_bz.__already_done.44 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Got a HT rate (flags:0x%x/mcs:%d/fc:0x%x/state:%d) for a non data frame\0A\00", [55 x i8] zeroinitializer }, align 32
@rate_lowest_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@iwl_mvm_get_ctrl_vif_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fc=0x%02x\00", [22 x i8] zeroinitializer }, align 32
@iwl_mvm_get_ctrl_vif_queue.__already_done.48 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_get_ctrl_vif_queue.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Not a ctrl vif, no available queue\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_mvm_probe_resp_set_noa.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_probe_resp_set_noa = private unnamed_addr constant [27 x i8] c"iwl_mvm_probe_resp_set_noa\00", align 1
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"probe resp doesn't have P2P IE\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to reallocate probe resp\0A\00", [63 x i8] zeroinitializer }, align 32
@iwl_trans_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_tx = private unnamed_addr constant [13 x i8] c"iwl_trans_tx\00", align 1
@iwl_mvm_ac_to_gen2_tx_fifo = external dso_local local_unnamed_addr constant [0 x i8], align 1
@iwl_mvm_ac_to_tx_fifo = external dso_local local_unnamed_addr constant [0 x i8], align 1
@iwl_mvm_tx_mpdu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_mpdu.__already_done.57 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_mpdu.__already_done.58 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid TID %d\00", [17 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_mpdu.__already_done.60 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid internal agg state %d for TID %d\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_mpdu.__already_done.62 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_mpdu.__already_done.63 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid TXQ id\00", [17 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tx_mpdu = private unnamed_addr constant [16 x i8] c"iwl_mvm_tx_mpdu\00", align 1
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TX to [%d|%d] Q:%d - seq: 0x%x len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX to [%d|%d] dropped\0A\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@iwl_mvm_tx_tso.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_tso_segment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FW reported TX filtered, status=0x%x, FC=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_tx_cmd_single = private unnamed_addr constant [25 x i8] c"iwl_mvm_rx_tx_cmd_single\00", align 1
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TXQ %d status %s (0x%08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\09\09\09\09initial_rate 0x%x retries %d, idx=%d ssn=%d next_reclaimed=0x%x seq_ctl=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_tx_cmd_single.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rx_tx_cmd_single.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Next reclaimed packet:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NDP - don't update next_reclaimed\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_trans_reclaim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_reclaim = private unnamed_addr constant [18 x i8] c"iwl_trans_reclaim\00", align 1
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tx status %d was received\00", [38 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__func__.iwl_mvm_check_ratid_empty = private unnamed_addr constant [26 x i8] c"iwl_mvm_check_ratid_empty\00", align 1
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can continue addBA flow ssn = next_recl = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can continue DELBA flow ssn = next_recl = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_tx_cmd_agg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_rx_tx_cmd_agg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rx_tx_cmd_agg.__already_done.75 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_rx_tx_cmd_agg.__already_done.76 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_rx_tx_cmd_agg_dbg = private unnamed_addr constant [26 x i8] c"iwl_mvm_rx_tx_cmd_agg_dbg\00", align 1
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"status %s (0x%04x), try-count (%d) seq (0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TRANSMITTED\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ABORT\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_ON_AIR_DROP\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LAST_SENT_TRY_CNT\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LAST_SENT_BT_KILL\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCD_QUERY\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEST_BAD_CRC32\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RESPONSE\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DUMP_TX\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DELAY_TX\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_from_staid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_reclaim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sta_id %d tid %d\00", [47 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_reclaim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_tx_reclaim.__already_done.92 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid reclaim request: Q %d, tid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_reclaim.__already_done.94 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_tx_reclaim.__warned.95 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_tx_reclaim.__already_done.96 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_tx_reclaim = private unnamed_addr constant [19 x i8] c"iwl_mvm_tx_reclaim\00", align 1
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No reclaim. Update rs directly\0A\00", [32 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_hwrate_to_tx_rate = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 32, i16 512, i16 1024], [26 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_hwrate_to_tx_rate_v1 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 32, i16 512, i16 1024], [26 x i8] zeroinitializer }, align 32
@switch.table.iwl_mvm_hwrate_to_tx_status = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 32, i16 512, i16 1024], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 43, i64 60]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 33792]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 10]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 10]
@__sancov_gen_cov_switch_values.106 = internal global [9 x i64] [i64 7, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027080, i64 1027081, i64 1027082]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 33792]
@__sancov_gen_cov_switch_values.108 = internal global [25 x i64] [i64 23, i64 8, i64 1, i64 64, i64 65, i64 66, i64 67, i64 68, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.110 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 133, i64 136, i64 142]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 511, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 232, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 763, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 770, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1311, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1312, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1313, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1314, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1315, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1316, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1317, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1318, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1319, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1320, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1321, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1322, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1323, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1324, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1325, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1326, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1327, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1328, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1329, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1330, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1331, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1332, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1333, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1336, i32 9 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2058, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2095, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2099, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2105, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2129, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2153, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2174, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2182, i32 7 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2199, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 35, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 121, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 56, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 324, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 6355, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 633, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 643, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 667, i32 14 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 679, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 685, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1150, i32 6 }
@___asan_gen_.272 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1151, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1112, i32 7 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1116, i32 7 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1141, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1167, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1197, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1556, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1648, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1652, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1687, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1691, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1474, i32 6 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1283, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1291, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1774, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1742, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1746, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1747, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1748, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1749, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1750, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1751, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1752, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1753, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1754, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 695, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1186, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1858, i32 6 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1911, i32 3 }
@___asan_gen_.362 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1973, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 723, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [39 x i8] c"switch.table.iwl_mvm_hwrate_to_tx_rate\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [42 x i8] c"switch.table.iwl_mvm_hwrate_to_tx_rate_v1\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [41 x i8] c"switch.table.iwl_mvm_hwrate_to_tx_status\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.97, ptr @.str.98, ptr @switch.table.iwl_mvm_hwrate_to_tx_rate, ptr @switch.table.iwl_mvm_hwrate_to_tx_rate_v1, ptr @switch.table.iwl_mvm_hwrate_to_tx_status], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_hwrate_to_tx_rate to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_hwrate_to_tx_rate_v1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_mvm_hwrate_to_tx_status to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_tx_csum_bz(ptr nocapture readnone %mvm, ptr nocapture noundef readonly %skb, i1 noundef zeroext %amsdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %call = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %3) #11
  %4 = shl i32 %call, 21
  %5 = and i32 %4, 130023424
  %rem = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4.not = icmp eq i32 %rem, 0
  %spec.select.v = select i1 %tobool4.not, i32 -2147483648, i32 -2013265920
  %spec.select.v.sink = select i1 %amsdu, i32 -1879048192, i32 %spec.select.v
  %spec.select = or i32 %5, %spec.select.v.sink
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ip_summed, align 8
  %7 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %7)
  %cmp.not = icmp eq i16 %7, 1536
  br i1 %cmp.not, label %u32_encode_bits.exit57, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

u32_encode_bits.exit57:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 8
  %conv.i58 = zext i16 %12 to i32
  %13 = add i32 %call, %sub.ptr.lhs.cast.i.i
  %.neg = sub i32 -8, %13
  %14 = add i32 %.neg, %conv.i58
  %sub = add i32 %14, %sub.ptr.rhs.cast.i.i
  %csum_offset = getelementptr inbounds %struct.anon.60, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %csum_offset, align 2
  %conv14 = zext i16 %16 to i32
  %add15 = add i32 %sub, %conv14
  %17 = shl i32 %sub, 11
  %18 = and i32 %17, 2095104
  %19 = and i32 %add15, 1023
  %or11 = or i32 %18, %spec.select
  %or13 = or i32 %or11, %19
  %or17 = or i32 %or13, 1610612736
  br label %cleanup

cleanup:                                          ; preds = %u32_encode_bits.exit57, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or17, %u32_encode_bits.exit57 ], [ %spec.select, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_set_tx_cmd(ptr noundef %mvm, ptr noundef %skb, ptr nocapture noundef %tx_cmd, ptr noundef %info, i8 noundef zeroext %sta_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %tx_flags1 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %tx_flags1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %tx_flags1, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2, align 4
  %add = add i32 %8, 4
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.pre308 = and i16 %3, -1024
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %.pre308)
  %cmp.i = icmp eq i16 %.pre308, 20480
  br i1 %cmp.i, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr1, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %.pre.pre-phi = phi i16 [ 20480, %land.lhs.true.if.then_crit_edge ], [ %.pre308, %entry.if.then_crit_edge ]
  %or = or i32 %6, 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %and4 = and i32 %6, -9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pre-phi = phi i16 [ %.pre308, %if.else ], [ %.pre.pre-phi, %if.then ]
  %tx_flags.0 = phi i32 [ %and4, %if.else ], [ %or, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %.pre-phi)
  %cmp.i285 = icmp eq i16 %.pre-phi, 20480
  %or7 = or i32 %tx_flags.0, 65536
  %spec.select = select i1 %cmp.i285, i32 %or7, i32 %tx_flags.0
  %14 = shl i16 %3, 12
  %15 = and i16 %14, 16384
  %16 = zext i16 %15 to i32
  %17 = or i32 %spec.select, %16
  %18 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %18)
  %cmp.i287 = icmp eq i16 %18, -30720
  br i1 %cmp.i287, label %if.then14, label %if.else22

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = and i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp.i.i = icmp eq i16 %19, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %1, i32 %retval.0.v.i
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %retval.0.i, align 1
  %22 = and i8 %21, 15
  %tid_tspec = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 16
  %23 = ptrtoint ptr %tid_tspec to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tid_tspec, align 1
  %and18 = and i32 %17, -8193
  %24 = load i8, ptr %retval.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21 = icmp slt i8 %24, 0
  br label %if.end93

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %.pre-phi)
  %cmp.i288 = icmp eq i16 %.pre-phi, -31744
  br i1 %cmp.i288, label %if.then24, label %if.else77

if.then24:                                        ; preds = %if.else22
  %control26 = getelementptr inbounds %struct.ieee80211_bar, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %control26 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %control26, align 1
  %start_seq_num = getelementptr inbounds %struct.ieee80211_bar, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %start_seq_num to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %start_seq_num, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %or27 = or i32 %17, 72
  %30 = trunc i16 %26 to i8
  %31 = lshr i8 %30, 4
  %tid_tspec31 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 16
  %32 = ptrtoint ptr %tid_tspec31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tid_tspec31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp = icmp slt i8 %30, 0
  br i1 %cmp, label %land.rhs, label %if.then24.if.end66_crit_edge

if.then24.if.end66_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.rhs:                                         ; preds = %if.then24
  %.b282 = load i1, ptr @iwl_mvm_set_tx_cmd.__already_done, align 1
  br i1 %.b282, label %land.rhs.if.end66_crit_edge, label %if.then44, !prof !250

land.rhs.if.end66_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then44:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_set_tx_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 232, i32 noundef 9, ptr noundef null) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then44, %land.rhs.if.end66_crit_edge, %if.then24.if.end66_crit_edge
  %ra = getelementptr inbounds %struct.ieee80211_bar, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %tid_tspec31 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tid_tspec31, align 1
  %fwrt.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %35 = ptrtoint ptr %fwrt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fwrt.i, align 8
  %internal_ini_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 32, i32 10
  %37 = ptrtoint ptr %internal_ini_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %internal_ini_cfg.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i.i, label %iwl_trans_dbg_ini_valid.exit.i.i, label %if.end66.if.end93_crit_edge

if.end66.if.end93_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

iwl_trans_dbg_ini_valid.exit.i.i:                 ; preds = %if.end66
  %external_ini_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 32, i32 11
  %39 = ptrtoint ptr %external_ini_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %external_ini_cfg.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp2.i.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp2.i.not.i.i, label %if.end.i.i, label %iwl_trans_dbg_ini_valid.exit.i.i.if.end93_crit_edge

iwl_trans_dbg_ini_valid.exit.i.i.if.end93_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end.i.i:                                       ; preds = %iwl_trans_dbg_ini_valid.exit.i.i
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %41 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %42, i32 0, i32 20, i32 3, i32 11
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end93_crit_edge, label %if.end4.i.i

if.end.i.i.if.end93_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end4.i.i:                                      ; preds = %if.end.i.i
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %44, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %trig_dis_ms.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %44, i32 0, i32 7
  %48 = ptrtoint ptr %trig_dis_ms.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %trig_dis_ms.i.i.i, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #8
  %conv.i.i.i = zext i16 %50 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, 1000
  %call3.i.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i.i) #8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %47
  %51 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i.i, label %if.end4.i.i.if.end7.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end4.i.i.if.end7.i.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %54 = add i32 %52, %call3.i.i.i.i.i
  %sub.i.i.i.i = sub i32 %53, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i, label %land.lhs.true.i.i.i.i.if.end7.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end7.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %55 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i.i, align 8
  %57 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %44, align 1
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %56, ptr noundef nonnull @.str.42, i32 noundef %58) #8
  br label %if.end93

if.end7.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.i.if.end7.i.i.i_crit_edge, %if.end4.i.i.if.end7.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx.i.i.i.i, align 4
  %mode.i.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %44, i32 0, i32 4
  %61 = ptrtoint ptr %mode.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mode.i.i.i.i, align 1
  %63 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i1.i.i.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i1.i.i.i, label %if.end7.i.i.i.if.end93_crit_edge, label %land.rhs.i.i.i.i

if.end7.i.i.i.if.end93_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.rhs.i.i.i.i:                                 ; preds = %if.end7.i.i.i
  %conf.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %64 = ptrtoint ptr %conf.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %conf.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp.i2.i.i.i = icmp eq i8 %65, -1
  br i1 %cmp.i2.i.i.i, label %land.rhs.i.i.i.i.if.end.i_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.i

land.rhs.i.i.i.i.if.end.i_crit_edge:              ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

iwl_fw_dbg_trigger_check_stop.exit.i.i:           ; preds = %land.rhs.i.i.i.i
  %conv1.i.i.i.i = zext i8 %65 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv1.i.i.i.i
  %stop_conf_ids.i.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %44, i32 0, i32 2
  %66 = ptrtoint ptr %stop_conf_ids.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %stop_conf_ids.i.i.i.i, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %and6.i.i.i.i = and i32 %68, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.i.i.not.i.i = icmp eq i32 %and6.i.i.i.i, 0
  br i1 %tobool7.i.i.not.i.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end93_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end.i_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end93_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end.i:                                         ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end.i_crit_edge, %land.rhs.i.i.i.i.if.end.i_crit_edge
  %data.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %44, i32 0, i32 10
  %tx_bar.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_ba, ptr %data.i, i32 0, i32 5
  %69 = ptrtoint ptr %tx_bar.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %tx_bar.i, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #8
  %conv.i = zext i16 %71 to i32
  %conv4.i = zext i8 %34 to i32
  %shl.i = shl nuw i32 1, %conv4.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end93_crit_edge, label %if.end7.i

if.end.i.if.end93_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.i = zext i16 %29 to i32
  %call11.i = tail call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt.i, ptr noundef nonnull %44, ptr noundef nonnull @.str.41, ptr noundef %ra, i32 noundef %conv4.i, i32 noundef %conv10.i) #8
  br label %if.end93

if.else77:                                        ; preds = %if.else22
  %72 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %72)
  %cmp.i289 = icmp eq i16 %72, 2048
  %spec.select309 = select i1 %cmp.i289, i8 0, i8 8
  %73 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 16
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %spec.select309, ptr %73, align 1
  %75 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %info, align 8
  %and85 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else89, label %if.then87

if.then87:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #10
  %or88 = or i32 %17, 8192
  br label %if.end93

if.else89:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #10
  %and90 = and i32 %17, -8193
  br label %if.end93

if.end93:                                         ; preds = %if.else89, %if.then87, %if.end7.i, %if.end.i.if.end93_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end93_crit_edge, %if.end7.i.i.i.if.end93_crit_edge, %do.end.i.i.i, %if.end.i.i.if.end93_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.i.if.end93_crit_edge, %if.end66.if.end93_crit_edge, %if.then14
  %amsdu.0.off0 = phi i1 [ %tobool21, %if.then14 ], [ false, %if.then87 ], [ false, %if.else89 ], [ false, %if.end66.if.end93_crit_edge ], [ false, %iwl_trans_dbg_ini_valid.exit.i.i.if.end93_crit_edge ], [ false, %if.end.i.i.if.end93_crit_edge ], [ false, %do.end.i.i.i ], [ false, %if.end7.i.i.i.if.end93_crit_edge ], [ false, %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end93_crit_edge ], [ false, %if.end.i.if.end93_crit_edge ], [ false, %if.end7.i ]
  %tx_flags.3 = phi i32 [ %and18, %if.then14 ], [ %or88, %if.then87 ], [ %and90, %if.else89 ], [ %or27, %if.end66.if.end93_crit_edge ], [ %or27, %iwl_trans_dbg_ini_valid.exit.i.i.if.end93_crit_edge ], [ %or27, %if.end.i.i.if.end93_crit_edge ], [ %or27, %do.end.i.i.i ], [ %or27, %if.end7.i.i.i.if.end93_crit_edge ], [ %or27, %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end93_crit_edge ], [ %or27, %if.end.i.if.end93_crit_edge ], [ %or27, %if.end7.i ]
  %tid_tspec94 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 16
  %77 = ptrtoint ptr %tid_tspec94 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tid_tspec94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %78)
  %cmp96 = icmp ult i8 %78, 8
  %conv95 = zext i8 %78 to i32
  %arrayidx100 = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %conv95
  %ac.0.in = select i1 %cmp96, ptr %arrayidx100, ptr @tid_to_mac80211_ac
  %79 = ptrtoint ptr %ac.0.in to i32
  call void @__asan_load1_noabort(i32 %79)
  %ac.0 = load i8, ptr %ac.0.in, align 1
  %call103 = tail call zeroext i8 @iwl_mvm_bt_coex_tx_prio(ptr noundef %mvm, ptr noundef %1, ptr noundef %info, i8 noundef zeroext %ac.0) #8
  %conv104 = zext i8 %call103 to i32
  %shl = shl nuw nsw i32 %conv104, 11
  %or105 = or i32 %shl, %tx_flags.3
  %80 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp.i290 = icmp eq i16 %80, 0
  br i1 %cmp.i290, label %if.then107, label %if.else179

if.then107:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp.i291 = icmp ult i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %.pre-phi)
  %cmp.i292 = icmp eq i16 %.pre-phi, 8192
  %or.cond = or i1 %cmp.i291, %cmp.i292
  br i1 %or.cond, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %pm_frame_timeout = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 17
  %81 = ptrtoint ptr %pm_frame_timeout to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 768, ptr %pm_frame_timeout, align 1
  br label %if.end121

if.else114:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %.pre-phi)
  %cmp.i293 = icmp eq i16 %.pre-phi, -12288
  %pm_frame_timeout117 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 17
  br i1 %cmp.i293, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %pm_frame_timeout117 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 0, ptr %pm_frame_timeout117, align 1
  br label %if.end121

if.else118:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %pm_frame_timeout117 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 512, ptr %pm_frame_timeout117, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %if.then116, %if.then113
  %84 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %info, align 8
  %and124 = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end121.if.end200_crit_edge, label %land.rhs133

if.end121.if.end200_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

land.rhs133:                                      ; preds = %if.end121
  %.b280281 = load i1, ptr @iwl_mvm_set_tx_cmd.__already_done.1, align 1
  br i1 %.b280281, label %land.rhs133.if.end200_crit_edge, label %if.then144, !prof !250

land.rhs133.if.end200_crit_edge:                  ; preds = %land.rhs133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.then144:                                       ; preds = %land.rhs133
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_set_tx_cmd.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef null) #8
  br label %if.end200

if.else179:                                       ; preds = %if.end93
  %flags180 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 16
  %86 = ptrtoint ptr %flags180 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags180, align 8
  %88 = trunc i32 %87 to i16
  %89 = shl i16 %88, 9
  %90 = and i16 %89, 512
  %91 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 17
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %90, ptr %91, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %80)
  %cmp.i294 = icmp eq i16 %80, 2048
  br i1 %cmp.i294, label %land.lhs.true191, label %if.else179.if.end200_crit_edge

if.else179.if.end200_crit_edge:                   ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

land.lhs.true191:                                 ; preds = %if.else179
  %rts_threshold = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 47
  %93 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rts_threshold, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %94)
  %cmp192 = icmp ugt i32 %add, %94
  br i1 %cmp192, label %land.lhs.true194, label %land.lhs.true191.if.end200_crit_edge

land.lhs.true191.if.end200_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

land.lhs.true194:                                 ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #10
  %addr1195 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %addr1195 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %addr1195, align 4
  %97 = lshr i32 %96, 24
  %98 = and i32 %97, 1
  %99 = xor i32 %98, 1
  %100 = or i32 %99, %or105
  br label %if.end200

if.end200:                                        ; preds = %land.lhs.true194, %land.lhs.true191.if.end200_crit_edge, %if.else179.if.end200_crit_edge, %if.then144, %land.rhs133.if.end200_crit_edge, %if.end121.if.end200_crit_edge
  %tx_flags.4 = phi i32 [ %or105, %land.lhs.true191.if.end200_crit_edge ], [ %or105, %if.else179.if.end200_crit_edge ], [ %100, %land.lhs.true194 ], [ %or105, %land.rhs133.if.end200_crit_edge ], [ %or105, %if.then144 ], [ %or105, %if.end121.if.end200_crit_edge ]
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %101 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %102, i32 0, i32 5, i32 8
  %103 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %_capa.i, align 4
  %105 = and i32 %104, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i296.not = icmp eq i32 %105, 0
  br i1 %tobool.i296.not, label %if.end200.if.end208_crit_edge, label %land.lhs.true203

if.end200.if.end208_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

land.lhs.true203:                                 ; preds = %if.end200
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %107, align 2
  %110 = and i16 %109, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %110)
  %cmp.i.i298 = icmp eq i16 %110, -12288
  br i1 %cmp.i.i298, label %if.end.i300, label %land.lhs.true203.if.end208_crit_edge

land.lhs.true203.if.end208_crit_edge:             ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.end.i300:                                      ; preds = %land.lhs.true203
  %111 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %112)
  %cmp.i299 = icmp ult i32 %112, 31
  br i1 %cmp.i299, label %if.end.i300.if.end208_crit_edge, label %if.end2.i

if.end.i300.if.end208_crit_edge:                  ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.end2.i:                                        ; preds = %if.end.i300
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %107, i32 0, i32 6
  %113 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %u.i, align 2
  %115 = zext i8 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values)
  switch i8 %114, label %if.end2.i.if.end208_crit_edge [
    i8 0, label %if.end2.i.if.end11.i_crit_edge
    i8 5, label %if.end2.i.if.end11.i_crit_edge311
  ]

if.end2.i.if.end11.i_crit_edge311:                ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end2.i.if.end11.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end2.i.if.end208_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.end11.i:                                       ; preds = %if.end2.i.if.end11.i_crit_edge, %if.end2.i.if.end11.i_crit_edge311
  %u13.i = getelementptr inbounds %struct.anon.219, ptr %u.i, i32 0, i32 1
  %116 = ptrtoint ptr %u13.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %u13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %117)
  %cmp15.not.i = icmp eq i8 %117, 3
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end11.i.if.end208_crit_edge

if.end11.i.if.end208_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.end18.i:                                       ; preds = %if.end11.i
  %tpc_elem_id.i = getelementptr inbounds %struct.anon.219, ptr %u.i, i32 0, i32 1, i32 0, i32 2
  %118 = ptrtoint ptr %tpc_elem_id.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %tpc_elem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %119)
  %cmp22.not.i = icmp eq i8 %119, 35
  br i1 %cmp22.not.i, label %ieee80211_action_contains_tpc.exit, label %if.end18.i.if.end208_crit_edge

if.end18.i.if.end208_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

ieee80211_action_contains_tpc.exit:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %tpc_elem_length.i = getelementptr inbounds %struct.anon.236, ptr %u13.i, i32 0, i32 3
  %120 = ptrtoint ptr %tpc_elem_length.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %tpc_elem_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %121)
  %cmp27.not.i = icmp eq i8 %121, 2
  %or207 = or i32 %tx_flags.4, 2
  %spec.select305 = select i1 %cmp27.not.i, i32 %or207, i32 %tx_flags.4
  br label %if.end208

if.end208:                                        ; preds = %ieee80211_action_contains_tpc.exit, %if.end18.i.if.end208_crit_edge, %if.end11.i.if.end208_crit_edge, %if.end2.i.if.end208_crit_edge, %if.end.i300.if.end208_crit_edge, %land.lhs.true203.if.end208_crit_edge, %if.end200.if.end208_crit_edge
  %tx_flags.5 = phi i32 [ %tx_flags.4, %if.end200.if.end208_crit_edge ], [ %tx_flags.4, %land.lhs.true203.if.end208_crit_edge ], [ %tx_flags.4, %if.end.i300.if.end208_crit_edge ], [ %tx_flags.4, %if.end2.i.if.end208_crit_edge ], [ %tx_flags.4, %if.end11.i.if.end208_crit_edge ], [ %tx_flags.4, %if.end18.i.if.end208_crit_edge ], [ %spec.select305, %ieee80211_action_contains_tpc.exit ]
  %122 = tail call i32 @llvm.bswap.i32(i32 %tx_flags.5)
  %123 = ptrtoint ptr %tx_flags1 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %122, ptr %tx_flags1, align 1
  %124 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len2, align 4
  %conv211 = trunc i32 %125 to i16
  %126 = tail call i16 @llvm.bswap.i16(i16 %conv211)
  %127 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %126, ptr %tx_cmd, align 1
  %life_time = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 11
  %128 = ptrtoint ptr %life_time to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 -1, ptr %life_time, align 1
  %sta_id213 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 5
  %129 = ptrtoint ptr %sta_id213 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %sta_id, ptr %sta_id213, align 1
  %call215 = tail call fastcc zeroext i16 @iwl_mvm_tx_csum_pre_bz(ptr noundef %mvm, ptr noundef %skb, ptr noundef %info, i1 noundef zeroext %amsdu.0.off0)
  %130 = tail call i16 @llvm.bswap.i16(i16 %call215)
  %offload_assist = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 1
  %131 = ptrtoint ptr %offload_assist to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %130, ptr %offload_assist, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_bt_coex_tx_prio(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @iwl_mvm_tx_csum_pre_bz(ptr nocapture noundef readonly %mvm, ptr noundef %skb, ptr nocapture noundef readonly %info, i1 noundef zeroext %amsdu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %call = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %3) #11
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ip_summed, align 8
  %5 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %5)
  %cmp.not = icmp eq i16 %5, 1536
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev_features = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %netdev_features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %netdev_features, align 8
  %and = and i64 %9, 1114130
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.land.rhs15_crit_edge, label %lor.rhs

if.end.land.rhs15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs15

lor.rhs:                                          ; preds = %if.end
  %protocol3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol3, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %11, label %lor.rhs.land.rhs15_crit_edge [
    i16 2048, label %if.then60
    i16 -31011, label %if.else
  ]

lor.rhs.land.rhs15_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs15

land.rhs15:                                       ; preds = %lor.rhs.land.rhs15_crit_edge, %if.end.land.rhs15_crit_edge
  %.b271 = load i1, ptr @iwl_mvm_tx_csum_pre_bz.__already_done, align 1
  br i1 %.b271, label %land.rhs15.if.then53_crit_edge, label %if.then22, !prof !250

land.rhs15.if.then53_crit_edge:                   ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.then22:                                        ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_csum_pre_bz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.43) #8
  br label %if.then53

if.then53:                                        ; preds = %if.then22, %land.rhs15.if.then53_crit_edge
  %call54 = tail call i32 @skb_checksum_help(ptr noundef %skb) #8
  br label %out

if.then60:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %protocol62 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %protocol62 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol62, align 1
  br label %if.end92

if.else:                                          ; preds = %lor.rhs
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 3
  %23 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %23)
  %protocol.0297 = load i8, ptr %nexthdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %protocol.0297)
  %cmp65.not298 = icmp eq i8 %protocol.0297, 59
  br i1 %cmp65.not298, label %if.else.land.end108_crit_edge, label %if.else.land.rhs67_crit_edge

if.else.land.rhs67_crit_edge:                     ; preds = %if.else
  br label %land.rhs67

if.else.land.end108_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end108

land.rhs67:                                       ; preds = %cleanup.land.rhs67_crit_edge, %if.else.land.rhs67_crit_edge
  %protocol.0300 = phi i8 [ %protocol.0, %cleanup.land.rhs67_crit_edge ], [ %protocol.0297, %if.else.land.rhs67_crit_edge ]
  %off.0299 = phi i32 [ %add87, %cleanup.land.rhs67_crit_edge ], [ 40, %if.else.land.rhs67_crit_edge ]
  %call68 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %protocol.0300) #8
  br i1 %call68, label %while.body, label %land.rhs67.if.end92_crit_edge

land.rhs67.if.end92_crit_edge:                    ; preds = %land.rhs67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

while.body:                                       ; preds = %land.rhs67
  %24 = zext i8 %protocol.0300 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %protocol.0300, label %cleanup88 [
    i8 43, label %while.body.cleanup_crit_edge
    i8 0, label %while.body.cleanup_crit_edge311
    i8 60, label %while.body.cleanup_crit_edge312
  ]

while.body.cleanup_crit_edge312:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.cleanup_crit_edge311:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.body.cleanup_crit_edge311, %while.body.cleanup_crit_edge312
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i, align 8
  %27 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i, align 4
  %conv.i276 = zext i16 %28 to i32
  %add.ptr.i277 = getelementptr i8, ptr %26, i32 %conv.i276
  %add.ptr = getelementptr i8, ptr %add.ptr.i277, i32 %off.0299
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr, i32 0, i32 1
  %29 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hdrlen, align 1
  %conv86 = zext i8 %30 to i32
  %add = shl nuw nsw i32 %conv86, 3
  %shl = add i32 %off.0299, 8
  %add87 = add i32 %shl, %add
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %31)
  %protocol.0 = load i8, ptr %add.ptr, align 1
  %cmp65.not = icmp eq i8 %protocol.0, 59
  br i1 %cmp65.not, label %cleanup.land.end108_crit_edge, label %cleanup.land.rhs67_crit_edge

cleanup.land.rhs67_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs67

cleanup.land.end108_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end108

cleanup88:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call82 = tail call i32 @skb_checksum_help(ptr noundef %skb) #8
  br label %out

if.end92:                                         ; preds = %land.rhs67.if.end92_crit_edge, %if.then60
  %protocol.3 = phi i8 [ %18, %if.then60 ], [ %protocol.0300, %land.rhs67.if.end92_crit_edge ]
  %32 = zext i8 %protocol.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %protocol.3, label %if.end92.land.end108_crit_edge [
    i8 6, label %if.end92.if.end151_crit_edge
    i8 17, label %if.end92.if.end151_crit_edge313
  ]

if.end92.if.end151_crit_edge313:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.end92.if.end151_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.end92.land.end108_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end108

land.end108:                                      ; preds = %if.end92.land.end108_crit_edge, %cleanup.land.end108_crit_edge, %if.else.land.end108_crit_edge
  %.b268270 = load i1, ptr @iwl_mvm_tx_csum_pre_bz.__already_done.44, align 1
  br i1 %.b268270, label %land.end108.if.end142_crit_edge, label %if.then115, !prof !250

land.end108.if.end142_crit_edge:                  ; preds = %land.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

if.then115:                                       ; preds = %land.end108
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_csum_pre_bz.__already_done.44, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #8
  br label %if.end142

if.end142:                                        ; preds = %if.then115, %land.end108.if.end142_crit_edge
  %call150 = tail call i32 @skb_checksum_help(ptr noundef %skb) #8
  br label %out

if.end151:                                        ; preds = %if.end92.if.end151_crit_edge, %if.end92.if.end151_crit_edge313
  %33 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %protocol3, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %34)
  %cmp159 = icmp eq i16 %34, 2048
  %35 = and i1 %cmp159, %amsdu
  br i1 %35, label %if.then164, label %if.end151.if.end169_crit_edge

if.end151.if.end169_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then164:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i278 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i278 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i278, align 8
  %network_header.i.i279 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i279 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i279, align 4
  %conv.i.i280 = zext i16 %39 to i32
  %add.ptr.i.i281 = getelementptr i8, ptr %37, i32 %conv.i.i280
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i281, i32 0, i32 7
  %40 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %check, align 2
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.end151.if.end169_crit_edge
  %offload_assist.0 = phi i32 [ 196, %if.then164 ], [ 68, %if.end151.if.end169_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %protocol.3)
  %cmp171 = icmp eq i8 %protocol.3, 6
  %head.i.i282 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i282 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i282, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %43 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i283 = zext i16 %44 to i32
  %add.ptr.i.i284 = getelementptr i8, ptr %42, i32 %conv.i.i283
  br i1 %cmp171, label %if.then173, label %if.else176

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  %check175 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i284, i32 0, i32 6
  %45 = ptrtoint ptr %check175 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %check175, align 4
  br label %if.end179

if.else176:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  %check178 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i284, i32 0, i32 3
  %46 = ptrtoint ptr %check178 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %check178, align 2
  br label %if.end179

if.end179:                                        ; preds = %if.else176, %if.then173
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %47 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %52 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.i.not = icmp eq i16 %52, 0
  br i1 %tobool.i.not, label %land.lhs.true181, label %if.end179.if.end198_crit_edge

if.end179.if.end198_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

land.lhs.true181:                                 ; preds = %if.end179
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %53 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_key, align 4
  %tobool182.not = icmp eq ptr %54, null
  br i1 %tobool182.not, label %land.lhs.true181.if.end198_crit_edge, label %land.lhs.true183

land.lhs.true181.if.end198_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

land.lhs.true183:                                 ; preds = %land.lhs.true181
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cipher, align 8
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %56, label %if.then192 [
    i32 1027073, label %land.lhs.true183.if.end198_crit_edge
    i32 1027077, label %land.lhs.true183.if.end198_crit_edge314
  ]

land.lhs.true183.if.end198_crit_edge314:          ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

land.lhs.true183.if.end198_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

if.then192:                                       ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #10
  %iv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %54, i32 0, i32 3
  %58 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %iv_len, align 1
  %conv194 = zext i8 %59 to i32
  %conv195 = and i32 %call, 65535
  %add196 = add nuw nsw i32 %conv195, %conv194
  br label %if.end198

if.end198:                                        ; preds = %if.then192, %land.lhs.true183.if.end198_crit_edge, %land.lhs.true183.if.end198_crit_edge314, %land.lhs.true181.if.end198_crit_edge, %if.end179.if.end198_crit_edge
  %mh_len.0 = phi i32 [ %call, %if.end179.if.end198_crit_edge ], [ %add196, %if.then192 ], [ %call, %land.lhs.true183.if.end198_crit_edge ], [ %call, %land.lhs.true181.if.end198_crit_edge ], [ %call, %land.lhs.true183.if.end198_crit_edge314 ]
  %60 = shl i32 %mh_len.0, 7
  %shl202 = and i32 %60, 65280
  %or204 = or i32 %shl202, %offload_assist.0
  %conv205 = trunc i32 %or204 to i16
  br label %out

out:                                              ; preds = %if.end198, %if.end142, %cleanup88, %if.then53, %entry.out_crit_edge
  %offload_assist.1 = phi i16 [ 0, %entry.out_crit_edge ], [ 0, %if.then53 ], [ 0, %if.end142 ], [ %conv205, %if.end198 ], [ 0, %cleanup88 ]
  br i1 %amsdu, label %if.then207, label %if.else211

if.then207:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %61 = or i16 %offload_assist.1, 16384
  br label %cleanup221

if.else211:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %1, align 2
  %call213 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %63) #11
  %rem = and i32 %call213, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool214.not = icmp eq i32 %rem, 0
  %64 = or i16 %offload_assist.1, 8192
  %spec.select273 = select i1 %tobool214.not, i16 %offload_assist.1, i16 %64
  br label %cleanup221

cleanup221:                                       ; preds = %if.else211, %if.then207
  %retval.0 = phi i16 [ %61, %if.then207 ], [ %spec.select273, %if.else211 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_set_tx_cmd_rate(ptr noundef %mvm, ptr nocapture noundef %tx_cmd, ptr nocapture noundef readonly %info, ptr noundef %sta, i16 noundef zeroext %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rts_retry_limit = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 14
  %0 = ptrtoint ptr %rts_retry_limit to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 60, ptr %rts_retry_limit, align 1
  %1 = and i16 %fc, -1024
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %1, label %if.end14 [
    i16 20480, label %if.end14.thread
    i16 -31744, label %if.end14.thread58
  ]

if.end14:                                         ; preds = %entry
  %data_retry_limit13 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 15
  %3 = ptrtoint ptr %data_retry_limit13 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %data_retry_limit13, align 1
  %4 = and i16 %fc, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %cmp.i50 = icmp ne i16 %4, 2048
  %tobool.not = icmp eq ptr %sta, null
  %or.cond = or i1 %tobool.not, %cmp.i50
  br i1 %or.cond, label %if.end14.if.end29_crit_edge, label %if.end14.if.then17_crit_edge

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end14.thread58:                                ; preds = %entry
  %data_retry_limit11 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 15
  %5 = ptrtoint ptr %data_retry_limit11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 60, ptr %data_retry_limit11, align 1
  %6 = and i16 %fc, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp.i5059 = icmp ne i16 %6, 2048
  %tobool.not61 = icmp eq ptr %sta, null
  %or.cond62 = or i1 %tobool.not61, %cmp.i5059
  br i1 %or.cond62, label %if.then25, label %if.end14.thread58.if.then17_crit_edge

if.end14.thread58.if.then17_crit_edge:            ; preds = %if.end14.thread58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end14.thread:                                  ; preds = %entry
  %data_retry_limit = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 15
  %7 = ptrtoint ptr %data_retry_limit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %data_retry_limit, align 1
  %8 = ptrtoint ptr %rts_retry_limit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %rts_retry_limit, align 1
  %9 = and i16 %fc, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp.i5053 = icmp ne i16 %9, 2048
  %tobool.not55 = icmp eq ptr %sta, null
  %or.cond56 = or i1 %tobool.not55, %cmp.i5053
  br i1 %or.cond56, label %if.end14.thread.if.end29_crit_edge, label %if.end14.thread.if.then17_crit_edge

if.end14.thread.if.then17_crit_edge:              ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end14.thread.if.end29_crit_edge:               ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then17:                                        ; preds = %if.end14.thread.if.then17_crit_edge, %if.end14.thread58.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %sta_state = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %sta_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sta_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp19 = icmp ugt i32 %11, 3
  br i1 %cmp19, label %cleanup, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

cleanup:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %initial_rate_index = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 7
  %12 = ptrtoint ptr %initial_rate_index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %initial_rate_index, align 1
  %tx_flags = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 2
  %13 = ptrtoint ptr %tx_flags to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %tx_flags, align 1
  %or = or i32 %14, 268435456
  store i32 %or, ptr %tx_flags, align 1
  br label %return

if.then25:                                        ; preds = %if.end14.thread58
  call void @__sanitizer_cov_trace_pc() #10
  %tx_flags26 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 2
  %15 = ptrtoint ptr %tx_flags26 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %tx_flags26, align 1
  %or27 = or i32 %16, 1207959552
  store i32 %or27, ptr %tx_flags26, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then17.if.end29_crit_edge, %if.end14.thread.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %call30 = tail call fastcc i32 @iwl_mvm_get_tx_rate_n_flags(ptr noundef %mvm, ptr noundef %info, ptr noundef %sta, i16 noundef zeroext %fc)
  %17 = tail call i32 @llvm.bswap.i32(i32 %call30)
  %rate_n_flags = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx_cmd, i32 0, i32 4
  %18 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %rate_n_flags, align 1
  br label %return

return:                                           ; preds = %if.end29, %cleanup
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_get_tx_rate_n_flags(ptr noundef %mvm, ptr nocapture noundef readonly %info, ptr noundef readonly %sta, i16 noundef zeroext %fc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %entry.if.then62.i_crit_edge

entry.if.then62.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62.i

if.then.i:                                        ; preds = %entry
  %4 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %6 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  %7 = and i16 %fc, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp.i.not.i = icmp eq i16 %7, 2048
  %or.cond.i = or i1 %cmp.i.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.i.if.end58.i_crit_edge, label %land.rhs7.i

if.then.i.if.end58.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

land.rhs7.i:                                      ; preds = %if.then.i
  %.b126.i = load i1, ptr @iwl_mvm_get_tx_rate.__already_done, align 1
  br i1 %.b126.i, label %land.rhs7.i.if.end58.i_crit_edge, label %if.then14.i, !prof !250

land.rhs7.i.if.end58.i_crit_edge:                 ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then14.i:                                      ; preds = %land.rhs7.i
  store i1 true, ptr @iwl_mvm_get_tx_rate.__already_done, align 1
  %bf.clear28.i = and i16 %bf.load.i, 2047
  %conv29.i = zext i16 %bf.clear28.i to i32
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %4, align 8
  %conv32.i = sext i8 %9 to i32
  %10 = tail call i16 @llvm.bswap.i16(i16 %fc) #8
  %conv33.i = zext i16 %10 to i32
  %tobool34.not.i = icmp eq ptr %sta, null
  br i1 %tobool34.not.i, label %if.then14.i.cond.end.i_crit_edge, label %cond.true.i

if.then14.i.cond.end.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %sta_state.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sta_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sta_state.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then14.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %12, %cond.true.i ], [ -1, %if.then14.i.cond.end.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.45, i32 noundef %conv29.i, i32 noundef %conv32.i, i32 noundef %conv33.i, i32 noundef %cond.i) #8
  br label %if.end58.i

if.end58.i:                                       ; preds = %cond.end.i, %land.rhs7.i.if.end58.i_crit_edge, %if.then.i.if.end58.i_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %14)
  %15 = icmp ugt i8 %14, 11
  br i1 %15, label %if.end58.i.if.then62.i_crit_edge, label %if.end58.i.iwl_mvm_get_tx_rate.exit_crit_edge

if.end58.i.iwl_mvm_get_tx_rate.exit_crit_edge:    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_get_tx_rate.exit

if.end58.i.if.then62.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62.i

if.then62.i:                                      ; preds = %if.end58.i.if.then62.i_crit_edge, %entry.if.then62.i_crit_edge
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %16 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvm_data.i, align 8
  %band.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load63.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load63.i, 29
  %n_bitrates.i.i = getelementptr %struct.iwl_nvm_data, ptr %17, i32 0, i32 26, i32 %bf.lshr.i, i32 4
  %19 = ptrtoint ptr %n_bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_bitrates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp46.i.i = icmp sgt i32 %20, 0
  br i1 %cmp46.i.i, label %for.body.lr.ph.i.i, label %if.then62.i.land.end.i.i_crit_edge

if.then62.i.land.end.i.i_crit_edge:               ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then62.i
  %cmp.i.i.i = icmp eq ptr %sta, null
  br i1 %cmp.i.i.i, label %for.body.lr.ph.i.i.if.then.i.split.i_crit_edge, label %for.body.lr.ph.i.split.i

for.body.lr.ph.i.i.if.then.i.split.i_crit_edge:   ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.split.i

for.body.lr.ph.i.split.i:                         ; preds = %for.body.lr.ph.i.i
  %band.i.i = getelementptr %struct.iwl_nvm_data, ptr %17, i32 0, i32 26, i32 %bf.lshr.i, i32 2
  %21 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %band.i.i, align 4
  %arrayidx.i.i.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.split.i
  %i.047.i.i = phi i32 [ 0, %for.body.lr.ph.i.split.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %25 = shl nuw i32 1, %i.047.i.i
  %26 = and i32 %25, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.i.i.if.then.i.split.i_crit_edge

for.body.i.i.if.then.i.split.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.split.i

if.then.i.split.i:                                ; preds = %for.body.i.i.if.then.i.split.i_crit_edge, %for.body.lr.ph.i.i.if.then.i.split.i_crit_edge
  %i.047.lcssa.i.split.i = phi i32 [ 0, %for.body.lr.ph.i.i.if.then.i.split.i_crit_edge ], [ %i.047.i.i, %for.body.i.i.if.then.i.split.i_crit_edge ]
  %conv.i.i = trunc i32 %i.047.lcssa.i.split.i to i8
  br label %iwl_mvm_get_tx_rate.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %20
  br i1 %exitcond.not.i.i, label %for.inc.i.i.land.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.land.end.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i.land.end.i.i_crit_edge, %if.then62.i.land.end.i.i_crit_edge
  %.b43.i.i = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.iwl_mvm_get_tx_rate.exit_crit_edge, label %if.then7.i.i, !prof !250

land.end.i.i.iwl_mvm_get_tx_rate.exit_crit_edge:  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_get_tx_rate.exit

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 6355, i32 noundef 9, ptr noundef null) #8
  br label %iwl_mvm_get_tx_rate.exit

iwl_mvm_get_tx_rate.exit:                         ; preds = %if.then7.i.i, %land.end.i.i.iwl_mvm_get_tx_rate.exit_crit_edge, %if.then.i.split.i, %if.end58.i.iwl_mvm_get_tx_rate.exit_crit_edge
  %rate_idx.1.in.i = phi i8 [ %14, %if.end58.i.iwl_mvm_get_tx_rate.exit_crit_edge ], [ %conv.i.i, %if.then.i.split.i ], [ 0, %if.then7.i.i ], [ 0, %land.end.i.i.iwl_mvm_get_tx_rate.exit_crit_edge ]
  %rate_idx.1.i = sext i8 %rate_idx.1.in.i to i32
  %band68.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %27 = ptrtoint ptr %band68.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load69.i = load i32, ptr %band68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load69.i)
  %cmp71.not.i = icmp ult i32 %bf.load69.i, 536870912
  %add.i = add nsw i32 %rate_idx.1.i, 4
  %spec.select.i = select i1 %cmp71.not.i, i32 %rate_idx.1.i, i32 %add.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw.i, align 8
  %call78.i = tail call zeroext i8 @iwl_mvm_mac80211_idx_to_hwrate(ptr noundef %29, i32 noundef %spec.select.i) #8
  %30 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i, align 8
  %call87.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %31, i8 noundef zeroext 1, i8 noundef zeroext 28, i8 noundef zeroext 0) #8
  %32 = ptrtoint ptr %band68.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i7 = load i32, ptr %band68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i7)
  %cmp.i = icmp ult i32 %bf.load.i7, 536870912
  br i1 %cmp.i, label %land.lhs.true.i, label %iwl_mvm_get_tx_rate.exit.if.end.i_crit_edge

iwl_mvm_get_tx_rate.exit.if.end.i_crit_edge:      ; preds = %iwl_mvm_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %iwl_mvm_get_tx_rate.exit
  %call.i = tail call zeroext i1 @iwl_mvm_bt_coex_is_shared_ant_avail(ptr noundef %mvm) #8
  br i1 %call.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i8

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i8:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %33 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i, align 4
  %non_shared_ant.i = getelementptr inbounds %struct.iwl_cfg, ptr %34, i32 0, i32 24
  %35 = ptrtoint ptr %non_shared_ant.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %non_shared_ant.i, align 1
  %conv.i = zext i8 %36 to i32
  br label %iwl_mvm_get_tx_ant.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %iwl_mvm_get_tx_rate.exit.if.end.i_crit_edge
  %tobool.not.i9 = icmp ne ptr %sta, null
  %37 = and i16 %fc, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %37)
  %cmp.i.i = icmp eq i16 %37, 2048
  %or.cond.i10 = and i1 %tobool.not.i9, %cmp.i.i
  br i1 %or.cond.i10, label %if.then4.i, label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %tx_ant.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 27
  %38 = ptrtoint ptr %tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_ant.i, align 2
  br label %iwl_mvm_get_tx_ant.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mgmt_last_antenna_idx.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 66
  %40 = ptrtoint ptr %mgmt_last_antenna_idx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mgmt_last_antenna_idx.i, align 2
  br label %iwl_mvm_get_tx_ant.exit

iwl_mvm_get_tx_ant.exit:                          ; preds = %if.end9.i, %if.then4.i, %if.then.i8
  %conv10.sink.shrunk.i = phi i8 [ %41, %if.end9.i ], [ %39, %if.then4.i ], [ 14, %if.then.i8 ]
  %.sink.i = phi i32 [ 16384, %if.end9.i ], [ 16384, %if.then4.i ], [ %conv.i, %if.then.i8 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call87.i)
  %cmp89.i = icmp ugt i8 %call87.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.i)
  %42 = icmp ult i32 %spec.select.i, 4
  %..i = select i1 %42, i32 0, i32 256
  %spec.select128.i = select i1 %42, i32 512, i32 0
  %rate_flags.0.i = select i1 %cmp89.i, i32 %..i, i32 %spec.select128.i
  %conv102.i = zext i8 %call78.i to i32
  %or103.i = or i32 %rate_flags.0.i, %conv102.i
  %conv10.sink.i = zext i8 %conv10.sink.shrunk.i to i32
  %shl12.i = shl i32 %.sink.i, %conv10.sink.i
  %or = or i32 %or103.i, %shl12.i
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_tx_skb_non_sta(ptr noundef %mvm, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.ieee80211_tx_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %call = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %3) #11
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i, align 8
  %and = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = call ptr @memcpy(ptr %info, ptr %cb.i, i32 48)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %add = add i32 %call, 2304
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp = icmp ugt i32 %8, %add
  br i1 %cmp, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b225 = load i1, ptr @iwl_mvm_tx_skb_non_sta.__already_done, align 1
  br i1 %.b225, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !250

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_skb_non_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 725, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end41:                                         ; preds = %entry
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 8
  %and44 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end100, label %land.rhs52

land.rhs52:                                       ; preds = %if.end41
  %.b223224 = load i1, ptr @iwl_mvm_tx_skb_non_sta.__already_done.2, align 1
  br i1 %.b223224, label %land.rhs52.cleanup_crit_edge, label %if.then63, !prof !250

land.rhs52.cleanup_crit_edge:                     ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_skb_non_sta.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end100:                                        ; preds = %if.end41
  %vif = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 8
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vif, align 8
  %tobool101.not = icmp eq ptr %12, null
  br i1 %tobool101.not, label %if.end100.do.end153_crit_edge, label %if.then102

if.end100.do.end153_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.then102:                                       ; preds = %if.end100
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %14, label %if.then102.do.end153_crit_edge [
    i32 10, label %if.then102.if.then114_crit_edge
    i32 3, label %if.then102.if.then114_crit_edge240
    i32 1, label %if.then102.if.then114_crit_edge241
    i32 6, label %if.then128
    i32 2, label %land.lhs.true
  ]

if.then102.if.then114_crit_edge241:               ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

if.then102.if.then114_crit_edge240:               ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

if.then102.if.then114_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

if.then102.do.end153_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.then114:                                       ; preds = %if.then102.if.then114_crit_edge, %if.then102.if.then114_crit_edge240, %if.then102.if.then114_crit_edge241
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 2
  %18 = and i16 %17, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp.i = icmp eq i16 %18, 2048
  %mcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %12, i32 1, i32 1, i32 39, i32 21
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %12, i32 1, i32 1, i32 39, i32 9
  %sta_id.0.in.in = select i1 %cmp.i, ptr %mcast_sta, ptr %bcast_sta
  %19 = ptrtoint ptr %sta_id.0.in.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %sta_id.0.in = load i32, ptr %sta_id.0.in.in, align 4
  %20 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %14, label %land.end122.i [
    i32 3, label %if.then114.sw.bb.i_crit_edge
    i32 1, label %if.then114.sw.bb.i_crit_edge242
    i32 10, label %sw.bb59.i
  ]

if.then114.sw.bb.i_crit_edge242:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then114.sw.bb.i_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then114.sw.bb.i_crit_edge, %if.then114.sw.bb.i_crit_edge242
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.i = icmp ne i16 %18, 0
  %21 = and i16 %17, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %21)
  %cond.i = icmp eq i16 %21, -12288
  %or.cond194.i = or i1 %cmp.i.i, %cond.i
  br i1 %or.cond194.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %probe_queue.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 143
  br label %if.end156

if.end.i:                                         ; preds = %sw.bb.i
  %22 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i191.i = icmp ne i16 %22, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %cmp.i192.i = icmp eq i16 %21, 16384
  %or.cond.i = or i1 %cmp.i191.i, %cmp.i192.i
  br i1 %or.cond.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true10.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true10.i:                                ; preds = %if.end.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr1.i, align 4
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %land.lhs.true10.i.if.end15.i_crit_edge, label %if.then13.i

land.lhs.true10.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  %cab_queue.i = getelementptr inbounds %struct.ieee80211_vif, ptr %12, i32 1, i32 1, i32 5
  br label %if.end156

if.end15.i:                                       ; preds = %land.lhs.true10.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 1
  br i1 %cmp.not.i, label %if.end15.i.if.end49.i_crit_edge, label %land.rhs.i

if.end15.i.if.end49.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

land.rhs.i:                                       ; preds = %if.end15.i
  %.b187.i = load i1, ptr @iwl_mvm_get_ctrl_vif_queue.__already_done, align 1
  br i1 %.b187.i, label %land.rhs.i.if.end49.i_crit_edge, label %if.then26.i, !prof !250

land.rhs.i.if.end49.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then26.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_get_ctrl_vif_queue.__already_done, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv36.i = zext i16 %26 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %conv36.i) #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then26.i, %land.rhs.i.if.end49.i_crit_edge, %if.end15.i.if.end49.i_crit_edge
  %probe_queue57.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 143
  br label %if.end156

sw.bb59.i:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i193.i = icmp eq i16 %18, 0
  br i1 %cmp.i193.i, label %if.then61.i, label %land.end71.i

if.then61.i:                                      ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #10
  %p2p_dev_queue.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 144
  br label %if.end156

land.end71.i:                                     ; preds = %sw.bb59.i
  %.b184186.i = load i1, ptr @iwl_mvm_get_ctrl_vif_queue.__already_done.48, align 1
  br i1 %.b184186.i, label %land.end71.i.if.end105.i_crit_edge, label %if.then78.i, !prof !250

land.end71.i.if.end105.i_crit_edge:               ; preds = %land.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.i

if.then78.i:                                      ; preds = %land.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_get_ctrl_vif_queue.__already_done.48, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 640, i32 noundef 9, ptr noundef null) #8
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then78.i, %land.end71.i.if.end105.i_crit_edge
  %p2p_dev_queue113.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 144
  br label %if.end156

land.end122.i:                                    ; preds = %if.then114
  %.b185188.i = load i1, ptr @iwl_mvm_get_ctrl_vif_queue.__already_done.49, align 1
  br i1 %.b185188.i, label %land.end122.i.do.end153_crit_edge, label %if.then129.i, !prof !250

land.end122.i.do.end153_crit_edge:                ; preds = %land.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.then129.i:                                     ; preds = %land.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_get_ctrl_vif_queue.__already_done.49, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 643, i32 noundef 9, ptr noundef nonnull @.str.50) #8
  br label %do.end153

if.then128:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %snif_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 142
  %snif_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 63
  %27 = ptrtoint ptr %snif_sta to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %snif_sta, align 4
  br label %if.end156

land.lhs.true:                                    ; preds = %if.then102
  br i1 %tobool.not, label %land.lhs.true.do.end153_crit_edge, label %if.then139

land.lhs.true.do.end153_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.then139:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %aux_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62
  %29 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aux_sta, align 8
  %aux_queue = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 141
  br label %if.end156

do.end153:                                        ; preds = %land.lhs.true.do.end153_crit_edge, %if.then129.i, %land.end122.i.do.end153_crit_edge, %if.then102.do.end153_crit_edge, %if.end100.do.end153_crit_edge
  %31 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end156:                                        ; preds = %if.then139, %if.then128, %if.end105.i, %if.then61.i, %if.end49.i, %if.then13.i, %if.then.i
  %queue.1.ph.in.in = phi ptr [ %cab_queue.i, %if.then13.i ], [ %probe_queue57.i, %if.end49.i ], [ %probe_queue.i, %if.then.i ], [ %p2p_dev_queue113.i, %if.end105.i ], [ %p2p_dev_queue.i, %if.then61.i ], [ %aux_queue, %if.then139 ], [ %snif_queue, %if.then128 ]
  %sta_id.2.ph.in = phi i32 [ %sta_id.0.in, %if.then13.i ], [ %sta_id.0.in, %if.end49.i ], [ %sta_id.0.in, %if.then.i ], [ %sta_id.0.in, %if.end105.i ], [ %sta_id.0.in, %if.then61.i ], [ %30, %if.then139 ], [ %28, %if.then128 ]
  %sta_id.2.ph = trunc i32 %sta_id.2.ph.in to i8
  %33 = ptrtoint ptr %queue.1.ph.in.in to i32
  call void @__asan_load2_noabort(i32 %33)
  %queue.1.ph.in = load i16, ptr %queue.1.ph.in.in, align 2
  %queue.1.ph = zext i16 %queue.1.ph.in to i32
  %34 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %34)
  %cmp.i228 = icmp eq i16 %34, 20480
  br i1 %cmp.i228, label %if.then164, label %if.end156.do.end169_crit_edge, !prof !251

if.end156.do.end169_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end169

if.then164:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iwl_mvm_probe_resp_set_noa(ptr noundef %mvm, ptr noundef %skb)
  br label %do.end169

do.end169:                                        ; preds = %if.then164, %if.end156.do.end169_crit_edge
  %35 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvm, align 8
  %conv171 = and i32 %sta_id.2.ph.in, 255
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tx_skb_non_sta, ptr noundef nonnull @.str.4, i32 noundef %conv171, i32 noundef %queue.1.ph) #8
  %call174 = call fastcc ptr @iwl_mvm_set_tx_params(ptr noundef %mvm, ptr noundef %skb, ptr noundef nonnull %info, i32 noundef %call, ptr noundef null, i8 noundef zeroext %sta_id.2.ph)
  %tobool175.not = icmp eq ptr %call174, null
  br i1 %tobool175.not, label %do.end169.cleanup_crit_edge, label %if.end177

do.end169.cleanup_crit_edge:                      ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end177:                                        ; preds = %do.end169
  %37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %38 = call ptr @memset(ptr %37, i32 0, i32 40)
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call174, ptr %arrayidx.i, align 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %40 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trans, align 4
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %status.i, align 4
  %44 = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.end.i230, label %if.end177.if.then180_crit_edge, !prof !250

if.end177.if.then180_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180

if.end.i230:                                      ; preds = %if.end177
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %41, i32 0, i32 6
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.not.i229 = icmp eq i32 %46, 2
  br i1 %cmp.not.i229, label %iwl_trans_tx.exit, label %land.rhs.i231

land.rhs.i231:                                    ; preds = %if.end.i230
  %.b65.i = load i1, ptr @iwl_trans_tx.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i231.do.end52.i_crit_edge, label %if.then17.i, !prof !250

land.rhs.i231.do.end52.i_crit_edge:               ; preds = %land.rhs.i231
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

if.then17.i:                                      ; preds = %land.rhs.i231
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_trans_tx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 1150, i32 noundef 9, ptr noundef null) #8
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then17.i, %land.rhs.i231.do.end52.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %41, i32 0, i32 8
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.iwl_trans_tx, i32 noundef %50) #8
  br label %if.then180

iwl_trans_tx.exit:                                ; preds = %if.end.i230
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %41, i32 0, i32 1
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %tx.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx.i, align 4
  %call57.i = call i32 %54(ptr noundef %41, ptr noundef %skb, ptr noundef nonnull %call174, i32 noundef %queue.1.ph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool179.not = icmp eq i32 %call57.i, 0
  br i1 %tobool179.not, label %iwl_trans_tx.exit.cleanup_crit_edge, label %iwl_trans_tx.exit.if.then180_crit_edge

iwl_trans_tx.exit.if.then180_crit_edge:           ; preds = %iwl_trans_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180

iwl_trans_tx.exit.cleanup_crit_edge:              ; preds = %iwl_trans_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then180:                                       ; preds = %iwl_trans_tx.exit.if.then180_crit_edge, %do.end52.i, %if.end177.if.then180_crit_edge
  %55 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %trans, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %56, i32 0, i32 28
  %57 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_cmd_pool.i, align 4
  call void @kmem_cache_free(ptr noundef %58, ptr noundef nonnull %call174) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then180, %iwl_trans_tx.exit.cleanup_crit_edge, %do.end169.cleanup_crit_edge, %do.end153, %if.then63, %land.rhs52.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end153 ], [ -1, %if.then180 ], [ -1, %if.then ], [ -1, %if.then63 ], [ -1, %do.end169.cleanup_crit_edge ], [ 0, %iwl_trans_tx.exit.cleanup_crit_edge ], [ -1, %land.rhs.cleanup_crit_edge ], [ -1, %land.rhs52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_probe_resp_set_noa(ptr nocapture noundef readonly %mvm, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %match = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #8
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1349491209, ptr %match, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 696, ptr noundef nonnull @.str.89) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %probe_resp_data = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 2, i32 1, i32 22
  %9 = ptrtoint ptr %probe_resp_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %probe_resp_data, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b80 = load i1, ptr @iwl_mvm_probe_resp_set_noa.__warned, align 1
  br i1 %.b80, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_probe_resp_set_noa.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.51) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %do.end9.out_crit_edge, label %if.end13

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end13:                                         ; preds = %do.end9
  %noa_active = getelementptr inbounds %struct.iwl_probe_resp_data, ptr %10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %noa_active to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %noa_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end13.out_crit_edge, label %if.end16

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %sub = add i32 %14, -36
  %call.i81 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -35, ptr noundef %variable, i32 noundef %sub, ptr noundef nonnull %match, i32 noundef 4, i32 noundef 0) #8
  %tobool22.not = icmp eq ptr %call.i81, null
  br i1 %tobool22.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_probe_resp_set_noa, ptr noundef nonnull @.str.52) #8
  br label %out

if.end30:                                         ; preds = %if.end16
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end30.skb_tailroom.exit_crit_edge

if.end30.skb_tailroom.exit_crit_edge:             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end30.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end30.skb_tailroom.exit_crit_edge ]
  %noa_len = getelementptr inbounds %struct.iwl_probe_resp_data, ptr %10, i32 0, i32 2
  %23 = ptrtoint ptr %noa_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %noa_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %24)
  %cmp = icmp slt i32 %cond.i, %24
  br i1 %cmp, label %if.then32, label %skb_tailroom.exit.if.end45_crit_edge

skb_tailroom.exit.if.end45_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then32:                                        ; preds = %skb_tailroom.exit
  %call34 = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %24, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then32.if.end45_crit_edge, label %do.end40

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end40:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @.str.53) #8
  br label %out

if.end45:                                         ; preds = %if.then32.if.end45_crit_edge, %skb_tailroom.exit.if.end45_crit_edge
  %27 = ptrtoint ptr %noa_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %noa_len, align 4
  %call47 = call ptr @skb_put(ptr noundef %skb, i32 noundef %28) #8
  %incdec.ptr = getelementptr i8, ptr %call47, i32 1
  %29 = ptrtoint ptr %call47 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -35, ptr %call47, align 1
  %30 = ptrtoint ptr %noa_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %noa_len, align 4
  %32 = trunc i32 %31 to i8
  %conv = add i8 %32, -2
  %incdec.ptr50 = getelementptr i8, ptr %call47, i32 2
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %incdec.ptr, align 1
  %incdec.ptr51 = getelementptr i8, ptr %call47, i32 3
  %34 = ptrtoint ptr %incdec.ptr50 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 80, ptr %incdec.ptr50, align 1
  %incdec.ptr52 = getelementptr i8, ptr %call47, i32 4
  %35 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 111, ptr %incdec.ptr51, align 1
  %incdec.ptr53 = getelementptr i8, ptr %call47, i32 5
  %36 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -102, ptr %incdec.ptr52, align 1
  %incdec.ptr54 = getelementptr i8, ptr %call47, i32 6
  %37 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 9, ptr %incdec.ptr53, align 1
  %noa_attr = getelementptr inbounds %struct.iwl_probe_resp_data, ptr %10, i32 0, i32 1, i32 2
  %38 = load i32, ptr %noa_len, align 4
  %sub57 = add i32 %38, -6
  %39 = call ptr @memcpy(ptr %incdec.ptr54, ptr %noa_attr, i32 %sub57)
  br label %out

out:                                              ; preds = %if.end45, %do.end40, %do.end27, %if.end13.out_crit_edge, %do.end9.out_crit_edge
  %call.i82 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i82, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i85

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i85:                                ; preds = %out
  %call1.i83 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86, label %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, label %if.then.i88

land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i88, %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %40 = call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i89 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i89 to ptr
  %preempt_count.i.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i90, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i90, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iwl_mvm_set_tx_params(ptr noundef %mvm, ptr noundef %skb, ptr noundef %info, i32 noundef %hdrlen, ptr noundef %sta, i8 noundef zeroext %sta_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_cmd_pool.i, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 2848) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !251

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 28, ptr %call.i.i, align 8
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
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
  br i1 %tobool.i.not, label %if.end61, label %if.then6

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq ptr %sta, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %spec.select137 = select i1 %tobool7.not, ptr null, ptr %drv_priv.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %15 = and i16 %14, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %15)
  %cmp.i = icmp eq i16 %15, -30720
  br i1 %cmp.i, label %if.then10, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %16 = and i16 %14, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %1, i32 %retval.0.v.i
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %retval.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12 = icmp slt i8 %18, 0
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then6.if.end13_crit_edge
  %amsdu.0.off0 = phi i1 [ %tobool12, %if.then10 ], [ false, %if.then6.if.end13_crit_edge ]
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %19 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_key, align 4
  %tobool14.not = icmp eq ptr %20, null
  %spec.select = select i1 %tobool14.not, i16 2, i16 0
  %tobool7.not.not = xor i1 %tobool7.not, true
  %21 = and i16 %14, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %cmp.i130 = icmp eq i16 %21, 2048
  %or.cond = select i1 %tobool7.not.not, i1 %cmp.i130, i1 false
  br i1 %or.cond, label %lor.lhs.false22, label %if.end13.if.then24_crit_edge

if.end13.if.then24_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false22:                                  ; preds = %if.end13
  %sta_state = getelementptr inbounds %struct.iwl_mvm_sta, ptr %spec.select137, i32 0, i32 6
  %22 = ptrtoint ptr %sta_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sta_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp = icmp ult i32 %23, 4
  br i1 %cmp, label %lor.lhs.false22.if.then24_crit_edge, label %lor.lhs.false22.if.end30_crit_edge

lor.lhs.false22.if.end30_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

lor.lhs.false22.if.then24_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false22.if.then24_crit_edge, %if.end13.if.then24_crit_edge
  %24 = or i16 %spec.select, 1
  %call29 = tail call fastcc i32 @iwl_mvm_get_tx_rate_n_flags(ptr noundef %mvm, ptr noundef %info, ptr noundef %sta, i16 noundef zeroext %14)
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %lor.lhs.false22.if.end30_crit_edge
  %rate_n_flags.0 = phi i32 [ %call29, %if.then24 ], [ 0, %lor.lhs.false22.if.end30_crit_edge ]
  %flags.1 = phi i16 [ %24, %if.then24 ], [ %spec.select, %lor.lhs.false22.if.end30_crit_edge ]
  %25 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %30)
  %cmp32 = icmp ugt i32 %30, 18
  %payload = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 0, i32 1
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %30)
  %cmp.i133 = icmp eq i32 %30, 19
  br i1 %cmp.i133, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc zeroext i16 @iwl_mvm_tx_csum_pre_bz(ptr noundef %mvm, ptr noundef %skb, ptr noundef %info, i1 noundef zeroext %amsdu.0.off0) #8
  %conv.i = zext i16 %call.i to i32
  br label %iwl_mvm_tx_csum.exit

if.end.i:                                         ; preds = %if.then34
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  %call.i.i134 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %34) #11
  %35 = shl i32 %call.i.i134, 21
  %36 = and i32 %35, 130023424
  %rem.i.i = and i32 %call.i.i134, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  %spec.select.v.i.i = select i1 %tobool4.not.i.i, i32 -2147483648, i32 -2013265920
  %spec.select.v.sink.i.i = select i1 %amsdu.0.off0, i32 -1879048192, i32 %spec.select.v.i.i
  %spec.select.i.i = or i32 %spec.select.v.sink.i.i, %36
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %37 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %38 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %38)
  %cmp.not.i.i = icmp eq i16 %38, 1536
  br i1 %cmp.not.i.i, label %u32_encode_bits.exit57.i.i, label %if.end.i.iwl_mvm_tx_csum.exit_crit_edge

if.end.i.iwl_mvm_tx_csum.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_csum.exit

u32_encode_bits.exit57.i.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %32 to i32
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 8
  %conv.i58.i.i = zext i16 %43 to i32
  %44 = add i32 %call.i.i134, %sub.ptr.lhs.cast.i.i.i.i
  %.neg.i.i = sub i32 -8, %44
  %45 = add i32 %.neg.i.i, %conv.i58.i.i
  %sub.i.i = add i32 %45, %sub.ptr.rhs.cast.i.i.i.i
  %csum_offset.i.i = getelementptr inbounds %struct.anon.60, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %csum_offset.i.i, align 2
  %conv14.i.i = zext i16 %47 to i32
  %add15.i.i = add i32 %sub.i.i, %conv14.i.i
  %48 = shl i32 %sub.i.i, 11
  %49 = and i32 %48, 2095104
  %50 = and i32 %add15.i.i, 1023
  %or11.i.i = or i32 %spec.select.i.i, %49
  %or13.i.i = or i32 %or11.i.i, %50
  %or17.i.i = or i32 %or13.i.i, 1610612736
  br label %iwl_mvm_tx_csum.exit

iwl_mvm_tx_csum.exit:                             ; preds = %u32_encode_bits.exit57.i.i, %if.end.i.iwl_mvm_tx_csum.exit_crit_edge, %if.then.i
  %retval.0.i135 = phi i32 [ %conv.i, %if.then.i ], [ %or17.i.i, %u32_encode_bits.exit57.i.i ], [ %spec.select.i.i, %if.end.i.iwl_mvm_tx_csum.exit_crit_edge ]
  %51 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i135)
  %offload_assist38 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 2
  %52 = ptrtoint ptr %offload_assist38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %offload_assist38, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %conv39 = trunc i32 %54 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv39)
  %56 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %payload, align 4
  %hdr41 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 8
  %57 = call ptr @memcpy(ptr %hdr41, ptr %1, i32 %hdrlen)
  %58 = tail call i16 @llvm.bswap.i16(i16 %flags.1)
  %flags43 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %flags43 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %flags43, align 2
  %60 = tail call i32 @llvm.bswap.i32(i32 %rate_n_flags.0)
  %rate_n_flags44 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5
  %61 = ptrtoint ptr %rate_n_flags44 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %rate_n_flags44, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call fastcc zeroext i16 @iwl_mvm_tx_csum_pre_bz(ptr noundef %mvm, ptr noundef %skb, ptr noundef %info, i1 noundef zeroext %amsdu.0.off0)
  %62 = tail call i16 @llvm.bswap.i16(i16 %call50)
  %offload_assist51 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %offload_assist51 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %offload_assist51, align 2
  %len52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len52, align 4
  %conv53 = trunc i32 %65 to i16
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %67 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %payload, align 4
  %hdr55 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 6
  %68 = call ptr @memcpy(ptr %hdr55, ptr %1, i32 %hdrlen)
  %conv57 = zext i16 %flags.1 to i32
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv57)
  %flags58 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 2
  %70 = ptrtoint ptr %flags58 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %flags58, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %rate_n_flags.0)
  %rate_n_flags59 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5
  %72 = ptrtoint ptr %rate_n_flags59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %rate_n_flags59, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end
  %payload62 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 0, i32 1
  %hw_key64 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %73 = ptrtoint ptr %hw_key64 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_key64, align 4
  %tobool65.not = icmp eq ptr %74, null
  br i1 %tobool65.not, label %if.end61.if.end67_crit_edge, label %if.then66

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66:                                        ; preds = %if.end61
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 %hdrlen
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cipher.i, align 8
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %78, label %sw.default.i [
    i32 1027076, label %sw.bb.i
    i32 1027074, label %sw.bb1.i
    i32 1027077, label %sw.bb3.i
    i32 1027073, label %if.then66.sw.bb6.i_crit_edge
    i32 1027080, label %if.then66.sw.bb17.i_crit_edge
    i32 1027081, label %if.then66.sw.bb17.i_crit_edge138
    i32 1027082, label %if.then66.sw.bb18.i_crit_edge
  ]

if.then66.sw.bb18.i_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i

if.then66.sw.bb17.i_crit_edge138:                 ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.then66.sw.bb17.i_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.then66.sw.bb6.i_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

sw.bb.i:                                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %sec_ctl.i.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5, i32 0, i32 1
  %80 = ptrtoint ptr %sec_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 2, ptr %sec_ctl.i.i, align 1
  %key.i.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 6
  %key1.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 8
  %keylen.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 7
  %81 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %keylen.i.i, align 2
  %conv.i.i = zext i8 %82 to i32
  %83 = call ptr @memcpy(ptr %key.i.i, ptr %key1.i.i, i32 %conv.i.i)
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %74, i32 noundef 8) #8
  %call.i2.i.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %74) #8
  %conv.i2.i = trunc i64 %call.i2.i.i.i to i8
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.i2.i, ptr %add.ptr.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %85 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %keyidx.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 5
  %86 = ptrtoint ptr %keyidx.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %keyidx.i.i, align 1
  %shl.i.i = shl i8 %87, 6
  %or.i.i = or i8 %shl.i.i, 32
  %arrayidx4.i.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %88 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %or.i.i, ptr %arrayidx4.i.i, align 1
  %shr.i.i = lshr i64 %call.i2.i.i.i, 8
  %conv5.i.i = trunc i64 %shr.i.i to i8
  %arrayidx6.i.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %89 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv5.i.i, ptr %arrayidx6.i.i, align 1
  %shr7.i.i = lshr i64 %call.i2.i.i.i, 16
  %conv8.i.i = trunc i64 %shr7.i.i to i8
  %arrayidx9.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %90 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv8.i.i, ptr %arrayidx9.i.i, align 1
  %shr10.i.i = lshr i64 %call.i2.i.i.i, 24
  %conv11.i.i = trunc i64 %shr10.i.i to i8
  %arrayidx12.i.i = getelementptr i8, ptr %add.ptr.i, i32 5
  %91 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv11.i.i, ptr %arrayidx12.i.i, align 1
  %shr13.i.i = lshr i64 %call.i2.i.i.i, 32
  %conv14.i.i136 = trunc i64 %shr13.i.i to i8
  %arrayidx15.i.i = getelementptr i8, ptr %add.ptr.i, i32 6
  %92 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv14.i.i136, ptr %arrayidx15.i.i, align 1
  %shr16.i.i = lshr i64 %call.i2.i.i.i, 40
  %conv17.i.i = trunc i64 %shr16.i.i to i8
  %arrayidx18.i.i = getelementptr i8, ptr %add.ptr.i, i32 7
  %93 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv17.i.i, ptr %arrayidx18.i.i, align 1
  br label %if.end67

sw.bb1.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %sec_ctl.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5, i32 0, i32 1
  %94 = ptrtoint ptr %sec_ctl.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 3, ptr %sec_ctl.i, align 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %74, i32 noundef 8) #8
  %call.i2.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %74) #8
  %call2.i = tail call ptr @ieee80211_tkip_add_iv(ptr noundef %add.ptr.i, ptr noundef nonnull %74, i64 noundef %call.i2.i.i) #8
  %key.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 6
  tail call void @ieee80211_get_tkip_p2k(ptr noundef nonnull %74, ptr noundef %skb, ptr noundef %key.i) #8
  br label %if.end67

sw.bb3.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %sec_ctl4.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5, i32 0, i32 1
  %95 = ptrtoint ptr %sec_ctl4.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %sec_ctl4.i, align 1
  %97 = or i8 %96, 8
  store i8 %97, ptr %sec_ctl4.i, align 1
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb3.i, %if.then66.sw.bb6.i_crit_edge
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 5
  %98 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %keyidx.i, align 1
  %shl.i = shl i8 %99, 6
  %sec_ctl9.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5, i32 0, i32 1
  %100 = ptrtoint ptr %sec_ctl9.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %sec_ctl9.i, align 1
  %or8.i = or i8 %shl.i, %101
  %or11.i = or i8 %or8.i, 1
  store i8 %or11.i, ptr %sec_ctl9.i, align 1
  %arrayidx.i = getelementptr %struct.iwl_tx_cmd, ptr %payload62, i32 0, i32 9, i32 3
  %key14.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 8
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 7
  %102 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %keylen.i, align 2
  %conv16.i = zext i8 %103 to i32
  %104 = call ptr @memcpy(ptr %arrayidx.i, ptr %key14.i, i32 %conv16.i)
  br label %if.end67

sw.bb17.i:                                        ; preds = %if.then66.sw.bb17.i_crit_edge, %if.then66.sw.bb17.i_crit_edge138
  br label %sw.bb18.i

sw.bb18.i:                                        ; preds = %sw.bb17.i, %if.then66.sw.bb18.i_crit_edge
  %type.0.i = phi i8 [ 18, %if.then66.sw.bb18.i_crit_edge ], [ 21, %sw.bb17.i ]
  %sec_ctl20.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5, i32 0, i32 1
  %105 = ptrtoint ptr %sec_ctl20.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sec_ctl20.i, align 1
  %or22.i = or i8 %106, %type.0.i
  store i8 %or22.i, ptr %sec_ctl20.i, align 1
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 4
  %107 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %hw_key_idx.i, align 2
  %key24.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 6
  %109 = ptrtoint ptr %key24.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %key24.i, align 8
  %call.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %74, i32 noundef 8) #8
  %call.i2.i.i5.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %74) #8
  %conv.i6.i = trunc i64 %call.i2.i.i5.i to i8
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv.i6.i, ptr %add.ptr.i, align 1
  %arrayidx1.i7.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %111 = ptrtoint ptr %arrayidx1.i7.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx1.i7.i, align 1
  %keyidx.i8.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %74, i32 0, i32 5
  %112 = ptrtoint ptr %keyidx.i8.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %keyidx.i8.i, align 1
  %shl.i9.i = shl i8 %113, 6
  %or.i10.i = or i8 %shl.i9.i, 32
  %arrayidx4.i11.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %114 = ptrtoint ptr %arrayidx4.i11.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %or.i10.i, ptr %arrayidx4.i11.i, align 1
  %shr.i12.i = lshr i64 %call.i2.i.i5.i, 8
  %conv5.i13.i = trunc i64 %shr.i12.i to i8
  %arrayidx6.i14.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %115 = ptrtoint ptr %arrayidx6.i14.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv5.i13.i, ptr %arrayidx6.i14.i, align 1
  %shr7.i15.i = lshr i64 %call.i2.i.i5.i, 16
  %conv8.i16.i = trunc i64 %shr7.i15.i to i8
  %arrayidx9.i17.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %116 = ptrtoint ptr %arrayidx9.i17.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv8.i16.i, ptr %arrayidx9.i17.i, align 1
  %shr10.i18.i = lshr i64 %call.i2.i.i5.i, 24
  %conv11.i19.i = trunc i64 %shr10.i18.i to i8
  %arrayidx12.i20.i = getelementptr i8, ptr %add.ptr.i, i32 5
  %117 = ptrtoint ptr %arrayidx12.i20.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv11.i19.i, ptr %arrayidx12.i20.i, align 1
  %shr13.i21.i = lshr i64 %call.i2.i.i5.i, 32
  %conv14.i22.i = trunc i64 %shr13.i21.i to i8
  %arrayidx15.i23.i = getelementptr i8, ptr %add.ptr.i, i32 6
  %118 = ptrtoint ptr %arrayidx15.i23.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv14.i22.i, ptr %arrayidx15.i23.i, align 1
  %shr16.i24.i = lshr i64 %call.i2.i.i5.i, 40
  %conv17.i25.i = trunc i64 %shr16.i24.i to i8
  %arrayidx18.i26.i = getelementptr i8, ptr %add.ptr.i, i32 7
  %119 = ptrtoint ptr %arrayidx18.i26.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv17.i25.i, ptr %arrayidx18.i26.i, align 1
  br label %if.end67

sw.default.i:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %sec_ctl26.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5, i32 0, i32 1
  %120 = ptrtoint ptr %sec_ctl26.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %sec_ctl26.i, align 1
  %122 = or i8 %121, 4
  store i8 %122, ptr %sec_ctl26.i, align 1
  br label %if.end67

if.end67:                                         ; preds = %sw.default.i, %sw.bb18.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i, %if.end61.if.end67_crit_edge
  tail call void @iwl_mvm_set_tx_cmd(ptr noundef %mvm, ptr noundef %skb, ptr noundef %payload62, ptr noundef %info, i8 noundef zeroext %sta_id)
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %1, align 2
  %rts_retry_limit.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 13, i32 0, i32 1
  %125 = ptrtoint ptr %rts_retry_limit.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 60, ptr %rts_retry_limit.i, align 1
  %126 = and i16 %124, -1024
  %127 = zext i16 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %126, label %if.end14.i [
    i16 20480, label %if.end14.thread.i
    i16 -31744, label %if.end14.thread58.i
  ]

if.end14.i:                                       ; preds = %if.end67
  %data_retry_limit13.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 13, i32 0, i32 2
  %128 = ptrtoint ptr %data_retry_limit13.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 15, ptr %data_retry_limit13.i, align 2
  %129 = and i16 %124, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %129)
  %cmp.i50.i = icmp ne i16 %129, 2048
  %tobool.not.i = icmp eq ptr %sta, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.i50.i
  br i1 %or.cond.i, label %if.end14.i.if.end29.i_crit_edge, label %if.end14.i.if.then17.i_crit_edge

if.end14.i.if.then17.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.end14.i.if.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.end14.thread58.i:                              ; preds = %if.end67
  %data_retry_limit11.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 13, i32 0, i32 2
  %130 = ptrtoint ptr %data_retry_limit11.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 60, ptr %data_retry_limit11.i, align 2
  %131 = and i16 %124, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %131)
  %cmp.i5059.i = icmp ne i16 %131, 2048
  %tobool.not61.i = icmp eq ptr %sta, null
  %or.cond62.i = or i1 %tobool.not61.i, %cmp.i5059.i
  br i1 %or.cond62.i, label %if.then25.i, label %if.end14.thread58.i.if.then17.i_crit_edge

if.end14.thread58.i.if.then17.i_crit_edge:        ; preds = %if.end14.thread58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.end14.thread.i:                                ; preds = %if.end67
  %data_retry_limit.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 13, i32 0, i32 2
  %132 = ptrtoint ptr %data_retry_limit.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 3, ptr %data_retry_limit.i, align 2
  %133 = ptrtoint ptr %rts_retry_limit.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 3, ptr %rts_retry_limit.i, align 1
  %134 = and i16 %124, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %134)
  %cmp.i5053.i = icmp ne i16 %134, 2048
  %tobool.not55.i = icmp eq ptr %sta, null
  %or.cond56.i = or i1 %tobool.not55.i, %cmp.i5053.i
  br i1 %or.cond56.i, label %if.end14.thread.i.if.end29.i_crit_edge, label %if.end14.thread.i.if.then17.i_crit_edge

if.end14.thread.i.if.then17.i_crit_edge:          ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.end14.thread.i.if.end29.i_crit_edge:           ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then17.i:                                      ; preds = %if.end14.thread.i.if.then17.i_crit_edge, %if.end14.thread58.i.if.then17.i_crit_edge, %if.end14.i.if.then17.i_crit_edge
  %sta_state.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 5
  %135 = ptrtoint ptr %sta_state.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sta_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %136)
  %cmp19.i = icmp ugt i32 %136, 3
  br i1 %cmp19.i, label %cleanup.i, label %if.then17.i.if.end29.i_crit_edge

if.then17.i.if.end29.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

cleanup.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %initial_rate_index.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 5, i32 0, i32 2
  %137 = ptrtoint ptr %initial_rate_index.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %initial_rate_index.i, align 2
  %tx_flags.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 2
  %138 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_flags.i, align 8
  %or.i = or i32 %139, 268435456
  store i32 %or.i, ptr %tx_flags.i, align 8
  br label %iwl_mvm_set_tx_cmd_rate.exit

if.then25.i:                                      ; preds = %if.end14.thread58.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_flags26.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 2
  %140 = ptrtoint ptr %tx_flags26.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_flags26.i, align 8
  %or27.i = or i32 %141, 1207959552
  store i32 %or27.i, ptr %tx_flags26.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.then17.i.if.end29.i_crit_edge, %if.end14.thread.i.if.end29.i_crit_edge, %if.end14.i.if.end29.i_crit_edge
  %call30.i = tail call fastcc i32 @iwl_mvm_get_tx_rate_n_flags(ptr noundef %mvm, ptr noundef %info, ptr noundef %sta, i16 noundef zeroext %124) #8
  %142 = tail call i32 @llvm.bswap.i32(i32 %call30.i) #8
  %rate_n_flags.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 4
  %143 = ptrtoint ptr %rate_n_flags.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %rate_n_flags.i, align 8
  br label %iwl_mvm_set_tx_cmd_rate.exit

iwl_mvm_set_tx_cmd_rate.exit:                     ; preds = %if.end29.i, %cleanup.i
  %hdr69 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i, i32 15
  %144 = call ptr @memcpy(ptr %hdr69, ptr %1, i32 %hdrlen)
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_set_tx_cmd_rate.exit, %if.else, %iwl_mvm_tx_csum.exit, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_max_amsdu_size(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %sta, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  %arrayidx = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %tid
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %12 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %he_cap, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %land.lhs.true

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %14 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %19 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not = icmp eq i16 %19, 0
  br i1 %tobool.i.not, label %do.end, label %land.lhs.true.if.end_crit_edge, !prof !251

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge
  %add = add i8 %7, 4
  %spec.select = select i1 %tobool.i.not, i8 %7, i8 %add
  br label %if.end27

if.end27:                                         ; preds = %if.end, %entry.if.end27_crit_edge
  %ac.0 = phi i8 [ %7, %entry.if.end27_crit_edge ], [ %spec.select, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp ne i32 %5, 0
  %20 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp ne i32 %20, 0
  %not.or.cond.i = and i1 %cmp.i, %tobool.i.not.i
  %retval.0.i = zext i1 %not.or.cond.i to i32
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %conv28 = zext i8 %ac.0 to i32
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %21 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %26 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.i.not.i46 = icmp eq i16 %26, 0
  %iwl_mvm_ac_to_gen2_tx_fifo.iwl_mvm_ac_to_tx_fifo.i = select i1 %tobool.i.not.i46, ptr @iwl_mvm_ac_to_tx_fifo, ptr @iwl_mvm_ac_to_gen2_tx_fifo
  %cond.in.in.i = getelementptr [0 x i8], ptr %iwl_mvm_ac_to_gen2_tx_fifo.iwl_mvm_ac_to_tx_fifo.i, i32 0, i32 %conv28
  %27 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %cond.in5.i = load i8, ptr %cond.in.in.i, align 1
  %conv30 = zext i8 %cond.in5.i to i32
  %max_amsdu_len = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 21
  %28 = ptrtoint ptr %max_amsdu_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_amsdu_len, align 2
  %conv31 = zext i16 %29 to i32
  %arrayidx33 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 11, i32 2, i32 %retval.0.i
  %arrayidx34 = getelementptr [15 x i32], ptr %arrayidx33, i32 0, i32 %conv30
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx34, align 4
  %sub = add i32 %31, -256
  %32 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv31)
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_tx_skb_sta(ptr noundef %mvm, ptr noundef %skb, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.ieee80211_tx_info, align 8
  %mpdus_skbs = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mpdus_skbs) #8
  %0 = call ptr @memset(ptr %mpdus_skbs, i32 255, i32 56)
  %tobool.not = icmp eq ptr %drv_priv.i, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b190 = load i1, ptr @iwl_mvm_tx_skb_sta.__already_done, align 1
  br i1 %.b190, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !250

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_skb_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1210, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39:                                         ; preds = %entry
  %1 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %drv_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp = icmp eq i32 %2, 255
  br i1 %cmp, label %land.rhs47, label %if.end95

land.rhs47:                                       ; preds = %if.end39
  %.b188189 = load i1, ptr @iwl_mvm_tx_skb_sta.__already_done.5, align 1
  br i1 %.b188189, label %land.rhs47.cleanup_crit_edge, label %if.then58, !prof !250

land.rhs47.cleanup_crit_edge:                     ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then58:                                        ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_skb_sta.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1213, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end95:                                         ; preds = %if.end39
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = call ptr @memcpy(ptr %info, ptr %cb, i32 48)
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %call98 = call fastcc i32 @iwl_mvm_tx_mpdu(ptr noundef %mvm, ptr noundef %skb, ptr noundef nonnull %info, ptr noundef %sta)
  br label %cleanup

if.end99:                                         ; preds = %if.end95
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %14 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %15 = lshr i16 %bf.load.i.i, 10
  %16 = and i16 %15, 60
  %mul.i.i = zext i16 %16 to i32
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len, align 8
  %.neg = add i32 %18, %sub.ptr.lhs.cast
  %19 = add i32 %sub.ptr.rhs.cast, %mul.i.i
  %add = sub i32 %.neg, %19
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp104.not = icmp ugt i32 %add, %conv
  br i1 %cmp104.not, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %call107 = call fastcc i32 @iwl_mvm_tx_mpdu(ptr noundef %mvm, ptr noundef %skb, ptr noundef nonnull %info, ptr noundef %sta)
  br label %cleanup

if.end108:                                        ; preds = %if.end99
  %20 = ptrtoint ptr %mpdus_skbs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mpdus_skbs, ptr %mpdus_skbs, align 4
  %prev.i = getelementptr inbounds %struct.anon.79, ptr %mpdus_skbs, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mpdus_skbs, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %mpdus_skbs, i32 0, i32 1
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %qlen.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %gso_size.i, align 4
  %conv.i195 = zext i16 %26 to i32
  %add.ptr.i196 = getelementptr i8, ptr %add.ptr.i, i32 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i215.i = zext i16 %28 to i32
  %add.ptr.i216.i = getelementptr i8, ptr %11, i32 %conv.i215.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i196 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i216.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %29 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i.i = load i16, ptr %doff.i.i, align 4
  %30 = lshr i16 %bf.load.i.i.i, 10
  %31 = and i16 %30, 60
  %mul.i.i.i = zext i16 %31 to i32
  %add.i = add i32 %sub.ptr.sub.i, %mul.i.i.i
  %max_amsdu_len6.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 21
  %32 = ptrtoint ptr %max_amsdu_len6.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_amsdu_len6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i, label %if.end108.if.then.i_crit_edge, label %lor.lhs.false.i

if.end108.if.then.i_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end108
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %24, align 2
  %36 = and i16 %35, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %36)
  %cmp.i.i = icmp eq i16 %36, -30720
  br i1 %cmp.i.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %amsdu_enabled.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 18
  %37 = ptrtoint ptr %amsdu_enabled.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %amsdu_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool9.not.i = icmp eq i16 %38, 0
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end108.if.then.i_crit_edge
  %call10.i = call fastcc i32 @iwl_mvm_tx_tso_segment(ptr noundef %skb, i32 noundef 1, i64 noundef 27, ptr noundef nonnull %mpdus_skbs) #8
  br label %iwl_mvm_tx_tso.exit

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %40)
  %cmp.i = icmp eq i16 %40, -31011
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i216.i, i32 0, i32 3
  %41 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %42)
  %cmp15.not.i = icmp eq i8 %42, 6
  br i1 %cmp15.not.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %if.then17.i

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = call fastcc i32 @iwl_mvm_tx_tso_segment(ptr noundef %skb, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %mpdus_skbs) #8
  br label %iwl_mvm_tx_tso.exit

if.end19.i:                                       ; preds = %land.lhs.true.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %43 = and i16 %35, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %43)
  %cmp.i.i.i.i = icmp eq i16 %43, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %24, i32 %retval.0.v.i.i.i
  %44 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %retval.0.i.i.i, align 1
  %46 = and i8 %45, 15
  %conv21.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %46)
  %cmp22.i = icmp ugt i8 %46, 7
  br i1 %cmp22.i, label %land.rhs.i, label %if.end64.i

land.rhs.i:                                       ; preds = %if.end19.i
  %.b212.i = load i1, ptr @iwl_mvm_tx_tso.__already_done, align 1
  br i1 %.b212.i, label %land.rhs.i.cleanup_crit_edge, label %if.then32.i, !prof !250

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_tso.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 913, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end64.i:                                       ; preds = %if.end19.i
  %47 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %info, align 8
  %and65.i = and i32 %48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end64.i.lor.lhs.false69.i_crit_edge, label %land.lhs.true67.i

if.end64.i.lor.lhs.false69.i_crit_edge:           ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false69.i

land.lhs.true67.i:                                ; preds = %if.end64.i
  %amsdu_in_ampdu_allowed.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv21.i, i32 4
  %49 = ptrtoint ptr %amsdu_in_ampdu_allowed.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %amsdu_in_ampdu_allowed.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool68.not.i = icmp eq i8 %50, 0
  br i1 %tobool68.not.i, label %land.lhs.true67.i.if.then75.i_crit_edge, label %land.lhs.true67.i.lor.lhs.false69.i_crit_edge

land.lhs.true67.i.lor.lhs.false69.i_crit_edge:    ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false69.i

land.lhs.true67.i.if.then75.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.i

lor.lhs.false69.i:                                ; preds = %land.lhs.true67.i.lor.lhs.false69.i_crit_edge, %if.end64.i.lor.lhs.false69.i_crit_edge
  %conv71.i = zext i16 %38 to i32
  %shl.i = shl nuw nsw i32 1, %conv21.i
  %and73.i = and i32 %shl.i, %conv71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %lor.lhs.false69.i.if.then75.i_crit_edge, label %if.end77.i

lor.lhs.false69.i.if.then75.i_crit_edge:          ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.i

if.then75.i:                                      ; preds = %lor.lhs.false69.i.if.then75.i_crit_edge, %land.lhs.true67.i.if.then75.i_crit_edge
  %call76.i = call fastcc i32 @iwl_mvm_tx_tso_segment(ptr noundef %skb, i32 noundef 1, i64 noundef 27, ptr noundef nonnull %mpdus_skbs) #8
  br label %iwl_mvm_tx_tso.exit

if.end77.i:                                       ; preds = %lor.lhs.false69.i
  %max_amsdu_len78.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 21
  %51 = ptrtoint ptr %max_amsdu_len78.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_amsdu_len78.i, align 4
  %conv79.i = zext i16 %52 to i32
  %vif.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %53 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vif.i.i, align 8
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %54, i32 0, i32 1, i32 32
  %55 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chandef.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %arrayidx.i.i = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %conv21.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i, align 1
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %61 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %62, i32 0, i32 5, i32 8, i32 1
  %63 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %he_cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %65 = ptrtoint ptr %he_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %he_cap.i.i, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i.i, label %if.end77.i.iwl_mvm_max_amsdu_size.exit.i_crit_edge, label %land.lhs.true.i.i

if.end77.i.iwl_mvm_max_amsdu_size.exit.i_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_max_amsdu_size.exit.i

land.lhs.true.i.i:                                ; preds = %if.end77.i
  %trans.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %67 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %trans.i.i.i, align 4
  %trans_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %trans_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %trans_cfg.i.i.i, align 4
  %use_tfh.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %use_tfh.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i.i221.i = load i16, ptr %use_tfh.i.i.i, align 4
  %72 = and i16 %bf.load.i.i221.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.i.not.i.i = icmp eq i16 %72, 0
  br i1 %tobool.i.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !251

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge
  %add.i.i = add i8 %60, 4
  %spec.select.i.i = select i1 %tobool.i.not.i.i, i8 %60, i8 %add.i.i
  br label %iwl_mvm_max_amsdu_size.exit.i

iwl_mvm_max_amsdu_size.exit.i:                    ; preds = %if.end.i.i, %if.end77.i.iwl_mvm_max_amsdu_size.exit.i_crit_edge
  %ac.0.i.i = phi i8 [ %60, %if.end77.i.iwl_mvm_max_amsdu_size.exit.i_crit_edge ], [ %spec.select.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i = icmp ne i32 %58, 0
  %73 = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not.i.i.i = icmp ne i32 %73, 0
  %not.or.cond.i.i.i = and i1 %cmp.i.i.i, %tobool.i.not.i.i.i
  %retval.0.i.i222.i = zext i1 %not.or.cond.i.i.i to i32
  %conv28.i.i = zext i8 %ac.0.i.i to i32
  %trans.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %74 = ptrtoint ptr %trans.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %trans.i.i.i.i, align 4
  %trans_cfg.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %trans_cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans_cfg.i.i.i.i, align 4
  %use_tfh.i.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %use_tfh.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load.i.i.i.i = load i16, ptr %use_tfh.i.i.i.i, align 4
  %79 = and i16 %bf.load.i.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.i.not.i46.i.i = icmp eq i16 %79, 0
  %iwl_mvm_ac_to_gen2_tx_fifo.iwl_mvm_ac_to_tx_fifo.i.i.i = select i1 %tobool.i.not.i46.i.i, ptr @iwl_mvm_ac_to_tx_fifo, ptr @iwl_mvm_ac_to_gen2_tx_fifo
  %cond.in.in.i.i.i = getelementptr [0 x i8], ptr %iwl_mvm_ac_to_gen2_tx_fifo.iwl_mvm_ac_to_tx_fifo.i.i.i, i32 0, i32 %conv28.i.i
  %80 = ptrtoint ptr %cond.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %cond.in5.i.i.i = load i8, ptr %cond.in.in.i.i.i, align 1
  %conv30.i.i = zext i8 %cond.in5.i.i.i to i32
  %81 = ptrtoint ptr %max_amsdu_len6.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %max_amsdu_len6.i, align 2
  %conv31.i.i = zext i16 %82 to i32
  %arrayidx33.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 11, i32 2, i32 %retval.0.i.i222.i
  %arrayidx34.i.i = getelementptr [15 x i32], ptr %arrayidx33.i.i, i32 0, i32 %conv30.i.i
  %83 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx34.i.i, align 4
  %sub.i.i = add i32 %84, -256
  %85 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %conv31.i.i) #8
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 %conv79.i) #8
  %87 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %info, align 8
  %and86.i = and i32 %88, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %iwl_mvm_max_amsdu_size.exit.i.if.end98.i_crit_edge, label %land.lhs.true88.i

iwl_mvm_max_amsdu_size.exit.i.if.end98.i_crit_edge: ; preds = %iwl_mvm_max_amsdu_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

land.lhs.true88.i:                                ; preds = %iwl_mvm_max_amsdu_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %vht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %89 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %vht_cap.i, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool89.not.i = icmp eq i8 %90, 0
  %91 = call i32 @llvm.umin.i32(i32 %86, i32 4095) #8
  %spec.select.i = select i1 %tobool89.not.i, i32 %91, i32 %86
  br label %if.end98.i

if.end98.i:                                       ; preds = %land.lhs.true88.i, %iwl_mvm_max_amsdu_size.exit.i.if.end98.i_crit_edge
  %max_amsdu_len.0.i = phi i32 [ %86, %iwl_mvm_max_amsdu_size.exit.i.if.end98.i_crit_edge ], [ %spec.select.i, %land.lhs.true88.i ]
  %conv99.i = and i32 %add.i, 65535
  %add100.i = add nuw nsw i32 %conv.i195, 14
  %add101.i = add nuw nsw i32 %add100.i, %conv99.i
  %92 = sub nsw i32 0, %add101.i
  %conv103.i = and i32 %92, 3
  %add105.i = add nuw nsw i32 %max_amsdu_len.0.i, %conv103.i
  %add107.i = add nuw nsw i32 %conv103.i, %add101.i
  %div.i = udiv i32 %add105.i, %add107.i
  %max_amsdu_subframes.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 20
  %93 = ptrtoint ptr %max_amsdu_subframes.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %max_amsdu_subframes.i, align 1
  %conv108.i = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool109.not.i = icmp ne i8 %94, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv108.i)
  %cmp113.i = icmp ugt i32 %div.i, %conv108.i
  %or.cond.i = select i1 %tobool109.not.i, i1 %cmp113.i, i1 false
  %num_subframes.0.i = select i1 %or.cond.i, i32 %conv108.i, i32 %div.i
  %95 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tail.i, align 8
  %97 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i, align 8
  %99 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %transport_header.i, align 2
  %conv.i225.i = zext i16 %100 to i32
  %add.ptr.i226.i = getelementptr i8, ptr %98, i32 %conv.i225.i
  %sub.ptr.lhs.cast121.i = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast122.i = ptrtoint ptr %add.ptr.i226.i to i32
  %doff.i.i231.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i226.i, i32 0, i32 4
  %101 = ptrtoint ptr %doff.i.i231.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %bf.load.i.i232.i = load i16, ptr %doff.i.i231.i, align 4
  %102 = lshr i16 %bf.load.i.i232.i, 10
  %103 = and i16 %102, 60
  %mul.i.i233.i = zext i16 %103 to i32
  %104 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_len, align 8
  %.neg211 = add i32 %105, %sub.ptr.lhs.cast121.i
  %106 = add i32 %sub.ptr.rhs.cast122.i, %mul.i.i233.i
  %add126.i = sub i32 %.neg211, %106
  %mul.i = shl nuw nsw i32 %num_subframes.0.i, 1
  %107 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nr_frags.i, align 2
  %conv128.i = zext i8 %110 to i32
  %add129.i = add nuw nsw i32 %mul.i, %conv128.i
  %max_skb_frags.i = getelementptr inbounds %struct.iwl_trans, ptr %75, i32 0, i32 9
  %111 = ptrtoint ptr %max_skb_frags.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_skb_frags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %112)
  %cmp131.not.i = icmp ult i32 %add129.i, %112
  %num_subframes.1.i = select i1 %cmp131.not.i, i32 %num_subframes.0.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_subframes.1.i)
  %cmp135.i = icmp ugt i32 %num_subframes.1.i, 1
  br i1 %cmp135.i, label %if.then137.i, label %if.end98.i.if.end141.i_crit_edge

if.end98.i.if.end141.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141.i

if.then137.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %24, align 2
  %115 = and i16 %114, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %115)
  %cmp.i.i235.i = icmp eq i16 %115, 3
  %retval.0.v.i.i = select i1 %cmp.i.i235.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %24, i32 %retval.0.v.i.i
  %116 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %retval.0.i.i, align 1
  %118 = or i8 %117, -128
  store i8 %118, ptr %retval.0.i.i, align 1
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then137.i, %if.end98.i.if.end141.i_crit_edge
  %mul142.i = mul nuw nsw i32 %num_subframes.1.i, %conv.i195
  call void @__sanitizer_cov_trace_cmp4(i32 %mul142.i, i32 %add126.i)
  %cmp143.not.i = icmp ult i32 %mul142.i, %add126.i
  br i1 %cmp143.not.i, label %if.end146.i, label %iwl_mvm_tx_tso.exit.thread208

iwl_mvm_tx_tso.exit.thread208:                    ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i, align 4
  %121 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %mpdus_skbs, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %122 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i, align 4
  %123 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %skb, ptr %120, align 4
  %124 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.i = add i32 %125, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i, align 4
  br label %if.end112

if.end146.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  %call147.i = call fastcc i32 @iwl_mvm_tx_tso_segment(ptr noundef %skb, i32 noundef %num_subframes.1.i, i64 noundef 27, ptr noundef nonnull %mpdus_skbs) #8
  br label %iwl_mvm_tx_tso.exit

iwl_mvm_tx_tso.exit:                              ; preds = %if.end146.i, %if.then75.i, %if.then17.i, %if.then.i
  %retval.0.i = phi i32 [ %call18.i, %if.then17.i ], [ %call147.i, %if.end146.i ], [ %call76.i, %if.then75.i ], [ %call10.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool110.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool110.not, label %iwl_mvm_tx_tso.exit.if.end112_crit_edge, label %iwl_mvm_tx_tso.exit.cleanup_crit_edge

iwl_mvm_tx_tso.exit.cleanup_crit_edge:            ; preds = %iwl_mvm_tx_tso.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

iwl_mvm_tx_tso.exit.if.end112_crit_edge:          ; preds = %iwl_mvm_tx_tso.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.end112:                                        ; preds = %iwl_mvm_tx_tso.exit.if.end112_crit_edge, %iwl_mvm_tx_tso.exit.thread208
  %126 = ptrtoint ptr %mpdus_skbs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mpdus_skbs, align 4
  %cmp.i197.not = icmp eq ptr %127, %mpdus_skbs
  br i1 %cmp.i197.not, label %do.end131, label %if.end112.while.body_crit_edge, !prof !251

if.end112.while.body_crit_edge:                   ; preds = %if.end112
  br label %while.body

do.end131:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1233, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

while.condthread-pre-split:                       ; preds = %__skb_dequeue.exit
  %128 = ptrtoint ptr %mpdus_skbs to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr = load ptr, ptr %mpdus_skbs, align 4
  %cmp.i199 = icmp eq ptr %.pr, %mpdus_skbs
  br i1 %cmp.i199, label %while.condthread-pre-split.cleanup_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.condthread-pre-split.cleanup_crit_edge:     ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %if.end112.while.body_crit_edge
  %129 = phi ptr [ %.pr, %while.condthread-pre-split.while.body_crit_edge ], [ %127, %if.end112.while.body_crit_edge ]
  %tobool.not.i202 = icmp eq ptr %129, null
  br i1 %tobool.not.i202, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i204

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit

if.then.i204:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %qlen.i, align 4
  %sub.i.i203 = add i32 %131, -1
  store volatile i32 %sub.i.i203, ptr %qlen.i, align 4
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %129, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %129, i32 0, i32 1
  %134 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %129, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %133, i32 0, i32 1
  %136 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %135, ptr %prev17.i.i, align 4
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %133, ptr %135, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i204, %while.body.__skb_dequeue.exit_crit_edge
  %call153 = call fastcc i32 @iwl_mvm_tx_mpdu(ptr noundef %mvm, ptr noundef %129, ptr noundef nonnull %info, ptr noundef %sta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %while.condthread-pre-split, label %if.then155

if.then155:                                       ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @__skb_queue_purge(ptr noundef nonnull %mpdus_skbs)
  br label %cleanup

cleanup:                                          ; preds = %if.then155, %while.condthread-pre-split.cleanup_crit_edge, %do.end131, %iwl_mvm_tx_tso.exit.cleanup_crit_edge, %if.then32.i, %land.rhs.i.cleanup_crit_edge, %if.then106, %if.then97, %if.then58, %land.rhs47.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call107, %if.then106 ], [ 0, %do.end131 ], [ -1, %if.then155 ], [ %call98, %if.then97 ], [ -1, %if.then ], [ -1, %if.then58 ], [ %retval.0.i, %iwl_mvm_tx_tso.exit.cleanup_crit_edge ], [ -1, %land.rhs.cleanup_crit_edge ], [ -1, %land.rhs47.cleanup_crit_edge ], [ -22, %if.then32.i ], [ -22, %land.rhs.i.cleanup_crit_edge ], [ 0, %while.condthread-pre-split.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mpdus_skbs) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_tx_mpdu(ptr noundef %mvm, ptr noundef %skb, ptr noundef %info, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %queue_tid_bitmap.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %call1 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %3) #11
  %tobool.not = icmp eq ptr %drv_priv.i, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b605 = load i1, ptr @iwl_mvm_tx_mpdu.__already_done, align 1
  br i1 %.b605, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !250

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_mpdu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end40:                                         ; preds = %entry
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drv_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp eq i32 %5, 255
  br i1 %cmp, label %land.rhs48, label %if.end96

land.rhs48:                                       ; preds = %if.end40
  %.b594604 = load i1, ptr @iwl_mvm_tx_mpdu.__already_done.57, align 1
  br i1 %.b594604, label %land.rhs48.cleanup_crit_edge, label %if.then59, !prof !250

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_mpdu.__already_done.57, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1083, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end96:                                         ; preds = %if.end40
  %6 = and i16 %3, 31744
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %6)
  %7 = icmp eq i16 %6, 18432
  br i1 %7, label %land.lhs.true, label %if.end96.if.end106_crit_edge, !prof !251

if.end96.if.end106_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

land.lhs.true:                                    ; preds = %if.end96
  %he_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 6
  %8 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %he_cap, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool104.not = icmp eq i8 %9, 0
  br i1 %tobool104.not, label %land.lhs.true.if.end106_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end106:                                        ; preds = %land.lhs.true.if.end106_crit_edge, %if.end96.if.end106_crit_edge
  %10 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %10)
  %cmp.i = icmp eq i16 %10, 20480
  br i1 %cmp.i, label %if.then114, label %if.end106.if.end115_crit_edge, !prof !251

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then114:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iwl_mvm_probe_resp_set_noa(ptr noundef %mvm, ptr noundef %skb)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end106.if.end115_crit_edge
  %11 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drv_priv.i, align 8
  %conv = trunc i32 %12 to i8
  %call117 = tail call fastcc ptr @iwl_mvm_set_tx_params(ptr noundef %mvm, ptr noundef %skb, ptr noundef %info, i32 noundef %call1, ptr noundef %sta, i8 noundef zeroext %conv)
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %if.end115.do.end489_crit_edge, label %if.end120

if.end115.do.end489_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end489

if.end120:                                        ; preds = %if.end115
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 8
  %and = and i32 %14, -268435457
  store i32 %and, ptr %info, align 8
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %15 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %15)
  %cmp.i613 = icmp eq i16 %15, -30720
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %10)
  %cmp.i614 = icmp ne i16 %10, -14336
  %16 = and i1 %cmp.i613, %cmp.i614
  br i1 %16, label %if.then125, label %if.else

if.then125:                                       ; preds = %if.end120
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 2
  %19 = and i16 %18, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp.i.i.i = icmp eq i16 %19, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %1, i32 %retval.0.v.i.i
  %20 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %retval.0.i.i, align 1
  %22 = and i8 %21, 15
  %conv128 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp129 = icmp ugt i8 %22, 7
  br i1 %cmp129, label %land.rhs138, label %if.end187.critedge

land.rhs138:                                      ; preds = %if.then125
  %.b595603 = load i1, ptr @iwl_mvm_tx_mpdu.__already_done.58, align 1
  br i1 %.b595603, label %land.rhs138.drop_unlock_sta_crit_edge, label %if.then149, !prof !250

land.rhs138.drop_unlock_sta_crit_edge:            ; preds = %land.rhs138
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock_sta

if.then149:                                       ; preds = %land.rhs138
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_mpdu.__already_done.58, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 9, ptr noundef nonnull @.str.59, i32 noundef %conv128) #8
  br label %drop_unlock_sta

if.end187.critedge:                               ; preds = %if.then125
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %info, align 8
  %and189 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end187.critedge.if.end259.critedge_crit_edge, label %land.rhs195

if.end187.critedge.if.end259.critedge_crit_edge:  ; preds = %if.end187.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259.critedge

land.rhs195:                                      ; preds = %if.end187.critedge
  %state = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv128, i32 5
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp196.not = icmp eq i32 %26, 3
  br i1 %cmp196.not, label %land.rhs195.if.end259.critedge_crit_edge, label %land.rhs206

land.rhs195.if.end259.critedge_crit_edge:         ; preds = %land.rhs195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259.critedge

land.rhs206:                                      ; preds = %land.rhs195
  %.b596602 = load i1, ptr @iwl_mvm_tx_mpdu.__already_done.60, align 1
  br i1 %.b596602, label %land.rhs206.drop_unlock_sta_crit_edge, label %if.then217, !prof !250

land.rhs206.drop_unlock_sta_crit_edge:            ; preds = %land.rhs206
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock_sta

if.then217:                                       ; preds = %land.rhs206
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_mpdu.__already_done.60, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1119, i32 noundef 9, ptr noundef nonnull @.str.61, i32 noundef %26, i32 noundef %conv128) #8
  br label %drop_unlock_sta

if.end259.critedge:                               ; preds = %land.rhs195.if.end259.critedge_crit_edge, %if.end187.critedge.if.end259.critedge_crit_edge
  %arrayidx262 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %conv128
  %27 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx262, align 4
  %29 = and i16 %28, -16
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
  br i1 %tobool.i.not, label %if.then268, label %if.end259.critedge.if.end287_crit_edge

if.end259.critedge.if.end287_crit_edge:           ; preds = %if.end259.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.then268:                                       ; preds = %if.end259.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %seq_ctrl, align 2
  %38 = and i16 %37, 3840
  %39 = tail call i16 @llvm.bswap.i16(i16 %29)
  %or601 = or i16 %38, %39
  %40 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %or601, ptr %seq_ctrl, align 2
  %seq_ctrl279 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call117, i32 20, i32 0, i32 2
  %41 = ptrtoint ptr %seq_ctrl279 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %or601, ptr %seq_ctrl279, align 1
  br label %if.end287

if.else:                                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %42 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %42)
  %cmp.i615 = icmp eq i16 %42, 2048
  %spec.select = select i1 %cmp.i613, i8 8, i8 0
  %spec.select637 = select i1 %cmp.i615, i8 %spec.select, i8 8
  %.pre = zext i8 %spec.select637 to i32
  br label %if.end287

if.end287:                                        ; preds = %if.else, %if.then268, %if.end259.critedge.if.end287_crit_edge
  %idxprom289.pre-phi = phi i32 [ %.pre, %if.else ], [ %conv128, %if.end259.critedge.if.end287_crit_edge ], [ %conv128, %if.then268 ]
  %tid.0 = phi i8 [ %spec.select637, %if.else ], [ %22, %if.end259.critedge.if.end287_crit_edge ], [ %22, %if.then268 ]
  %seq_number.0.shrunk = phi i16 [ 0, %if.else ], [ %29, %if.end259.critedge.if.end287_crit_edge ], [ %29, %if.then268 ]
  %arrayidx290 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom289.pre-phi
  %txq_id291 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom289.pre-phi, i32 6
  %43 = ptrtoint ptr %txq_id291 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %txq_id291, align 4
  %45 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %info, align 8
  %and294 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool295.not = icmp eq i32 %and294, 0
  br i1 %tobool295.not, label %if.end287.if.end341_crit_edge, label %land.rhs303

if.end287.if.end341_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end341

land.rhs303:                                      ; preds = %if.end287
  %.b597600 = load i1, ptr @iwl_mvm_tx_mpdu.__already_done.62, align 1
  br i1 %.b597600, label %land.rhs303.if.end341_crit_edge, label %if.then314, !prof !250

land.rhs303.if.end341_crit_edge:                  ; preds = %land.rhs303
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end341

if.then314:                                       ; preds = %land.rhs303
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_mpdu.__already_done.62, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 9, ptr noundef null) #8
  br label %if.end341

if.end341:                                        ; preds = %if.then314, %land.rhs303.if.end341_crit_edge, %if.end287.if.end341_crit_edge
  %conv350 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %44)
  %cmp351 = icmp eq i16 %44, -1
  br i1 %cmp351, label %land.rhs360, label %if.end409

land.rhs360:                                      ; preds = %if.end341
  %.b598599 = load i1, ptr @iwl_mvm_tx_mpdu.__already_done.63, align 1
  br i1 %.b598599, label %land.rhs360.if.then407_crit_edge, label %if.then371, !prof !250

land.rhs360.if.then407_crit_edge:                 ; preds = %land.rhs360
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then407

if.then371:                                       ; preds = %land.rhs360
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_mpdu.__already_done.63, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1141, i32 noundef 9, ptr noundef nonnull @.str.64) #8
  br label %if.then407

if.then407:                                       ; preds = %if.then371, %land.rhs360.if.then407_crit_edge
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %47 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 28
  %49 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_cmd_pool.i, align 4
  tail call void @kmem_cache_free(ptr noundef %50, ptr noundef nonnull %call117) #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end409:                                        ; preds = %if.end341
  %trans.i617 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %51 = ptrtoint ptr %trans.i617 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %trans.i617, align 4
  %trans_cfg.i618 = getelementptr inbounds %struct.iwl_trans, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %trans_cfg.i618 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trans_cfg.i618, align 4
  %use_tfh.i619 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %use_tfh.i619 to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i620 = load i16, ptr %use_tfh.i619, align 4
  %56 = and i16 %bf.load.i620, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.i621.not = icmp eq i16 %56, 0
  br i1 %tobool.i621.not, label %if.then411, label %if.end409.do.end438_crit_edge

if.end409.do.end438_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end438

if.then411:                                       ; preds = %if.end409
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %58 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %arrayidx415 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %58, i32 0, i32 %conv350, i32 5, i32 %idxprom289.pre-phi
  %59 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %arrayidx415, align 4
  %status = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %58, i32 0, i32 %conv350, i32 6
  %60 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp418 = icmp eq i32 %61, 3
  br i1 %cmp418, label %land.rhs420, label %if.then411.do.end438_crit_edge

if.then411.do.end438_crit_edge:                   ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end438

land.rhs420:                                      ; preds = %if.then411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %queue_tid_bitmap.i) #8
  %tid_bitmap.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %58, i32 0, i32 %conv350, i32 4
  %62 = ptrtoint ptr %tid_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tid_bitmap.i, align 4
  %conv.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %queue_tid_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv.i, ptr %queue_tid_bitmap.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %66 = ptrtoint ptr %trans_cfg.i618 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %trans_cfg.i618, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %69 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.i.not.i = icmp eq i16 %69, 0
  br i1 %tobool.i.not.i, label %if.end21.i, label %do.end.i, !prof !250

do.end.i:                                         ; preds = %land.rhs420
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1004, i32 noundef 9, ptr noundef null) #8
  br label %iwl_mvm_txq_should_update.exit.thread

if.end21.i:                                       ; preds = %land.rhs420
  %call22.i = call i32 @_find_next_bit_be(ptr noundef nonnull %queue_tid_bitmap.i, i32 noundef 9, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call22.i)
  %cmp40.i = icmp slt i32 %call22.i, 9
  br i1 %cmp40.i, label %for.body.lr.ph.i, label %if.end21.i.iwl_mvm_txq_should_update.exit.thread_crit_edge

if.end21.i.iwl_mvm_txq_should_update.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_txq_should_update.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end21.i
  %add.i = sub i32 500, %65
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tid.041.i = phi i32 [ %call22.i, %for.body.lr.ph.i ], [ %call31.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx25.i = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %58, i32 0, i32 %conv350, i32 5, i32 %tid.041.i
  %70 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx25.i, align 4
  %sub.i = add i32 %add.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp26.i = icmp slt i32 %sub.i, 0
  br i1 %cmp26.i, label %if.then431, label %for.inc.i, !prof !255

for.inc.i:                                        ; preds = %for.body.i
  %add30.i = add nsw i32 %tid.041.i, 1
  %call31.i = call i32 @_find_next_bit_be(ptr noundef nonnull %queue_tid_bitmap.i, i32 noundef 9, i32 noundef %add30.i) #8
  %cmp.i622 = icmp slt i32 %call31.i, 9
  br i1 %cmp.i622, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iwl_mvm_txq_should_update.exit.thread_crit_edge

for.inc.i.iwl_mvm_txq_should_update.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_txq_should_update.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

iwl_mvm_txq_should_update.exit.thread:            ; preds = %for.inc.i.iwl_mvm_txq_should_update.exit.thread_crit_edge, %if.end21.i.iwl_mvm_txq_should_update.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %queue_tid_bitmap.i) #8
  br label %do.end438

if.then431:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %queue_tid_bitmap.i) #8
  %add_stream_wk = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %72 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %add_stream_wk) #8
  br label %do.end438

do.end438:                                        ; preds = %if.then431, %iwl_mvm_txq_should_update.exit.thread, %if.then411.do.end438_crit_edge, %if.end409.do.end438_crit_edge
  %73 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mvm, align 8
  %75 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %drv_priv.i, align 8
  %77 = lshr exact i16 %seq_number.0.shrunk, 4
  %78 = zext i16 %77 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %74, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tx_mpdu, ptr noundef nonnull @.str.65, i32 noundef %76, i32 noundef %idxprom289.pre-phi, i32 noundef %conv350, i32 noundef %78, i32 noundef %80) #8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %82 = call ptr @memset(ptr %81, i32 0, i32 40)
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call117, ptr %arrayidx.i, align 4
  %84 = ptrtoint ptr %trans.i617 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %trans.i617, align 4
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %status.i, align 4
  %88 = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end438.drop_unlock_sta_crit_edge, !prof !250

do.end438.drop_unlock_sta_crit_edge:              ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock_sta

if.end.i:                                         ; preds = %do.end438
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %85, i32 0, i32 6
  %89 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp.not.i = icmp eq i32 %90, 2
  br i1 %cmp.not.i, label %iwl_trans_tx.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b65.i = load i1, ptr @iwl_trans_tx.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i.do.end52.i_crit_edge, label %if.then17.i, !prof !250

land.rhs.i.do.end52.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

if.then17.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_trans_tx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 1150, i32 noundef 9, ptr noundef null) #8
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then17.i, %land.rhs.i.do.end52.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %85, i32 0, i32 8
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 8
  %93 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %92, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.iwl_trans_tx, i32 noundef %94) #8
  br label %drop_unlock_sta

iwl_trans_tx.exit:                                ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %85, i32 0, i32 1
  %95 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i, align 4
  %tx.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx.i, align 4
  %call57.i = call i32 %98(ptr noundef %85, ptr noundef %skb, ptr noundef nonnull %call117, i32 noundef %conv350) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool455.not = icmp eq i32 %call57.i, 0
  br i1 %tobool455.not, label %if.end457, label %iwl_trans_tx.exit.drop_unlock_sta_crit_edge

iwl_trans_tx.exit.drop_unlock_sta_crit_edge:      ; preds = %iwl_trans_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock_sta

if.end457:                                        ; preds = %iwl_trans_tx.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %tid.0)
  %cmp459 = icmp ugt i8 %tid.0, 7
  %99 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp.i625 = icmp ne i16 %99, 0
  %or.cond638 = or i1 %cmp.i625, %cmp459
  br i1 %or.cond638, label %if.end457.if.end470_crit_edge, label %if.then463

if.end457.if.end470_crit_edge:                    ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end470

if.then463:                                       ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #10
  %conv465 = add i16 %seq_number.0.shrunk, 16
  %100 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv465, ptr %arrayidx290, align 4
  br label %if.end470

if.end470:                                        ; preds = %if.then463, %if.end457.if.end470_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  %mac_id_n_color.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %101 = ptrtoint ptr %mac_id_n_color.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mac_id_n_color.i, align 8
  %and.i = and i32 %102, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i626 = icmp ugt i32 %and.i, 3
  br i1 %cmp.i626, label %if.end470.do.end489_crit_edge, label %iwl_mvm_tx_pkt_queued.exit.thread

if.end470.do.end489_crit_edge:                    ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end489

iwl_mvm_tx_pkt_queued.exit.thread:                ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %tid.0)
  %cmp473 = icmp eq i8 %tid.0, 8
  %spec.select612 = select i1 %cmp473, i32 0, i32 %idxprom289.pre-phi
  %arrayidx.i627 = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %spec.select612
  %103 = ptrtoint ptr %arrayidx.i627 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i627, align 1
  %conv.i628 = zext i8 %104 to i32
  %arrayidx2.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and.i
  %arrayidx3.i = getelementptr [4 x i32], ptr %arrayidx2.i, i32 0, i32 %conv.i628
  %105 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx3.i, align 4
  %inc.i = add i32 %106, 1
  store i32 %inc.i, ptr %arrayidx3.i, align 4
  br label %cleanup

drop_unlock_sta:                                  ; preds = %iwl_trans_tx.exit.drop_unlock_sta_crit_edge, %do.end52.i, %do.end438.drop_unlock_sta_crit_edge, %if.then217, %land.rhs206.drop_unlock_sta_crit_edge, %if.then149, %land.rhs138.drop_unlock_sta_crit_edge
  %tid.1 = phi i8 [ %tid.0, %iwl_trans_tx.exit.drop_unlock_sta_crit_edge ], [ %22, %if.then149 ], [ %22, %if.then217 ], [ %22, %land.rhs138.drop_unlock_sta_crit_edge ], [ %22, %land.rhs206.drop_unlock_sta_crit_edge ], [ %tid.0, %do.end52.i ], [ %tid.0, %do.end438.drop_unlock_sta_crit_edge ]
  %trans484 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %107 = ptrtoint ptr %trans484 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %trans484, align 4
  %dev_cmd_pool.i631 = getelementptr inbounds %struct.iwl_trans, ptr %108, i32 0, i32 28
  %109 = ptrtoint ptr %dev_cmd_pool.i631 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_cmd_pool.i631, align 4
  call void @kmem_cache_free(ptr noundef %110, ptr noundef nonnull %call117) #8
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %do.end489

do.end489:                                        ; preds = %drop_unlock_sta, %if.end470.do.end489_crit_edge, %if.end115.do.end489_crit_edge
  %tid.2 = phi i8 [ %tid.1, %drop_unlock_sta ], [ 8, %if.end115.do.end489_crit_edge ], [ %tid.0, %if.end470.do.end489_crit_edge ]
  %111 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mvm, align 8
  %113 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %drv_priv.i, align 8
  %conv492 = zext i8 %tid.2 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %112, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tx_mpdu, ptr noundef nonnull @.str.66, i32 noundef %114, i32 noundef %conv492) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end489, %iwl_mvm_tx_pkt_queued.exit.thread, %if.then407, %land.lhs.true.cleanup_crit_edge, %if.then59, %land.rhs48.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then407 ], [ -1, %do.end489 ], [ -1, %if.then ], [ -1, %if.then59 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.rhs.cleanup_crit_edge ], [ -1, %land.rhs48.cleanup_crit_edge ], [ 0, %iwl_mvm_tx_pkt_queued.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge(ptr noundef %list) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.i.i2 = icmp eq ptr %1, %list
  %tobool.not.i13 = icmp eq ptr %1, null
  %tobool.not.i4 = or i1 %cmp.i.i2, %tobool.not.i13
  br i1 %tobool.not.i4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %12, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #8
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %12, %list
  %tobool.not.i1 = icmp eq ptr %12, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i1
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @iwl_mvm_get_tx_fail_reason(i32 noundef %status) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %status to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %trunc, label %sw.epilog [
    i8 1, label %entry.return_crit_edge
    i8 64, label %sw.bb1
    i8 65, label %sw.bb2
    i8 66, label %sw.bb3
    i8 67, label %sw.bb4
    i8 68, label %sw.bb5
    i8 -127, label %sw.bb6
    i8 -126, label %sw.bb7
    i8 -125, label %sw.bb8
    i8 -124, label %sw.bb9
    i8 -123, label %sw.bb10
    i8 -122, label %sw.bb11
    i8 -121, label %sw.bb12
    i8 -120, label %sw.bb13
    i8 -119, label %sw.bb14
    i8 -118, label %sw.bb15
    i8 -117, label %sw.bb16
    i8 -116, label %sw.bb17
    i8 -115, label %sw.bb18
    i8 -114, label %sw.bb19
    i8 -113, label %sw.bb20
    i8 -112, label %sw.bb21
    i8 -111, label %sw.bb22
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.29, %sw.epilog ], [ @.str.28, %sw.bb22 ], [ @.str.27, %sw.bb21 ], [ @.str.26, %sw.bb20 ], [ @.str.25, %sw.bb19 ], [ @.str.24, %sw.bb18 ], [ @.str.23, %sw.bb17 ], [ @.str.22, %sw.bb16 ], [ @.str.21, %sw.bb15 ], [ @.str.20, %sw.bb14 ], [ @.str.19, %sw.bb13 ], [ @.str.18, %sw.bb12 ], [ @.str.17, %sw.bb11 ], [ @.str.16, %sw.bb10 ], [ @.str.15, %sw.bb9 ], [ @.str.14, %sw.bb8 ], [ @.str.13, %sw.bb7 ], [ @.str.12, %sw.bb6 ], [ @.str.11, %sw.bb5 ], [ @.str.10, %sw.bb4 ], [ @.str.9, %sw.bb3 ], [ @.str.8, %sw.bb2 ], [ @.str.7, %sw.bb1 ], [ @.str.6, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_hwrate_to_tx_rate(i32 noundef %rate_n_flags, i32 noundef %band, ptr nocapture noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and)
  %cmp = icmp eq i32 %and, 512
  %and1 = lshr i32 %rate_n_flags, 1
  %shr = and i32 %and1, 8
  %and2 = and i32 %rate_n_flags, 7
  %or = or i32 %shr, %and2
  %and3 = and i32 %rate_n_flags, 15
  %cond = select i1 %cmp, i32 %or, i32 %and3
  %and4 = lshr i32 %rate_n_flags, 11
  %0 = and i32 %and4, 7
  %switch.tableidx = add nsw i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 3
  br i1 %1, label %switch.lookup, label %entry.iwl_mvm_get_hwrate_chan_width.exit_crit_edge

entry.iwl_mvm_get_hwrate_chan_width.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_get_hwrate_chan_width.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.iwl_mvm_hwrate_to_tx_rate, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %iwl_mvm_get_hwrate_chan_width.exit

iwl_mvm_get_hwrate_chan_width.exit:               ; preds = %switch.lookup, %entry.iwl_mvm_get_hwrate_chan_width.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %entry.iwl_mvm_get_hwrate_chan_width.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %r, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %bf.set = or i16 %bf.load, %retval.0.i
  %and9 = and i32 %rate_n_flags, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %iwl_mvm_get_hwrate_chan_width.exit.if.end_crit_edge, label %if.then

iwl_mvm_get_hwrate_chan_width.exit.if.end_crit_edge: ; preds = %iwl_mvm_get_hwrate_chan_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %iwl_mvm_get_hwrate_chan_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bf.load.masked = and i16 %bf.load, 1919
  %bf.clear8 = and i16 %bf.load, -2048
  %bf.value = or i16 %retval.0.i, %bf.load.masked
  %4 = or i16 %bf.value, %bf.clear8
  %bf.set19 = or i16 %4, 128
  br label %if.end

if.end:                                           ; preds = %if.then, %iwl_mvm_get_hwrate_chan_width.exit.if.end_crit_edge
  %storemerge = phi i16 [ %bf.set19, %if.then ], [ %bf.set, %iwl_mvm_get_hwrate_chan_width.exit.if.end_crit_edge ]
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %storemerge, ptr %flags, align 1
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set32 = or i16 %storemerge, 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %bf.set32, ptr %flags, align 1
  %conv33 = trunc i32 %cond to i8
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv33, ptr %r, align 1
  br label %if.end62

if.else:                                          ; preds = %if.end
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %and, label %if.else56 [
    i32 768, label %if.then36
    i32 1024, label %if.then54
  ]

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv37 = trunc i32 %cond to i8
  %9 = trunc i32 %rate_n_flags to i8
  %sub.tr.i = and i8 %9, 16
  %conv56.i = or i8 %sub.tr.i, %conv37
  %10 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv56.i, ptr %r, align 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %bf.load42 = load i16, ptr %flags, align 1
  %bf.set50 = or i16 %bf.load42, 256
  store i16 %bf.set50, ptr %flags, align 1
  br label %if.end62

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %r, align 1
  br label %if.end62

if.else56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 @iwl_mvm_legacy_hw_idx_to_mac80211_idx(i32 noundef %rate_n_flags, i32 noundef %band) #8
  %conv58 = trunc i32 %call57 to i8
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv58, ptr %r, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.else56, %if.then54, %if.then36, %if.then22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_legacy_hw_idx_to_mac80211_idx(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_hwrate_to_tx_rate_v1(i32 noundef %rate_n_flags, i32 noundef %band, ptr nocapture noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, ptr %flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = lshr i32 %rate_n_flags, 11
  %1 = and i32 %and4, 3
  %switch.tableidx = add nsw i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %if.end.iwl_mvm_get_hwrate_chan_width.exit_crit_edge

if.end.iwl_mvm_get_hwrate_chan_width.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_get_hwrate_chan_width.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.iwl_mvm_hwrate_to_tx_rate_v1, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %iwl_mvm_get_hwrate_chan_width.exit

iwl_mvm_get_hwrate_chan_width.exit:               ; preds = %switch.lookup, %if.end.iwl_mvm_get_hwrate_chan_width.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %if.end.iwl_mvm_get_hwrate_chan_width.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %flags5 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %r, i32 0, i32 1
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load6 = load i16, ptr %flags5, align 1
  %bf.set14 = or i16 %bf.load6, %retval.0.i
  %and15 = and i32 %rate_n_flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %iwl_mvm_get_hwrate_chan_width.exit.if.end28_crit_edge, label %if.then17

iwl_mvm_get_hwrate_chan_width.exit.if.end28_crit_edge: ; preds = %iwl_mvm_get_hwrate_chan_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then17:                                        ; preds = %iwl_mvm_get_hwrate_chan_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bf.load6.masked = and i16 %bf.load6, 1919
  %bf.clear13 = and i16 %bf.load6, -2048
  %bf.value12 = or i16 %retval.0.i, %bf.load6.masked
  %5 = or i16 %bf.value12, %bf.clear13
  %bf.set27 = or i16 %5, 128
  br label %if.end28

if.end28:                                         ; preds = %if.then17, %iwl_mvm_get_hwrate_chan_width.exit.if.end28_crit_edge
  %storemerge = phi i16 [ %bf.set27, %if.then17 ], [ %bf.set14, %iwl_mvm_get_hwrate_chan_width.exit.if.end28_crit_edge ]
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %storemerge, ptr %flags5, align 1
  %and29 = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set41 = or i16 %storemerge, 8
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %bf.set41, ptr %flags5, align 1
  %8 = trunc i32 %rate_n_flags to i8
  %conv43 = and i8 %8, 63
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv43, ptr %r, align 1
  br label %if.end66

if.else:                                          ; preds = %if.end28
  %and44 = and i32 %rate_n_flags, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else61, label %if.then46

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = trunc i32 %rate_n_flags to i8
  %conv56.i = and i8 %10, 63
  %11 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv56.i, ptr %r, align 1
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %bf.load52 = load i16, ptr %flags5, align 1
  %bf.set60 = or i16 %bf.load52, 256
  store i16 %bf.set60, ptr %flags5, align 1
  br label %if.end66

if.else61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 noundef %rate_n_flags, i32 noundef %band) #8
  %conv63 = trunc i32 %call62 to i8
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv63, ptr %r, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else61, %if.then46, %if.then31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_tx_cmd(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %skbs.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #8
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sequence1.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %sequence1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %sequence1.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %11 = lshr i32 %conv.i, 8
  %and.i = and i32 %11, 31
  %ra_tid.i = getelementptr inbounds %struct.iwl_mvm_tx_resp, ptr %data, i32 0, i32 17
  %12 = ptrtoint ptr %ra_tid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ra_tid.i, align 1
  %conv2.i = zext i8 %13 to i32
  %14 = lshr i32 %conv2.i, 4
  %and6.i = and i32 %conv2.i, 15
  %trans.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %15 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans.i.i.i, align 4
  %trans_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %trans_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans_cfg.i.i.i, align 4
  %use_tfh.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %use_tfh.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i.i = load i16, ptr %use_tfh.i.i.i, align 4
  %20 = and i16 %bf.load.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.i.not.i.i = icmp eq i16 %20, 0
  %status.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6
  %status1.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5, i32 1
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr %status1.i.i, ptr %status.i.i
  %21 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %retval.0.i.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  %conv8.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i32, ptr %retval.0.i.i, i32 1
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %26 = and i32 %25, -15794176
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %conv10.i = trunc i32 %27 to i16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %skbs.i) #8
  %28 = getelementptr inbounds i8, ptr %skbs.i, i32 12
  %29 = call ptr @memset(ptr %28, i32 255, i32 44)
  %30 = ptrtoint ptr %skbs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skbs.i, ptr %skbs.i, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.79, ptr %skbs.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %skbs.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skbs.i, i32 0, i32 1
  %32 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %qlen.i.i, align 4
  %33 = ptrtoint ptr %trans_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trans_cfg.i.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %36 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.i.not.i = icmp eq i16 %36, 0
  br i1 %tobool.i.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %status1.i.i, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38) #8
  %conv12.i = zext i16 %39 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %txq_id.0.i = phi i32 [ %conv12.i, %if.then.i ], [ %and.i, %if.then.if.end.i_crit_edge ]
  %seq_ctl13.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1
  %40 = ptrtoint ptr %seq_ctl13.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %seq_ctl13.i, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41) #8
  %state.i.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 6
  %43 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.not.i.i = icmp eq i32 %44, 2
  br i1 %cmp.not.i.i, label %if.end44.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b51.i.i = load i1, ptr @iwl_trans_reclaim.__already_done, align 1
  br i1 %.b51.i.i, label %land.rhs.i.i.do.end40.i.i_crit_edge, label %if.then.i370.i, !prof !250

land.rhs.i.i.do.end40.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

if.then.i370.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_trans_reclaim.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 1161, i32 noundef 9, ptr noundef null) #8
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.then.i370.i, %land.rhs.i.i.do.end40.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 8
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 8
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.iwl_trans_reclaim, i32 noundef %48) #8
  br label %iwl_trans_reclaim.exit.i

if.end44.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 1
  %49 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i, align 4
  %reclaim.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %reclaim.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reclaim.i.i, align 4
  call void %52(ptr noundef %16, i32 noundef %txq_id.0.i, i32 noundef %27, ptr noundef nonnull %skbs.i) #8
  br label %iwl_trans_reclaim.exit.i

iwl_trans_reclaim.exit.i:                         ; preds = %if.end44.i.i, %do.end40.i.i
  %53 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skbs.i, align 4
  %cmp.i417.i = icmp eq ptr %54, %skbs.i
  br i1 %cmp.i417.i, label %iwl_trans_reclaim.exit.i.while.end.i_crit_edge, label %while.body.lr.ph.i

iwl_trans_reclaim.exit.i.while.end.i_crit_edge:   ; preds = %iwl_trans_reclaim.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %iwl_trans_reclaim.exit.i
  %and21.i = and i32 %conv8.i, 255
  %trunc.i = trunc i16 %23 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and21.i)
  %cmp.not.i = icmp eq i32 %and21.i, 1
  %mgmt_last_antenna_idx.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 66
  %nvm_data.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %fwrt.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %fw.i.i379.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %dev.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %conf.i.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %failure_frame.i = getelementptr inbounds %struct.iwl_mvm_tx_resp, ptr %data, i32 0, i32 3
  %initial_rate.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %22)
  %cmp72.not.i = icmp eq i16 %22, 256
  %wireless_media_time.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %tlc_info.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %reduced_tpc.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1, i32 2
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end89.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %55 = phi ptr [ %54, %while.body.lr.ph.i ], [ %235, %if.end89.i.while.body.i_crit_edge ]
  %is_ndp.0.off0420.i = phi i1 [ false, %while.body.lr.ph.i ], [ %is_ndp.2.off0.i, %if.end89.i.while.body.i_crit_edge ]
  %seq_ctl.0419.i = phi i16 [ %42, %while.body.lr.ph.i ], [ %seq_ctl.1413.i, %if.end89.i.while.body.i_crit_edge ]
  %skb_freed.0418.i = phi i8 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end89.i.while.body.i_crit_edge ]
  %tobool.not.i372.i = icmp eq ptr %55, null
  br i1 %tobool.not.i372.i, label %while.body.i.__skb_dequeue.exit.i_crit_edge, label %if.then.i373.i

while.body.i.__skb_dequeue.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit.i

if.then.i373.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %55, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %61, ptr %prev17.i.i.i, align 4
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %59, ptr %61, align 8
  br label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then.i373.i, %while.body.i.__skb_dequeue.exit.i_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3
  %data19.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 19
  %64 = ptrtoint ptr %data19.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data19.i, align 4
  %inc.i = add i8 %skb_freed.0418.i, 1
  %66 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %trans.i.i.i, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3, i32 8
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %55, i32 0, i32 3, i32 12
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %dev_cmd_pool.i.i = getelementptr inbounds %struct.iwl_trans, ptr %67, i32 0, i32 28
  %71 = ptrtoint ptr %dev_cmd_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_cmd_pool.i.i, align 4
  call void @kmem_cache_free(ptr noundef %72, ptr noundef %70) #8
  %73 = call ptr @memset(ptr %68, i32 0, i32 40)
  %74 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %trunc.i, label %__skb_dequeue.exit.i.sw.epilog.i_crit_edge [
    i8 1, label %__skb_dequeue.exit.i.sw.bb.i_crit_edge
    i8 2, label %__skb_dequeue.exit.i.sw.bb.i_crit_edge55
    i8 -114, label %__skb_dequeue.exit.i.sw.bb22.i_crit_edge
    i8 -123, label %__skb_dequeue.exit.i.sw.bb22.i_crit_edge56
    i8 -120, label %do.end.i
  ]

__skb_dequeue.exit.i.sw.bb22.i_crit_edge56:       ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22.i

__skb_dequeue.exit.i.sw.bb22.i_crit_edge:         ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22.i

__skb_dequeue.exit.i.sw.bb.i_crit_edge55:         ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

__skb_dequeue.exit.i.sw.bb.i_crit_edge:           ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

__skb_dequeue.exit.i.sw.epilog.i_crit_edge:       ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %__skb_dequeue.exit.i.sw.bb.i_crit_edge, %__skb_dequeue.exit.i.sw.bb.i_crit_edge55
  %75 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cb.i.i, align 8
  %or.i = or i32 %76, 512
  store i32 %or.i, ptr %cb.i.i, align 8
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %__skb_dequeue.exit.i.sw.bb22.i_crit_edge, %__skb_dequeue.exit.i.sw.bb22.i_crit_edge56
  br label %sw.epilog.i

do.end.i:                                         ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mvm, align 8
  %79 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %65, align 2
  %81 = call i16 @llvm.bswap.i16(i16 %80) #8
  %conv25.i = zext i16 %81 to i32
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %78, i32 noundef 3, ptr noundef nonnull @.str.67, i32 noundef %conv8.i, i32 noundef %conv25.i) #8
  %82 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cb.i.i, align 8
  %or29.i = or i32 %83, 256
  store i32 %or29.i, ptr %cb.i.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb22.i, %sw.bb.i, %__skb_dequeue.exit.i.sw.epilog.i_crit_edge
  %flushed.0.off0.i = phi i1 [ false, %__skb_dequeue.exit.i.sw.epilog.i_crit_edge ], [ false, %do.end.i ], [ true, %sw.bb22.i ], [ false, %sw.bb.i ]
  br i1 %cmp.not.i, label %sw.epilog.i.if.end36.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end36.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %84 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %65, align 2
  %86 = and i16 %85, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.i374.i = icmp eq i16 %86, 0
  br i1 %cmp.i374.i, label %if.then35.i, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  %87 = ptrtoint ptr %nvm_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %nvm_data.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i.i, label %if.then35.i.cond.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then35.i.cond.false.i.i.i_crit_edge:           ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then35.i
  %valid_tx_ant.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %88, i32 0, i32 20
  %89 = ptrtoint ptr %valid_tx_ant.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %valid_tx_ant.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool2.not.i.i.i = icmp eq i8 %90, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fw.i.i.i, align 8
  %valid_tx_ant3.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %valid_tx_ant3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %valid_tx_ant3.i.i.i, align 4
  %and.i.i.i = and i8 %94, %90
  br label %iwl_mvm_toggle_tx_ant.exit.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, %if.then35.i.cond.false.i.i.i_crit_edge
  %95 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fw.i.i.i, align 8
  %valid_tx_ant9.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %96, i32 0, i32 15
  %97 = ptrtoint ptr %valid_tx_ant9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %valid_tx_ant9.i.i.i, align 4
  br label %iwl_mvm_toggle_tx_ant.exit.i

iwl_mvm_toggle_tx_ant.exit.i:                     ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i8 [ %and.i.i.i, %cond.true.i.i.i ], [ %98, %cond.false.i.i.i ]
  %99 = ptrtoint ptr %mgmt_last_antenna_idx.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %mgmt_last_antenna_idx.i, align 1
  %call1.i375.i = call zeroext i8 @iwl_mvm_next_antenna(ptr noundef %mvm, i8 noundef zeroext %cond.i.i.i, i8 noundef zeroext %100) #8
  %101 = ptrtoint ptr %mgmt_last_antenna_idx.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %call1.i375.i, ptr %mgmt_last_antenna_idx.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %iwl_mvm_toggle_tx_ant.exit.i, %land.lhs.true.i.if.end36.i_crit_edge, %sw.epilog.i.if.end36.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %inc.i)
  %cmp38.i = icmp ugt i8 %inc.i, 1
  br i1 %cmp38.i, label %if.then40.i, label %if.end36.i.if.end43.i_crit_edge

if.end36.i.if.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cb.i.i, align 8
  %or42.i = or i32 %103, 512
  store i32 %or42.i, ptr %cb.i.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.end36.i.if.end43.i_crit_edge
  br i1 %cmp.not.i, label %do.end5.i.i, label %if.then.i378.i

if.then.i378.i:                                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %65, align 2
  %106 = and i16 %105, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %106)
  %cmp.i.i377.i = icmp eq i16 %106, -12288
  %spec.select.i.i = select i1 %cmp.i.i377.i, i32 21, i32 20
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt.i.i, i32 noundef %spec.select.i.i, ptr noundef null, i1 noundef zeroext false) #8
  br label %iwl_mvm_tx_status_check_trigger.exit.i

do.end5.i.i:                                      ; preds = %if.end43.i
  %107 = ptrtoint ptr %fwrt.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fwrt.i.i, align 8
  %internal_ini_cfg.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %108, i32 0, i32 32, i32 10
  %109 = ptrtoint ptr %internal_ini_cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %internal_ini_cfg.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.not.i.i.i.i = icmp eq i32 %110, 0
  br i1 %cmp.not.i.i.i.i, label %iwl_trans_dbg_ini_valid.exit.i.i.i, label %do.end5.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge

do.end5.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

iwl_trans_dbg_ini_valid.exit.i.i.i:               ; preds = %do.end5.i.i
  %external_ini_cfg.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %108, i32 0, i32 32, i32 11
  %111 = ptrtoint ptr %external_ini_cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %external_ini_cfg.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp2.i.not.i.i.i = icmp eq i32 %112, 0
  br i1 %cmp2.i.not.i.i.i, label %if.end.i.i.i, label %iwl_trans_dbg_ini_valid.exit.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge

iwl_trans_dbg_ini_valid.exit.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

if.end.i.i.i:                                     ; preds = %iwl_trans_dbg_ini_valid.exit.i.i.i
  %113 = ptrtoint ptr %fw.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fw.i.i379.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %114, i32 0, i32 20, i32 3, i32 14
  %115 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i380.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i380.i, label %if.end.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %116, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #8
  %trig_dis_ms.i.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 0, i32 7
  %120 = ptrtoint ptr %trig_dis_ms.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %trig_dis_ms.i.i.i.i, align 1
  %122 = call i16 @llvm.bswap.i16(i16 %121) #8
  %conv.i.i.i.i = zext i16 %122 to i32
  %mul.i.i.i.i = mul nuw nsw i32 %conv.i.i.i.i, 1000
  %call3.i.i.i.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i.i.i) #8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %119
  %123 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i.i.i.i.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end4.i.i.i.if.end7.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end4.i.i.i.if.end7.i.i.i.i_crit_edge:          ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %126 = add i32 %124, %call3.i.i.i.i.i.i
  %sub.i.i.i.i.i = sub i32 %125, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %sub.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end7.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end7.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i.i.i.i, align 8
  %129 = ptrtoint ptr %116 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %116, align 1
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %128, ptr noundef nonnull @.str.42, i32 noundef %130) #8
  br label %iwl_mvm_tx_status_check_trigger.exit.i

if.end7.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.i.if.end7.i.i.i.i_crit_edge, %if.end4.i.i.i.if.end7.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %131 = load volatile i32, ptr @jiffies, align 128
  %132 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx.i.i.i.i.i, align 4
  %mode.i.i.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 0, i32 4
  %133 = ptrtoint ptr %mode.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mode.i.i.i.i.i, align 1
  %135 = and i8 %134, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i1.i.i.i.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i1.i.i.i.i, label %if.end7.i.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

if.end7.i.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end7.i.i.i.i
  %136 = ptrtoint ptr %conf.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %conf.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %137)
  %cmp.i2.i.i.i.i = icmp eq i8 %137, -1
  br i1 %cmp.i2.i.i.i.i, label %land.rhs.i.i.i.i.i.if.end9.i.i_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.i.i

land.rhs.i.i.i.i.i.if.end9.i.i_crit_edge:         ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

iwl_fw_dbg_trigger_check_stop.exit.i.i.i:         ; preds = %land.rhs.i.i.i.i.i
  %conv1.i.i.i.i.i = zext i8 %137 to i32
  %shl.i.i.i.i.i = shl nuw i32 1, %conv1.i.i.i.i.i
  %stop_conf_ids.i.i.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 0, i32 2
  %138 = ptrtoint ptr %stop_conf_ids.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %stop_conf_ids.i.i.i.i.i, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139) #8
  %and6.i.i.i.i.i = and i32 %140, %shl.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i.i)
  %tobool7.i.i.not.i.i.i = icmp eq i32 %and6.i.i.i.i.i, 0
  br i1 %tobool7.i.i.not.i.i.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.i.i.if.end9.i.i_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.i.i.if.end9.i.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

iwl_fw_dbg_trigger_check_stop.exit.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

if.end9.i.i:                                      ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i.i.if.end9.i.i_crit_edge, %land.rhs.i.i.i.i.i.if.end9.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 0, i32 10
  %141 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %data.i.i, align 1
  %143 = zext i8 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %142, label %for.inc.i.i [
    i8 0, label %if.end9.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %if.end9.i.i.if.end22.i.i_crit_edge
  ]

if.end9.i.i.if.end22.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.end9.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

if.end22.i.i:                                     ; preds = %for.inc.14.i.i.if.end22.i.i_crit_edge, %for.inc.13.i.i.if.end22.i.i_crit_edge, %for.inc.12.i.i.if.end22.i.i_crit_edge, %for.inc.11.i.i.if.end22.i.i_crit_edge, %for.inc.10.i.i.if.end22.i.i_crit_edge, %for.inc.9.i.i.if.end22.i.i_crit_edge, %for.inc.8.i.i.if.end22.i.i_crit_edge, %for.inc.7.i.i.if.end22.i.i_crit_edge, %for.inc.6.i.i.if.end22.i.i_crit_edge, %for.inc.5.i.i.if.end22.i.i_crit_edge, %for.inc.4.i.i.if.end22.i.i_crit_edge, %for.inc.3.i.i.if.end22.i.i_crit_edge, %for.inc.2.i.i.if.end22.i.i_crit_edge, %for.inc.1.i.i.if.end22.i.i_crit_edge, %for.inc.i.i.if.end22.i.i_crit_edge, %if.end9.i.i.if.end22.i.i_crit_edge
  %call25.i.i = call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt.i.i, ptr noundef nonnull %116, ptr noundef nonnull @.str.72, i32 noundef 1) #8
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.i.i:                                      ; preds = %if.end9.i.i
  %arrayidx.1.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 1, i32 1
  %144 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.1.i.i, align 1
  %146 = zext i8 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %145, label %for.inc.1.i.i [
    i8 0, label %for.inc.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.i.i.if.end22.i.i_crit_edge
  ]

for.inc.i.i.if.end22.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 1, i32 2
  %147 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.2.i.i, align 1
  %149 = zext i8 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %148, label %for.inc.2.i.i [
    i8 0, label %for.inc.1.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.1.i.i.if.end22.i.i_crit_edge
  ]

for.inc.1.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.1.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 1, i32 3
  %150 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.3.i.i, align 1
  %152 = zext i8 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %151, label %for.inc.3.i.i [
    i8 0, label %for.inc.2.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.2.i.i.if.end22.i.i_crit_edge
  ]

for.inc.2.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.2.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 1, i32 4
  %153 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.4.i.i, align 1
  %155 = zext i8 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %154, label %for.inc.4.i.i [
    i8 0, label %for.inc.3.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.3.i.i.if.end22.i.i_crit_edge
  ]

for.inc.3.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.3.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx.5.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 1, i32 7
  %156 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.5.i.i, align 1
  %158 = zext i8 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %157, label %for.inc.5.i.i [
    i8 0, label %for.inc.4.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.4.i.i.if.end22.i.i_crit_edge
  ]

for.inc.4.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.4.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx.6.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 1, i32 9, i32 1
  %159 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx.6.i.i, align 1
  %161 = zext i8 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %160, label %for.inc.6.i.i [
    i8 0, label %for.inc.5.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.5.i.i.if.end22.i.i_crit_edge
  ]

for.inc.5.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.5.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx.7.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 2
  %162 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx.7.i.i, align 1
  %164 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %163, label %for.inc.7.i.i [
    i8 0, label %for.inc.6.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.6.i.i.if.end22.i.i_crit_edge
  ]

for.inc.6.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.6.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %arrayidx.8.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 2, i32 1
  %165 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx.8.i.i, align 1
  %167 = zext i8 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %166, label %for.inc.8.i.i [
    i8 0, label %for.inc.7.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.7.i.i.if.end22.i.i_crit_edge
  ]

for.inc.7.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.7.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  %arrayidx.9.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 2, i32 2
  %168 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.9.i.i, align 1
  %170 = zext i8 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %169, label %for.inc.9.i.i [
    i8 0, label %for.inc.8.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.8.i.i.if.end22.i.i_crit_edge
  ]

for.inc.8.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.8.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.9.i.i:                                    ; preds = %for.inc.8.i.i
  %arrayidx.10.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 2, i32 3
  %171 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.10.i.i, align 1
  %173 = zext i8 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %172, label %for.inc.10.i.i [
    i8 0, label %for.inc.9.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.9.i.i.if.end22.i.i_crit_edge
  ]

for.inc.9.i.i.if.end22.i.i_crit_edge:             ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.9.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.10.i.i:                                   ; preds = %for.inc.9.i.i
  %arrayidx.11.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 2, i32 4
  %174 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.11.i.i, align 1
  %176 = zext i8 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %175, label %for.inc.11.i.i [
    i8 0, label %for.inc.10.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.10.i.i.if.end22.i.i_crit_edge
  ]

for.inc.10.i.i.if.end22.i.i_crit_edge:            ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.10.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.11.i.i:                                   ; preds = %for.inc.10.i.i
  %arrayidx.12.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 2, i32 7
  %177 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx.12.i.i, align 1
  %179 = zext i8 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %178, label %for.inc.12.i.i [
    i8 0, label %for.inc.11.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.11.i.i.if.end22.i.i_crit_edge
  ]

for.inc.11.i.i.if.end22.i.i_crit_edge:            ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.11.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.12.i.i:                                   ; preds = %for.inc.11.i.i
  %arrayidx.13.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 2, i32 9, i32 1
  %180 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.13.i.i, align 1
  %182 = zext i8 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %181, label %for.inc.13.i.i [
    i8 0, label %for.inc.12.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.12.i.i.if.end22.i.i_crit_edge
  ]

for.inc.12.i.i.if.end22.i.i_crit_edge:            ; preds = %for.inc.12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.12.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.13.i.i:                                   ; preds = %for.inc.12.i.i
  %arrayidx.14.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 3
  %183 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.14.i.i, align 1
  %185 = zext i8 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %184, label %for.inc.14.i.i [
    i8 0, label %for.inc.13.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge
    i8 1, label %for.inc.13.i.i.if.end22.i.i_crit_edge
  ]

for.inc.13.i.i.if.end22.i.i_crit_edge:            ; preds = %for.inc.13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.inc.13.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.14.i.i:                                   ; preds = %for.inc.13.i.i
  %arrayidx.15.i.i = getelementptr %struct.iwl_fw_dbg_trigger_tlv, ptr %116, i32 3, i32 1
  %186 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx.15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %187)
  %cond.i.i = icmp eq i8 %187, 1
  br i1 %cond.i.i, label %for.inc.14.i.i.if.end22.i.i_crit_edge, label %for.inc.14.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge

for.inc.14.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge: ; preds = %for.inc.14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_status_check_trigger.exit.i

for.inc.14.i.i.if.end22.i.i_crit_edge:            ; preds = %for.inc.14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

iwl_mvm_tx_status_check_trigger.exit.i:           ; preds = %for.inc.14.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.13.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.12.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.11.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.10.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.9.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.8.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.7.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.6.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.5.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.4.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.3.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.2.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.1.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %for.inc.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %if.end22.i.i, %if.end9.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %if.end7.i.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %do.end.i.i.i.i, %if.end.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %do.end5.i.i.iwl_mvm_tx_status_check_trigger.exit.i_crit_edge, %if.then.i378.i
  %188 = ptrtoint ptr %failure_frame.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %failure_frame.i, align 1
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3, i32 9
  %190 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %191 = add i8 %189, 1
  %bf.value.i = zext i8 %191 to i16
  %bf.shl.i = shl i16 %bf.value.i, 11
  %bf.clear.i = and i16 %bf.load.i, 2047
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %count.i, align 1
  %192 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %fw.i.i.i, align 8
  %194 = ptrtoint ptr %initial_rate.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %initial_rate.i, align 1
  %196 = call i32 @llvm.bswap.i32(i32 %195) #8
  call fastcc void @iwl_mvm_hwrate_to_tx_status(ptr noundef %193, i32 noundef %196, ptr noundef %cb.i.i) #8
  %197 = ptrtoint ptr %initial_rate.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %initial_rate.i, align 1
  %199 = call i32 @llvm.bswap.i32(i32 %198) #8
  %200 = inttoptr i32 %199 to ptr
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3, i32 32
  %arrayidx49.i = getelementptr %struct.sk_buff, ptr %55, i32 0, i32 3, i32 36
  %201 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %200, ptr %arrayidx49.i, align 4
  %202 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cb.i.i, align 8
  %204 = and i32 %203, 832
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %204)
  %205 = icmp ne i32 %204, 64
  %brmerge.i = or i1 %flushed.0.off0.i, %205
  br i1 %brmerge.i, label %iwl_mvm_tx_status_check_trigger.exit.i.if.end66.i_crit_edge, label %if.then63.i

iwl_mvm_tx_status_check_trigger.exit.i.if.end66.i_crit_edge: ; preds = %iwl_mvm_tx_status_check_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then63.i:                                      ; preds = %iwl_mvm_tx_status_check_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or65.i = or i32 %203, 2048
  %206 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or65.i, ptr %cb.i.i, align 8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then63.i, %iwl_mvm_tx_status_check_trigger.exit.i.if.end66.i_crit_edge
  %207 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cb.i.i, align 8
  %and68.i = and i32 %208, -65
  store i32 %and68.i, ptr %cb.i.i, align 8
  %209 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %65, align 2
  %211 = and i16 %210, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %211)
  %cmp.i381.i = icmp eq i16 %211, -31744
  br i1 %cmp.i381.i, label %if.end66.i.if.then82.i_crit_edge, label %if.else.i

if.end66.i.if.then82.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82.i

if.else.i:                                        ; preds = %if.end66.i
  br i1 %cmp72.not.i, label %if.else.i.if.end76.i_crit_edge, label %if.then74.i

if.else.i.if.end76.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.then74.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %65, i32 0, i32 5
  %212 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %seq_ctrl.i, align 2
  %214 = call i16 @llvm.bswap.i16(i16 %213) #8
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then74.i, %if.else.i.if.end76.i_crit_edge
  %seq_ctl.1.i = phi i16 [ %214, %if.then74.i ], [ %seq_ctl.0419.i, %if.else.i.if.end76.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %seq_ctl.1.i)
  %tobool77.not.i = icmp eq i16 %seq_ctl.1.i, 0
  br i1 %tobool77.not.i, label %if.end76.i.if.then82.i_crit_edge, label %if.end76.i.if.end89.i_crit_edge, !prof !251

if.end76.i.if.end89.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.end76.i.if.then82.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82.i

if.then82.i:                                      ; preds = %if.end76.i.if.then82.i_crit_edge, %if.end66.i.if.then82.i_crit_edge
  %215 = ptrtoint ptr %data19.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %data19.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %216, align 2
  %219 = and i16 %218, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %219)
  %cmp.i382.i = icmp eq i16 %219, -14336
  %spec.select.i = select i1 %cmp.i382.i, i1 true, i1 %is_ndp.0.off0420.i
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then82.i, %if.end76.i.if.end89.i_crit_edge
  %seq_ctl.1413.i = phi i16 [ 0, %if.then82.i ], [ %seq_ctl.1.i, %if.end76.i.if.end89.i_crit_edge ]
  %is_ndp.2.off0.i = phi i1 [ %spec.select.i, %if.then82.i ], [ %is_ndp.0.off0420.i, %if.end76.i.if.end89.i_crit_edge ]
  %220 = ptrtoint ptr %wireless_media_time.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %221 = load i16, ptr %wireless_media_time.i, align 1
  %222 = call i16 @llvm.bswap.i16(i16 %221) #8
  %tx_time.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3, i32 28
  %223 = ptrtoint ptr %tx_time.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %tx_time.i, align 4
  %224 = ptrtoint ptr %tlc_info.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %tlc_info.i, align 1
  %226 = lshr i8 %225, 4
  %227 = and i8 %226, 7
  %228 = ptrtoint ptr %reduced_tpc.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %reduced_tpc.i, align 1
  %conv97.i = zext i8 %229 to i32
  %conv98.i = zext i8 %227 to i32
  %shl.i = shl nuw nsw i32 %conv98.i, 8
  %or99.i = or i32 %shl.i, %conv97.i
  %230 = inttoptr i32 %or99.i to ptr
  %231 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %230, ptr %status_driver_data.i, align 8
  %232 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_tx_status(ptr noundef %233, ptr noundef %55) #8
  %234 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %skbs.i, align 4
  %cmp.i.i = icmp eq ptr %235, %skbs.i
  br i1 %cmp.i.i, label %if.end89.i.while.end.i_crit_edge, label %if.end89.i.while.body.i_crit_edge

if.end89.i.while.body.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end89.i.while.end.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end89.i.while.end.i_crit_edge, %iwl_trans_reclaim.exit.i.while.end.i_crit_edge
  %seq_ctl.0.lcssa.i = phi i16 [ %42, %iwl_trans_reclaim.exit.i.while.end.i_crit_edge ], [ %seq_ctl.1413.i, %if.end89.i.while.end.i_crit_edge ]
  %is_ndp.0.off0.lcssa.i = phi i1 [ false, %iwl_trans_reclaim.exit.i.while.end.i_crit_edge ], [ %is_ndp.2.off0.i, %if.end89.i.while.end.i_crit_edge ]
  %236 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mvm, align 8
  %call107.i = call ptr @iwl_mvm_get_tx_fail_reason(i32 noundef %conv8.i) #8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %237, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_tx_cmd_single, ptr noundef nonnull @.str.68, i32 noundef %txq_id.0.i, ptr noundef nonnull %call107.i, i32 noundef %conv8.i) #8
  %238 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mvm, align 8
  %initial_rate115.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %240 = ptrtoint ptr %initial_rate115.i to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %initial_rate115.i, align 1
  %242 = call i32 @llvm.bswap.i32(i32 %241) #8
  %failure_frame116.i = getelementptr inbounds %struct.iwl_mvm_tx_resp, ptr %data, i32 0, i32 3
  %243 = ptrtoint ptr %failure_frame116.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %failure_frame116.i, align 1
  %conv117.i = zext i8 %244 to i32
  %and119.i = and i32 %conv.i, 255
  %conv122.i = zext i16 %seq_ctl.0.lcssa.i to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %239, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_tx_cmd_single, ptr noundef nonnull @.str.69, i32 noundef %242, i32 noundef %conv117.i, i32 noundef %and119.i, i32 noundef %27, i32 noundef %27, i32 noundef %conv122.i) #8
  %245 = call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i.i = and i32 %245, -16384
  %246 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %248, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %while.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

while.end.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %while.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 696, ptr noundef nonnull @.str.89) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %while.end.i.rcu_read_lock.exit.i_crit_edge
  %arrayidx128.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %14
  %249 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile ptr, ptr %arrayidx128.i, align 4
  %call130.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %tobool131.not.i = icmp eq i32 %call130.i, 0
  br i1 %tobool131.not.i, label %land.lhs.true132.i, label %rcu_read_lock.exit.i.do.end140.i_crit_edge

rcu_read_lock.exit.i.do.end140.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end140.i

land.lhs.true132.i:                               ; preds = %rcu_read_lock.exit.i
  %call133.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.not.i, label %land.lhs.true132.i.do.end140.i_crit_edge, label %land.lhs.true135.i

land.lhs.true132.i.do.end140.i_crit_edge:         ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end140.i

land.lhs.true135.i:                               ; preds = %land.lhs.true132.i
  %.b364.i = load i1, ptr @iwl_mvm_rx_tx_cmd_single.__warned, align 1
  br i1 %.b364.i, label %land.lhs.true135.i.do.end140.i_crit_edge, label %if.then137.i

land.lhs.true135.i.do.end140.i_crit_edge:         ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end140.i

if.then137.i:                                     ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_tx_cmd_single.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1660, ptr noundef nonnull @.str.51) #8
  br label %do.end140.i

do.end140.i:                                      ; preds = %if.then137.i, %land.lhs.true135.i.do.end140.i_crit_edge, %land.lhs.true132.i.do.end140.i_crit_edge, %rcu_read_lock.exit.i.do.end140.i_crit_edge
  %tobool142.not.i = icmp eq ptr %250, null
  br i1 %tobool142.not.i, label %land.rhs.i, label %if.end196.critedge.i

land.rhs.i:                                       ; preds = %do.end140.i
  %.b359363.i = load i1, ptr @iwl_mvm_rx_tx_cmd_single.__already_done, align 1
  br i1 %.b359363.i, label %land.rhs.i.out.i_crit_edge, label %if.then160.i, !prof !250

land.rhs.i.out.i_crit_edge:                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then160.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_tx_cmd_single.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1665, i32 noundef 9, ptr noundef null) #8
  br label %out.i

if.end196.critedge.i:                             ; preds = %do.end140.i
  %cmp.i383.i = icmp ugt ptr %250, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i383.i, label %if.end196.critedge.i.out.i_crit_edge, label %if.then198.i

if.end196.critedge.i.out.i_crit_edge:             ; preds = %if.end196.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then198.i:                                     ; preds = %if.end196.critedge.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %250, i32 0, i32 29
  %wireless_media_time200.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %251 = ptrtoint ptr %wireless_media_time200.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 2)
  %252 = load i16, ptr %wireless_media_time200.i, align 1
  %253 = call i16 @llvm.bswap.i16(i16 %252) #8
  %conv201.i = zext i16 %253 to i32
  %mac_id_n_color.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %250, i32 1, i32 0, i32 2
  %254 = ptrtoint ptr %mac_id_n_color.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %mac_id_n_color.i.i, align 8
  %and.i384.i = and i32 %255, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i384.i)
  %cmp.i385.i = icmp ugt i32 %and.i384.i, 3
  br i1 %cmp.i385.i, label %if.then198.i.iwl_mvm_tx_airtime.exit.i_crit_edge, label %if.end.i.i

if.then198.i.iwl_mvm_tx_airtime.exit.i_crit_edge: ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_airtime.exit.i

if.end.i.i:                                       ; preds = %if.then198.i
  %tcm.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  %paused.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %256 = ptrtoint ptr %paused.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %paused.i.i, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool.not.i386.i = icmp eq i8 %257, 0
  br i1 %tobool.not.i386.i, label %if.end3.i.i, label %if.end.i.i.iwl_mvm_tx_airtime.exit.i_crit_edge

if.end.i.i.iwl_mvm_tx_airtime.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_tx_airtime.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %ts.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 2
  %258 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %ts.i.i, align 8
  %add.i.i = add i32 %259, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %260 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp5.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %261 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %261, ptr noundef %tcm.i.i, i32 noundef 0) #8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %if.end3.i.i.if.end8.i.i_crit_edge
  %airtime9.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and.i384.i, i32 0, i32 1
  %262 = ptrtoint ptr %airtime9.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %airtime9.i.i, align 8
  %add10.i.i = add i32 %263, %conv201.i
  store i32 %add10.i.i, ptr %airtime9.i.i, align 8
  br label %iwl_mvm_tx_airtime.exit.i

iwl_mvm_tx_airtime.exit.i:                        ; preds = %if.end8.i.i, %if.end.i.i.iwl_mvm_tx_airtime.exit.i_crit_edge, %if.then198.i.iwl_mvm_tx_airtime.exit.i_crit_edge
  %and202.i = and i32 %conv8.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and202.i)
  %cmp203.not.i = icmp eq i32 %and202.i, 1
  br i1 %cmp203.not.i, label %iwl_mvm_tx_airtime.exit.i.if.end209.i_crit_edge, label %land.lhs.true205.i

iwl_mvm_tx_airtime.exit.i.if.end209.i_crit_edge:  ; preds = %iwl_mvm_tx_airtime.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i

land.lhs.true205.i:                               ; preds = %iwl_mvm_tx_airtime.exit.i
  %sta_state.i = getelementptr inbounds %struct.ieee80211_sta, ptr %250, i32 1, i32 0, i32 5
  %264 = ptrtoint ptr %sta_state.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %sta_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %265)
  %cmp206.i = icmp ult i32 %265, 4
  br i1 %cmp206.i, label %if.then208.i, label %land.lhs.true205.i.if.end209.i_crit_edge

land.lhs.true205.i.if.end209.i_crit_edge:         ; preds = %land.lhs.true205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i

if.then208.i:                                     ; preds = %land.lhs.true205.i
  %tx_ant.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 27
  %nvm_data.i.i387.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %266 = ptrtoint ptr %nvm_data.i.i387.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %nvm_data.i.i387.i, align 8
  %tobool.not.i.i388.i = icmp eq ptr %267, null
  br i1 %tobool.not.i.i388.i, label %if.then208.i.cond.false.i.i398.i_crit_edge, label %land.lhs.true.i.i391.i

if.then208.i.cond.false.i.i398.i_crit_edge:       ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i.i398.i

land.lhs.true.i.i391.i:                           ; preds = %if.then208.i
  %valid_tx_ant.i.i389.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %267, i32 0, i32 20
  %268 = ptrtoint ptr %valid_tx_ant.i.i389.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %valid_tx_ant.i.i389.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool2.not.i.i390.i = icmp eq i8 %269, 0
  br i1 %tobool2.not.i.i390.i, label %land.lhs.true.i.i391.i.cond.false.i.i398.i_crit_edge, label %cond.true.i.i395.i

land.lhs.true.i.i391.i.cond.false.i.i398.i_crit_edge: ; preds = %land.lhs.true.i.i391.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i.i398.i

cond.true.i.i395.i:                               ; preds = %land.lhs.true.i.i391.i
  call void @__sanitizer_cov_trace_pc() #10
  %fw.i.i392.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %270 = ptrtoint ptr %fw.i.i392.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %fw.i.i392.i, align 8
  %valid_tx_ant3.i.i393.i = getelementptr inbounds %struct.iwl_fw, ptr %271, i32 0, i32 15
  %272 = ptrtoint ptr %valid_tx_ant3.i.i393.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %valid_tx_ant3.i.i393.i, align 4
  %and.i.i394.i = and i8 %273, %269
  br label %iwl_mvm_toggle_tx_ant.exit401.i

cond.false.i.i398.i:                              ; preds = %land.lhs.true.i.i391.i.cond.false.i.i398.i_crit_edge, %if.then208.i.cond.false.i.i398.i_crit_edge
  %fw8.i.i396.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %274 = ptrtoint ptr %fw8.i.i396.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %fw8.i.i396.i, align 8
  %valid_tx_ant9.i.i397.i = getelementptr inbounds %struct.iwl_fw, ptr %275, i32 0, i32 15
  %276 = ptrtoint ptr %valid_tx_ant9.i.i397.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %valid_tx_ant9.i.i397.i, align 4
  br label %iwl_mvm_toggle_tx_ant.exit401.i

iwl_mvm_toggle_tx_ant.exit401.i:                  ; preds = %cond.false.i.i398.i, %cond.true.i.i395.i
  %cond.i.i399.i = phi i8 [ %and.i.i394.i, %cond.true.i.i395.i ], [ %277, %cond.false.i.i398.i ]
  %278 = ptrtoint ptr %tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %tx_ant.i, align 1
  %call1.i400.i = call zeroext i8 @iwl_mvm_next_antenna(ptr noundef %mvm, i8 noundef zeroext %cond.i.i399.i, i8 noundef zeroext %279) #8
  %280 = ptrtoint ptr %tx_ant.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %call1.i400.i, ptr %tx_ant.i, align 1
  br label %if.end209.i

if.end209.i:                                      ; preds = %iwl_mvm_toggle_tx_ant.exit401.i, %land.lhs.true205.i.if.end209.i_crit_edge, %iwl_mvm_tx_airtime.exit.i.if.end209.i_crit_edge
  %wme.i = getelementptr inbounds %struct.ieee80211_sta, ptr %250, i32 0, i32 10
  %281 = ptrtoint ptr %wme.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %wme.i, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool210.not.i = icmp eq i8 %282, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and6.i)
  %cmp213.not.i = icmp eq i32 %and6.i, 15
  %or.cond367.i = select i1 %tobool210.not.i, i1 true, i1 %cmp213.not.i
  br i1 %or.cond367.i, label %if.end209.i.if.end257.i_crit_edge, label %if.then215.i

if.end209.i.if.end257.i_crit_edge:                ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257.i

if.then215.i:                                     ; preds = %if.end209.i
  %arrayidx217.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %and6.i
  %lock.i = getelementptr inbounds %struct.ieee80211_sta, ptr %250, i32 1, i32 1, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  br i1 %is_ndp.0.off0.lcssa.i, label %do.end233.i, label %if.then219.i

if.then219.i:                                     ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #10
  %next_reclaimed220.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 10, i32 %and6.i, i32 1
  %283 = ptrtoint ptr %next_reclaimed220.i to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 %conv10.i, ptr %next_reclaimed220.i, align 2
  %284 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %285, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_tx_cmd_single, ptr noundef nonnull @.str.70, i32 noundef %27) #8
  br label %if.end237.i

do.end233.i:                                      ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #10
  %286 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %287, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_tx_cmd_single, ptr noundef nonnull @.str.71) #8
  br label %if.end237.i

if.end237.i:                                      ; preds = %do.end233.i, %if.then219.i
  %conv238.i = trunc i32 %and6.i to i8
  call fastcc void @iwl_mvm_check_ratid_empty(ptr noundef %mvm, ptr noundef nonnull %250, i8 noundef zeroext %conv238.i) #8
  %sleep_tx_count.i = getelementptr inbounds %struct.ieee80211_sta, ptr %250, i32 18, i32 0, i32 2
  %288 = ptrtoint ptr %sleep_tx_count.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %sleep_tx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool239.not.i = icmp eq i8 %289, 0
  br i1 %tobool239.not.i, label %if.end256.critedge369.i, label %if.then240.i

if.then240.i:                                     ; preds = %if.end237.i
  %dec.i = add i8 %289, -1
  %290 = ptrtoint ptr %sleep_tx_count.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %dec.i, ptr %sleep_tx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool244.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool244.not.i, label %if.end256.critedge.i, label %land.lhs.true245.i

land.lhs.true245.i:                               ; preds = %if.then240.i
  %call246.i = call zeroext i16 @iwl_mvm_tid_queued(ptr noundef %mvm, ptr noundef %arrayidx217.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call246.i)
  %tobool247.not.i = icmp eq i16 %call246.i, 0
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br i1 %tobool247.not.i, label %if.then253.i, label %land.lhs.true245.i.if.end257.i_crit_edge

land.lhs.true245.i.if.end257.i_crit_edge:         ; preds = %land.lhs.true245.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257.i

if.then253.i:                                     ; preds = %land.lhs.true245.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv254.i = trunc i32 %and6.i to i16
  call void @iwl_mvm_sta_modify_sleep_tx_count(ptr noundef %mvm, ptr noundef nonnull %250, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext %conv254.i, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %291 = ptrtoint ptr %sleep_tx_count.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %sleep_tx_count.i, align 4
  call void @ieee80211_send_eosp_nullfunc(ptr noundef nonnull %250, i32 noundef %and6.i) #8
  br label %if.end257.i

if.end256.critedge.i:                             ; preds = %if.then240.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %if.end257.i

if.end256.critedge369.i:                          ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.end256.critedge369.i, %if.end256.critedge.i, %if.then253.i, %land.lhs.true245.i.if.end257.i_crit_edge, %if.end209.i.if.end257.i_crit_edge
  %next_status_eosp.i = getelementptr inbounds %struct.ieee80211_sta, ptr %250, i32 1, i32 1, i32 1
  %292 = ptrtoint ptr %next_status_eosp.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %next_status_eosp.i, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool258.not.i = icmp eq i8 %293, 0
  br i1 %tobool258.not.i, label %if.end257.i.out.i_crit_edge, label %if.then259.i

if.end257.i.out.i_crit_edge:                      ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then259.i:                                     ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #10
  %294 = ptrtoint ptr %next_status_eosp.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %next_status_eosp.i, align 1
  call void @ieee80211_sta_eosp(ptr noundef nonnull %250) #8
  br label %out.i

out.i:                                            ; preds = %if.then259.i, %if.end257.i.out.i_crit_edge, %if.end196.critedge.i.out.i_crit_edge, %if.then160.i, %land.rhs.i.out.i_crit_edge
  %call.i402.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i402.i, label %out.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge, label %land.lhs.true.i405.i

out.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge:    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_rx_tx_cmd_single.exit

land.lhs.true.i405.i:                             ; preds = %out.i
  %call1.i403.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i403.i)
  %tobool.not.i404.i = icmp eq i32 %call1.i403.i, 0
  br i1 %tobool.not.i404.i, label %land.lhs.true.i405.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge, label %land.lhs.true2.i407.i

land.lhs.true.i405.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge: ; preds = %land.lhs.true.i405.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_rx_tx_cmd_single.exit

land.lhs.true2.i407.i:                            ; preds = %land.lhs.true.i405.i
  %.b4.i406.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i406.i, label %land.lhs.true2.i407.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge, label %if.then.i408.i

land.lhs.true2.i407.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge: ; preds = %land.lhs.true2.i407.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_rx_tx_cmd_single.exit

if.then.i408.i:                                   ; preds = %land.lhs.true2.i407.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %iwl_mvm_rx_tx_cmd_single.exit

iwl_mvm_rx_tx_cmd_single.exit:                    ; preds = %if.then.i408.i, %land.lhs.true2.i407.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge, %land.lhs.true.i405.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge, %out.i.iwl_mvm_rx_tx_cmd_single.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %295 = call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i409.i = and i32 %295, -16384
  %296 = inttoptr i32 %and.i.i.i.i.i409.i to ptr
  %preempt_count.i.i.i.i410.i = getelementptr inbounds %struct.thread_info, ptr %296, i32 0, i32 1
  %297 = ptrtoint ptr %preempt_count.i.i.i.i410.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load volatile i32, ptr %preempt_count.i.i.i.i410.i, align 4
  %sub.i.i.i.i = add i32 %298, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i410.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %skbs.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %ra_tid.i6 = getelementptr inbounds %struct.iwl_mvm_tx_resp, ptr %data, i32 0, i32 17
  %299 = ptrtoint ptr %ra_tid.i6 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %ra_tid.i6, align 1
  %conv.i7 = zext i8 %300 to i32
  %301 = lshr i32 %conv.i7, 4
  %and.i8 = and i32 %conv.i7, 15
  %sequence3.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1, i32 2
  %302 = ptrtoint ptr %sequence3.i to i32
  call void @__asan_loadN_noabort(i32 %302, i32 2)
  %303 = load i16, ptr %sequence3.i, align 1
  %304 = and i16 %303, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %304)
  %cmp.i = icmp ult i16 %304, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %304)
  %cmp8.i = icmp ne i16 %304, 4
  %spec.select.i9 = and i1 %cmp.i, %cmp8.i
  br i1 %spec.select.i9, label %land.rhs12.i, label %if.end49.i

land.rhs12.i:                                     ; preds = %if.else
  %.b236.i = load i1, ptr @iwl_mvm_rx_tx_cmd_agg.__already_done, align 1
  br i1 %.b236.i, label %land.rhs12.i.if.end_crit_edge, label %if.then.i10, !prof !250

land.rhs12.i.if.end_crit_edge:                    ; preds = %land.rhs12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i10:                                      ; preds = %land.rhs12.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_tx_cmd_agg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1806, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end49.i:                                       ; preds = %if.else
  %trans.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %305 = ptrtoint ptr %trans.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %trans.i.i.i.i, align 4
  %trans_cfg.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %306, i32 0, i32 3
  %307 = ptrtoint ptr %trans_cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %trans_cfg.i.i.i.i, align 4
  %use_tfh.i.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %308, i32 0, i32 5
  %309 = ptrtoint ptr %use_tfh.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %bf.load.i.i.i.i = load i16, ptr %use_tfh.i.i.i.i, align 4
  %310 = and i16 %bf.load.i.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %310)
  %tobool.i.not.i.i.i = icmp eq i16 %310, 0
  %status.i.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6
  %status1.i.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5, i32 1
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i.i, ptr %status1.i.i.i, ptr %status.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp32.not.i.i = icmp eq i8 %7, 0
  br i1 %cmp32.not.i.i, label %if.end49.i.iwl_mvm_rx_tx_cmd_agg_dbg.exit.i_crit_edge, label %if.end49.i.for.body.i.i_crit_edge

if.end49.i.for.body.i.i_crit_edge:                ; preds = %if.end49.i
  br label %for.body.i.i

if.end49.i.iwl_mvm_rx_tx_cmd_agg_dbg.exit.i_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_rx_tx_cmd_agg_dbg.exit.i

for.body.i.i:                                     ; preds = %iwl_get_agg_tx_status.exit.i.i.for.body.i.i_crit_edge, %if.end49.i.for.body.i.i_crit_edge
  %tirgger_timepoint.0.off034.i.i = phi i1 [ %or29.i.i, %iwl_get_agg_tx_status.exit.i.i.for.body.i.i_crit_edge ], [ false, %if.end49.i.for.body.i.i_crit_edge ]
  %i.033.i.i = phi i32 [ %inc.i.i, %iwl_get_agg_tx_status.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end49.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.agg_tx_status, ptr %retval.0.i.i.i, i32 %i.033.i.i
  %311 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %311, i32 2)
  %312 = load i16, ptr %arrayidx.i.i, align 1
  %313 = tail call i16 @llvm.bswap.i16(i16 %312) #8
  %conv2.i.i = zext i16 %313 to i32
  %and.i.i = and i32 %conv2.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3.i.i = icmp ne i32 %and.i.i, 0
  %or29.i.i = or i1 %tirgger_timepoint.0.off034.i.i, %cmp3.i.i
  %314 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %mvm, align 8
  %316 = and i16 %313, 4095
  %and.i.i.i11 = zext i16 %316 to i32
  %317 = zext i32 %and.i.i.i11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %317, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %and.i.i.i11, label %sw.epilog.i.i.i [
    i32 0, label %for.body.i.i.iwl_get_agg_tx_status.exit.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb2.i.i.i
    i32 4, label %sw.bb3.i.i.i
    i32 8, label %sw.bb4.i.i.i
    i32 16, label %sw.bb5.i.i.i
    i32 32, label %sw.bb6.i.i.i
    i32 64, label %sw.bb7.i.i.i
    i32 128, label %sw.bb8.i.i.i
    i32 256, label %sw.bb9.i.i.i
    i32 511, label %sw.bb10.i.i.i
    i32 512, label %sw.bb11.i.i.i
    i32 1024, label %sw.bb12.i.i.i
  ]

for.body.i.i.iwl_get_agg_tx_status.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb8.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb10.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb11.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.bb12.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

sw.epilog.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_get_agg_tx_status.exit.i.i

iwl_get_agg_tx_status.exit.i.i:                   ; preds = %sw.epilog.i.i.i, %sw.bb12.i.i.i, %sw.bb11.i.i.i, %sw.bb10.i.i.i, %sw.bb9.i.i.i, %sw.bb8.i.i.i, %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %for.body.i.i.iwl_get_agg_tx_status.exit.i.i_crit_edge
  %retval.0.i30.i.i = phi ptr [ @.str.29, %sw.epilog.i.i.i ], [ @.str.87, %sw.bb12.i.i.i ], [ @.str.86, %sw.bb11.i.i.i ], [ @.str.85, %sw.bb10.i.i.i ], [ @.str.84, %sw.bb9.i.i.i ], [ @.str.83, %sw.bb8.i.i.i ], [ @.str.82, %sw.bb7.i.i.i ], [ @.str.81, %sw.bb6.i.i.i ], [ @.str.80, %sw.bb5.i.i.i ], [ @.str.79, %sw.bb4.i.i.i ], [ @.str.8, %sw.bb3.i.i.i ], [ @.str.9, %sw.bb2.i.i.i ], [ @.str.15, %sw.bb1.i.i.i ], [ @.str.78, %for.body.i.i.iwl_get_agg_tx_status.exit.i.i_crit_edge ]
  %318 = lshr i32 %conv2.i.i, 12
  %sequence.i.i = getelementptr %struct.agg_tx_status, ptr %retval.0.i.i.i, i32 %i.033.i.i, i32 1
  %319 = ptrtoint ptr %sequence.i.i to i32
  call void @__asan_loadN_noabort(i32 %319, i32 2)
  %320 = load i16, ptr %sequence.i.i, align 1
  %321 = tail call i16 @llvm.bswap.i16(i16 %320) #8
  %conv14.i.i = zext i16 %321 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %315, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_tx_cmd_agg_dbg, ptr noundef nonnull @.str.77, ptr noundef nonnull %retval.0.i30.i.i, i32 noundef %and.i.i, i32 noundef %318, i32 noundef %conv14.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %322 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %data, align 1
  %conv.i.i12 = zext i8 %323 to i32
  %cmp.i.i13 = icmp ult i32 %inc.i.i, %conv.i.i12
  br i1 %cmp.i.i13, label %iwl_get_agg_tx_status.exit.i.i.for.body.i.i_crit_edge, label %for.end.i.i

iwl_get_agg_tx_status.exit.i.i.for.body.i.i_crit_edge: ; preds = %iwl_get_agg_tx_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %iwl_get_agg_tx_status.exit.i.i
  br i1 %or29.i.i, label %if.then.i240.i, label %for.end.i.i.iwl_mvm_rx_tx_cmd_agg_dbg.exit.i_crit_edge

for.end.i.i.iwl_mvm_rx_tx_cmd_agg_dbg.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_rx_tx_cmd_agg_dbg.exit.i

if.then.i240.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %fwrt.i.i14 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt.i.i14, i32 noundef 20, ptr noundef null, i1 noundef zeroext false) #8
  br label %iwl_mvm_rx_tx_cmd_agg_dbg.exit.i

iwl_mvm_rx_tx_cmd_agg_dbg.exit.i:                 ; preds = %if.then.i240.i, %for.end.i.i.iwl_mvm_rx_tx_cmd_agg_dbg.exit.i_crit_edge, %if.end49.i.iwl_mvm_rx_tx_cmd_agg_dbg.exit.i_crit_edge
  %324 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i.i15 = and i32 %324, -16384
  %325 = inttoptr i32 %and.i.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %preempt_count.i.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load volatile i32, ptr %preempt_count.i.i.i.i.i16, align 4
  %add.i.i.i.i17 = add i32 %327, 1
  store volatile i32 %add.i.i.i.i17, ptr %preempt_count.i.i.i.i.i16, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i18 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i18, label %iwl_mvm_rx_tx_cmd_agg_dbg.exit.i.rcu_read_lock.exit.i26_crit_edge, label %land.lhs.true.i.i21

iwl_mvm_rx_tx_cmd_agg_dbg.exit.i.rcu_read_lock.exit.i26_crit_edge: ; preds = %iwl_mvm_rx_tx_cmd_agg_dbg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i26

land.lhs.true.i.i21:                              ; preds = %iwl_mvm_rx_tx_cmd_agg_dbg.exit.i
  %call1.i.i19 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %call1.i.i19, 0
  br i1 %tobool.not.i.i20, label %land.lhs.true.i.i21.rcu_read_lock.exit.i26_crit_edge, label %land.lhs.true2.i.i23

land.lhs.true.i.i21.rcu_read_lock.exit.i26_crit_edge: ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i26

land.lhs.true2.i.i23:                             ; preds = %land.lhs.true.i.i21
  %.b4.i.i22 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i22, label %land.lhs.true2.i.i23.rcu_read_lock.exit.i26_crit_edge, label %if.then.i.i24

land.lhs.true2.i.i23.rcu_read_lock.exit.i26_crit_edge: ; preds = %land.lhs.true2.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i26

if.then.i.i24:                                    ; preds = %land.lhs.true2.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 696, ptr noundef nonnull @.str.89) #8
  br label %rcu_read_lock.exit.i26

rcu_read_lock.exit.i26:                           ; preds = %if.then.i.i24, %land.lhs.true2.i.i23.rcu_read_lock.exit.i26_crit_edge, %land.lhs.true.i.i21.rcu_read_lock.exit.i26_crit_edge, %iwl_mvm_rx_tx_cmd_agg_dbg.exit.i.rcu_read_lock.exit.i26_crit_edge
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %328 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %fw.i.i, align 8
  %num_stations.i.i = getelementptr inbounds %struct.iwl_fw, ptr %329, i32 0, i32 5, i32 6
  %330 = ptrtoint ptr %num_stations.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %num_stations.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %331, i32 %301)
  %cmp.not.i.i25 = icmp ugt i32 %331, %301
  br i1 %cmp.not.i.i25, label %if.end.i.i27, label %rcu_read_lock.exit.i26.iwl_mvm_sta_from_staid_rcu.exit.i_crit_edge

rcu_read_lock.exit.i26.iwl_mvm_sta_from_staid_rcu.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_sta_from_staid_rcu.exit.i

if.end.i.i27:                                     ; preds = %rcu_read_lock.exit.i26
  %arrayidx.i242.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %301
  %332 = ptrtoint ptr %arrayidx.i242.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load volatile ptr, ptr %arrayidx.i242.i, align 4
  %call.i243.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.i)
  %tobool.not.i244.i = icmp eq i32 %call.i243.i, 0
  br i1 %tobool.not.i244.i, label %land.lhs.true.i245.i, label %if.end.i.i27.do.end10.i.i_crit_edge

if.end.i.i27.do.end10.i.i_crit_edge:              ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i.i

land.lhs.true.i245.i:                             ; preds = %if.end.i.i27
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i245.i.do.end10.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i245.i.do.end10.i.i_crit_edge:      ; preds = %land.lhs.true.i245.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i245.i
  %.b19.i.i = load i1, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  br i1 %.b19.i.i, label %land.lhs.true5.i.i.do.end10.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 1186, ptr noundef nonnull @.str.51) #8
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i245.i.do.end10.i.i_crit_edge, %if.end.i.i27.do.end10.i.i_crit_edge
  %tobool.not.i.i.i28 = icmp eq ptr %333, null
  %cmp.i.i.i = icmp ugt ptr %333, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i28, %cmp.i.i.i
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %333, i32 0, i32 29
  %spec.select.i.i29 = select i1 %spec.select.i.i.i, ptr null, ptr %drv_priv.i.i.i
  br label %iwl_mvm_sta_from_staid_rcu.exit.i

iwl_mvm_sta_from_staid_rcu.exit.i:                ; preds = %do.end10.i.i, %rcu_read_lock.exit.i26.iwl_mvm_sta_from_staid_rcu.exit.i_crit_edge
  %retval.0.i.i30 = phi ptr [ null, %rcu_read_lock.exit.i26.iwl_mvm_sta_from_staid_rcu.exit.i_crit_edge ], [ %spec.select.i.i29, %do.end10.i.i ]
  %arrayidx.i31 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %301
  %334 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load volatile ptr, ptr %arrayidx.i31, align 4
  %call56.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i32, label %iwl_mvm_sta_from_staid_rcu.exit.i.do.end65.i_crit_edge

iwl_mvm_sta_from_staid_rcu.exit.i.do.end65.i_crit_edge: ; preds = %iwl_mvm_sta_from_staid_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65.i

land.lhs.true.i32:                                ; preds = %iwl_mvm_sta_from_staid_rcu.exit.i
  %call58.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true.i32.do.end65.i_crit_edge, label %land.lhs.true60.i

land.lhs.true.i32.do.end65.i_crit_edge:           ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65.i

land.lhs.true60.i:                                ; preds = %land.lhs.true.i32
  %.b230235.i = load i1, ptr @iwl_mvm_rx_tx_cmd_agg.__warned, align 1
  br i1 %.b230235.i, label %land.lhs.true60.i.do.end65.i_crit_edge, label %if.then62.i

land.lhs.true60.i.do.end65.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65.i

if.then62.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_tx_cmd_agg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1815, ptr noundef nonnull @.str.51) #8
  br label %do.end65.i

do.end65.i:                                       ; preds = %if.then62.i, %land.lhs.true60.i.do.end65.i_crit_edge, %land.lhs.true.i32.do.end65.i_crit_edge, %iwl_mvm_sta_from_staid_rcu.exit.i.do.end65.i_crit_edge
  %tobool68.not.i = icmp eq ptr %335, null
  br i1 %tobool68.not.i, label %do.end65.i.land.rhs79.i_crit_edge, label %lor.rhs.i

do.end65.i.land.rhs79.i_crit_edge:                ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs79.i

lor.rhs.i:                                        ; preds = %do.end65.i
  %wme.i33 = getelementptr inbounds %struct.ieee80211_sta, ptr %335, i32 0, i32 10
  %336 = ptrtoint ptr %wme.i33 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %wme.i33, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool69.not.i = icmp eq i8 %337, 0
  br i1 %tobool69.not.i, label %lor.rhs.i.land.rhs79.i_crit_edge, label %if.end127.i

lor.rhs.i.land.rhs79.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs79.i

land.rhs79.i:                                     ; preds = %lor.rhs.i.land.rhs79.i_crit_edge, %do.end65.i.land.rhs79.i_crit_edge
  %.b231234.i = load i1, ptr @iwl_mvm_rx_tx_cmd_agg.__already_done.75, align 1
  br i1 %.b231234.i, label %land.rhs79.i.if.then126.i_crit_edge, label %if.then90.i, !prof !250

land.rhs79.i.if.then126.i_crit_edge:              ; preds = %land.rhs79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126.i

if.then90.i:                                      ; preds = %land.rhs79.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_tx_cmd_agg.__already_done.75, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1816, i32 noundef 9, ptr noundef null) #8
  br label %if.then126.i

if.then126.i:                                     ; preds = %if.then90.i, %land.rhs79.i.if.then126.i_crit_edge
  %call.i246.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i246.i, label %if.then126.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i249.i

if.then126.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i249.i:                             ; preds = %if.then126.i
  %call1.i247.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i247.i)
  %tobool.not.i248.i = icmp eq i32 %call1.i247.i, 0
  br i1 %tobool.not.i248.i, label %land.lhs.true.i249.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i251.i

land.lhs.true.i249.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i251.i:                            ; preds = %land.lhs.true.i249.i
  %.b4.i250.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i250.i, label %land.lhs.true2.i251.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i252.i

land.lhs.true2.i251.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i252.i:                                   ; preds = %land.lhs.true2.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i252.i, %land.lhs.true2.i251.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i249.i.rcu_read_unlock.exit.i_crit_edge, %if.then126.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %338 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i253.i = and i32 %338, -16384
  %339 = inttoptr i32 %and.i.i.i.i.i253.i to ptr
  %preempt_count.i.i.i.i254.i = getelementptr inbounds %struct.thread_info, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %preempt_count.i.i.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load volatile i32, ptr %preempt_count.i.i.i.i254.i, align 4
  %sub.i.i.i.i34 = add i32 %341, -1
  store volatile i32 %sub.i.i.i.i34, ptr %preempt_count.i.i.i.i254.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end

if.end127.i:                                      ; preds = %lor.rhs.i
  %tobool129.not.i = icmp eq ptr %retval.0.i.i30, null
  br i1 %tobool129.not.i, label %land.rhs139.i, label %if.then186.critedge.i

land.rhs139.i:                                    ; preds = %if.end127.i
  %.b232233.i = load i1, ptr @iwl_mvm_rx_tx_cmd_agg.__already_done.76, align 1
  br i1 %.b232233.i, label %land.rhs139.i.if.end198.i_crit_edge, label %if.then150.i, !prof !250

land.rhs139.i.if.end198.i_crit_edge:              ; preds = %land.rhs139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198.i

if.then150.i:                                     ; preds = %land.rhs139.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_tx_cmd_agg.__already_done.76, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1821, i32 noundef 9, ptr noundef null) #8
  br label %if.end198.i

if.then186.critedge.i:                            ; preds = %if.end127.i
  %initial_rate.i35 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %342 = ptrtoint ptr %initial_rate.i35 to i32
  call void @__asan_loadN_noabort(i32 %342, i32 4)
  %343 = load i32, ptr %initial_rate.i35, align 1
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #8
  %rate_n_flags.i = getelementptr %struct.iwl_mvm_sta, ptr %retval.0.i.i30, i32 0, i32 10, i32 %and.i8, i32 2
  %345 = ptrtoint ptr %rate_n_flags.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %rate_n_flags.i, align 4
  %wireless_media_time.i36 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %346 = ptrtoint ptr %wireless_media_time.i36 to i32
  call void @__asan_loadN_noabort(i32 %346, i32 2)
  %347 = load i16, ptr %wireless_media_time.i36, align 1
  %348 = tail call i16 @llvm.bswap.i16(i16 %347) #8
  %tx_time.i37 = getelementptr %struct.iwl_mvm_sta, ptr %retval.0.i.i30, i32 0, i32 10, i32 %and.i8, i32 8
  %349 = ptrtoint ptr %tx_time.i37 to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %348, ptr %tx_time.i37, align 4
  %tlc_info.i38 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %350 = ptrtoint ptr %tlc_info.i38 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %tlc_info.i38, align 1
  %352 = lshr i8 %351, 4
  %353 = and i8 %352, 7
  %lq_color.i = getelementptr %struct.iwl_mvm_sta, ptr %retval.0.i.i30, i32 0, i32 10, i32 %and.i8, i32 3
  %354 = ptrtoint ptr %lq_color.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %lq_color.i, align 4
  %355 = ptrtoint ptr %wireless_media_time.i36 to i32
  call void @__asan_loadN_noabort(i32 %355, i32 2)
  %356 = load i16, ptr %wireless_media_time.i36, align 1
  %357 = tail call i16 @llvm.bswap.i16(i16 %356) #8
  %conv197.i = zext i16 %357 to i32
  %mac_id_n_color.i.i39 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %retval.0.i.i30, i32 0, i32 2
  %358 = ptrtoint ptr %mac_id_n_color.i.i39 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %mac_id_n_color.i.i39, align 8
  %and.i255.i = and i32 %359, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i255.i)
  %cmp.i256.i = icmp ugt i32 %and.i255.i, 3
  br i1 %cmp.i256.i, label %if.then186.critedge.i.if.end198.i_crit_edge, label %if.end.i258.i

if.then186.critedge.i.if.end198.i_crit_edge:      ; preds = %if.then186.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198.i

if.end.i258.i:                                    ; preds = %if.then186.critedge.i
  %tcm.i.i40 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  %paused.i.i41 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %360 = ptrtoint ptr %paused.i.i41 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %paused.i.i41, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool.not.i257.i = icmp eq i8 %361, 0
  br i1 %tobool.not.i257.i, label %if.end3.i.i46, label %if.end.i258.i.if.end198.i_crit_edge

if.end.i258.i.if.end198.i_crit_edge:              ; preds = %if.end.i258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198.i

if.end3.i.i46:                                    ; preds = %if.end.i258.i
  %ts.i.i42 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 2
  %362 = ptrtoint ptr %ts.i.i42 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %ts.i.i42, align 8
  %add.i.i43 = add i32 %363, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %364 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i44 = sub i32 %add.i.i43, %364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i44)
  %cmp5.i.i45 = icmp slt i32 %sub.i.i44, 0
  br i1 %cmp5.i.i45, label %if.then6.i.i48, label %if.end3.i.i46.if.end8.i.i51_crit_edge

if.end3.i.i46.if.end8.i.i51_crit_edge:            ; preds = %if.end3.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i51

if.then6.i.i48:                                   ; preds = %if.end3.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %365 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i47 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %365, ptr noundef %tcm.i.i40, i32 noundef 0) #8
  br label %if.end8.i.i51

if.end8.i.i51:                                    ; preds = %if.then6.i.i48, %if.end3.i.i46.if.end8.i.i51_crit_edge
  %airtime9.i.i49 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and.i255.i, i32 0, i32 1
  %366 = ptrtoint ptr %airtime9.i.i49 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %airtime9.i.i49, align 8
  %add10.i.i50 = add i32 %367, %conv197.i
  store i32 %add10.i.i50, ptr %airtime9.i.i49, align 8
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.end8.i.i51, %if.end.i258.i.if.end198.i_crit_edge, %if.then186.critedge.i.if.end198.i_crit_edge, %if.then150.i, %land.rhs139.i.if.end198.i_crit_edge
  %call.i259.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i259.i, label %if.end198.i.rcu_read_unlock.exit269.i_crit_edge, label %land.lhs.true.i262.i

if.end198.i.rcu_read_unlock.exit269.i_crit_edge:  ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit269.i

land.lhs.true.i262.i:                             ; preds = %if.end198.i
  %call1.i260.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i260.i)
  %tobool.not.i261.i = icmp eq i32 %call1.i260.i, 0
  br i1 %tobool.not.i261.i, label %land.lhs.true.i262.i.rcu_read_unlock.exit269.i_crit_edge, label %land.lhs.true2.i264.i

land.lhs.true.i262.i.rcu_read_unlock.exit269.i_crit_edge: ; preds = %land.lhs.true.i262.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit269.i

land.lhs.true2.i264.i:                            ; preds = %land.lhs.true.i262.i
  %.b4.i263.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i263.i, label %land.lhs.true2.i264.i.rcu_read_unlock.exit269.i_crit_edge, label %if.then.i265.i

land.lhs.true2.i264.i.rcu_read_unlock.exit269.i_crit_edge: ; preds = %land.lhs.true2.i264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit269.i

if.then.i265.i:                                   ; preds = %land.lhs.true2.i264.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit269.i

rcu_read_unlock.exit269.i:                        ; preds = %if.then.i265.i, %land.lhs.true2.i264.i.rcu_read_unlock.exit269.i_crit_edge, %land.lhs.true.i262.i.rcu_read_unlock.exit269.i_crit_edge, %if.end198.i.rcu_read_unlock.exit269.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %368 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i266.i = and i32 %368, -16384
  %369 = inttoptr i32 %and.i.i.i.i.i266.i to ptr
  %preempt_count.i.i.i.i267.i = getelementptr inbounds %struct.thread_info, ptr %369, i32 0, i32 1
  %370 = ptrtoint ptr %preempt_count.i.i.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load volatile i32, ptr %preempt_count.i.i.i.i267.i, align 4
  %sub.i.i.i268.i = add i32 %371, -1
  store volatile i32 %sub.i.i.i268.i, ptr %preempt_count.i.i.i.i267.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock.exit269.i, %rcu_read_unlock.exit.i, %if.then.i10, %land.rhs12.i.if.end_crit_edge, %iwl_mvm_rx_tx_cmd_single.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_ba_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %ba_info = alloca %struct.ieee80211_tx_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i250 = tail call ptr @page_address(ptr noundef %1) #8
  %2 = ptrtoint ptr %call.i250 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = and i32 %7, -12648448
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %sub.i = add nsw i32 %9, -4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ba_info) #8
  %10 = call ptr @memset(ptr %ba_info, i32 0, i32 48)
  %11 = ptrtoint ptr %ba_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %ba_info, align 8
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
  %data57 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  br i1 %tobool.i.not, label %if.end56, label %if.then

if.then:                                          ; preds = %entry
  %tlc_rate_info = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 2
  %18 = ptrtoint ptr %tlc_rate_info to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tlc_rate_info, align 1
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 32
  br i1 %cmp, label %if.then.cleanup165_crit_edge, label %if.end, !prof !251

if.then.cleanup165_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup165

if.end:                                           ; preds = %if.then
  %sta_id7 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %22 = ptrtoint ptr %sta_id7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sta_id7, align 1
  %conv8 = zext i8 %23 to i32
  %done = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %24 = ptrtoint ptr %done to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %done, align 1
  %26 = lshr i16 %25, 8
  %conv9 = trunc i16 %26 to i8
  %ampdu_ack_len = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 8
  %27 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv9, ptr %ampdu_ack_len, align 8
  %txed = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1, i32 2
  %28 = ptrtoint ptr %txed to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %txed, align 1
  %30 = lshr i16 %29, 8
  %conv10 = trunc i16 %30 to i8
  %ampdu_len = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 9
  %31 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv10, ptr %ampdu_len, align 1
  %wireless_time = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  %32 = ptrtoint ptr %wireless_time to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %wireless_time, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %conv11 = trunc i32 %34 to i16
  %tx_time = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 12
  %35 = ptrtoint ptr %tx_time to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv11, ptr %tx_time, align 4
  %reduced_txp = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %reduced_txp to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reduced_txp, align 1
  %conv12 = zext i8 %37 to i32
  %38 = inttoptr i32 %conv12 to ptr
  %status_driver_data = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 16
  %39 = ptrtoint ptr %status_driver_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %status_driver_data, align 8
  %tfd_cnt13 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1
  %40 = ptrtoint ptr %tfd_cnt13 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %tfd_cnt13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool14.not = icmp eq i16 %41, 0
  br i1 %tobool14.not, label %if.end.cleanup165_crit_edge, label %lor.lhs.false

if.end.cleanup165_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup165

lor.lhs.false:                                    ; preds = %if.end
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv15 = zext i16 %42 to i32
  %43 = shl nuw nsw i32 %conv15, 3
  %spec.select.i315 = add nuw nsw i32 %43, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i315, i32 %sub.i)
  %cmp17 = icmp ugt i32 %spec.select.i315, %sub.i
  br i1 %cmp17, label %lor.lhs.false.cleanup165_crit_edge, label %if.end20

lor.lhs.false.cleanup165_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup165

if.end20:                                         ; preds = %lor.lhs.false
  %44 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end20.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end20.rcu_read_lock.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end20
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 696, ptr noundef nonnull @.str.89) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end20.rcu_read_lock.exit_crit_edge
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %48 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %49, i32 0, i32 5, i32 6
  %50 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv8)
  %cmp.not.i = icmp ugt i32 %51, %conv8
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_lock.exit.for.body.lr.ph_crit_edge

rcu_read_lock.exit.for.body.lr.ph_crit_edge:      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv8
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i251 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool.not.i252 = icmp eq i32 %call.i251, 0
  br i1 %tobool.not.i252, label %land.lhs.true.i253, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

land.lhs.true.i253:                               ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i253.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i253.do.end10.i_crit_edge:          ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i253
  %.b19.i = load i1, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 1186, ptr noundef nonnull @.str.51) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i253.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %53, null
  %cmp.i.i = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %53, i32 0, i32 29
  %spec.select.i254 = select i1 %spec.select.i.i, ptr null, ptr %drv_priv.i.i
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end10.i, %rcu_read_lock.exit.for.body.lr.ph_crit_edge
  %retval.0.i255 = phi ptr [ null, %rcu_read_lock.exit.for.body.lr.ph_crit_edge ], [ %spec.select.i254, %do.end10.i ]
  %tfd = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %tobool33.not = icmp eq ptr %retval.0.i255, null
  %tx_rate = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  %umax = call i32 @llvm.umax.i32(i32 %conv15, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %i.0317 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  %arrayidx26 = getelementptr [0 x %struct.iwl_mvm_compressed_ba_tfd], ptr %tfd, i32 0, i32 %i.0317
  %tid27 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_tfd, ptr %arrayidx26, i32 0, i32 3
  %54 = ptrtoint ptr %tid27 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tid27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %55)
  %cmp29 = icmp eq i8 %55, 15
  %narrow = select i1 %cmp29, i8 8, i8 %55
  %spec.store.select = zext i8 %narrow to i32
  br i1 %tobool33.not, label %for.body.if.end38_crit_edge, label %if.then34

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %lq_color37 = getelementptr %struct.iwl_mvm_sta, ptr %retval.0.i255, i32 0, i32 10, i32 %i.0317, i32 3
  %56 = ptrtoint ptr %lq_color37 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %21, ptr %lq_color37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %for.body.if.end38_crit_edge
  %57 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %arrayidx26, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %conv39 = zext i16 %59 to i32
  %tfd_index = getelementptr inbounds %struct.iwl_mvm_compressed_ba_tfd, ptr %arrayidx26, i32 0, i32 1
  %60 = ptrtoint ptr %tfd_index to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %tfd_index, align 1
  %62 = call i16 @llvm.bswap.i16(i16 %61)
  %conv40 = zext i16 %62 to i32
  %63 = ptrtoint ptr %tx_rate to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %tx_rate, align 1
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  call fastcc void @iwl_mvm_tx_reclaim(ptr noundef %mvm, i32 noundef %conv8, i32 noundef %spec.store.select, i32 noundef %conv39, i32 noundef %conv40, ptr noundef nonnull %ba_info, i32 noundef %65, i1 noundef zeroext false)
  %inc = add nuw nsw i32 %i.0317, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end38
  %tobool41.not = icmp eq ptr %retval.0.i255, null
  br i1 %tobool41.not, label %for.end.if.end44_crit_edge, label %if.then42

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %for.end
  %66 = ptrtoint ptr %wireless_time to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %wireless_time, align 1
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %mac_id_n_color.i = getelementptr inbounds %struct.iwl_mvm_sta, ptr %retval.0.i255, i32 0, i32 2
  %69 = ptrtoint ptr %mac_id_n_color.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mac_id_n_color.i, align 8
  %and.i = and i32 %70, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 3
  br i1 %cmp.i, label %if.then42.if.end44_crit_edge, label %if.end.i257

if.then42.if.end44_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end.i257:                                      ; preds = %if.then42
  %tcm.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  %paused.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %71 = ptrtoint ptr %paused.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %paused.i, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i256 = icmp eq i8 %72, 0
  br i1 %tobool.not.i256, label %if.end3.i, label %if.end.i257.if.end44_crit_edge

if.end.i257.if.end44_crit_edge:                   ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end3.i:                                        ; preds = %if.end.i257
  %ts.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 2
  %73 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ts.i, align 8
  %add.i258 = add i32 %74, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %sub.i259 = sub i32 %add.i258, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i259)
  %cmp5.i = icmp slt i32 %sub.i259, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end3.i.if.end8.i_crit_edge

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %tcm.i, i32 noundef 0) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end8.i_crit_edge
  %airtime9.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and.i, i32 0, i32 1
  %77 = ptrtoint ptr %airtime9.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %airtime9.i, align 8
  %add10.i = add i32 %78, %68
  store i32 %add10.i, ptr %airtime9.i, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end8.i, %if.end.i257.if.end44_crit_edge, %if.then42.if.end44_crit_edge, %for.end.if.end44_crit_edge
  %call.i260 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i260, label %if.end44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i263

if.end44.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i263:                               ; preds = %if.end44
  %call1.i261 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i261)
  %tobool.not.i262 = icmp eq i32 %call1.i261, 0
  br i1 %tobool.not.i262, label %land.lhs.true.i263.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i265

land.lhs.true.i263.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i263
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i265:                              ; preds = %land.lhs.true.i263
  %.b4.i264 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i264, label %land.lhs.true2.i265.rcu_read_unlock.exit_crit_edge, label %if.then.i266

land.lhs.true2.i265.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i265
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i266:                                     ; preds = %land.lhs.true2.i265
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i266, %land.lhs.true2.i265.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i263.rcu_read_unlock.exit_crit_edge, %if.end44.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %79 = call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i267 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i267 to ptr
  %preempt_count.i.i.i.i268 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i268, align 4
  %sub.i.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i268, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %83 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mvm, align 8
  %85 = ptrtoint ptr %data57 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %data57, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %txed to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %txed, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89)
  %conv48 = zext i16 %90 to i32
  %91 = ptrtoint ptr %done to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %done, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92)
  %conv50 = zext i16 %93 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %84, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_ba_notif, ptr noundef nonnull @.str.30, i32 noundef %conv8, i32 noundef %87, i32 noundef %conv48, i32 noundef %conv50) #8
  br label %cleanup165

if.end56:                                         ; preds = %entry
  %sta_id59 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %94 = ptrtoint ptr %sta_id59 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sta_id59, align 1
  %conv60 = zext i8 %95 to i32
  %tid61 = getelementptr inbounds %struct.iwl_mvm_ba_notif, ptr %data57, i32 0, i32 3
  %96 = ptrtoint ptr %tid61 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tid61, align 1
  %conv62 = zext i8 %97 to i32
  %scd_flow = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  %98 = ptrtoint ptr %scd_flow to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %scd_flow, align 1
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %conv63 = zext i16 %100 to i32
  %scd_ssn = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1, i32 2
  %101 = ptrtoint ptr %scd_ssn to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %scd_ssn, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %conv64 = zext i16 %103 to i32
  %104 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i239 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i239 to ptr
  %preempt_count.i.i.i.i240 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i.i.i240, align 4
  %add.i.i.i241 = add i32 %107, 1
  store volatile i32 %add.i.i.i241, ptr %preempt_count.i.i.i.i240, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i242 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i242, label %if.end56.rcu_read_lock.exit249_crit_edge, label %land.lhs.true.i245

if.end56.rcu_read_lock.exit249_crit_edge:         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit249

land.lhs.true.i245:                               ; preds = %if.end56
  %call1.i243 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i243)
  %tobool.not.i244 = icmp eq i32 %call1.i243, 0
  br i1 %tobool.not.i244, label %land.lhs.true.i245.rcu_read_lock.exit249_crit_edge, label %land.lhs.true2.i247

land.lhs.true.i245.rcu_read_lock.exit249_crit_edge: ; preds = %land.lhs.true.i245
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit249

land.lhs.true2.i247:                              ; preds = %land.lhs.true.i245
  %.b4.i246 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i246, label %land.lhs.true2.i247.rcu_read_lock.exit249_crit_edge, label %if.then.i248

land.lhs.true2.i247.rcu_read_lock.exit249_crit_edge: ; preds = %land.lhs.true2.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit249

if.then.i248:                                     ; preds = %land.lhs.true2.i247
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 696, ptr noundef nonnull @.str.89) #8
  br label %rcu_read_lock.exit249

rcu_read_lock.exit249:                            ; preds = %if.then.i248, %land.lhs.true2.i247.rcu_read_lock.exit249_crit_edge, %land.lhs.true.i245.rcu_read_lock.exit249_crit_edge, %if.end56.rcu_read_lock.exit249_crit_edge
  %fw.i270 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %108 = ptrtoint ptr %fw.i270 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fw.i270, align 8
  %num_stations.i271 = getelementptr inbounds %struct.iwl_fw, ptr %109, i32 0, i32 5, i32 6
  %110 = ptrtoint ptr %num_stations.i271 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_stations.i271, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %conv60)
  %cmp.not.i272 = icmp ugt i32 %111, %conv60
  br i1 %cmp.not.i272, label %if.end.i276, label %rcu_read_lock.exit249.land.rhs_crit_edge

rcu_read_lock.exit249.land.rhs_crit_edge:         ; preds = %rcu_read_lock.exit249
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end.i276:                                      ; preds = %rcu_read_lock.exit249
  %arrayidx.i273 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv60
  %112 = ptrtoint ptr %arrayidx.i273 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %arrayidx.i273, align 4
  %call.i274 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool.not.i275 = icmp eq i32 %call.i274, 0
  br i1 %tobool.not.i275, label %land.lhs.true.i279, label %if.end.i276.do.end10.i288_crit_edge

if.end.i276.do.end10.i288_crit_edge:              ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i288

land.lhs.true.i279:                               ; preds = %if.end.i276
  %call3.i277 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i277)
  %tobool4.not.i278 = icmp eq i32 %call3.i277, 0
  br i1 %tobool4.not.i278, label %land.lhs.true.i279.do.end10.i288_crit_edge, label %land.lhs.true5.i281

land.lhs.true.i279.do.end10.i288_crit_edge:       ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i288

land.lhs.true5.i281:                              ; preds = %land.lhs.true.i279
  %.b19.i280 = load i1, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  br i1 %.b19.i280, label %land.lhs.true5.i281.do.end10.i288_crit_edge, label %if.then7.i282

land.lhs.true5.i281.do.end10.i288_crit_edge:      ; preds = %land.lhs.true5.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i288

if.then7.i282:                                    ; preds = %land.lhs.true5.i281
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 1186, ptr noundef nonnull @.str.51) #8
  br label %do.end10.i288

do.end10.i288:                                    ; preds = %if.then7.i282, %land.lhs.true5.i281.do.end10.i288_crit_edge, %land.lhs.true.i279.do.end10.i288_crit_edge, %if.end.i276.do.end10.i288_crit_edge
  %tobool.not.i.i283 = icmp eq ptr %113, null
  %cmp.i.i284 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i285 = or i1 %tobool.not.i.i283, %cmp.i.i284
  %drv_priv.i.i286 = getelementptr inbounds %struct.ieee80211_sta, ptr %113, i32 0, i32 29
  %tobool67.not = icmp eq ptr %drv_priv.i.i286, null
  %or.cond = select i1 %spec.select.i.i285, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %do.end10.i288.land.rhs_crit_edge, label %if.end120

do.end10.i288.land.rhs_crit_edge:                 ; preds = %do.end10.i288
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %do.end10.i288.land.rhs_crit_edge, %rcu_read_lock.exit249.land.rhs_crit_edge
  %.b237 = load i1, ptr @iwl_mvm_rx_ba_notif.__already_done, align 1
  br i1 %.b237, label %land.rhs.if.then119_crit_edge, label %if.then85, !prof !250

land.rhs.if.then119_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then85:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_ba_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2077, i32 noundef 9, ptr noundef null) #8
  br label %if.then119

if.then119:                                       ; preds = %if.then85, %land.rhs.if.then119_crit_edge
  %call.i291 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i291, label %if.then119.rcu_read_unlock.exit301_crit_edge, label %land.lhs.true.i294

if.then119.rcu_read_unlock.exit301_crit_edge:     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit301

land.lhs.true.i294:                               ; preds = %if.then119
  %call1.i292 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i292)
  %tobool.not.i293 = icmp eq i32 %call1.i292, 0
  br i1 %tobool.not.i293, label %land.lhs.true.i294.rcu_read_unlock.exit301_crit_edge, label %land.lhs.true2.i296

land.lhs.true.i294.rcu_read_unlock.exit301_crit_edge: ; preds = %land.lhs.true.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit301

land.lhs.true2.i296:                              ; preds = %land.lhs.true.i294
  %.b4.i295 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i295, label %land.lhs.true2.i296.rcu_read_unlock.exit301_crit_edge, label %if.then.i297

land.lhs.true2.i296.rcu_read_unlock.exit301_crit_edge: ; preds = %land.lhs.true2.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit301

if.then.i297:                                     ; preds = %land.lhs.true2.i296
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit301

rcu_read_unlock.exit301:                          ; preds = %if.then.i297, %land.lhs.true2.i296.rcu_read_unlock.exit301_crit_edge, %land.lhs.true.i294.rcu_read_unlock.exit301_crit_edge, %if.then119.rcu_read_unlock.exit301_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %114 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i298 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i298 to ptr
  %preempt_count.i.i.i.i299 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i299 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i299, align 4
  %sub.i.i.i300 = add i32 %117, -1
  store volatile i32 %sub.i.i.i300, ptr %preempt_count.i.i.i.i299, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup165

if.end120:                                        ; preds = %do.end10.i288
  %txed_2_done = getelementptr inbounds %struct.iwl_mvm_ba_notif, ptr %data57, i32 0, i32 9
  %118 = ptrtoint ptr %txed_2_done to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %txed_2_done, align 1
  %ampdu_ack_len123 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 8
  %120 = ptrtoint ptr %ampdu_ack_len123 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %ampdu_ack_len123, align 8
  %txed124 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  %121 = ptrtoint ptr %txed124 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %txed124, align 1
  %ampdu_len125 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 9
  %123 = ptrtoint ptr %ampdu_len125 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %ampdu_len125, align 1
  %tx_time126 = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i286, i32 0, i32 10, i32 %conv62, i32 8
  %124 = ptrtoint ptr %tx_time126 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %tx_time126, align 4
  %tx_time127 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 12
  %126 = ptrtoint ptr %tx_time127 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %tx_time127, align 4
  %reduced_txp128 = getelementptr inbounds %struct.iwl_mvm_ba_notif, ptr %data57, i32 0, i32 10
  %127 = ptrtoint ptr %reduced_txp128 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %reduced_txp128, align 1
  %conv129 = zext i8 %128 to i32
  %129 = inttoptr i32 %conv129 to ptr
  %status_driver_data130 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %ba_info, i32 0, i32 2, i32 1, i32 16
  %130 = ptrtoint ptr %status_driver_data130 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %status_driver_data130, align 8
  %call.i302 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i302, label %if.end120.rcu_read_unlock.exit312_crit_edge, label %land.lhs.true.i305

if.end120.rcu_read_unlock.exit312_crit_edge:      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit312

land.lhs.true.i305:                               ; preds = %if.end120
  %call1.i303 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i303)
  %tobool.not.i304 = icmp eq i32 %call1.i303, 0
  br i1 %tobool.not.i304, label %land.lhs.true.i305.rcu_read_unlock.exit312_crit_edge, label %land.lhs.true2.i307

land.lhs.true.i305.rcu_read_unlock.exit312_crit_edge: ; preds = %land.lhs.true.i305
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit312

land.lhs.true2.i307:                              ; preds = %land.lhs.true.i305
  %.b4.i306 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i306, label %land.lhs.true2.i307.rcu_read_unlock.exit312_crit_edge, label %if.then.i308

land.lhs.true2.i307.rcu_read_unlock.exit312_crit_edge: ; preds = %land.lhs.true2.i307
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit312

if.then.i308:                                     ; preds = %land.lhs.true2.i307
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit312

rcu_read_unlock.exit312:                          ; preds = %if.then.i308, %land.lhs.true2.i307.rcu_read_unlock.exit312_crit_edge, %land.lhs.true.i305.rcu_read_unlock.exit312_crit_edge, %if.end120.rcu_read_unlock.exit312_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %131 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i309 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i.i309 to ptr
  %preempt_count.i.i.i.i310 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i.i310, align 4
  %sub.i.i.i311 = add i32 %134, -1
  store volatile i32 %sub.i.i.i311, ptr %preempt_count.i.i.i.i310, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %rate_n_flags = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i286, i32 0, i32 10, i32 %conv62, i32 2
  %135 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rate_n_flags, align 4
  call fastcc void @iwl_mvm_tx_reclaim(ptr noundef %mvm, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %conv63, i32 noundef %conv64, ptr noundef nonnull %ba_info, i32 noundef %136, i1 noundef zeroext false)
  %137 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mvm, align 8
  %139 = ptrtoint ptr %sta_id59 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %sta_id59, align 1
  %conv139 = zext i8 %140 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %138, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_ba_notif, ptr noundef nonnull @.str.31, ptr noundef %data57, i32 noundef %conv139) #8
  %141 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mvm, align 8
  %143 = ptrtoint ptr %tid61 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %tid61, align 1
  %conv148 = zext i8 %144 to i32
  %seq_ctl = getelementptr inbounds %struct.iwl_mvm_ba_notif, ptr %data57, i32 0, i32 4
  %145 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %seq_ctl, align 1
  %147 = call i16 @llvm.bswap.i16(i16 %146)
  %conv149 = zext i16 %147 to i32
  %bitmap = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %148 = ptrtoint ptr %bitmap to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %bitmap, align 1
  %150 = call i64 @llvm.bswap.i64(i64 %149)
  %151 = ptrtoint ptr %txed124 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %txed124, align 1
  %conv151 = zext i8 %152 to i32
  %153 = ptrtoint ptr %txed_2_done to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %txed_2_done, align 1
  %conv153 = zext i8 %154 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %142, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_ba_notif, ptr noundef nonnull @.str.32, i32 noundef %conv148, i32 noundef %conv149, i64 noundef %150, i32 noundef %conv63, i32 noundef %conv64, i32 noundef %conv151, i32 noundef %conv153) #8
  %155 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mvm, align 8
  %157 = ptrtoint ptr %reduced_txp128 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %reduced_txp128, align 1
  %conv162 = zext i8 %158 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %156, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_ba_notif, ptr noundef nonnull @.str.33, i32 noundef %conv162) #8
  br label %cleanup165

cleanup165:                                       ; preds = %rcu_read_unlock.exit312, %rcu_read_unlock.exit301, %rcu_read_unlock.exit, %lor.lhs.false.cleanup165_crit_edge, %if.end.cleanup165_crit_edge, %if.then.cleanup165_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ba_info) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_tx_reclaim(ptr noundef %mvm, i32 noundef %sta_id, i32 noundef %tid, i32 noundef %txq, i32 noundef %index, ptr noundef %tx_info, i32 noundef %rate, i1 noundef zeroext %is_flush) unnamed_addr #0 align 64 {
entry:
  %reclaimed_skbs = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reclaimed_skbs) #8
  %0 = call ptr @memset(ptr %reclaimed_skbs, i32 255, i32 56)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 6
  %3 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sta_id)
  %cmp.not = icmp ule i32 %4, %sta_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tid)
  %cmp1 = icmp sgt i32 %tid, 8
  %spec.select = or i1 %cmp1, %cmp.not
  br i1 %spec.select, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b415 = load i1, ptr @iwl_mvm_tx_reclaim.__already_done, align 1
  br i1 %.b415, label %land.rhs.cleanup334_crit_edge, label %if.then, !prof !250

land.rhs.cleanup334_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup334

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_reclaim.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1860, i32 noundef 9, ptr noundef nonnull @.str.91, i32 noundef %sta_id, i32 noundef %tid) #8
  br label %cleanup334

if.end39:                                         ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end39.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end39.rcu_read_lock.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 696, ptr noundef nonnull @.str.89) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end39.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %sta_id
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool45.not = icmp eq i32 %call, 0
  br i1 %tobool45.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end53_crit_edge

rcu_read_lock.exit.do.end53_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call46 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true.do.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true
  %.b405414 = load i1, ptr @iwl_mvm_tx_reclaim.__warned, align 1
  br i1 %.b405414, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_reclaim.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1865, ptr noundef nonnull @.str.51) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true.do.end53_crit_edge, %rcu_read_lock.exit.do.end53_crit_edge
  %tobool56.not = icmp eq ptr %10, null
  br i1 %tobool56.not, label %land.rhs65, label %if.end113

land.rhs65:                                       ; preds = %do.end53
  %.b406413 = load i1, ptr @iwl_mvm_tx_reclaim.__already_done.92, align 1
  br i1 %.b406413, label %land.rhs65.if.then112_crit_edge, label %if.then76, !prof !250

land.rhs65.if.then112_crit_edge:                  ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then76:                                        ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_reclaim.__already_done.92, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1868, i32 noundef 9, ptr noundef null) #8
  br label %if.then112

if.then112:                                       ; preds = %if.then76, %land.rhs65.if.then112_crit_edge
  %call.i419 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i419, label %if.then112.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i422

if.then112.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i422:                               ; preds = %if.then112
  %call1.i420 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i420)
  %tobool.not.i421 = icmp eq i32 %call1.i420, 0
  br i1 %tobool.not.i421, label %land.lhs.true.i422.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i424

land.lhs.true.i422.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i422
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i424:                              ; preds = %land.lhs.true.i422
  %.b4.i423 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i423, label %land.lhs.true2.i424.rcu_read_unlock.exit_crit_edge, label %if.then.i425

land.lhs.true2.i424.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i424
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i425:                                     ; preds = %land.lhs.true2.i424
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i425, %land.lhs.true2.i424.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i422.rcu_read_unlock.exit_crit_edge, %if.then112.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %11 = tail call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i426 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i426 to ptr
  %preempt_count.i.i.i.i427 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i427 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i427, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i427, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup334

if.end113:                                        ; preds = %do.end53
  %15 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reclaimed_skbs, ptr %reclaimed_skbs, align 4
  %prev.i = getelementptr inbounds %struct.anon.79, ptr %reclaimed_skbs, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reclaimed_skbs, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %reclaimed_skbs, i32 0, i32 1
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i, align 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %18 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans, align 4
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 2
  br i1 %cmp.not.i, label %if.end44.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end113
  %.b51.i = load i1, ptr @iwl_trans_reclaim.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.do.end40.i_crit_edge, label %if.then.i428, !prof !250

land.rhs.i.do.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

if.then.i428:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_trans_reclaim.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 1161, i32 noundef 9, ptr noundef null) #8
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then.i428, %land.rhs.i.do.end40.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.iwl_trans_reclaim, i32 noundef %25) #8
  br label %iwl_trans_reclaim.exit

if.end44.i:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %reclaim.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reclaim.i, align 4
  call void %29(ptr noundef %19, i32 noundef %txq, i32 noundef %index, ptr noundef nonnull %reclaimed_skbs) #8
  br label %iwl_trans_reclaim.exit

iwl_trans_reclaim.exit:                           ; preds = %if.end44.i, %do.end40.i
  %30 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %30)
  %skb.0460 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp114.not461 = icmp eq ptr %skb.0460, %reclaimed_skbs
  br i1 %cmp114.not461, label %iwl_trans_reclaim.exit.for.end_crit_edge, label %iwl_trans_reclaim.exit.for.body_crit_edge

iwl_trans_reclaim.exit.for.body_crit_edge:        ; preds = %iwl_trans_reclaim.exit
  br label %for.body

iwl_trans_reclaim.exit.for.end_crit_edge:         ; preds = %iwl_trans_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end120.for.body_crit_edge, %iwl_trans_reclaim.exit.for.body_crit_edge
  %skb.0462 = phi ptr [ %skb.0, %if.end120.for.body_crit_edge ], [ %skb.0460, %iwl_trans_reclaim.exit.for.body_crit_edge ]
  %31 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb.0462, i32 0, i32 3, i32 8
  %arrayidx117 = getelementptr %struct.sk_buff, ptr %skb.0462, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx117, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %32, i32 0, i32 28
  %36 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_cmd_pool.i, align 4
  call void @kmem_cache_free(ptr noundef %37, ptr noundef %35) #8
  %38 = call ptr @memset(ptr %33, i32 0, i32 40)
  br i1 %is_flush, label %for.body.if.end120_crit_edge, label %if.then119

for.body.if.end120_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then119:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0462, i32 0, i32 3
  %39 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb.i, align 8
  %or = or i32 %40, 512
  store i32 %or, ptr %cb.i, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %for.body.if.end120_crit_edge
  %41 = ptrtoint ptr %skb.0462 to i32
  call void @__asan_load4_noabort(i32 %41)
  %skb.0 = load ptr, ptr %skb.0462, align 4
  %cmp114.not = icmp eq ptr %skb.0, %reclaimed_skbs
  br i1 %cmp114.not, label %if.end120.for.end_crit_edge, label %if.end120.for.body_crit_edge

if.end120.for.body_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end120.for.end_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end120.for.end_crit_edge, %iwl_trans_reclaim.exit.for.end_crit_edge
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.out_crit_edge, label %if.end124

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end124:                                        ; preds = %for.end
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %10, i32 0, i32 29
  %txq_id = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid, i32 6
  %42 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %txq_id, align 4
  %conv = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %txq)
  %cmp128.not = icmp eq i32 %conv, %txq
  br i1 %cmp128.not, label %if.end139, label %do.end134

do.end134:                                        ; preds = %if.end124
  %44 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.93, i32 noundef %conv, i32 noundef %tid) #8
  %call.i429 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i429, label %do.end134.rcu_read_unlock.exit439_crit_edge, label %land.lhs.true.i432

do.end134.rcu_read_unlock.exit439_crit_edge:      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit439

land.lhs.true.i432:                               ; preds = %do.end134
  %call1.i430 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i430)
  %tobool.not.i431 = icmp eq i32 %call1.i430, 0
  br i1 %tobool.not.i431, label %land.lhs.true.i432.rcu_read_unlock.exit439_crit_edge, label %land.lhs.true2.i434

land.lhs.true.i432.rcu_read_unlock.exit439_crit_edge: ; preds = %land.lhs.true.i432
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit439

land.lhs.true2.i434:                              ; preds = %land.lhs.true.i432
  %.b4.i433 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i433, label %land.lhs.true2.i434.rcu_read_unlock.exit439_crit_edge, label %if.then.i435

land.lhs.true2.i434.rcu_read_unlock.exit439_crit_edge: ; preds = %land.lhs.true2.i434
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit439

if.then.i435:                                     ; preds = %land.lhs.true2.i434
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit439

rcu_read_unlock.exit439:                          ; preds = %if.then.i435, %land.lhs.true2.i434.rcu_read_unlock.exit439_crit_edge, %land.lhs.true.i432.rcu_read_unlock.exit439_crit_edge, %do.end134.rcu_read_unlock.exit439_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %46 = call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i436 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i436 to ptr
  %preempt_count.i.i.i.i437 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i437 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i437, align 4
  %sub.i.i.i438 = add i32 %49, -1
  store volatile i32 %sub.i.i.i438, ptr %preempt_count.i.i.i.i437, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup334

if.end139:                                        ; preds = %if.end124
  %lock = getelementptr inbounds %struct.ieee80211_sta, ptr %10, i32 1, i32 1, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %conv140 = trunc i32 %index to i16
  %next_reclaimed = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid, i32 1
  %50 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv140, ptr %next_reclaimed, align 2
  %conv141 = trunc i32 %tid to i8
  call fastcc void @iwl_mvm_check_ratid_empty(ptr noundef %mvm, ptr noundef nonnull %10, i8 noundef zeroext %conv141)
  %51 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %tx_info, i32 0, i32 2
  %status_driver_data = getelementptr inbounds %struct.ieee80211_tx_info, ptr %tx_info, i32 0, i32 2, i32 1, i32 16
  %52 = ptrtoint ptr %status_driver_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %status_driver_data, align 8
  %54 = ptrtoint ptr %53 to i32
  %lq_color = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %tid, i32 3
  %55 = ptrtoint ptr %lq_color to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lq_color, align 4
  %conv143 = zext i8 %56 to i32
  %shl = shl nuw nsw i32 %conv143, 8
  %or144 = or i32 %shl, %54
  %57 = inttoptr i32 %or144 to ptr
  store ptr %57, ptr %status_driver_data, align 8
  %58 = inttoptr i32 %rate to ptr
  %arrayidx148 = getelementptr %struct.ieee80211_tx_info, ptr %tx_info, i32 0, i32 2, i32 1, i32 20
  %59 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %arrayidx148, align 4
  %60 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %60)
  %skb.1463 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp151.not464 = icmp eq ptr %skb.1463, %reclaimed_skbs
  br i1 %cmp151.not464, label %if.end139.for.end227_crit_edge, label %for.body153.lr.ph

if.end139.for.end227_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end227

for.body153.lr.ph:                                ; preds = %if.end139
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tid)
  %cmp161.not = icmp eq i32 %tid, 8
  br label %for.body153

for.body153:                                      ; preds = %if.end224.for.body153_crit_edge, %for.body153.lr.ph
  %skb.1466 = phi ptr [ %skb.1463, %for.body153.lr.ph ], [ %skb.1, %if.end224.for.body153_crit_edge ]
  %freed.0465 = phi i32 [ 0, %for.body153.lr.ph ], [ %freed.1, %if.end224.for.body153_crit_edge ]
  %cb.i440 = getelementptr inbounds %struct.sk_buff, ptr %skb.1466, i32 0, i32 3
  br i1 %is_flush, label %for.body153.if.end217_crit_edge, label %if.then157

for.body153.if.end217_crit_edge:                  ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

if.then157:                                       ; preds = %for.body153
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.1466, i32 0, i32 19
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %62, align 2
  %65 = and i16 %64, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %65)
  %cmp.i441 = icmp eq i16 %65, -30720
  br i1 %cmp.i441, label %if.then159, label %if.else

if.then159:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %freed.0465, 1
  br label %if.end217

if.else:                                          ; preds = %if.then157
  br i1 %cmp161.not, label %if.else.if.end217_crit_edge, label %land.rhs170

if.else.if.end217_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

land.rhs170:                                      ; preds = %if.else
  %.b407412 = load i1, ptr @iwl_mvm_tx_reclaim.__already_done.94, align 1
  br i1 %.b407412, label %land.rhs170.if.end217_crit_edge, label %if.then181, !prof !250

land.rhs170.if.end217_crit_edge:                  ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

if.then181:                                       ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_reclaim.__already_done.94, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1940, i32 noundef 9, ptr noundef null) #8
  br label %if.end217

if.end217:                                        ; preds = %if.then181, %land.rhs170.if.end217_crit_edge, %if.else.if.end217_crit_edge, %if.then159, %for.body153.if.end217_crit_edge
  %freed.1 = phi i32 [ %freed.0465, %for.body153.if.end217_crit_edge ], [ %inc, %if.then159 ], [ %freed.0465, %if.else.if.end217_crit_edge ], [ %freed.0465, %if.then181 ], [ %freed.0465, %land.rhs170.if.end217_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %freed.1)
  %cmp218 = icmp eq i32 %freed.1, 1
  br i1 %cmp218, label %if.then220, label %if.end217.if.end224_crit_edge

if.end217.if.end224_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then220:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %cb.i440 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cb.i440, align 8
  %or222 = or i32 %67, 1024
  store i32 %or222, ptr %cb.i440, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %skb.1466, i32 0, i32 3, i32 8
  %69 = call ptr @memcpy(ptr %68, ptr %51, i32 40)
  %70 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw, align 8
  call fastcc void @iwl_mvm_hwrate_to_tx_status(ptr noundef %71, i32 noundef %rate, ptr noundef %cb.i440)
  br label %if.end224

if.end224:                                        ; preds = %if.then220, %if.end217.if.end224_crit_edge
  %72 = ptrtoint ptr %skb.1466 to i32
  call void @__asan_load4_noabort(i32 %72)
  %skb.1 = load ptr, ptr %skb.1466, align 4
  %cmp151.not = icmp eq ptr %skb.1, %reclaimed_skbs
  br i1 %cmp151.not, label %if.end224.for.end227_crit_edge, label %if.end224.for.body153_crit_edge

if.end224.for.body153_crit_edge:                  ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body153

if.end224.for.end227_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end227

for.end227:                                       ; preds = %if.end224.for.end227_crit_edge, %if.end139.for.end227_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br i1 %is_flush, label %for.end227.out_crit_edge, label %land.lhs.true230

for.end227.out_crit_edge:                         ; preds = %for.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true230:                                 ; preds = %for.end227
  %73 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp.i442.not = icmp eq ptr %74, %reclaimed_skbs
  br i1 %cmp.i442.not, label %if.then233, label %land.lhs.true230.out_crit_edge

land.lhs.true230.out_crit_edge:                   ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then233:                                       ; preds = %land.lhs.true230
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %10, i32 17, i32 28, i32 10
  %75 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vif, align 8
  %tobool234.not = icmp eq ptr %76, null
  br i1 %tobool234.not, label %if.then233.land.rhs267_crit_edge, label %if.then235

if.then233.land.rhs267_crit_edge:                 ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs267

if.then235:                                       ; preds = %if.then233
  %chanctx_conf241 = getelementptr inbounds %struct.ieee80211_vif, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %chanctx_conf241 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %chanctx_conf241, align 4
  %call243 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %land.lhs.true245, label %if.then235.if.end255_crit_edge

if.then235.if.end255_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

land.lhs.true245:                                 ; preds = %if.then235
  %call246 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %land.lhs.true245.if.end255_crit_edge, label %land.lhs.true248

land.lhs.true245.if.end255_crit_edge:             ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

land.lhs.true248:                                 ; preds = %land.lhs.true245
  %.b408411 = load i1, ptr @iwl_mvm_tx_reclaim.__warned.95, align 1
  br i1 %.b408411, label %land.lhs.true248.if.end255_crit_edge, label %if.then250

land.lhs.true248.if.end255_crit_edge:             ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

if.then250:                                       ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_reclaim.__warned.95, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1964, ptr noundef nonnull @.str.51) #8
  br label %if.end255

if.end255:                                        ; preds = %if.then250, %land.lhs.true248.if.end255_crit_edge, %land.lhs.true245.if.end255_crit_edge, %if.then235.if.end255_crit_edge
  %tobool257.not = icmp eq ptr %78, null
  br i1 %tobool257.not, label %if.end255.land.rhs267_crit_edge, label %if.end315

if.end255.land.rhs267_crit_edge:                  ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs267

land.rhs267:                                      ; preds = %if.end255.land.rhs267_crit_edge, %if.then233.land.rhs267_crit_edge
  %.b409410 = load i1, ptr @iwl_mvm_tx_reclaim.__already_done.96, align 1
  br i1 %.b409410, label %land.rhs267.out_crit_edge, label %if.then278, !prof !250

land.rhs267.out_crit_edge:                        ; preds = %land.rhs267
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then278:                                       ; preds = %land.rhs267
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_reclaim.__already_done.96, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1966, i32 noundef 9, ptr noundef null) #8
  br label %out

if.end315:                                        ; preds = %if.end255
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %band316 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %tx_info, i32 0, i32 1
  %83 = ptrtoint ptr %band316 to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load = load i32, ptr %band316, align 4
  %bf.shl = shl i32 %82, 29
  %bf.clear = and i32 %bf.load, 536870911
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %band316, align 4
  %84 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw, align 8
  call fastcc void @iwl_mvm_hwrate_to_tx_status(ptr noundef %85, i32 noundef %rate, ptr noundef %tx_info)
  %86 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %87, i32 0, i32 5, i32 8, i32 1
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %90 = and i32 %89, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.i.i.not = icmp eq i32 %90, 0
  br i1 %tobool.i.i.not, label %do.end323, label %if.end315.out_crit_edge

if.end315.out_crit_edge:                          ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end323:                                        ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %92, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tx_reclaim, ptr noundef nonnull @.str.97) #8
  call void @iwl_mvm_rs_tx_status(ptr noundef %mvm, ptr noundef nonnull %10, i32 noundef %tid, ptr noundef %tx_info, i1 noundef zeroext false) #8
  br label %out

out:                                              ; preds = %do.end323, %if.end315.out_crit_edge, %if.then278, %land.rhs267.out_crit_edge, %land.lhs.true230.out_crit_edge, %for.end227.out_crit_edge, %for.end.out_crit_edge
  %call.i443 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i443, label %out.rcu_read_unlock.exit453_crit_edge, label %land.lhs.true.i446

out.rcu_read_unlock.exit453_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit453

land.lhs.true.i446:                               ; preds = %out
  %call1.i444 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i444)
  %tobool.not.i445 = icmp eq i32 %call1.i444, 0
  br i1 %tobool.not.i445, label %land.lhs.true.i446.rcu_read_unlock.exit453_crit_edge, label %land.lhs.true2.i448

land.lhs.true.i446.rcu_read_unlock.exit453_crit_edge: ; preds = %land.lhs.true.i446
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit453

land.lhs.true2.i448:                              ; preds = %land.lhs.true.i446
  %.b4.i447 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i447, label %land.lhs.true2.i448.rcu_read_unlock.exit453_crit_edge, label %if.then.i449

land.lhs.true2.i448.rcu_read_unlock.exit453_crit_edge: ; preds = %land.lhs.true2.i448
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit453

if.then.i449:                                     ; preds = %land.lhs.true2.i448
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 724, ptr noundef nonnull @.str.98) #8
  br label %rcu_read_unlock.exit453

rcu_read_unlock.exit453:                          ; preds = %if.then.i449, %land.lhs.true2.i448.rcu_read_unlock.exit453_crit_edge, %land.lhs.true.i446.rcu_read_unlock.exit453_crit_edge, %out.rcu_read_unlock.exit453_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %93 = call i32 @llvm.read_register.i32(metadata !240) #8
  %and.i.i.i.i.i450 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i450 to ptr
  %preempt_count.i.i.i.i451 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i451 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i451, align 4
  %sub.i.i.i452 = add i32 %96, -1
  store volatile i32 %sub.i.i.i452, ptr %preempt_count.i.i.i.i451, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %97 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp.i454467 = icmp eq ptr %98, %reclaimed_skbs
  br i1 %cmp.i454467, label %rcu_read_unlock.exit453.cleanup334_crit_edge, label %while.body.lr.ph

rcu_read_unlock.exit453.cleanup334_crit_edge:     ; preds = %rcu_read_unlock.exit453
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup334

while.body.lr.ph:                                 ; preds = %rcu_read_unlock.exit453
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %99 = phi ptr [ %98, %while.body.lr.ph ], [ %111, %__skb_dequeue.exit.while.body_crit_edge ]
  %tobool.not.i456 = icmp eq ptr %99, null
  br i1 %tobool.not.i456, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i457

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit

if.then.i457:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %101, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %99, i32 0, i32 1
  %104 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %99, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %103, i32 0, i32 1
  %106 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %105, ptr %prev17.i.i, align 4
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %103, ptr %105, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i457, %while.body.__skb_dequeue.exit_crit_edge
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 4
  call void @ieee80211_tx_status(ptr noundef %109, ptr noundef %99) #8
  %110 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp.i454 = icmp eq ptr %111, %reclaimed_skbs
  br i1 %cmp.i454, label %__skb_dequeue.exit.cleanup334_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

__skb_dequeue.exit.cleanup334_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup334

cleanup334:                                       ; preds = %__skb_dequeue.exit.cleanup334_crit_edge, %rcu_read_unlock.exit453.cleanup334_crit_edge, %rcu_read_unlock.exit439, %rcu_read_unlock.exit, %if.then, %land.rhs.cleanup334_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reclaimed_skbs) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_flush_tx_path(ptr noundef %mvm, i32 noundef %tfd_msk) local_unnamed_addr #0 align 64 {
entry:
  %flush_cmd = alloca %struct.iwl_tx_path_flush_cmd_v1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flush_cmd) #8
  %0 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, ptr %flush_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, ptr %flush_cmd, i32 0, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %tfd_msk)
  %3 = ptrtoint ptr %flush_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %flush_cmd, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 512, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %1, align 2
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %6 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %11 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not = icmp eq i16 %11, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !250

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2125, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call19 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 30, i32 noundef 0, i16 noundef zeroext 8, ptr noundef nonnull %flush_cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end.if.end28_crit_edge, label %do.end25

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %call19) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.end.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flush_cmd) #8
  ret i32 %call19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_flush_sta_tids(ptr noundef %mvm, i32 noundef %sta_id, i16 noundef zeroext %tids) local_unnamed_addr #0 align 64 {
entry:
  %flush_cmd = alloca %struct.iwl_tx_path_flush_cmd, align 4
  %cmd = alloca %struct.iwl_host_cmd, align 4
  %tx_info = alloca %struct.ieee80211_tx_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flush_cmd) #8
  %0 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd, ptr %flush_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd, ptr %flush_cmd, i32 0, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %sta_id)
  %3 = ptrtoint ptr %flush_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %flush_cmd, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %tids)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #8
  %7 = getelementptr inbounds i8, ptr %cmd, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !256
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %flush_cmd, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %10 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 8, ptr %len, align 4
  %arrayinit.start4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayinit.start4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayinit.start4, align 2
  %arrayinit.end5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %14 = ptrtoint ptr %arrayinit.end5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %arrayinit.end5, align 4
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %15 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %20 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.i.not = icmp eq i16 %20, 0
  br i1 %tobool.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !251

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2148, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 8
  %call30 = call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %22, i8 noundef zeroext 1, i8 noundef zeroext 30, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call30)
  %cmp.not = icmp eq i8 %call30, 0
  br i1 %cmp.not, label %if.end.do.end38_crit_edge, label %if.then32

if.end.do.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 2
  store i32 %or, ptr %flags, align 4
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %if.end.do.end38_crit_edge
  %25 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mvm, align 8
  %conv39 = zext i16 %tids to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_flush_sta_tids, ptr noundef nonnull @.str.35, i32 noundef %sta_id, i32 noundef %conv39) #8
  %call42 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end52, label %do.end48

do.end48:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %call42) #8
  br label %cleanup

if.end52:                                         ; preds = %do.end38
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.then55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.end52
  %31 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resp_pkt, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %32, align 1
  %35 = and i32 %34, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2013265920, i32 %35)
  %cmp58.not = icmp eq i32 %35, -2013265920
  br i1 %cmp58.not, label %if.end112, label %land.rhs

land.rhs:                                         ; preds = %if.then55
  %.b301 = load i1, ptr @iwl_mvm_flush_sta_tids.__already_done, align 1
  br i1 %.b301, label %land.rhs.free_rsp_crit_edge, label %if.then75, !prof !250

land.rhs.free_rsp_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rsp

if.then75:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_flush_sta_tids.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2167, i32 noundef 9, ptr noundef null) #8
  br label %free_rsp

if.end112:                                        ; preds = %if.then55
  %data114 = getelementptr inbounds %struct.iwl_rx_packet, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %data114 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %data114, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %conv117 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv117, i32 %sta_id)
  %cmp118.not = icmp eq i32 %conv117, %sta_id
  br i1 %cmp118.not, label %if.end177, label %land.rhs127

land.rhs127:                                      ; preds = %if.end112
  %.b297300 = load i1, ptr @iwl_mvm_flush_sta_tids.__already_done.36, align 1
  br i1 %.b297300, label %land.rhs127.free_rsp_crit_edge, label %if.then138, !prof !250

land.rhs127.free_rsp_crit_edge:                   ; preds = %land.rhs127
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rsp

if.then138:                                       ; preds = %land.rhs127
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_flush_sta_tids.__already_done.36, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2176, i32 noundef 9, ptr noundef nonnull @.str.37, i32 noundef %sta_id, i32 noundef %conv117) #8
  br label %free_rsp

if.end177:                                        ; preds = %if.end112
  %num_flushed_queues178 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_rsp, ptr %data114, i32 0, i32 1
  %39 = ptrtoint ptr %num_flushed_queues178 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %num_flushed_queues178, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv179 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %41)
  %cmp181 = icmp ugt i16 %41, 16
  br i1 %cmp181, label %land.rhs190, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end177
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp239305.not = icmp eq i16 %40, 0
  br i1 %cmp239305.not, label %for.cond.preheader.free_rsp_crit_edge, label %for.body.lr.ph

for.cond.preheader.free_rsp_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rsp

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queues = getelementptr inbounds %struct.iwl_rx_packet, ptr %32, i32 1, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %conv179, i32 1)
  br label %for.body

land.rhs190:                                      ; preds = %if.end177
  %.b298299 = load i1, ptr @iwl_mvm_flush_sta_tids.__already_done.38, align 1
  br i1 %.b298299, label %land.rhs190.free_rsp_crit_edge, label %if.then201, !prof !250

land.rhs190.free_rsp_crit_edge:                   ; preds = %land.rhs190
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rsp

if.then201:                                       ; preds = %land.rhs190
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_flush_sta_tids.__already_done.38, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2183, i32 noundef 9, ptr noundef nonnull @.str.39, i32 noundef %conv179) #8
  br label %free_rsp

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0306 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tx_info) #8
  %42 = call ptr @memset(ptr %tx_info, i32 0, i32 48)
  %arrayidx = getelementptr [16 x %struct.iwl_flush_queue_info], ptr %queues, i32 0, i32 %i.0306
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %arrayidx, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %read_before_flush = getelementptr [16 x %struct.iwl_flush_queue_info], ptr %queues, i32 0, i32 %i.0306, i32 2
  %46 = ptrtoint ptr %read_before_flush to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %read_before_flush, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %conv243 = zext i16 %48 to i32
  %read_after_flush = getelementptr [16 x %struct.iwl_flush_queue_info], ptr %queues, i32 0, i32 %i.0306, i32 3
  %49 = ptrtoint ptr %read_after_flush to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %read_after_flush, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %conv244 = zext i16 %51 to i32
  %queue_num245 = getelementptr [16 x %struct.iwl_flush_queue_info], ptr %queues, i32 0, i32 %i.0306, i32 1
  %52 = ptrtoint ptr %queue_num245 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %queue_num245, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %conv246 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %44)
  %cmp247 = icmp eq i16 %44, 3840
  %narrow = select i1 %cmp247, i16 8, i16 %45
  %spec.store.select = zext i16 %narrow to i32
  %55 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_flush_sta_tids, ptr noundef nonnull @.str.40, i32 noundef %spec.store.select, i32 noundef %conv246, i32 noundef %conv243, i32 noundef %conv244) #8
  call fastcc void @iwl_mvm_tx_reclaim(ptr noundef %mvm, i32 noundef %sta_id, i32 noundef %spec.store.select, i32 noundef %conv246, i32 noundef %conv244, ptr noundef nonnull %tx_info, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx_info) #8
  %inc = add nuw nsw i32 %i.0306, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.free_rsp_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.free_rsp_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rsp

free_rsp:                                         ; preds = %for.body.free_rsp_crit_edge, %if.then201, %land.rhs190.free_rsp_crit_edge, %for.cond.preheader.free_rsp_crit_edge, %if.then138, %land.rhs127.free_rsp_crit_edge, %if.then75, %land.rhs.free_rsp_crit_edge
  %ret.0 = phi i32 [ -5, %if.then75 ], [ -5, %if.then138 ], [ -5, %if.then201 ], [ -5, %land.rhs.free_rsp_crit_edge ], [ -5, %land.rhs127.free_rsp_crit_edge ], [ -5, %land.rhs190.free_rsp_crit_edge ], [ 0, %for.cond.preheader.free_rsp_crit_edge ], [ 0, %for.body.free_rsp_crit_edge ]
  %57 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %_rx_page_addr, align 4
  %59 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %58, i32 noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %free_rsp, %if.end52.cleanup_crit_edge, %do.end48
  %retval.0 = phi i32 [ %call42, %do.end48 ], [ %ret.0, %free_rsp ], [ 0, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flush_cmd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_flush_sta(ptr noundef %mvm, ptr nocapture noundef readonly %sta, i1 noundef zeroext %internal) local_unnamed_addr #0 align 64 {
entry:
  %flush_cmd.i13 = alloca %struct.iwl_tx_path_flush_cmd_v1, align 4
  %flush_cmd.i = alloca %struct.iwl_tx_path_flush_cmd_v1, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sta, align 8
  %call1 = tail call i32 @iwl_mvm_flush_sta_tids(ptr noundef %mvm, i32 noundef %7, i16 noundef zeroext -1)
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %internal, label %if.end.i, label %if.end.i22

if.end.i:                                         ; preds = %if.end
  %tfd_queue_msk = getelementptr inbounds %struct.iwl_mvm_int_sta, ptr %sta, i32 0, i32 2
  %8 = ptrtoint ptr %tfd_queue_msk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tfd_queue_msk, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flush_cmd.i) #8
  %10 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, ptr %flush_cmd.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, ptr %flush_cmd.i, i32 0, i32 2
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %13 = ptrtoint ptr %flush_cmd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flush_cmd.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 512, ptr %10, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %11, align 2
  %call19.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 30, i32 noundef 0, i16 noundef zeroext 8, ptr noundef nonnull %flush_cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end.i.iwl_mvm_flush_tx_path.exit_crit_edge, label %do.end25.i

if.end.i.iwl_mvm_flush_tx_path.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_flush_tx_path.exit

do.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %call19.i) #8
  br label %iwl_mvm_flush_tx_path.exit

iwl_mvm_flush_tx_path.exit:                       ; preds = %do.end25.i, %if.end.i.iwl_mvm_flush_tx_path.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flush_cmd.i) #8
  br label %cleanup

if.end.i22:                                       ; preds = %if.end
  %tfd_queue_msk5 = getelementptr inbounds %struct.iwl_mvm_sta, ptr %sta, i32 0, i32 1
  %18 = ptrtoint ptr %tfd_queue_msk5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tfd_queue_msk5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flush_cmd.i13) #8
  %20 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, ptr %flush_cmd.i13, i32 0, i32 1
  %21 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd_v1, ptr %flush_cmd.i13, i32 0, i32 2
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %23 = ptrtoint ptr %flush_cmd.i13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flush_cmd.i13, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 512, ptr %20, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %21, align 2
  %call19.i20 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 30, i32 noundef 0, i16 noundef zeroext 8, ptr noundef nonnull %flush_cmd.i13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i20)
  %tobool20.not.i21 = icmp eq i32 %call19.i20, 0
  br i1 %tobool20.not.i21, label %if.end.i22.iwl_mvm_flush_tx_path.exit24_crit_edge, label %do.end25.i23

if.end.i22.iwl_mvm_flush_tx_path.exit24_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_flush_tx_path.exit24

do.end25.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %call19.i20) #8
  br label %iwl_mvm_flush_tx_path.exit24

iwl_mvm_flush_tx_path.exit24:                     ; preds = %do.end25.i23, %if.end.i22.iwl_mvm_flush_tx_path.exit24_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flush_cmd.i13) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_flush_tx_path.exit24, %iwl_mvm_flush_tx_path.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call19.i, %iwl_mvm_flush_tx_path.exit ], [ %call19.i20, %iwl_mvm_flush_tx_path.exit24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_mac80211_idx_to_hwrate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_bt_coex_is_shared_ant_avail(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_tkip_add_iv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_p2k(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_tx_tso_segment(ptr noundef %skb, i32 noundef %num_subframes, i64 noundef %netdev_flags, ptr noundef %mpdus_skb) unnamed_addr #0 align 64 {
entry:
  %cb = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cb)
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size, align 4
  %conv = zext i16 %5 to i32
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp = icmp eq i16 %7, 2048
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %10 = and i16 %9, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %10)
  %cmp.i = icmp eq i16 %10, -30720
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %id = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id, align 4
  %phi.cast = zext i16 %16 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond20 = phi i32 [ 16, %entry.cond.end_crit_edge ], [ 1, %cond.true ]
  %cond = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %phi.cast, %cond.true ]
  %17 = trunc i32 %num_subframes to i16
  %conv9 = mul i16 %5, %17
  %18 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9, ptr %gso_size, align 4
  %cb12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %cb, ptr %cb12, i32 48)
  %call.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %netdev_flags, i1 noundef zeroext true) #8
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %gso_size17 = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %gso_size17 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %5, ptr %gso_size17, align 4
  %23 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond20, ptr %gso_type, align 8
  %cmp.i176 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %land.rhs, label %if.else

land.rhs:                                         ; preds = %cond.end
  %.b171 = load i1, ptr @iwl_mvm_tx_tso_segment.__already_done, align 1
  br i1 %.b171, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !250

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_tx_tso_segment.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 835, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %tobool63.not = icmp eq ptr %call.i, null
  br i1 %tobool63.not, label %if.else.cleanup_crit_edge, label %for.body.lr.ph

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.else
  tail call void @consume_skb(ptr noundef %skb) #8
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %mpdus_skb, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %mpdus_skb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end115.for.body_crit_edge, %for.body.lr.ph
  %tmp.0191 = phi ptr [ %call.i, %for.body.lr.ph ], [ %next.0189, %if.end115.for.body_crit_edge ]
  %i.0190 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %if.end115.for.body_crit_edge ]
  %25 = ptrtoint ptr %tmp.0191 to i32
  call void @__asan_load4_noabort(i32 %25)
  %next.0189 = load ptr, ptr %tmp.0191, align 8
  %cb74 = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 3
  %26 = call ptr @memcpy(ptr %cb74, ptr %cb, i32 48)
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 18
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %32 to i32
  %add.ptr.i = getelementptr i8, ptr %30, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %33 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %34 = lshr i16 %bf.load.i.i, 10
  %35 = and i16 %34, 60
  %mul.i.i = zext i16 %35 to i32
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 7
  %36 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len, align 8
  %.neg = add i32 %37, %sub.ptr.lhs.cast
  %38 = add i32 %sub.ptr.rhs.cast, %mul.i.i
  %add = sub i32 %.neg, %38
  br i1 %cmp, label %if.then81, label %for.body.if.end89_crit_edge

for.body.if.end89_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv83 = zext i16 %i.0190 to i32
  %mul84 = mul i32 %conv83, %num_subframes
  %add85 = add i32 %mul84, %cond
  %conv86 = trunc i32 %add85 to i16
  %network_header.i.i178 = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 15, i32 0, i32 20
  %39 = ptrtoint ptr %network_header.i.i178 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i178, align 4
  %conv.i.i179 = zext i16 %40 to i32
  %add.ptr.i.i180 = getelementptr i8, ptr %30, i32 %conv.i.i179
  %id88 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i180, i32 0, i32 3
  %41 = ptrtoint ptr %id88 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv86, ptr %id88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then81, %for.body.if.end89_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp90 = icmp ugt i32 %add, %conv
  br i1 %cmp90, label %if.then92, label %if.else101

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %end.i181 = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 17
  %42 = ptrtoint ptr %end.i181 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i181, align 4
  %gso_size95 = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %gso_size95 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %5, ptr %gso_size95, align 4
  %45 = load ptr, ptr %end.i181, align 4
  %gso_type100 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %gso_type100 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond20, ptr %gso_type100, align 8
  br label %if.end115

if.else101:                                       ; preds = %if.end89
  br i1 %cmp.i, label %if.then103, label %if.else101.if.end112_crit_edge

if.else101.if.end112_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then103:                                       ; preds = %if.else101
  br i1 %cmp, label %if.then105, label %if.then103.if.end107_crit_edge

if.then103.if.end107_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then105:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i, align 8
  %network_header.i.i184 = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i.i184 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i.i184, align 4
  %conv.i.i185 = zext i16 %50 to i32
  %add.ptr.i.i186 = getelementptr i8, ptr %48, i32 %conv.i.i185
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i186) #8
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.then103.if.end107_crit_edge
  %data108 = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 19
  %51 = ptrtoint ptr %data108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data108, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %52, align 2
  %55 = and i16 %54, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %55)
  %cmp.i.i = icmp eq i16 %55, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %52, i32 %retval.0.v.i
  %56 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %retval.0.i, align 1
  %58 = and i8 %57, 127
  store i8 %58, ptr %retval.0.i, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.end107, %if.else101.if.end112_crit_edge
  %end.i187 = getelementptr inbounds %struct.sk_buff, ptr %tmp.0191, i32 0, i32 17
  %59 = ptrtoint ptr %end.i187 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i187, align 4
  %gso_size114 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %gso_size114 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %gso_size114, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.end112, %if.then92
  %62 = ptrtoint ptr %tmp.0191 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %tmp.0191, align 8
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %mpdus_skb, ptr %tmp.0191, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %tmp.0191, i32 0, i32 1
  %65 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %64, ptr %prev10.i.i.i, align 4
  store volatile ptr %tmp.0191, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %tmp.0191, ptr %64, align 4
  %67 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %68, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %tobool116.not = icmp eq ptr %next.0189, null
  %inc = add i16 %i.0190, 1
  br i1 %tobool116.not, label %if.end115.cleanup_crit_edge, label %if.end115.for.body_crit_edge

if.end115.for.body_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end115.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cb)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_hwrate_to_tx_status(ptr noundef %fw, i32 noundef %rate_n_flags, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %fw, i8 noundef zeroext 1, i8 noundef zeroext 28, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %call)
  %cmp = icmp ult i8 %call, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @iwl_new_rate_from_v1(i32 noundef %rate_n_flags) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate_n_flags.addr.0 = phi i32 [ %call2, %if.then ], [ %rate_n_flags, %entry.if.end_crit_edge ]
  %0 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %and = lshr i32 %rate_n_flags.addr.0, 14
  %1 = trunc i32 %and to i8
  %conv3 = and i8 %1, 3
  %antenna = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 10
  %2 = ptrtoint ptr %antenna to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %antenna, align 2
  %band = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %and.i = and i32 %rate_n_flags.addr.0, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 512
  %and1.i = lshr i32 %rate_n_flags.addr.0, 1
  %shr.i = and i32 %and1.i, 8
  %and2.i = and i32 %rate_n_flags.addr.0, 7
  %or.i = or i32 %shr.i, %and2.i
  %and3.i = and i32 %rate_n_flags.addr.0, 15
  %cond.i = select i1 %cmp.i, i32 %or.i, i32 %and3.i
  %and4.i = lshr i32 %rate_n_flags.addr.0, 11
  %4 = and i32 %and4.i, 7
  %switch.tableidx = add nsw i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup, label %if.end.iwl_mvm_get_hwrate_chan_width.exit.i_crit_edge

if.end.iwl_mvm_get_hwrate_chan_width.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_get_hwrate_chan_width.exit.i

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.iwl_mvm_hwrate_to_tx_status, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %iwl_mvm_get_hwrate_chan_width.exit.i

iwl_mvm_get_hwrate_chan_width.exit.i:             ; preds = %switch.lookup, %if.end.iwl_mvm_get_hwrate_chan_width.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 0, %if.end.iwl_mvm_get_hwrate_chan_width.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %flags.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %0, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %bf.set.i = or i16 %bf.load.i, %retval.0.i.i
  %and9.i = and i32 %rate_n_flags.addr.0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %iwl_mvm_get_hwrate_chan_width.exit.i.if.end.i_crit_edge, label %if.then.i

iwl_mvm_get_hwrate_chan_width.exit.i.if.end.i_crit_edge: ; preds = %iwl_mvm_get_hwrate_chan_width.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %iwl_mvm_get_hwrate_chan_width.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.load.masked.i = and i16 %bf.load.i, 1919
  %bf.clear8.i = and i16 %bf.load.i, -2048
  %bf.value.i = or i16 %retval.0.i.i, %bf.load.masked.i
  %8 = or i16 %bf.value.i, %bf.clear8.i
  %bf.set19.i = or i16 %8, 128
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %iwl_mvm_get_hwrate_chan_width.exit.i.if.end.i_crit_edge
  %storemerge.i = phi i16 [ %bf.set19.i, %if.then.i ], [ %bf.set.i, %iwl_mvm_get_hwrate_chan_width.exit.i.if.end.i_crit_edge ]
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %storemerge.i, ptr %flags.i, align 1
  br i1 %cmp.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set32.i = or i16 %storemerge.i, 8
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %bf.set32.i, ptr %flags.i, align 1
  %conv33.i = trunc i32 %cond.i to i8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv33.i, ptr %0, align 1
  br label %iwl_mvm_hwrate_to_tx_rate.exit

if.else.i:                                        ; preds = %if.end.i
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %and.i, label %if.else56.i [
    i32 768, label %if.then36.i
    i32 1024, label %if.then54.i
  ]

if.then36.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv37.i = trunc i32 %cond.i to i8
  %13 = trunc i32 %rate_n_flags.addr.0 to i8
  %sub.tr.i.i = and i8 %13, 16
  %conv56.i.i = or i8 %sub.tr.i.i, %conv37.i
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv56.i.i, ptr %0, align 1
  %bf.set50.i = or i16 %storemerge.i, 256
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %bf.set50.i, ptr %flags.i, align 1
  br label %iwl_mvm_hwrate_to_tx_rate.exit

if.then54.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %0, align 1
  br label %iwl_mvm_hwrate_to_tx_rate.exit

if.else56.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call57.i = tail call i32 @iwl_mvm_legacy_hw_idx_to_mac80211_idx(i32 noundef %rate_n_flags.addr.0, i32 noundef %bf.lshr) #8
  %conv58.i = trunc i32 %call57.i to i8
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv58.i, ptr %0, align 1
  br label %iwl_mvm_hwrate_to_tx_rate.exit

iwl_mvm_hwrate_to_tx_rate.exit:                   ; preds = %if.else56.i, %if.then54.i, %if.then36.i, %if.then22.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_check_ratid_empty(ptr noundef %mvm, ptr noundef %sta, i8 noundef zeroext %tid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %idxprom = zext i8 %tid to i32
  %arrayidx = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom
  %vif2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %0 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 7
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !251

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1257, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %4, label %if.end.if.end34_crit_edge [
    i32 3, label %if.end.land.lhs.true_crit_edge
    i32 5, label %if.end.land.lhs.true_crit_edge97
  ]

if.end.land.lhs.true_crit_edge97:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge97
  %call30 = tail call zeroext i16 @iwl_mvm_tid_queued(ptr noundef %mvm, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call30)
  %cmp31 = icmp eq i16 %call30, 0
  br i1 %cmp31, label %if.then33, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_sta_set_buffered(ptr noundef %sta, i8 noundef zeroext %tid, i1 noundef zeroext false) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %ssn = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 7
  %6 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ssn, align 2
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %8 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %gen2, align 4
  %13 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool35.not = icmp eq i16 %13, 0
  %14 = and i16 %7, 255
  %spec.select = select i1 %tobool35.not, i16 %7, i16 %14
  %next_reclaimed = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 10, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %next_reclaimed, align 2
  %conv41 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %16)
  %cmp42.not = icmp eq i16 %spec.select, %16
  br i1 %cmp42.not, label %if.end45, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %18, label %if.end45.cleanup_crit_edge [
    i32 4, label %do.end50
    i32 5, label %do.end61
  ]

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_check_ratid_empty, ptr noundef nonnull @.str.73, i32 noundef %conv41) #8
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %state, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %conv56 = zext i8 %tid to i16
  tail call void @ieee80211_start_tx_ba_cb_irqsafe(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %conv56) #8
  br label %cleanup

do.end61:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_check_ratid_empty, ptr noundef nonnull @.str.74, i32 noundef %conv41) #8
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %state, align 4
  %addr68 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %conv70 = zext i8 %tid to i16
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %1, ptr noundef %addr68, i16 noundef zeroext %conv70) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %do.end50, %if.end45.cleanup_crit_edge, %if.end34.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @iwl_mvm_tid_queued(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_sta_modify_sleep_tx_count(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_eosp_nullfunc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_eosp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_next_antenna(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_new_rate_from_v1(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_buffered(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_start_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rs_tx_status(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !82, !84, !86, !87, !89, !90, !92, !94, !96, !98, !99, !101, !103, !104, !106, !107, !109, !110, !112, !114, !115, !117, !118, !120, !121, !123, !125, !127, !128, !130, !131, !133, !135, !137, !138, !140, !141, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !181, !183, !185, !187, !189, !191, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !218, !219, !221, !222, !224, !226, !228, !230, !232, !234, !236, !237, !239}
!llvm.named.register.sp = !{!240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 232, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 267, i32 3}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 725, i32 6}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 728, i32 6}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 763, i32 3}
!11 = !{ptr @__func__.iwl_mvm_tx_skb_non_sta, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 770, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1210, i32 6}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1213, i32 6}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1311, i32 10}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1312, i32 2}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1313, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1314, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1315, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1316, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1317, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1318, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1319, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1320, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1321, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1322, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1323, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1324, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1325, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1326, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1327, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1328, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1329, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1330, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1331, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1332, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1333, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1336, i32 9}
!66 = !{ptr @__func__.iwl_mvm_rx_ba_notif, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2058, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2077, i32 6}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2095, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2099, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2105, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2129, i32 3}
!79 = !{ptr @__func__.iwl_mvm_flush_sta_tids, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2153, i32 2}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2167, i32 7}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2174, i32 7}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2182, i32 7}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 2199, i32 4}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 35, i32 5}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 121, i32 3}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 56, i32 6}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 93, i32 3}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 324, i32 3}
!103 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/net/mac80211.h", i32 6355, i32 2}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 633, i32 3}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 640, i32 3}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 643, i32 3}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 667, i32 14}
!117 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @__func__.iwl_mvm_probe_resp_set_noa, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 679, i32 3}
!120 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 685, i32 4}
!123 = distinct !{null, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1150, i32 6}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1151, i32 3}
!130 = !{ptr @__func__.iwl_trans_tx, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1080, i32 6}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1083, i32 6}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1112, i32 7}
!137 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1116, i32 7}
!140 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1139, i32 2}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1141, i32 6}
!145 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @__func__.iwl_mvm_tx_mpdu, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1167, i32 2}
!148 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1197, i32 2}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 913, i32 6}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 835, i32 6}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1556, i32 4}
!157 = !{ptr @__func__.iwl_mvm_rx_tx_cmd_single, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1648, i32 2}
!159 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1652, i32 2}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1660, i32 8}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1665, i32 6}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1687, i32 5}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1691, i32 5}
!170 = distinct !{null, !171, !"__already_done", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1161, i32 6}
!172 = !{ptr @__func__.iwl_trans_reclaim, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1162, i32 3}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1474, i32 6}
!176 = !{ptr @__func__.iwl_mvm_check_ratid_empty, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1283, i32 3}
!178 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1291, i32 3}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1805, i32 6}
!183 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1815, i32 8}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1816, i32 6}
!187 = distinct !{null, !188, !"__already_done", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1821, i32 7}
!189 = !{ptr @__func__.iwl_mvm_rx_tx_cmd_agg_dbg, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1774, i32 3}
!191 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1742, i32 2}
!194 = !{ptr @.str.79, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1746, i32 2}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1747, i32 2}
!198 = !{ptr @.str.81, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1748, i32 2}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1749, i32 2}
!202 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1750, i32 2}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1751, i32 2}
!206 = !{ptr @.str.85, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1752, i32 2}
!208 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1753, i32 2}
!210 = !{ptr @.str.87, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1754, i32 2}
!212 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!213 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!214 = !{ptr @.str.88, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!216 = distinct !{null, !217, !"__warned", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1186, i32 8}
!218 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1858, i32 6}
!221 = !{ptr @.str.91, !220, !"<string literal>", i1 false, i1 false}
!222 = distinct !{null, !223, !"__warned", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1865, i32 8}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1868, i32 6}
!226 = !{ptr @.str.93, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1911, i32 3}
!228 = distinct !{null, !229, !"__already_done", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1940, i32 5}
!230 = distinct !{null, !231, !"__warned", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1964, i32 5}
!232 = distinct !{null, !233, !"__already_done", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1966, i32 7}
!234 = !{ptr @__func__.iwl_mvm_tx_reclaim, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tx.c", i32 1973, i32 4}
!236 = !{ptr @.str.97, !235, !"<string literal>", i1 false, i1 false}
!237 = distinct !{null, !238, !"__warned", i1 false, i1 false}
!238 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!239 = !{ptr @.str.98, !238, !"<string literal>", i1 false, i1 false}
!240 = !{!"sp"}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"branch_weights", i32 2000, i32 1}
!251 = !{!"branch_weights", i32 1, i32 2000}
!252 = !{i64 2149837456}
!253 = !{i64 2149837722}
!254 = !{i8 0, i8 2}
!255 = !{!"branch_weights", i32 1073205, i32 2146410443}
!256 = !{!"auto-init"}
