; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.140, %struct.anon.141, %struct.anon.141, %struct.list_head, %union.anon.142, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.155, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.157, %struct.list_head, %struct.anon.159, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.140 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.141 = type { i64, i64, i64, i64 }
%union.anon.142 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.145, %struct.anon.150, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.144], i32, i32, i32, [6 x i32] }
%struct.anon.144 = type { [15 x i32], i32 }
%struct.anon.145 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.149 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.146 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.149 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.150 = type { %struct.delayed_work, i32, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rx_phy_info = type <{ i8, i8, i8, i8, i32, i64, i32, i16, i16, [8 x i32], i32, i32, i8, i8, i16 }>
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.iwl_mvm_frame_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.iwl_mvm_phy_ctxt = type { i16, i16, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.154 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.151, %struct.anon.152, %struct.anon.153, i8 }
%struct.anon.151 = type { [4 x i32], i32 }
%struct.anon.152 = type { [4 x i32], i32, i32 }
%struct.anon.153 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.154 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.155 = type { %struct.delayed_work, i32, i8, %struct.anon.156 }
%struct.anon.156 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.157 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.158, %struct.list_head }
%struct.anon.158 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.159 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.101, %struct.list_head, %struct.list_head, %union.anon.102 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.spinlock, i32 }
%union.anon.101 = type { %struct.list_head }
%union.anon.102 = type { %struct.hlist_node }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.127 = type { i64, i64, i8 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.143, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.143 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.125 }>
%struct.anon.125 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.135, %struct.anon.136, %struct.iwl_dma_ptr }
%struct.anon.135 = type { i8, i8, i32 }
%struct.anon.136 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.fw_desc = type { ptr, i32, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_rss_config_cmd = type { i32, i8, [3 x i8], [10 x i32], [128 x i8] }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_mac_beacon_cmd = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ieee80211_hdr] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.iwl_mvm_vif = type { ptr, i16, i16, i8, [6 x i8], i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.iwl_mvm_vif_bf_data, %struct.anon.137, i32, i32, [4 x %struct.ieee80211_tx_queue_params], %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, ptr, %struct.anon.138, i32, i8, i16, [12 x %struct.in6_addr], [1 x i32], i32, ptr, ptr, %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_bf, %struct.iwl_mac_power_cmd, i32, [4 x i32], [6 x i8], %struct.delayed_work, i8, i8, i16, i16, i16, %struct.delayed_work, i8, i64, ptr, [4 x ptr], i8, %struct.anon.139 }
%struct.iwl_mvm_vif_bf_data = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.anon.137 = type { i32, i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.iwl_mvm_time_event_data = type { ptr, %struct.list_head, i32, i32, i8, i32, i32 }
%struct.anon.138 = type { [24 x i8], [32 x i8], i32, i32, i32, i64, i8 }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.iwl_dbgfs_pm = type { i16, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32 }
%struct.iwl_dbgfs_bf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mac_power_cmd = type { i32, i16, i16, i32, i32, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.139 = type { [2 x ptr] }
%struct.iwl_rfi_freq_table_resp_cmd = type { [4 x %struct.iwl_rfi_lut_entry], i32 }
%struct.iwl_rfi_lut_entry = type { i16, [15 x i8], [15 x i8] }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.iwl_he_monitor_cmd = type { [6 x i8], i16, i16, [6 x i8] }
%struct.iwl_mvm_sniffer_apply = type { ptr, ptr, i16 }
%struct.iwl_ltr_config_cmd = type { i32, i32, i32, [4 x i32], i32 }
%struct.iwl_dbg_mem_access_cmd = type { i32, i32, i32, [0 x i32] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rs_data\00", [24 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rs_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rs_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amsdu_len\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_amsdu_len_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_amsdu_len_read, ptr @_iwl_dbgfs_amsdu_len_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@iwl_mvm_dbgfs_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mvm->drv_stats_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_flush\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_tx_flush_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_tx_flush_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sta_drain\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_sta_drain_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_sta_drain_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@iwl_dbgfs_sram_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_sram_read, ptr @_iwl_dbgfs_sram_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_nic_temperature\00", [44 x i8] zeroinitializer }, align 32
@iwl_dbgfs_set_nic_temperature_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_set_nic_temperature_read, ptr @_iwl_dbgfs_set_nic_temperature_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nic_temp\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_nic_temp_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_nic_temp_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctdp_budget\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ctdp_budget_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_ctdp_budget_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stop_ctdp\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_stop_ctdp_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_stop_ctdp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"force_ctkill\00", [19 x i8] zeroinitializer }, align 32
@iwl_dbgfs_force_ctkill_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_force_ctkill_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stations\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_stations_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_stations_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bt_notif\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_bt_notif_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_bt_notif_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt_cmd\00", [25 x i8] zeroinitializer }, align 32
@iwl_dbgfs_bt_cmd_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_bt_cmd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disable_power_off\00", [46 x i8] zeroinitializer }, align 32
@iwl_dbgfs_disable_power_off_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_disable_power_off_read, ptr @_iwl_dbgfs_disable_power_off_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw_ver\00", [25 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_ver_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_fw_ver_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_rx_stats\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_rx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_fw_rx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drv_rx_stats\00", [19 x i8] zeroinitializer }, align 32
@iwl_dbgfs_drv_rx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_drv_rx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_restart\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_restart_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_fw_restart_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw_nmi\00", [25 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_nmi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_fw_nmi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt_tx_prio\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_bt_tx_prio_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_bt_tx_prio_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bt_force_ant\00", [19 x i8] zeroinitializer }, align 32
@iwl_dbgfs_bt_force_ant_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_bt_force_ant_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scan_ant_rxchain\00", [47 x i8] zeroinitializer }, align 32
@iwl_dbgfs_scan_ant_rxchain_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_scan_ant_rxchain_read, ptr @_iwl_dbgfs_scan_ant_rxchain_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prph_reg\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_prph_reg_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_prph_reg_read, ptr @_iwl_dbgfs_prph_reg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_dbg_conf\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_dbg_conf_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_fw_dbg_conf_read, ptr @_iwl_dbgfs_fw_dbg_conf_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fw_dbg_collect\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_dbg_collect_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_fw_dbg_collect_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dbg_time_point\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_dbg_time_point_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_dbg_time_point_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"send_echo_cmd\00", [18 x i8] zeroinitializer }, align 32
@iwl_dbgfs_send_echo_cmd_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_send_echo_cmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"indirection_tbl\00", [16 x i8] zeroinitializer }, align 32
@iwl_dbgfs_indirection_tbl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_indirection_tbl_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inject_packet\00", [18 x i8] zeroinitializer }, align 32
@iwl_dbgfs_inject_packet_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_inject_packet_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inject_beacon_ie\00", [47 x i8] zeroinitializer }, align 32
@iwl_dbgfs_inject_beacon_ie_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_inject_beacon_ie_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"inject_beacon_ie_restore\00", [39 x i8] zeroinitializer }, align 32
@iwl_dbgfs_inject_beacon_ie_restore_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_inject_beacon_ie_restore_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfi_freq_table\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rfi_freq_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rfi_freq_table_read, ptr @_iwl_dbgfs_rfi_freq_table_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_integration_ver\00", [44 x i8] zeroinitializer }, align 32
@iwl_dbgfs_phy_integration_ver_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_phy_integration_ver_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"he_sniffer_params\00", [46 x i8] zeroinitializer }, align 32
@iwl_dbgfs_he_sniffer_params_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_he_sniffer_params_read, ptr @_iwl_dbgfs_he_sniffer_params_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ltr_config\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ltr_config_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @_iwl_dbgfs_ltr_config_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enable_scan_iteration_notif\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drop_bcn_ap_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uapsd_noagg_bssids\00", [45 x i8] zeroinitializer }, align 32
@iwl_dbgfs_uapsd_noagg_bssids_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_uapsd_noagg_bssids_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"d3_test\00", [24 x i8] zeroinitializer }, align 32
@iwl_dbgfs_d3_test_ops = external dso_local constant %struct.file_operations, align 4
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"d3_wake_sysassert\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"last_netdetect_scans\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ps_disabled\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nvm_hw\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nvm_sw\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvm_calib\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvm_prod\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvm_phy_sku\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nvm_reg\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@iwl_dbgfs_mem_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @iwl_dbgfs_mem_read, ptr @iwl_dbgfs_mem_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"../../%pd2\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iwlwifi\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sta_id %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fixed rate 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"A-MPDU size limit %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"valid_tx_ant %s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_A,\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_B,\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last tx rate=0x%X \00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"current %d \00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stored %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.iwl_dbgfs_tx_flush_write = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_tx_flush_write\00", align 1
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FLUSHING all tids queues on sta_id = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FLUSHING queues mask to flush = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %d\00", [26 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_from_staid_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x,%x\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.iwl_dbgfs_set_nic_temperature_write = private unnamed_addr constant [36 x i8] c"iwl_dbgfs_set_nic_temperature_write\00", align 1
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%sabling debug set temperature (temp = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.2d: \00", [25 x i8] zeroinitializer }, align 32
@iwl_dbgfs_stations_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"N/A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bt_ci_compliance = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"primary_ch_lut = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"secondary_ch_lut = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bt_activity_grading = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bt_rrc = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bt_ttc = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sync_sco = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mplut = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MBOX dw0:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09%s: %d%s\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LE_SLAVE_LAT\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LE_PROF1\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LE_PROF2\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LE_PROF_OTHER\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHL_SEQ_N\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INBAND_S\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LE_MIN_RSSI\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LE_SCAN\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LE_ADV\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LE_MAX_TX_POWER\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OPEN_CON_1\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MBOX dw1:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BR_MAX_TX_POWER\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IP_SR\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LE_MSTR\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AGGR_TRFC_LD\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSG_TYPE\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SSN\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MBOX dw2:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SNIFF_ACT\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAG\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INQUIRY\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CONN\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SNIFF_INTERVAL\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DISC\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SCO_TX_ACT\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SCO_RX_ACT\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESCO_RE_TX\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SCO_DURATION\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MBOX dw3:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SCO_STATE\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SNIFF_STATE\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"A2DP_STATE\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"A2DP_SRC\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ACL_STATE\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSTR_STATE\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OBX_STATE\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OPEN_CON_2\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRAFFIC_LOAD\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CHL_SEQN_LSB\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INBAND_P\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSG_TYPE_2\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SSN_2\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UPDATE_REQUEST\00", [17 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Channel inhibition CMD\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\09Primary Channel Bitmap 0x%016llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09Secondary Channel Bitmap 0x%016llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disable_power_off_d0=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disable_power_off_d3=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disable_power_off_d0=\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disable_power_off_d3=\00", [42 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW prefix: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FW: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Device: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bus: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09%-30s %10u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-32s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Statistics_Rx - OFDM\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ina_cnt\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fina_cnt\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"plcp_err\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crc32_err\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"overrun_err\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"early_overrun_err\00", [46 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crc32_good\00", [21 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"false_alarm_cnt\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fina_sync_err_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sfd_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fina_timeout\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unresponded_rts\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxe_frame_lmt_overrun\00", [42 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sent_ack_cnt\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sent_cts_cnt\00", [19 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sent_ba_rsp_cnt\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsp_self_kill\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mh_format_err\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"re_acq_main_rssi_sum\00", [43 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Statistics_Rx - CCK\00", [44 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Statistics_Rx - GENERAL\00", [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bogus_cts\00", [22 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bogus_ack\00", [22 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"non_bssid_frames\00", [47 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"filtered_frames\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"non_channel_beacons\00", [44 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"channel_beacons\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"num_missed_bcon\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adc_rx_saturation_time\00", [41 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ina_detection_search_time\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beacon_silence_rssi_a\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beacon_silence_rssi_b\00", [42 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beacon_silence_rssi_c\00", [42 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interference_data_flag\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_load\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_false_alarms\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"beacon_rssi_a\00", [18 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"beacon_rssi_b\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"beacon_rssi_c\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beacon_energy_a\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beacon_energy_b\00", [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beacon_energy_c\00", [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"num_bt_kills\00", [19 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac_id\00", [25 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"directed_data_mpdu\00", [45 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Statistics_Rx - HT\00", [45 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"agg_crc32_good\00", [17 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"agg_mpdu_cnt\00", [19 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"agg_cnt\00", [24 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsupport_mcs\00", [18 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Legacy/HT/VHT\09:\09%d/%d/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"20/40/80\09:\09%d/%d/%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NGI/SGI\09\09:\09%d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SISO/MIMO2\09:\09%d/%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FAIL/SCSS\09:\09%d/%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MPDUs agg\09:\09%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A-MPDUs\09\09:\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Avg MPDUs/A-MPDU:\09%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Last Rates\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rate[%d]: \00", [21 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nolog\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@iwl_dbgfs_bt_force_ant_write.modes_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217], [16 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bt\00", [29 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wifi\00", [27 x i8] zeroinitializer }, align 32
@__func__.iwl_dbgfs_bt_force_ant_write = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_bt_force_ant_write\00", align 1
@.str.218 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Force mode: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Antennas for scan: \00", [44 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (%hhx)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hhx\00", [27 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Reg 0x%x: (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%i %i\00", [26 x i8] zeroinitializer }, align 32
@iwl_mvm_rcu_dereference_vif_id.__warned.228 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.229 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d: \00", [27 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(%d, %d) \00", [22 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d %02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%x %2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx\00", [57 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%x,%x,%x,%x,%x,%x,%x\00", [43 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to send ltr configuration cmd\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1853, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [22 x i8] c"iwl_dbgfs_rs_data_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1678, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1855, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_amsdu_len_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1706, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1862, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1864, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_tx_flush_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1671, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1865, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_sta_drain_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1672, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1866, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [19 x i8] c"iwl_dbgfs_sram_ops\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1674, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1867, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [34 x i8] c"iwl_dbgfs_set_nic_temperature_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1675, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1868, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_nic_temp_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1676, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1869, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_ctdp_budget_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1668, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1870, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_stop_ctdp_ops\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1669, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1871, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [27 x i8] c"iwl_dbgfs_force_ctkill_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1670, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1872, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_stations_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1677, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1873, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_bt_notif_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1679, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1874, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [21 x i8] c"iwl_dbgfs_bt_cmd_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1680, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1875, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [32 x i8] c"iwl_dbgfs_disable_power_off_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1681, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1876, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [21 x i8] c"iwl_dbgfs_fw_ver_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1684, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1877, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_fw_rx_stats_ops\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1682, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1878, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [27 x i8] c"iwl_dbgfs_drv_rx_stats_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1683, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1879, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_fw_restart_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1686, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1880, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [21 x i8] c"iwl_dbgfs_fw_nmi_ops\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1687, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1881, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_bt_tx_prio_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1688, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1882, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [27 x i8] c"iwl_dbgfs_bt_force_ant_ops\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1689, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1883, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [31 x i8] c"iwl_dbgfs_scan_ant_rxchain_ops\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1690, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1884, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_prph_reg_ops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1665, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1885, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_fw_dbg_conf_ops\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1691, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1886, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_fw_dbg_collect_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1692, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1887, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_dbg_time_point_ops\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1693, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1888, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [28 x i8] c"iwl_dbgfs_send_echo_cmd_ops\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1673, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1889, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [30 x i8] c"iwl_dbgfs_indirection_tbl_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1694, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1890, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [28 x i8] c"iwl_dbgfs_inject_packet_ops\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1696, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1891, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [31 x i8] c"iwl_dbgfs_inject_beacon_ie_ops\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1697, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1892, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [39 x i8] c"iwl_dbgfs_inject_beacon_ie_restore_ops\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1698, i32 1 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1893, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_rfi_freq_table_ops\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1711, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1896, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [34 x i8] c"iwl_dbgfs_phy_integration_ver_ops\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1685, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1900, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [32 x i8] c"iwl_dbgfs_he_sniffer_params_ops\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1708, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1903, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_ltr_config_ops\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1710, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1905, i32 22 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1907, i32 22 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1910, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [33 x i8] c"iwl_dbgfs_uapsd_noagg_bssids_ops\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1700, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1913, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1914, i32 22 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1916, i32 21 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1920, i32 20 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1922, i32 22 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1924, i32 22 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1926, i32 22 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1928, i32 22 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1930, i32 22 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1932, i32 22 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1935, i32 22 }
@___asan_gen_.498 = private unnamed_addr constant [18 x i8] c"iwl_dbgfs_mem_ops\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1838, i32 37 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1945, i32 22 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1946, i32 26 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 390, i32 47 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 393, i32 6 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 396, i32 6 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 399, i32 6 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 400, i32 45 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 400, i32 56 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 401, i32 45 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 403, i32 6 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 455, i32 36 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 456, i32 49 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 230, i32 6 }
@___asan_gen_.541 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 214, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 156, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 91, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 101, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 121, i32 18 }
@___asan_gen_.559 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1203, i32 8 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 191, i32 18 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 217, i32 38 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 219, i32 38 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 263, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 354, i32 44 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 355, i32 9 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 358, i32 45 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 360, i32 45 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 363, i32 45 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 582, i32 43 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 584, i32 43 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 586, i32 43 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 589, i32 18 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 591, i32 43 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 593, i32 43 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 596, i32 43 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 598, i32 43 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 510, i32 39 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 512, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 513, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 514, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 515, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 516, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 517, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 518, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 519, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 520, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 521, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 522, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 524, i32 39 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 526, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 527, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 528, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 529, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 530, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 531, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 533, i32 39 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 535, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 536, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 537, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 538, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 539, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 540, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 541, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 542, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 543, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 544, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 546, i32 39 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 548, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 549, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 550, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 551, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 552, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 553, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 554, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 555, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 556, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 557, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 558, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 559, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 560, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 561, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 621, i32 43 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 623, i32 5 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 626, i32 5 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 471, i32 39 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 473, i32 39 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 487, i32 15 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 488, i32 24 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 491, i32 22 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 701, i32 38 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 703, i32 38 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 705, i32 38 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 707, i32 38 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 750, i32 33 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 751, i32 34 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 775, i32 5 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 779, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 780, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 781, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 782, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 783, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 784, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 785, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 786, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 787, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 788, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 789, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 790, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 791, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 792, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 793, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 794, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 795, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 796, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 797, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 798, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 810, i32 5 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 845, i32 5 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 850, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 851, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 852, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 853, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 854, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 855, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 856, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 857, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 858, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 859, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 860, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 861, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 862, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 863, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 864, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 865, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 866, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 867, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 868, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 869, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 870, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 871, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 872, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 873, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 901, i32 5 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 912, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 913, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 914, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 915, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 955, i32 5 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 959, i32 38 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 963, i32 38 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 966, i32 38 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 969, i32 38 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 972, i32 38 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 974, i32 38 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 976, i32 38 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 980, i32 38 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 987, i32 39 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1026, i32 33 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 640, i32 18 }
@___asan_gen_.993 = private unnamed_addr constant [10 x i8] c"modes_str\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 654, i32 28 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 655, i32 24 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 656, i32 25 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 657, i32 23 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 658, i32 25 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 673, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1066, i32 43 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1068, i32 44 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1070, i32 44 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1071, i32 43 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1085, i32 18 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1409, i32 43 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1423, i32 21 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1644, i32 36 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1649, i32 55 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1654, i32 7 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 731, i32 30 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1538, i32 4 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1490, i32 20 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1577, i32 18 }
@___asan_gen_.1053 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1054 = private constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1054, i32 1594, i32 3 }
@llvm.compiler.used = appending global [273 x ptr] [ptr @.str, ptr @iwl_dbgfs_rs_data_ops, ptr @.str.1, ptr @iwl_dbgfs_amsdu_len_ops, ptr @iwl_mvm_dbgfs_register.__key, ptr @.str.2, ptr @.str.3, ptr @iwl_dbgfs_tx_flush_ops, ptr @.str.4, ptr @iwl_dbgfs_sta_drain_ops, ptr @.str.5, ptr @iwl_dbgfs_sram_ops, ptr @.str.6, ptr @iwl_dbgfs_set_nic_temperature_ops, ptr @.str.7, ptr @iwl_dbgfs_nic_temp_ops, ptr @.str.8, ptr @iwl_dbgfs_ctdp_budget_ops, ptr @.str.9, ptr @iwl_dbgfs_stop_ctdp_ops, ptr @.str.10, ptr @iwl_dbgfs_force_ctkill_ops, ptr @.str.11, ptr @iwl_dbgfs_stations_ops, ptr @.str.12, ptr @iwl_dbgfs_bt_notif_ops, ptr @.str.13, ptr @iwl_dbgfs_bt_cmd_ops, ptr @.str.14, ptr @iwl_dbgfs_disable_power_off_ops, ptr @.str.15, ptr @iwl_dbgfs_fw_ver_ops, ptr @.str.16, ptr @iwl_dbgfs_fw_rx_stats_ops, ptr @.str.17, ptr @iwl_dbgfs_drv_rx_stats_ops, ptr @.str.18, ptr @iwl_dbgfs_fw_restart_ops, ptr @.str.19, ptr @iwl_dbgfs_fw_nmi_ops, ptr @.str.20, ptr @iwl_dbgfs_bt_tx_prio_ops, ptr @.str.21, ptr @iwl_dbgfs_bt_force_ant_ops, ptr @.str.22, ptr @iwl_dbgfs_scan_ant_rxchain_ops, ptr @.str.23, ptr @iwl_dbgfs_prph_reg_ops, ptr @.str.24, ptr @iwl_dbgfs_fw_dbg_conf_ops, ptr @.str.25, ptr @iwl_dbgfs_fw_dbg_collect_ops, ptr @.str.26, ptr @iwl_dbgfs_dbg_time_point_ops, ptr @.str.27, ptr @iwl_dbgfs_send_echo_cmd_ops, ptr @.str.28, ptr @iwl_dbgfs_indirection_tbl_ops, ptr @.str.29, ptr @iwl_dbgfs_inject_packet_ops, ptr @.str.30, ptr @iwl_dbgfs_inject_beacon_ie_ops, ptr @.str.31, ptr @iwl_dbgfs_inject_beacon_ie_restore_ops, ptr @.str.32, ptr @iwl_dbgfs_rfi_freq_table_ops, ptr @.str.33, ptr @iwl_dbgfs_phy_integration_ver_ops, ptr @.str.34, ptr @iwl_dbgfs_he_sniffer_params_ops, ptr @.str.35, ptr @iwl_dbgfs_ltr_config_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @iwl_dbgfs_uapsd_noagg_bssids_ops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @iwl_dbgfs_mem_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @iwl_dbgfs_bt_force_ant_write.modes_str, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236], section "llvm.metadata"
@0 = internal global [273 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rs_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_amsdu_len_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_dbgfs_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_tx_flush_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_sta_drain_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_sram_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_set_nic_temperature_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_nic_temp_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ctdp_budget_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_stop_ctdp_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_force_ctkill_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_stations_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_bt_notif_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_bt_cmd_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_disable_power_off_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_ver_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_rx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_drv_rx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_restart_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_nmi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_bt_tx_prio_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_bt_force_ant_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_scan_ant_rxchain_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_prph_reg_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_dbg_conf_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_dbg_collect_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_dbg_time_point_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_send_echo_cmd_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_indirection_tbl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_inject_packet_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_inject_beacon_ie_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_inject_beacon_ie_restore_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rfi_freq_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_phy_integration_ver_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_he_sniffer_params_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ltr_config_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_uapsd_noagg_bssids_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_mem_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_bt_force_ant_write.modes_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_sta_add_debugfs(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 3
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %3, i32 0, i32 5, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.i.not, label %entry.do.body2_crit_edge, label %do.body

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @iwl_dbgfs_rs_data_ops) #11
  br label %do.body2

do.body2:                                         ; preds = %do.body, %entry.do.body2_crit_edge
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @iwl_dbgfs_amsdu_len_ops) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_dbgfs_register(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_stats_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 84
  tail call void @__raw_spin_lock_init(ptr noundef %drv_stats_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @iwl_mvm_dbgfs_register.__key, i16 noundef signext 3) #11
  %debugfs_dir = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 69
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 8
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 128, ptr noundef %1, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_tx_flush_ops) #11
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_dir, align 8
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 128, ptr noundef %3, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_sta_drain_ops) #11
  %4 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_dir, align 8
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %5, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_sram_ops) #11
  %6 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_dir, align 8
  %call17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef %7, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_set_nic_temperature_ops) #11
  %8 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_dir, align 8
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %9, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_nic_temp_ops) #11
  %10 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_dir, align 8
  %call27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %11, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_ctdp_budget_ops) #11
  %12 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_dir, align 8
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 128, ptr noundef %13, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_stop_ctdp_ops) #11
  %14 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_dir, align 8
  %call37 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 128, ptr noundef %15, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_force_ctkill_ops) #11
  %16 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs_dir, align 8
  %call42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_stations_ops) #11
  %18 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs_dir, align 8
  %call47 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %19, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_bt_notif_ops) #11
  %20 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_dir, align 8
  %call52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_bt_cmd_ops) #11
  %22 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %debugfs_dir, align 8
  %call57 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %23, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_disable_power_off_ops) #11
  %24 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debugfs_dir, align 8
  %call62 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %25, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_fw_ver_ops) #11
  %26 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debugfs_dir, align 8
  %call67 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %27, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_fw_rx_stats_ops) #11
  %28 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debugfs_dir, align 8
  %call72 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_drv_rx_stats_ops) #11
  %30 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %debugfs_dir, align 8
  %call77 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 128, ptr noundef %31, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_fw_restart_ops) #11
  %32 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %debugfs_dir, align 8
  %call82 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 128, ptr noundef %33, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_fw_nmi_ops) #11
  %34 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debugfs_dir, align 8
  %call87 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 128, ptr noundef %35, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_bt_tx_prio_ops) #11
  %36 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %debugfs_dir, align 8
  %call92 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 128, ptr noundef %37, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_bt_force_ant_ops) #11
  %38 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %debugfs_dir, align 8
  %call97 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 384, ptr noundef %39, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_scan_ant_rxchain_ops) #11
  %40 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %debugfs_dir, align 8
  %call102 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 384, ptr noundef %41, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_prph_reg_ops) #11
  %42 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %debugfs_dir, align 8
  %call107 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 384, ptr noundef %43, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_fw_dbg_conf_ops) #11
  %44 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %debugfs_dir, align 8
  %call112 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 128, ptr noundef %45, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_fw_dbg_collect_ops) #11
  %46 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %debugfs_dir, align 8
  %call117 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 128, ptr noundef %47, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_dbg_time_point_ops) #11
  %48 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %debugfs_dir, align 8
  %call122 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 128, ptr noundef %49, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_send_echo_cmd_ops) #11
  %50 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %debugfs_dir, align 8
  %call127 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 128, ptr noundef %51, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_indirection_tbl_ops) #11
  %52 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %debugfs_dir, align 8
  %call132 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 128, ptr noundef %53, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_inject_packet_ops) #11
  %54 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %debugfs_dir, align 8
  %call137 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 128, ptr noundef %55, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_inject_beacon_ie_ops) #11
  %56 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %debugfs_dir, align 8
  %call142 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 128, ptr noundef %57, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_inject_beacon_ie_restore_ops) #11
  %58 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %debugfs_dir, align 8
  %call147 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 384, ptr noundef %59, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_rfi_freq_table_ops) #11
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %60 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw, align 8
  %phy_integration_ver = getelementptr inbounds %struct.iwl_fw, ptr %61, i32 0, i32 21
  %62 = ptrtoint ptr %phy_integration_ver to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy_integration_ver, align 4
  %tobool.not = icmp eq ptr %63, null
  br i1 %tobool.not, label %entry.do.body155_crit_edge, label %do.body150

entry.do.body155_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

do.body150:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %debugfs_dir, align 8
  %call152 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 256, ptr noundef %65, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_phy_integration_ver_ops) #11
  br label %do.body155

do.body155:                                       ; preds = %do.body150, %entry.do.body155_crit_edge
  %66 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %debugfs_dir, align 8
  %call157 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 384, ptr noundef %67, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_he_sniffer_params_ops) #11
  %68 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %69, i32 0, i32 5, i32 8, i32 1
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx.i.i, align 4
  %72 = and i32 %71, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not = icmp eq i32 %72, 0
  br i1 %tobool.i.not, label %do.body155.if.end168_crit_edge, label %do.body163

do.body155.if.end168_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

do.body163:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %debugfs_dir, align 8
  %call165 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 128, ptr noundef %74, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_ltr_config_ops) #11
  br label %if.end168

if.end168:                                        ; preds = %do.body163, %do.body155.if.end168_crit_edge
  %75 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %debugfs_dir, align 8
  %scan_iter_notif_enabled = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 76
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.36, i16 noundef zeroext 384, ptr noundef %76, ptr noundef %scan_iter_notif_enabled) #11
  %77 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %debugfs_dir, align 8
  %drop_bcn_ap_mode = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 168
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.37, i16 noundef zeroext 384, ptr noundef %78, ptr noundef %drop_bcn_ap_mode) #11
  %79 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %debugfs_dir, align 8
  %call173 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %80, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_uapsd_noagg_bssids_ops) #11
  %81 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %debugfs_dir, align 8
  %call178 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef %82, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_d3_test_ops) #11
  %83 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %debugfs_dir, align 8
  %d3_wake_sysassert = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 112
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.40, i16 noundef zeroext 384, ptr noundef %84, ptr noundef %d3_wake_sysassert) #11
  %85 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %debugfs_dir, align 8
  %last_netdetect_scans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 116
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef %86, ptr noundef %last_netdetect_scans) #11
  %87 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %debugfs_dir, align 8
  %ps_disabled = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef %88, ptr noundef %ps_disabled) #11
  %89 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %debugfs_dir, align 8
  %nvm_hw_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 77
  %call185 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.43, i16 noundef zeroext 256, ptr noundef %90, ptr noundef %nvm_hw_blob) #11
  %91 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %debugfs_dir, align 8
  %nvm_sw_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 78
  %call187 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.44, i16 noundef zeroext 256, ptr noundef %92, ptr noundef %nvm_sw_blob) #11
  %93 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %debugfs_dir, align 8
  %nvm_calib_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 79
  %call189 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.45, i16 noundef zeroext 256, ptr noundef %94, ptr noundef %nvm_calib_blob) #11
  %95 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %debugfs_dir, align 8
  %nvm_prod_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 80
  %call191 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.46, i16 noundef zeroext 256, ptr noundef %96, ptr noundef %nvm_prod_blob) #11
  %97 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %debugfs_dir, align 8
  %nvm_phy_sku_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 81
  %call193 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.47, i16 noundef zeroext 256, ptr noundef %98, ptr noundef %nvm_phy_sku_blob) #11
  %99 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %debugfs_dir, align 8
  %nvm_reg_blob = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 82
  %call195 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef %100, ptr noundef %nvm_reg_blob) #11
  %101 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %debugfs_dir, align 8
  %call197 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 384, ptr noundef %102, ptr noundef %mvm, ptr noundef nonnull @iwl_dbgfs_mem_ops) #11
  %103 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %debugfs_dir, align 8
  %cmp.i = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end168.if.end205_crit_edge, label %if.then200

if.end168.if.end205_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end205

if.then200:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #11
  %105 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %d_parent = getelementptr inbounds %struct.dentry, ptr %104, i32 0, i32 3
  %106 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %d_parent, align 8
  %call202 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.50, ptr noundef %107)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %111, i32 0, i32 58
  %112 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %debugfsdir, align 4
  %call204 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.51, ptr noundef %113, ptr noundef nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #11
  br label %if.end205

if.end205:                                        ; preds = %if.then200, %if.end168.if.end205_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rs_data_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 2, i32 25, i32 1
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 2048) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pers = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 2, i32 16
  %lq_sta1 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 2, i32 15
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %5 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pers, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 2048, ptr noundef nonnull @.str.52, i32 noundef %6) #11
  %add.ptr5 = getelementptr i8, ptr %call7.i, i32 %call4
  %sub6 = sub i32 2048, %call4
  %dbg_fixed_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 2, i32 17
  %7 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dbg_fixed_rate, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.53, i32 noundef %8) #11
  %add9 = add i32 %call8, %call4
  %add.ptr10 = getelementptr i8, ptr %call7.i, i32 %add9
  %sub11 = sub i32 2048, %add9
  %dbg_agg_frame_count_lim = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 2, i32 21
  %9 = ptrtoint ptr %dbg_agg_frame_count_lim to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dbg_agg_frame_count_lim, align 4
  %conv = zext i16 %10 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.54, i32 noundef %conv) #11
  %add14 = add i32 %call13, %add9
  %add.ptr15 = getelementptr i8, ptr %call7.i, i32 %add14
  %sub16 = sub i32 2048, %add14
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %iwl_mvm_get_valid_tx_ant.exit.thread104, label %land.lhs.true.i

iwl_mvm_get_valid_tx_ant.exit.thread104:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fw8.i105 = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %fw8.i105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw8.i105, align 8
  %valid_tx_ant9.i106 = getelementptr inbounds %struct.iwl_fw, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %valid_tx_ant9.i106 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %valid_tx_ant9.i106, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not107 = icmp eq i8 %17, 0
  %cond108 = select i1 %tobool19.not107, ptr @.str.57, ptr @.str.56
  br label %cond.false.i95

land.lhs.true.i:                                  ; preds = %if.end
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %12, i32 0, i32 20
  %18 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw8.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %valid_tx_ant9.i, align 4
  %and.i = and i8 %19, 1
  %.sink.v = select i1 %tobool2.not.i, i8 1, i8 %and.i
  %.sink = and i8 %23, %.sink.v
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %tobool19.not = icmp eq i8 %.sink, 0
  %cond = select i1 %tobool19.not, ptr @.str.57, ptr @.str.56
  %24 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.i87 = icmp eq i8 %25, 0
  br i1 %tobool2.not.i87, label %land.lhs.true.i.cond.false.i95_crit_edge, label %cond.true.i92

land.lhs.true.i.cond.false.i95_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i95

cond.true.i92:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %fw.i89 = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %fw.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw.i89, align 8
  %valid_tx_ant3.i90 = getelementptr inbounds %struct.iwl_fw, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %valid_tx_ant3.i90 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %valid_tx_ant3.i90, align 4
  %and.i91 = and i8 %29, %25
  br label %iwl_mvm_get_valid_tx_ant.exit97

cond.false.i95:                                   ; preds = %land.lhs.true.i.cond.false.i95_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.thread104
  %cond103 = phi ptr [ %cond, %land.lhs.true.i.cond.false.i95_crit_edge ], [ %cond108, %iwl_mvm_get_valid_tx_ant.exit.thread104 ]
  %fw8.i93 = getelementptr inbounds %struct.iwl_mvm, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %fw8.i93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw8.i93, align 8
  %valid_tx_ant9.i94 = getelementptr inbounds %struct.iwl_fw, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %valid_tx_ant9.i94 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %valid_tx_ant9.i94, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit97

iwl_mvm_get_valid_tx_ant.exit97:                  ; preds = %cond.false.i95, %cond.true.i92
  %cond101 = phi ptr [ %cond, %cond.true.i92 ], [ %cond103, %cond.false.i95 ]
  %cond.i96 = phi i8 [ %and.i91, %cond.true.i92 ], [ %33, %cond.false.i95 ]
  %34 = and i8 %cond.i96, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool23.not = icmp eq i8 %34, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.57, ptr @.str.58
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond101, ptr noundef nonnull %cond24) #11
  %add26 = add i32 %call25, %add14
  %add.ptr27 = getelementptr i8, ptr %call7.i, i32 %add26
  %sub28 = sub i32 2048, %add26
  %35 = ptrtoint ptr %lq_sta1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lq_sta1, align 4
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.59, i32 noundef %36) #11
  %add30 = add i32 %call29, %add26
  %add.ptr31 = getelementptr i8, ptr %call7.i, i32 %add30
  %sub32 = sub i32 2048, %add30
  %37 = ptrtoint ptr %lq_sta1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lq_sta1, align 4
  %call34 = tail call i32 @rs_pretty_print_rate(ptr noundef %add.ptr31, i32 noundef %sub32, i32 noundef %38) #11
  %add35 = add i32 %call34, %add30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add35)
  %cmp = icmp ult i32 %add35, 2047
  br i1 %cmp, label %if.then37, label %iwl_mvm_get_valid_tx_ant.exit97.if.end38_crit_edge

iwl_mvm_get_valid_tx_ant.exit97.if.end38_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %iwl_mvm_get_valid_tx_ant.exit97
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw nsw i32 %add35, 1
  %arrayidx = getelementptr i8, ptr %call7.i, i32 %add35
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 10, ptr %arrayidx, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %iwl_mvm_get_valid_tx_ant.exit97.if.end38_crit_edge
  %desc.0 = phi i32 [ %inc, %if.then37 ], [ %add35, %iwl_mvm_get_valid_tx_ant.exit97.if.end38_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %call40 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %desc.0) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end38 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs_pretty_print_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_amsdu_len_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %max_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 21
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %max_amsdu_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_amsdu_len, align 4
  %conv = zext i16 %4 to i32
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %conv) #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %call1
  %sub = sub i32 32, %call1
  %orig_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 18, i32 0, i32 1
  %5 = ptrtoint ptr %orig_amsdu_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %orig_amsdu_len, align 8
  %conv3 = zext i16 %6 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.61, i32 noundef %conv3) #11
  %add = add i32 %call4, %call1
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_amsdu_len_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %amsdu_len.i = alloca i16, align 2
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %amsdu_len.i) #11
  %9 = ptrtoint ptr %amsdu_len.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %amsdu_len.i, align 2, !annotation !578
  %call1.i = call i32 @kstrtou16(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %amsdu_len.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_amsdu_len_write.exit_crit_edge

if.end.iwl_dbgfs_amsdu_len_write.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_amsdu_len_write.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %amsdu_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %amsdu_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.not.i = icmp eq i16 %11, 0
  %orig_amsdu_len17.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 18, i32 0, i32 1
  %12 = ptrtoint ptr %orig_amsdu_len17.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %orig_amsdu_len17.i, align 8
  br i1 %tobool2.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool4.not.i = icmp eq i16 %13, 0
  br i1 %tobool4.not.i, label %if.then13.i, label %land.lhs.true.i.iwl_dbgfs_amsdu_len_write.exit_crit_edge

land.lhs.true.i.iwl_dbgfs_amsdu_len_write.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_amsdu_len_write.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_amsdu_len.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %max_amsdu_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_amsdu_len.i, align 4
  %16 = ptrtoint ptr %orig_amsdu_len17.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %orig_amsdu_len17.i, align 8
  store i16 %11, ptr %max_amsdu_len.i, align 4
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 0
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %11, ptr %arrayidx.i, align 2
  %arrayidx.1.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %11, ptr %arrayidx.1.i, align 2
  %arrayidx.2.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %11, ptr %arrayidx.2.i, align 2
  %arrayidx.3.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %11, ptr %arrayidx.3.i, align 2
  %arrayidx.4.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %11, ptr %arrayidx.4.i, align 2
  %arrayidx.5.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 5
  %22 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %11, ptr %arrayidx.5.i, align 2
  %arrayidx.6.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 6
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %11, ptr %arrayidx.6.i, align 2
  %arrayidx.7.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 7
  %24 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %11, ptr %arrayidx.7.i, align 2
  %arrayidx.8.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 8
  %25 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %11, ptr %arrayidx.8.i, align 2
  %arrayidx.9.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 9
  %26 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %11, ptr %arrayidx.9.i, align 2
  %arrayidx.10.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 10
  %27 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %11, ptr %arrayidx.10.i, align 2
  %arrayidx.11.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 11
  %28 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %11, ptr %arrayidx.11.i, align 2
  %arrayidx.12.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 12
  %29 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %11, ptr %arrayidx.12.i, align 2
  %arrayidx.13.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 13
  %30 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %11, ptr %arrayidx.13.i, align 2
  %arrayidx.14.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 14
  %31 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %11, ptr %arrayidx.14.i, align 2
  %arrayidx.15.i = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 25, i32 15
  %32 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %11, ptr %arrayidx.15.i, align 2
  br label %iwl_dbgfs_amsdu_len_write.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_amsdu_len18.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %max_amsdu_len18.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %13, ptr %max_amsdu_len18.i, align 4
  %34 = ptrtoint ptr %orig_amsdu_len17.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %orig_amsdu_len17.i, align 8
  br label %iwl_dbgfs_amsdu_len_write.exit

iwl_dbgfs_amsdu_len_write.exit:                   ; preds = %if.else.i, %if.then13.i, %land.lhs.true.i.iwl_dbgfs_amsdu_len_write.exit_crit_edge, %if.end.iwl_dbgfs_amsdu_len_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.iwl_dbgfs_amsdu_len_write.exit_crit_edge ], [ -16, %land.lhs.true.i.iwl_dbgfs_amsdu_len_write.exit_crit_edge ], [ %3, %if.else.i ], [ %3, %if.then13.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %amsdu_len.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_amsdu_len_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_amsdu_len_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_tx_flush_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %flush_arg.i = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flush_arg.i) #11
  %9 = ptrtoint ptr %flush_arg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %flush_arg.i, align 4, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_tx_flush_write.exit_crit_edge, label %lor.lhs.false.i

if.end.iwl_dbgfs_tx_flush_write.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_tx_flush_write.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %cur_fw_img.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %13 = ptrtoint ptr %cur_fw_img.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_fw_img.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.iwl_dbgfs_tx_flush_write.exit_crit_edge

lor.lhs.false.i.iwl_dbgfs_tx_flush_write.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_tx_flush_write.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i.i8 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %flush_arg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %tobool.not.i = icmp eq i32 %call.i.i8, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.iwl_dbgfs_tx_flush_write.exit_crit_edge

if.end.i.iwl_dbgfs_tx_flush_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_tx_flush_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %20 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.i2.not.i = icmp eq i16 %20, 0
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = ptrtoint ptr %flush_arg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flush_arg.i, align 4
  br i1 %tobool.i2.not.i, label %do.end16.i, label %do.end.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_tx_flush_write, ptr noundef nonnull @.str.65, i32 noundef %24) #11
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %25 = ptrtoint ptr %flush_arg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flush_arg.i, align 4
  %call9.i = call i32 @iwl_mvm_flush_sta_tids(ptr noundef %1, i32 noundef %26, i16 noundef zeroext -1) #11
  br label %cleanup.sink.split.i

do.end16.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_tx_flush_write, ptr noundef nonnull @.str.66, i32 noundef %24) #11
  %mutex20.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex20.i, i32 noundef 0) #11
  %27 = ptrtoint ptr %flush_arg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flush_arg.i, align 4
  %call21.i = call i32 @iwl_mvm_flush_tx_path(ptr noundef %1, i32 noundef %28) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end16.i, %do.end.i
  %call21.sink3.i = phi i32 [ %call21.i, %do.end16.i ], [ %call9.i, %do.end.i ]
  %mutex20.sink.i = phi ptr [ %mutex20.i, %do.end16.i ], [ %mutex.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.sink3.i)
  %tobool22.not.i = icmp eq i32 %call21.sink3.i, 0
  %spec.select1.i = select i1 %tobool22.not.i, i32 %3, i32 %call21.sink3.i
  call void @mutex_unlock(ptr noundef %mutex20.sink.i) #11
  br label %iwl_dbgfs_tx_flush_write.exit

iwl_dbgfs_tx_flush_write.exit:                    ; preds = %cleanup.sink.split.i, %if.end.i.iwl_dbgfs_tx_flush_write.exit_crit_edge, %lor.lhs.false.i.iwl_dbgfs_tx_flush_write.exit_crit_edge, %if.end.iwl_dbgfs_tx_flush_write.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %lor.lhs.false.i.iwl_dbgfs_tx_flush_write.exit_crit_edge ], [ -5, %if.end.iwl_dbgfs_tx_flush_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_tx_flush_write.exit_crit_edge ], [ %spec.select1.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flush_arg.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_tx_flush_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_tx_flush_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_flush_sta_tids(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_flush_tx_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_sta_drain_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %sta_id.i = alloca i32, align 4
  %drain.i = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buf, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta_id.i) #11
  %9 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %sta_id.i, align 4, !annotation !578
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drain.i) #11
  %10 = ptrtoint ptr %drain.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %drain.i, align 4, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_sta_drain_write.exit_crit_edge, label %lor.lhs.false.i

if.end.iwl_dbgfs_sta_drain_write.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sta_drain_write.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %cur_fw_img.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %14 = ptrtoint ptr %cur_fw_img.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_fw_img.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.iwl_dbgfs_sta_drain_write.exit_crit_edge

lor.lhs.false.i.iwl_dbgfs_sta_drain_write.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sta_drain_write.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call1.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.67, ptr noundef nonnull %sta_id.i, ptr noundef nonnull %drain.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 2
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.iwl_dbgfs_sta_drain_write.exit_crit_edge

if.end.i.iwl_dbgfs_sta_drain_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sta_drain_write.exit

if.end4.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sta_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.i = icmp slt i32 %17, 0
  br i1 %cmp5.i, label %if.end4.i.iwl_dbgfs_sta_drain_write.exit_crit_edge, label %lor.lhs.false6.i

if.end4.i.iwl_dbgfs_sta_drain_write.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sta_drain_write.exit

lor.lhs.false6.i:                                 ; preds = %if.end4.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %19, i32 0, i32 5, i32 6
  %20 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp7.not.i = icmp ult i32 %17, %21
  br i1 %cmp7.not.i, label %if.end9.i, label %lor.lhs.false6.i.iwl_dbgfs_sta_drain_write.exit_crit_edge

lor.lhs.false6.i.iwl_dbgfs_sta_drain_write.exit_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sta_drain_write.exit

if.end9.i:                                        ; preds = %lor.lhs.false6.i
  %22 = ptrtoint ptr %drain.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %drain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %if.end9.i.iwl_dbgfs_sta_drain_write.exit_crit_edge, label %if.end14.i

if.end9.i.iwl_dbgfs_sta_drain_write.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sta_drain_write.exit

if.end14.i:                                       ; preds = %if.end9.i
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %25 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sta_id.i, align 4
  %conv.i = trunc i32 %26 to i8
  %call15.i = call fastcc ptr @iwl_mvm_sta_from_staid_protected(ptr noundef %1, i8 noundef zeroext %conv.i) #11
  %tobool.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.else.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %drain.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.i = icmp ne i32 %28, 0
  %call18.i = call i32 @iwl_mvm_drain_sta(ptr noundef %1, ptr noundef nonnull %call15.i, i1 noundef zeroext %tobool17.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  %spec.select.i = select i1 %tobool19.not.i, i32 %3, i32 %call18.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.end14.i.if.end20.i_crit_edge
  %ret.0.i = phi i32 [ %spec.select.i, %if.else.i ], [ -2, %if.end14.i.if.end20.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %iwl_dbgfs_sta_drain_write.exit

iwl_dbgfs_sta_drain_write.exit:                   ; preds = %if.end20.i, %if.end9.i.iwl_dbgfs_sta_drain_write.exit_crit_edge, %lor.lhs.false6.i.iwl_dbgfs_sta_drain_write.exit_crit_edge, %if.end4.i.iwl_dbgfs_sta_drain_write.exit_crit_edge, %if.end.i.iwl_dbgfs_sta_drain_write.exit_crit_edge, %lor.lhs.false.i.iwl_dbgfs_sta_drain_write.exit_crit_edge, %if.end.iwl_dbgfs_sta_drain_write.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end20.i ], [ -5, %lor.lhs.false.i.iwl_dbgfs_sta_drain_write.exit_crit_edge ], [ -5, %if.end.iwl_dbgfs_sta_drain_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_sta_drain_write.exit_crit_edge ], [ -22, %lor.lhs.false6.i.iwl_dbgfs_sta_drain_write.exit_crit_edge ], [ -22, %if.end4.i.iwl_dbgfs_sta_drain_write.exit_crit_edge ], [ -22, %if.end9.i.iwl_dbgfs_sta_drain_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drain.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta_id.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_sta_drain_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_sta_drain_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iwl_mvm_sta_from_staid_protected(ptr noundef %mvm, i8 noundef zeroext %sta_id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %sta_id to i32
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.68, i32 noundef 1204, ptr noundef nonnull @.str.69) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 29
  %spec.select = select i1 %spec.select.i, ptr null, ptr %drv_priv.i
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_drain_sta(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_sram_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 8
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %7 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_fw_img, align 8
  %arrayidx = getelementptr %struct.iwl_fw, ptr %6, i32 0, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %offset = getelementptr inbounds %struct.fw_desc, ptr %10, i32 0, i32 2
  %len5 = getelementptr inbounds %struct.fw_desc, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len5, align 4
  %dbgfs_sram_len = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 71
  %13 = ptrtoint ptr %dbgfs_sram_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dbgfs_sram_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %dbgfs_sram_offset = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 70
  %spec.select = select i1 %tobool.not, ptr %offset, ptr %dbgfs_sram_offset
  %spec.select43 = select i1 %tobool.not, i32 %12, i32 %14
  %15 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %15)
  %ofs.0 = load i32, ptr %spec.select, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select43, i32 noundef 3520) #16
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans, align 4
  %div42 = lshr i32 %spec.select43, 2
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_mem.i, align 4
  %call.i = tail call i32 %21(ptr noundef %17, i32 noundef %ofs.0, ptr noundef nonnull %call9.i.i, i32 noundef %div42) #11
  %call22 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i.i, i32 noundef %spec.select43) #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_sram_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #11
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %offset.i, align 4, !annotation !578
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %len.i, align 4, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_sram_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_sram_write.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sram_write.exit

if.end.i:                                         ; preds = %if.end
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw.i, align 8
  %cur_fw_img.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %16 = ptrtoint ptr %cur_fw_img.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_fw_img.i, align 8
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %15, i32 0, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %offset3.i = getelementptr inbounds %struct.fw_desc, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset3.i, align 4
  %len6.i = getelementptr inbounds %struct.fw_desc, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len6.i, align 4
  %call7.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.70, ptr noundef nonnull %offset.i, ptr noundef nonnull %len.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call7.i)
  %cmp.i = icmp eq i32 %call7.i, 2
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.then8.i:                                       ; preds = %if.end.i
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then8.i.iwl_dbgfs_sram_write.exit_crit_edge

if.then8.i.iwl_dbgfs_sram_write.exit_crit_edge:   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sram_write.exit

lor.lhs.false.i:                                  ; preds = %if.then8.i
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %and9.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false.i.iwl_dbgfs_sram_write.exit_crit_edge

lor.lhs.false.i.iwl_dbgfs_sram_write.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sram_write.exit

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %add.i = add i32 %27, %25
  %add13.i = add i32 %23, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add13.i)
  %cmp14.i = icmp ugt i32 %add.i, %add13.i
  br i1 %cmp14.i, label %if.end12.i.iwl_dbgfs_sram_write.exit_crit_edge, label %if.end12.i.cleanup.sink.split.i_crit_edge

if.end12.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end12.i.iwl_dbgfs_sram_write.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_sram_write.exit

cleanup.sink.split.i:                             ; preds = %if.end12.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink1.i = phi i32 [ %25, %if.end12.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ %27, %if.end12.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %dbgfs_sram_offset.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 70
  %28 = ptrtoint ptr %dbgfs_sram_offset.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink1.i, ptr %dbgfs_sram_offset.i, align 4
  %dbgfs_sram_len.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 71
  %29 = ptrtoint ptr %dbgfs_sram_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i, ptr %dbgfs_sram_len.i, align 8
  br label %iwl_dbgfs_sram_write.exit

iwl_dbgfs_sram_write.exit:                        ; preds = %cleanup.sink.split.i, %if.end12.i.iwl_dbgfs_sram_write.exit_crit_edge, %lor.lhs.false.i.iwl_dbgfs_sram_write.exit_crit_edge, %if.then8.i.iwl_dbgfs_sram_write.exit_crit_edge, %if.end.iwl_dbgfs_sram_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.iwl_dbgfs_sram_write.exit_crit_edge ], [ -22, %lor.lhs.false.i.iwl_dbgfs_sram_write.exit_crit_edge ], [ -22, %if.then8.i.iwl_dbgfs_sram_write.exit_crit_edge ], [ -22, %if.end12.i.iwl_dbgfs_sram_write.exit_crit_edge ], [ %3, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_sram_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_sram_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_set_nic_temperature_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  %temperature_test = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 128
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %3 = ptrtoint ptr %temperature_test to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %temperature_test, align 4, !range !579
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.71) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %temperature = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 127
  %5 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temperature, align 8
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.72, i32 noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pos.0 = phi i32 [ %call2, %if.else ], [ %call, %if.then ]
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.0) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_set_nic_temperature_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %temperature.i = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature.i) #11
  %9 = ptrtoint ptr %temperature.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %temperature.i, align 4, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %temperature_test.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 128
  %13 = ptrtoint ptr %temperature_test.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %temperature_test.i, align 4, !range !579
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_set_nic_temperature_write.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %call1.i = call i32 @kstrtoint(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %temperature.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge

if.end.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_set_nic_temperature_write.exit

if.end4.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temperature.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %16)
  %cmp.i = icmp sgt i32 %16, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp6.not.i = icmp ne i32 %16, 255
  %or.cond.not.i = and i1 %cmp.i, %cmp6.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %16)
  %cmp7.i = icmp slt i32 %16, -100
  %or.cond1.i = or i1 %cmp7.i, %or.cond.not.i
  br i1 %or.cond1.i, label %if.end4.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge, label %if.end9.i

if.end4.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_set_nic_temperature_write.exit

if.end9.i:                                        ; preds = %if.end4.i
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %17 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temperature.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %cmp10.i = icmp eq i32 %18, 255
  %temperature_test12.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 128
  br i1 %cmp10.i, label %if.then11.i, label %if.end9.i.do.end.i_crit_edge

if.end9.i.do.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then11.i:                                      ; preds = %if.end9.i
  %19 = ptrtoint ptr %temperature_test12.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %temperature_test12.i, align 4, !range !579
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not.i = icmp eq i8 %20, 0
  br i1 %tobool13.not.i, label %if.then11.i.out.i_crit_edge, label %if.then11.i.do.end.i_crit_edge

if.then11.i.do.end.i_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then11.i.out.i_crit_edge:                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.end.i:                                         ; preds = %if.then11.i.do.end.i_crit_edge, %if.end9.i.do.end.i_crit_edge
  %cond.i = phi ptr [ @.str.74, %if.end9.i.do.end.i_crit_edge ], [ @.str.75, %if.then11.i.do.end.i_crit_edge ]
  %.sink2.i = phi i8 [ 1, %if.end9.i.do.end.i_crit_edge ], [ 0, %if.then11.i.do.end.i_crit_edge ]
  %.sink.i = phi i32 [ %18, %if.end9.i.do.end.i_crit_edge ], [ 0, %if.then11.i.do.end.i_crit_edge ]
  %21 = ptrtoint ptr %temperature_test12.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink2.i, ptr %temperature_test12.i, align 4
  %temperature19.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 127
  %22 = ptrtoint ptr %temperature19.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %temperature19.i, align 8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_set_nic_temperature_write, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond.i, i32 noundef %.sink.i) #11
  call void @iwl_mvm_tt_handler(ptr noundef %1) #11
  br label %out.i

out.i:                                            ; preds = %do.end.i, %if.then11.i.out.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %iwl_dbgfs_set_nic_temperature_write.exit

iwl_dbgfs_set_nic_temperature_write.exit:         ; preds = %out.i, %if.end4.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge, %if.end.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge, %land.lhs.true.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %out.i ], [ -5, %land.lhs.true.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge ], [ -22, %if.end4.i.iwl_dbgfs_set_nic_temperature_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_set_nic_temperature_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_set_nic_temperature_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_tt_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_nic_temp_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #11
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %temp, align 4, !annotation !578
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call1 = call i32 @iwl_mvm_get_temp(ptr noundef %1, ptr noundef nonnull %temp) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.72, i32 noundef %8) #11
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ctdp_budget_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %3 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 8, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %7 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %11 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call4 = tail call i32 @iwl_mvm_ctdp_command(ptr noundef %1, i32 noundef 4, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.72, i32 noundef %call4) #11
  %call11 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end8 ], [ -95, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_ctdp_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_stop_ctdp_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buf, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %10, i32 0, i32 5, i32 8, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %13 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status.i.i, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %cur_fw_img.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %17 = ptrtoint ptr %cur_fw_img.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_fw_img.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %if.end3.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %call4.i = call i32 @iwl_mvm_ctdp_command(ptr noundef %1, i32 noundef 2, i32 noundef 0) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %call4.i
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %spec.select.i, %if.end3.i ], [ -95, %if.end.cleanup_crit_edge ], [ -5, %lor.lhs.false.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_force_ctkill_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buf, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i.i, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %cur_fw_img.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %12 = ptrtoint ptr %cur_fw_img.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_fw_img.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @iwl_mvm_enter_ctkill(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %3, %if.end.i ], [ -5, %lor.lhs.false.i.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_enter_ctkill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_stations_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [400 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 400)
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 8
  %num_stations60 = getelementptr inbounds %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 6
  %5 = ptrtoint ptr %num_stations60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_stations60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp61.not = icmp eq i32 %6, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.063 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.1, %for.inc.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.063
  %sub = sub i32 400, %pos.063
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.76, i32 noundef %i.062) #11
  %add = add i32 %call, %pos.063
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call3 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b59 = load i1, ptr @iwl_dbgfs_stations_read.__warned, align 1
  br i1 %.b59, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_dbgfs_stations_read.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.77, i32 noundef 356, ptr noundef nonnull @.str.69) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 44, i32 %i.062
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %add
  %sub11 = sub i32 400, %add
  %call12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.78) #11
  br label %for.inc

if.else:                                          ; preds = %do.end
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add
  %sub18 = sub i32 400, %add
  br i1 %cmp.i, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %8 to i32
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.79, i32 noundef %9) #11
  br label %for.inc

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %8, i32 0, i32 1
  %call27 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.80, ptr noundef %addr) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else22, %if.then15, %if.then8
  %call20.pn = phi i32 [ %call20, %if.then15 ], [ %call27, %if.else22 ], [ %call12, %if.then8 ]
  %pos.1 = add i32 %call20.pn, %add
  %inc = add nuw i32 %i.062, 1
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 6
  %12 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_stations, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pos.1, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #11
  %call33 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.0.lcssa) #11
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %buf) #11
  ret i32 %call33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_bt_notif_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %last_bt_notif = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @.str.89) #11
  %add.ptr1.i = getelementptr i8, ptr %call7.i, i32 %call.i
  %sub2.i = sub i32 1024, %call.i
  %3 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %last_bt_notif, align 1
  %5 = lshr i32 %4, 24
  %and.i = and i32 %5, 7
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1.i, i32 noundef %sub2.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef %and.i, ptr noundef nonnull @.str.92) #11
  %add4.i = add i32 %call3.i, %call.i
  %add.ptr5.i = getelementptr i8, ptr %call7.i, i32 %add4.i
  %sub6.i = sub i32 1024, %add4.i
  %6 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %last_bt_notif, align 1
  %8 = lshr i32 %7, 27
  %and9.i = and i32 %8, 1
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5.i, i32 noundef %sub6.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.93, i32 noundef %and9.i, ptr noundef nonnull @.str.92) #11
  %add12.i = add i32 %call11.i, %add4.i
  %add.ptr13.i = getelementptr i8, ptr %call7.i, i32 %add12.i
  %sub14.i = sub i32 1024, %add12.i
  %9 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %last_bt_notif, align 1
  %11 = lshr i32 %10, 28
  %and17.i = and i32 %11, 1
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13.i, i32 noundef %sub14.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.94, i32 noundef %and17.i, ptr noundef nonnull @.str.92) #11
  %add20.i = add i32 %call19.i, %add12.i
  %add.ptr21.i = getelementptr i8, ptr %call7.i, i32 %add20.i
  %sub22.i = sub i32 1024, %add20.i
  %12 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %last_bt_notif, align 1
  %14 = lshr i32 %13, 29
  %and25.i = and i32 %14, 1
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21.i, i32 noundef %sub22.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.95, i32 noundef %and25.i, ptr noundef nonnull @.str.92) #11
  %add28.i = add i32 %call27.i, %add20.i
  %add.ptr29.i = getelementptr i8, ptr %call7.i, i32 %add28.i
  %sub30.i = sub i32 1024, %add28.i
  %15 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %last_bt_notif, align 1
  %17 = lshr i32 %16, 16
  %and33.i = and i32 %17, 15
  %call35.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29.i, i32 noundef %sub30.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.96, i32 noundef %and33.i, ptr noundef nonnull @.str.92) #11
  %add36.i = add i32 %call35.i, %add28.i
  %add.ptr37.i = getelementptr i8, ptr %call7.i, i32 %add36.i
  %sub38.i = sub i32 1024, %add36.i
  %18 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %last_bt_notif, align 1
  %20 = lshr i32 %19, 21
  %and41.i = and i32 %20, 1
  %call43.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37.i, i32 noundef %sub38.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.97, i32 noundef %and41.i, ptr noundef nonnull @.str.92) #11
  %add44.i = add i32 %call43.i, %add36.i
  %add.ptr45.i = getelementptr i8, ptr %call7.i, i32 %add44.i
  %sub46.i = sub i32 1024, %add44.i
  %21 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %last_bt_notif, align 1
  %23 = lshr i32 %22, 8
  %shr50.i = and i32 %23, 15
  %call51.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45.i, i32 noundef %sub46.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.98, i32 noundef %shr50.i, ptr noundef nonnull @.str.92) #11
  %add52.i = add i32 %call51.i, %add44.i
  %add.ptr53.i = getelementptr i8, ptr %call7.i, i32 %add52.i
  %sub54.i = sub i32 1024, %add52.i
  %24 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %last_bt_notif, align 1
  %26 = lshr i32 %25, 12
  %shr58.i = and i32 %26, 1
  %call59.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53.i, i32 noundef %sub54.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.99, i32 noundef %shr58.i, ptr noundef nonnull @.str.92) #11
  %add60.i = add i32 %call59.i, %add52.i
  %add.ptr61.i = getelementptr i8, ptr %call7.i, i32 %add60.i
  %sub62.i = sub i32 1024, %add60.i
  %27 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %last_bt_notif, align 1
  %29 = lshr i32 %28, 13
  %shr66.i = and i32 %29, 1
  %call67.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61.i, i32 noundef %sub62.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.100, i32 noundef %shr66.i, ptr noundef nonnull @.str.92) #11
  %add68.i = add i32 %call67.i, %add60.i
  %add.ptr69.i = getelementptr i8, ptr %call7.i, i32 %add68.i
  %sub70.i = sub i32 1024, %add68.i
  %30 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %last_bt_notif, align 1
  %and73.i = and i32 %31, 15
  %call75.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69.i, i32 noundef %sub70.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.101, i32 noundef %and73.i, ptr noundef nonnull @.str.92) #11
  %add76.i = add i32 %call75.i, %add68.i
  %add.ptr77.i = getelementptr i8, ptr %call7.i, i32 %add76.i
  %sub78.i = sub i32 1024, %add76.i
  %32 = ptrtoint ptr %last_bt_notif to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %last_bt_notif, align 1
  %34 = lshr i32 %33, 4
  %shr82.i = and i32 %34, 3
  %call83.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77.i, i32 noundef %sub78.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.102, i32 noundef %shr82.i, ptr noundef nonnull @.str.92) #11
  %add84.i = add i32 %call83.i, %add76.i
  %add.ptr85.i = getelementptr i8, ptr %call7.i, i32 %add84.i
  %sub86.i = sub i32 1024, %add84.i
  %call87.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85.i, i32 noundef %sub86.i, ptr noundef nonnull @.str.103) #11
  %add88.i = add i32 %add84.i, %call87.i
  %add.ptr89.i = getelementptr i8, ptr %call7.i, i32 %add88.i
  %sub90.i = sub i32 1024, %add88.i
  %arrayidx92.i = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx92.i, align 1
  %37 = lshr i32 %36, 24
  %and93.i = and i32 %37, 15
  %call95.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89.i, i32 noundef %sub90.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.104, i32 noundef %and93.i, ptr noundef nonnull @.str.92) #11
  %add96.i = add i32 %call95.i, %add88.i
  %add.ptr97.i = getelementptr i8, ptr %call7.i, i32 %add96.i
  %sub98.i = sub i32 1024, %add96.i
  %38 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx92.i, align 1
  %40 = lshr i32 %39, 28
  %and101.i = and i32 %40, 1
  %call103.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97.i, i32 noundef %sub98.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.105, i32 noundef %and101.i, ptr noundef nonnull @.str.92) #11
  %add104.i = add i32 %call103.i, %add96.i
  %add.ptr105.i = getelementptr i8, ptr %call7.i, i32 %add104.i
  %sub106.i = sub i32 1024, %add104.i
  %41 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx92.i, align 1
  %43 = lshr i32 %42, 29
  %and109.i = and i32 %43, 1
  %call111.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105.i, i32 noundef %sub106.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.106, i32 noundef %and109.i, ptr noundef nonnull @.str.92) #11
  %add112.i = add i32 %call111.i, %add104.i
  %add.ptr113.i = getelementptr i8, ptr %call7.i, i32 %add112.i
  %sub114.i = sub i32 1024, %add112.i
  %44 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx92.i, align 1
  %46 = lshr i32 %45, 16
  %and117.i = and i32 %46, 63
  %call119.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.i, i32 noundef %sub114.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.107, i32 noundef %and117.i, ptr noundef nonnull @.str.92) #11
  %add120.i = add i32 %call119.i, %add112.i
  %add.ptr121.i = getelementptr i8, ptr %call7.i, i32 %add120.i
  %sub122.i = sub i32 1024, %add120.i
  %47 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx92.i, align 1
  %49 = lshr i32 %48, 8
  %shr126.i = and i32 %49, 7
  %call127.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121.i, i32 noundef %sub122.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.108, i32 noundef %shr126.i, ptr noundef nonnull @.str.92) #11
  %add128.i = add i32 %call127.i, %add120.i
  %add.ptr129.i = getelementptr i8, ptr %call7.i, i32 %add128.i
  %sub130.i = sub i32 1024, %add128.i
  %50 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %arrayidx92.i, align 1
  %52 = lshr i32 %51, 11
  %shr134.i = and i32 %52, 3
  %call135.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr129.i, i32 noundef %sub130.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.109, i32 noundef %shr134.i, ptr noundef nonnull @.str.92) #11
  %add136.i = add i32 %call135.i, %add128.i
  %add.ptr137.i = getelementptr i8, ptr %call7.i, i32 %add136.i
  %sub138.i = sub i32 1024, %add136.i
  %call139.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr137.i, i32 noundef %sub138.i, ptr noundef nonnull @.str.110) #11
  %add140.i = add i32 %add136.i, %call139.i
  %add.ptr141.i = getelementptr i8, ptr %call7.i, i32 %add140.i
  %sub142.i = sub i32 1024, %add140.i
  %arrayidx144.i = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %arrayidx144.i, align 1
  %55 = lshr i32 %54, 24
  %and145.i = and i32 %55, 7
  %call147.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr141.i, i32 noundef %sub142.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.111, i32 noundef %and145.i, ptr noundef nonnull @.str.92) #11
  %add148.i = add i32 %call147.i, %add140.i
  %add.ptr149.i = getelementptr i8, ptr %call7.i, i32 %add148.i
  %sub150.i = sub i32 1024, %add148.i
  %56 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx144.i, align 1
  %58 = lshr i32 %57, 27
  %and153.i = and i32 %58, 1
  %call155.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr149.i, i32 noundef %sub150.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.112, i32 noundef %and153.i, ptr noundef nonnull @.str.92) #11
  %add156.i = add i32 %call155.i, %add148.i
  %add.ptr157.i = getelementptr i8, ptr %call7.i, i32 %add156.i
  %sub158.i = sub i32 1024, %add156.i
  %59 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %arrayidx144.i, align 1
  %61 = lshr i32 %60, 28
  %and161.i = and i32 %61, 1
  %call163.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr157.i, i32 noundef %sub158.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.113, i32 noundef %and161.i, ptr noundef nonnull @.str.92) #11
  %add164.i = add i32 %call163.i, %add156.i
  %add.ptr165.i = getelementptr i8, ptr %call7.i, i32 %add164.i
  %sub166.i = sub i32 1024, %add164.i
  %62 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %arrayidx144.i, align 1
  %64 = lshr i32 %63, 29
  %and169.i = and i32 %64, 1
  %call171.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165.i, i32 noundef %sub166.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.114, i32 noundef %and169.i, ptr noundef nonnull @.str.92) #11
  %add172.i = add i32 %call171.i, %add164.i
  %add.ptr173.i = getelementptr i8, ptr %call7.i, i32 %add172.i
  %sub174.i = sub i32 1024, %add172.i
  %65 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %arrayidx144.i, align 1
  %67 = lshr i32 %66, 16
  %and177.i = and i32 %67, 31
  %call179.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173.i, i32 noundef %sub174.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.115, i32 noundef %and177.i, ptr noundef nonnull @.str.92) #11
  %add180.i = add i32 %call179.i, %add172.i
  %add.ptr181.i = getelementptr i8, ptr %call7.i, i32 %add180.i
  %sub182.i = sub i32 1024, %add180.i
  %68 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx144.i, align 1
  %70 = lshr i32 %69, 21
  %and185.i = and i32 %70, 1
  %call187.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr181.i, i32 noundef %sub182.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.116, i32 noundef %and185.i, ptr noundef nonnull @.str.92) #11
  %add188.i = add i32 %call187.i, %add180.i
  %add.ptr189.i = getelementptr i8, ptr %call7.i, i32 %add188.i
  %sub190.i = sub i32 1024, %add188.i
  %71 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %arrayidx144.i, align 1
  %73 = lshr i32 %72, 8
  %shr194.i = and i32 %73, 3
  %call195.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr189.i, i32 noundef %sub190.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.117, i32 noundef %shr194.i, ptr noundef nonnull @.str.92) #11
  %add196.i = add i32 %call195.i, %add188.i
  %add.ptr197.i = getelementptr i8, ptr %call7.i, i32 %add196.i
  %sub198.i = sub i32 1024, %add196.i
  %74 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %arrayidx144.i, align 1
  %76 = lshr i32 %75, 10
  %shr202.i = and i32 %76, 3
  %call203.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr197.i, i32 noundef %sub198.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.118, i32 noundef %shr202.i, ptr noundef nonnull @.str.92) #11
  %add204.i = add i32 %call203.i, %add196.i
  %add.ptr205.i = getelementptr i8, ptr %call7.i, i32 %add204.i
  %sub206.i = sub i32 1024, %add204.i
  %77 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx144.i, align 1
  %79 = lshr i32 %78, 12
  %shr210.i = and i32 %79, 3
  %call211.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr205.i, i32 noundef %sub206.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.119, i32 noundef %shr210.i, ptr noundef nonnull @.str.92) #11
  %add212.i = add i32 %call211.i, %add204.i
  %add.ptr213.i = getelementptr i8, ptr %call7.i, i32 %add212.i
  %sub214.i = sub i32 1024, %add212.i
  %80 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %arrayidx144.i, align 1
  %and217.i = and i32 %81, 63
  %call219.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr213.i, i32 noundef %sub214.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.120, i32 noundef %and217.i, ptr noundef nonnull @.str.92) #11
  %add220.i = add i32 %call219.i, %add212.i
  %add.ptr221.i = getelementptr i8, ptr %call7.i, i32 %add220.i
  %sub222.i = sub i32 1024, %add220.i
  %call223.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr221.i, i32 noundef %sub222.i, ptr noundef nonnull @.str.121) #11
  %add224.i = add i32 %add220.i, %call223.i
  %add.ptr225.i = getelementptr i8, ptr %call7.i, i32 %add224.i
  %sub226.i = sub i32 1024, %add224.i
  %arrayidx228.i = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 0, i32 3
  %82 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %arrayidx228.i, align 1
  %84 = lshr i32 %83, 24
  %and229.i = and i32 %84, 1
  %call231.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr225.i, i32 noundef %sub226.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.122, i32 noundef %and229.i, ptr noundef nonnull @.str.92) #11
  %add232.i = add i32 %call231.i, %add224.i
  %add.ptr233.i = getelementptr i8, ptr %call7.i, i32 %add232.i
  %sub234.i = sub i32 1024, %add232.i
  %85 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %arrayidx228.i, align 1
  %87 = lshr i32 %86, 25
  %and237.i = and i32 %87, 1
  %call239.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr233.i, i32 noundef %sub234.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.123, i32 noundef %and237.i, ptr noundef nonnull @.str.92) #11
  %add240.i = add i32 %call239.i, %add232.i
  %add.ptr241.i = getelementptr i8, ptr %call7.i, i32 %add240.i
  %sub242.i = sub i32 1024, %add240.i
  %88 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %arrayidx228.i, align 1
  %90 = lshr i32 %89, 26
  %and245.i = and i32 %90, 1
  %call247.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr241.i, i32 noundef %sub242.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.124, i32 noundef %and245.i, ptr noundef nonnull @.str.92) #11
  %add248.i = add i32 %call247.i, %add240.i
  %add.ptr249.i = getelementptr i8, ptr %call7.i, i32 %add248.i
  %sub250.i = sub i32 1024, %add248.i
  %91 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %arrayidx228.i, align 1
  %93 = lshr i32 %92, 30
  %and253.i = and i32 %93, 1
  %call255.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr249.i, i32 noundef %sub250.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.125, i32 noundef %and253.i, ptr noundef nonnull @.str.92) #11
  %add256.i = add i32 %call255.i, %add248.i
  %add.ptr257.i = getelementptr i8, ptr %call7.i, i32 %add256.i
  %sub258.i = sub i32 1024, %add256.i
  %94 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %arrayidx228.i, align 1
  %96 = lshr i32 %95, 27
  %and261.i = and i32 %96, 1
  %call263.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr257.i, i32 noundef %sub258.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.126, i32 noundef %and261.i, ptr noundef nonnull @.str.92) #11
  %add264.i = add i32 %call263.i, %add256.i
  %add.ptr265.i = getelementptr i8, ptr %call7.i, i32 %add264.i
  %sub266.i = sub i32 1024, %add264.i
  %97 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx228.i, align 1
  %99 = lshr i32 %98, 28
  %and269.i = and i32 %99, 1
  %call271.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr265.i, i32 noundef %sub266.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.127, i32 noundef %and269.i, ptr noundef nonnull @.str.92) #11
  %add272.i = add i32 %call271.i, %add264.i
  %add.ptr273.i = getelementptr i8, ptr %call7.i, i32 %add272.i
  %sub274.i = sub i32 1024, %add272.i
  %100 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %arrayidx228.i, align 1
  %102 = lshr i32 %101, 29
  %and277.i = and i32 %102, 1
  %call279.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr273.i, i32 noundef %sub274.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.128, i32 noundef %and277.i, ptr noundef nonnull @.str.92) #11
  %add280.i = add i32 %call279.i, %add272.i
  %add.ptr281.i = getelementptr i8, ptr %call7.i, i32 %add280.i
  %sub282.i = sub i32 1024, %add280.i
  %103 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %arrayidx228.i, align 1
  %105 = lshr i32 %104, 16
  %and285.i = and i32 %105, 3
  %call287.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr281.i, i32 noundef %sub282.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.129, i32 noundef %and285.i, ptr noundef nonnull @.str.92) #11
  %add288.i = add i32 %call287.i, %add280.i
  %add.ptr289.i = getelementptr i8, ptr %call7.i, i32 %add288.i
  %sub290.i = sub i32 1024, %add288.i
  %106 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %arrayidx228.i, align 1
  %108 = lshr i32 %107, 18
  %and293.i = and i32 %108, 3
  %call295.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr289.i, i32 noundef %sub290.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.130, i32 noundef %and293.i, ptr noundef nonnull @.str.92) #11
  %add296.i = add i32 %call295.i, %add288.i
  %add.ptr297.i = getelementptr i8, ptr %call7.i, i32 %add296.i
  %sub298.i = sub i32 1024, %add296.i
  %109 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %arrayidx228.i, align 1
  %111 = lshr i32 %110, 20
  %and301.i = and i32 %111, 1
  %call303.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr297.i, i32 noundef %sub298.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.131, i32 noundef %and301.i, ptr noundef nonnull @.str.92) #11
  %add304.i = add i32 %call303.i, %add296.i
  %add.ptr305.i = getelementptr i8, ptr %call7.i, i32 %add304.i
  %sub306.i = sub i32 1024, %add304.i
  %112 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %arrayidx228.i, align 1
  %114 = lshr i32 %113, 21
  %and309.i = and i32 %114, 1
  %call311.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr305.i, i32 noundef %sub306.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.132, i32 noundef %and309.i, ptr noundef nonnull @.str.92) #11
  %add312.i = add i32 %call311.i, %add304.i
  %add.ptr313.i = getelementptr i8, ptr %call7.i, i32 %add312.i
  %sub314.i = sub i32 1024, %add312.i
  %115 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %arrayidx228.i, align 1
  %117 = lshr i32 %116, 8
  %shr318.i = and i32 %117, 7
  %call319.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr313.i, i32 noundef %sub314.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.133, i32 noundef %shr318.i, ptr noundef nonnull @.str.92) #11
  %add320.i = add i32 %call319.i, %add312.i
  %add.ptr321.i = getelementptr i8, ptr %call7.i, i32 %add320.i
  %sub322.i = sub i32 1024, %add320.i
  %118 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx228.i, align 1
  %120 = lshr i32 %119, 11
  %shr326.i = and i32 %120, 3
  %call327.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr321.i, i32 noundef %sub322.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.134, i32 noundef %shr326.i, ptr noundef nonnull @.str.92) #11
  %add328.i = add i32 %call327.i, %add320.i
  %add.ptr329.i = getelementptr i8, ptr %call7.i, i32 %add328.i
  %sub330.i = sub i32 1024, %add328.i
  %121 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %arrayidx228.i, align 1
  %123 = lshr i32 %122, 13
  %shr334.i = and i32 %123, 1
  %call335.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr329.i, i32 noundef %sub330.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.135, i32 noundef %shr334.i, ptr noundef nonnull @.str.92) #11
  %add336.i = add i32 %call335.i, %add328.i
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %add336.i
  %sub = sub i32 1024, %add336.i
  %bt_ci_compliance = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 2
  %124 = ptrtoint ptr %bt_ci_compliance to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %bt_ci_compliance, align 1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.81, i32 noundef %125) #11
  %add3 = add i32 %call2, %add336.i
  %add.ptr4 = getelementptr i8, ptr %call7.i, i32 %add3
  %sub5 = sub i32 1024, %add3
  %primary_ch_lut = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 3
  %126 = ptrtoint ptr %primary_ch_lut to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %primary_ch_lut, align 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.82, i32 noundef %128) #11
  %add7 = add i32 %call6, %add3
  %add.ptr8 = getelementptr i8, ptr %call7.i, i32 %add7
  %sub9 = sub i32 1024, %add7
  %secondary_ch_lut = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 4
  %129 = ptrtoint ptr %secondary_ch_lut to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %secondary_ch_lut, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.83, i32 noundef %131) #11
  %add11 = add i32 %call10, %add7
  %add.ptr12 = getelementptr i8, ptr %call7.i, i32 %add11
  %sub13 = sub i32 1024, %add11
  %bt_activity_grading = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 5
  %132 = ptrtoint ptr %bt_activity_grading to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %bt_activity_grading, align 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.84, i32 noundef %134) #11
  %add15 = add i32 %call14, %add11
  %add.ptr16 = getelementptr i8, ptr %call7.i, i32 %add15
  %sub17 = sub i32 1024, %add15
  %rrc_status = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 7
  %135 = ptrtoint ptr %rrc_status to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %rrc_status, align 1
  %137 = and i8 %136, 15
  %and = zext i8 %137 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.85, i32 noundef %and) #11
  %add19 = add i32 %call18, %add15
  %add.ptr20 = getelementptr i8, ptr %call7.i, i32 %add19
  %sub21 = sub i32 1024, %add19
  %ttc_status = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 118, i32 6
  %138 = ptrtoint ptr %ttc_status to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %ttc_status, align 1
  %140 = and i8 %139, 15
  %and23 = zext i8 %140 to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.86, i32 noundef %and23) #11
  %add25 = add i32 %call24, %add19
  %add.ptr26 = getelementptr i8, ptr %call7.i, i32 %add25
  %sub27 = sub i32 1024, %add25
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.87, i32 noundef 1) #11
  %add29 = add i32 %add25, %call28
  %add.ptr30 = getelementptr i8, ptr %call7.i, i32 %add29
  %sub31 = sub i32 1024, %add29
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.88, i32 noundef 1) #11
  %add33 = add i32 %add29, %call32
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %call35 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add33) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_bt_cmd_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %last_bt_ci_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 119
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull @.str.136) #11
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 256, %call
  %3 = ptrtoint ptr %last_bt_ci_cmd to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %last_bt_ci_cmd, align 1
  %5 = call i64 @llvm.bswap.i64(i64 %4)
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.137, i64 noundef %5) #11
  %add5 = add i32 %call4, %call
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %add5
  %sub8 = sub i32 256, %add5
  %bt_secondary_ci = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 119, i32 2
  %6 = ptrtoint ptr %bt_secondary_ci to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %bt_secondary_ci, align 1
  %8 = call i64 @llvm.bswap.i64(i64 %7)
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.138, i64 noundef %8) #11
  %add10 = add i32 %call9, %add5
  call void @mutex_unlock(ptr noundef %mutex) #11
  %call13 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add10) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #11
  ret i32 %call13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_disable_power_off_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %disable_power_off = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 73
  %3 = ptrtoint ptr %disable_power_off to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %disable_power_off, align 8, !range !579
  %5 = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.139, i32 noundef %5) #11
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 64, %call
  %disable_power_off_d3 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 74
  %6 = ptrtoint ptr %disable_power_off_d3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disable_power_off_d3, align 1, !range !579
  %8 = zext i8 %7 to i32
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.140, i32 noundef %8) #11
  %add7 = add i32 %call6, %call
  %call9 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_disable_power_off_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_disable_power_off_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_disable_power_off_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_disable_power_off_write.exit

if.end.i:                                         ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) @.str.141, ptr noundef nonnull dereferenceable(21) %buf, i32 21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i32 21
  %call3.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.142, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 1
  br i1 %cmp.not.i, label %if.end5.i, label %if.then2.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge

if.then2.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_disable_power_off_write.exit

if.end5.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.i = icmp ne i32 %14, 0
  %disable_power_off.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 73
  %frombool.i = zext i1 %tobool6.i to i8
  %15 = ptrtoint ptr %disable_power_off.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %disable_power_off.i, align 8
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  %bcmp10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) @.str.143, ptr noundef nonnull dereferenceable(21) %buf, i32 21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp10)
  %tobool8.not.i = icmp eq i32 %bcmp10, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge

if.else.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_disable_power_off_write.exit

if.then9.i:                                       ; preds = %if.else.i
  %add.ptr10.i = getelementptr inbounds i8, ptr %buf, i32 21
  %call11.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr10.i, ptr noundef nonnull @.str.142, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.not.i = icmp eq i32 %call11.i, 1
  br i1 %cmp12.not.i, label %if.end14.i, label %if.then9.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge

if.then9.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_disable_power_off_write.exit

if.end14.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.i = icmp ne i32 %17, 0
  %disable_power_off_d3.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 74
  %frombool16.i = zext i1 %tobool15.i to i8
  %18 = ptrtoint ptr %disable_power_off_d3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool16.i, ptr %disable_power_off_d3.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end14.i, %if.end5.i
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %call20.i = call i32 @iwl_mvm_power_update_device(ptr noundef %1) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool22.not.i = icmp eq i32 %call20.i, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 %3, i32 %call20.i
  br label %iwl_dbgfs_disable_power_off_write.exit

iwl_dbgfs_disable_power_off_write.exit:           ; preds = %if.end19.i, %if.then9.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge, %if.else.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge, %if.then2.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge, %if.end.iwl_dbgfs_disable_power_off_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end19.i ], [ -5, %if.end.iwl_dbgfs_disable_power_off_write.exit_crit_edge ], [ -22, %if.then2.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge ], [ -22, %if.then9.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge ], [ -22, %if.else.i.iwl_dbgfs_disable_power_off_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_disable_power_off_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_disable_power_off_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_fw_ver_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call7.i, i32 1024
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call7.i to i32
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %fw_name_pre = getelementptr inbounds %struct.iwl_cfg, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fw_name_pre to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_name_pre, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @.str.144, ptr noundef %8) #11
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 %call1
  %gepdiff = sub i32 1024, %call1
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 1
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %human_readable = getelementptr inbounds %struct.iwl_fw, ptr %10, i32 0, i32 19
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %gepdiff, ptr noundef nonnull @.str.145, ptr noundef %human_readable) #11
  %add.ptr7 = getelementptr i8, ptr %add.ptr2, i32 %call6
  %sub.ptr.rhs.cast9 = ptrtoint ptr %add.ptr7 to i32
  %sub.ptr.sub10 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast9
  %11 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwrt, align 8
  %name = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub.ptr.sub10, ptr noundef nonnull @.str.146, ptr noundef %14) #11
  %add.ptr14 = getelementptr i8, ptr %add.ptr7, i32 %call13
  %sub.ptr.rhs.cast16 = ptrtoint ptr %add.ptr14 to i32
  %sub.ptr.sub17 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast16
  %dev = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %bus = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub.ptr.sub17, ptr noundef nonnull @.str.147, ptr noundef %20) #11
  %add.ptr21 = getelementptr i8, ptr %add.ptr14, i32 %call20
  %sub.ptr.lhs.cast22 = ptrtoint ptr %add.ptr21 to i32
  %sub.ptr.sub24 = sub i32 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast
  %call25 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %sub.ptr.sub24) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_fw_rx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %3, i32 0, i32 5, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.i.not = icmp eq i32 %6, 0
  %. = select i1 %tobool.i.i.not, i32 3315, i32 1595
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %., i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status.i, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @iwl_mvm_request_statistics(ptr noundef %1, i1 noundef zeroext false) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i.i, i32 noundef %., ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150) #11
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i1225 = getelementptr %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i1225 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i1225, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.i1226.not = icmp eq i32 %14, 0
  %15 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24
  %add.ptr12 = getelementptr i8, ptr %call9.i.i, i32 %call8
  %sub13 = sub i32 %., %call8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %15, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  br i1 %tobool.i.i1226.not, label %if.then10, label %if.else92

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.151, i32 noundef %18) #11
  %add15 = add i32 %call14, %call8
  %add.ptr16 = getelementptr i8, ptr %call9.i.i, i32 %add15
  %sub17 = sub i32 %., %add15
  %fina_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %fina_cnt to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %fina_cnt, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.152, i32 noundef %21) #11
  %add19 = add i32 %call18, %add15
  %add.ptr20 = getelementptr i8, ptr %call9.i.i, i32 %add19
  %sub21 = sub i32 %., %add19
  %plcp_err = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %plcp_err to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %plcp_err, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.153, i32 noundef %24) #11
  %add23 = add i32 %call22, %add19
  %add.ptr24 = getelementptr i8, ptr %call9.i.i, i32 %add23
  %sub25 = sub i32 %., %add23
  %crc32_err = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %crc32_err to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %crc32_err, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.154, i32 noundef %27) #11
  %add27 = add i32 %call26, %add23
  %add.ptr28 = getelementptr i8, ptr %call9.i.i, i32 %add27
  %sub29 = sub i32 %., %add27
  %overrun_err = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %overrun_err to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %overrun_err, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.155, i32 noundef %30) #11
  %add31 = add i32 %call30, %add27
  %add.ptr32 = getelementptr i8, ptr %call9.i.i, i32 %add31
  %sub33 = sub i32 %., %add31
  %early_overrun_err = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 5
  %31 = ptrtoint ptr %early_overrun_err to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %early_overrun_err, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.156, i32 noundef %33) #11
  %add35 = add i32 %call34, %add31
  %add.ptr36 = getelementptr i8, ptr %call9.i.i, i32 %add35
  %sub37 = sub i32 %., %add35
  %crc32_good = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 6
  %34 = ptrtoint ptr %crc32_good to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %crc32_good, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.157, i32 noundef %36) #11
  %add39 = add i32 %call38, %add35
  %add.ptr40 = getelementptr i8, ptr %call9.i.i, i32 %add39
  %sub41 = sub i32 %., %add39
  %false_alarm_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 7
  %37 = ptrtoint ptr %false_alarm_cnt to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %false_alarm_cnt, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.158, i32 noundef %39) #11
  %add43 = add i32 %call42, %add39
  %add.ptr44 = getelementptr i8, ptr %call9.i.i, i32 %add43
  %sub45 = sub i32 %., %add43
  %fina_sync_err_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 8
  %40 = ptrtoint ptr %fina_sync_err_cnt to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %fina_sync_err_cnt, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.159, i32 noundef %42) #11
  %add47 = add i32 %call46, %add43
  %add.ptr48 = getelementptr i8, ptr %call9.i.i, i32 %add47
  %sub49 = sub i32 %., %add47
  %sfd_timeout = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 9
  %43 = ptrtoint ptr %sfd_timeout to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %sfd_timeout, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %call50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr48, i32 noundef %sub49, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.160, i32 noundef %45) #11
  %add51 = add i32 %call50, %add47
  %add.ptr52 = getelementptr i8, ptr %call9.i.i, i32 %add51
  %sub53 = sub i32 %., %add51
  %fina_timeout = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 10
  %46 = ptrtoint ptr %fina_timeout to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %fina_timeout, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %call54 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.161, i32 noundef %48) #11
  %add55 = add i32 %call54, %add51
  %add.ptr56 = getelementptr i8, ptr %call9.i.i, i32 %add55
  %sub57 = sub i32 %., %add55
  %unresponded_rts = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 11
  %49 = ptrtoint ptr %unresponded_rts to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %unresponded_rts, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.162, i32 noundef %51) #11
  %add59 = add i32 %call58, %add55
  %add.ptr60 = getelementptr i8, ptr %call9.i.i, i32 %add59
  %sub61 = sub i32 %., %add59
  %rxe_frame_lmt_overrun = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 12
  %52 = ptrtoint ptr %rxe_frame_lmt_overrun to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %rxe_frame_lmt_overrun, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.163, i32 noundef %54) #11
  %add63 = add i32 %call62, %add59
  %add.ptr64 = getelementptr i8, ptr %call9.i.i, i32 %add63
  %sub65 = sub i32 %., %add63
  %sent_ack_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 13
  %55 = ptrtoint ptr %sent_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %sent_ack_cnt, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.164, i32 noundef %57) #11
  %add67 = add i32 %call66, %add63
  %add.ptr68 = getelementptr i8, ptr %call9.i.i, i32 %add67
  %sub69 = sub i32 %., %add67
  %sent_cts_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 14
  %58 = ptrtoint ptr %sent_cts_cnt to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %sent_cts_cnt, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %call70 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.165, i32 noundef %60) #11
  %add71 = add i32 %call70, %add67
  %add.ptr72 = getelementptr i8, ptr %call9.i.i, i32 %add71
  %sub73 = sub i32 %., %add71
  %sent_ba_rsp_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 15
  %61 = ptrtoint ptr %sent_ba_rsp_cnt to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %sent_ba_rsp_cnt, align 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.166, i32 noundef %63) #11
  %add75 = add i32 %call74, %add71
  %add.ptr76 = getelementptr i8, ptr %call9.i.i, i32 %add75
  %sub77 = sub i32 %., %add75
  %dsp_self_kill = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 16
  %64 = ptrtoint ptr %dsp_self_kill to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %dsp_self_kill, align 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %call78 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.167, i32 noundef %66) #11
  %add79 = add i32 %call78, %add75
  %add.ptr80 = getelementptr i8, ptr %call9.i.i, i32 %add79
  %sub81 = sub i32 %., %add79
  %mh_format_err = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 17
  %67 = ptrtoint ptr %mh_format_err to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %mh_format_err, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %call82 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.168, i32 noundef %69) #11
  %add83 = add i32 %call82, %add79
  %add.ptr84 = getelementptr i8, ptr %call9.i.i, i32 %add83
  %sub85 = sub i32 %., %add83
  %re_acq_main_rssi_sum = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 18
  %70 = ptrtoint ptr %re_acq_main_rssi_sum to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %re_acq_main_rssi_sum, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %call86 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr84, i32 noundef %sub85, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.169, i32 noundef %72) #11
  %add87 = add i32 %call86, %add83
  %add.ptr88 = getelementptr i8, ptr %call9.i.i, i32 %add87
  %sub89 = sub i32 %., %add87
  %reserved = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 19
  %73 = ptrtoint ptr %reserved to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %reserved, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.170, i32 noundef %75) #11
  %add91 = add i32 %call90, %add87
  br label %if.end120

if.else92:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call98 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.162, i32 noundef %18) #11
  %add99 = add i32 %call98, %call8
  %add.ptr100 = getelementptr i8, ptr %call9.i.i, i32 %add99
  %sub101 = sub i32 %., %add99
  %rxe_frame_lmt_overrun102 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %rxe_frame_lmt_overrun102 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %rxe_frame_lmt_overrun102, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %call103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr100, i32 noundef %sub101, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.163, i32 noundef %78) #11
  %add104 = add i32 %call103, %add99
  %add.ptr105 = getelementptr i8, ptr %call9.i.i, i32 %add104
  %sub106 = sub i32 %., %add104
  %sent_ba_rsp_cnt107 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 2
  %79 = ptrtoint ptr %sent_ba_rsp_cnt107 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %sent_ba_rsp_cnt107, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105, i32 noundef %sub106, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.166, i32 noundef %81) #11
  %add109 = add i32 %call108, %add104
  %add.ptr110 = getelementptr i8, ptr %call9.i.i, i32 %add109
  %sub111 = sub i32 %., %add109
  %dsp_self_kill112 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 3
  %82 = ptrtoint ptr %dsp_self_kill112 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %dsp_self_kill112, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %call113 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr110, i32 noundef %sub111, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.167, i32 noundef %84) #11
  %add114 = add i32 %call113, %add109
  %add.ptr115 = getelementptr i8, ptr %call9.i.i, i32 %add114
  %sub116 = sub i32 %., %add114
  %reserved117 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 4
  %85 = ptrtoint ptr %reserved117 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %reserved117, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %call118 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr115, i32 noundef %sub116, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.170, i32 noundef %87) #11
  %add119 = add i32 %call118, %add114
  br label %if.end120

if.end120:                                        ; preds = %if.else92, %if.then10
  %pos.0 = phi i32 [ %add119, %if.else92 ], [ %add91, %if.then10 ]
  %add.ptr121 = getelementptr i8, ptr %call9.i.i, i32 %pos.0
  %sub122 = sub i32 %., %pos.0
  %call123 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.171) #11
  %add124 = add i32 %call123, %pos.0
  %88 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i1228 = getelementptr %struct.iwl_fw, ptr %89, i32 0, i32 5, i32 7, i32 1
  %90 = ptrtoint ptr %arrayidx.i.i.i1228 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %arrayidx.i.i.i1228, align 4
  %92 = and i32 %91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.i1229.not = icmp eq i32 %92, 0
  br i1 %tobool.i.i1229.not, label %if.then126, label %if.else228

if.then126:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  %cck127 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1
  %add.ptr128 = getelementptr i8, ptr %call9.i.i, i32 %add124
  %sub129 = sub i32 %., %add124
  %93 = ptrtoint ptr %cck127 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %cck127, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %call131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr128, i32 noundef %sub129, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.151, i32 noundef %95) #11
  %add132 = add i32 %call131, %add124
  %add.ptr133 = getelementptr i8, ptr %call9.i.i, i32 %add132
  %sub134 = sub i32 %., %add132
  %fina_cnt135 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %fina_cnt135 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %fina_cnt135, align 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %call136 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub134, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.152, i32 noundef %98) #11
  %add137 = add i32 %call136, %add132
  %add.ptr138 = getelementptr i8, ptr %call9.i.i, i32 %add137
  %sub139 = sub i32 %., %add137
  %plcp_err140 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %plcp_err140 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %plcp_err140, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %call141 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138, i32 noundef %sub139, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.153, i32 noundef %101) #11
  %add142 = add i32 %call141, %add137
  %add.ptr143 = getelementptr i8, ptr %call9.i.i, i32 %add142
  %sub144 = sub i32 %., %add142
  %crc32_err145 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 3
  %102 = ptrtoint ptr %crc32_err145 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %crc32_err145, align 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr143, i32 noundef %sub144, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.154, i32 noundef %104) #11
  %add147 = add i32 %call146, %add142
  %add.ptr148 = getelementptr i8, ptr %call9.i.i, i32 %add147
  %sub149 = sub i32 %., %add147
  %overrun_err150 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 4
  %105 = ptrtoint ptr %overrun_err150 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %overrun_err150, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %call151 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr148, i32 noundef %sub149, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.155, i32 noundef %107) #11
  %add152 = add i32 %call151, %add147
  %add.ptr153 = getelementptr i8, ptr %call9.i.i, i32 %add152
  %sub154 = sub i32 %., %add152
  %early_overrun_err155 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 5
  %108 = ptrtoint ptr %early_overrun_err155 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %early_overrun_err155, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %call156 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr153, i32 noundef %sub154, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.156, i32 noundef %110) #11
  %add157 = add i32 %call156, %add152
  %add.ptr158 = getelementptr i8, ptr %call9.i.i, i32 %add157
  %sub159 = sub i32 %., %add157
  %crc32_good160 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 6
  %111 = ptrtoint ptr %crc32_good160 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %crc32_good160, align 1
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %call161 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr158, i32 noundef %sub159, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.157, i32 noundef %113) #11
  %add162 = add i32 %call161, %add157
  %add.ptr163 = getelementptr i8, ptr %call9.i.i, i32 %add162
  %sub164 = sub i32 %., %add162
  %false_alarm_cnt165 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 7
  %114 = ptrtoint ptr %false_alarm_cnt165 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %false_alarm_cnt165, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %call166 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr163, i32 noundef %sub164, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.158, i32 noundef %116) #11
  %add167 = add i32 %call166, %add162
  %add.ptr168 = getelementptr i8, ptr %call9.i.i, i32 %add167
  %sub169 = sub i32 %., %add167
  %fina_sync_err_cnt170 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 8
  %117 = ptrtoint ptr %fina_sync_err_cnt170 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %fina_sync_err_cnt170, align 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %call171 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr168, i32 noundef %sub169, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.159, i32 noundef %119) #11
  %add172 = add i32 %call171, %add167
  %add.ptr173 = getelementptr i8, ptr %call9.i.i, i32 %add172
  %sub174 = sub i32 %., %add172
  %sfd_timeout175 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 9
  %120 = ptrtoint ptr %sfd_timeout175 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %sfd_timeout175, align 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %call176 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173, i32 noundef %sub174, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.160, i32 noundef %122) #11
  %add177 = add i32 %call176, %add172
  %add.ptr178 = getelementptr i8, ptr %call9.i.i, i32 %add177
  %sub179 = sub i32 %., %add177
  %fina_timeout180 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 10
  %123 = ptrtoint ptr %fina_timeout180 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %fina_timeout180, align 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  %call181 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr178, i32 noundef %sub179, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.161, i32 noundef %125) #11
  %add182 = add i32 %call181, %add177
  %add.ptr183 = getelementptr i8, ptr %call9.i.i, i32 %add182
  %sub184 = sub i32 %., %add182
  %unresponded_rts185 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 11
  %126 = ptrtoint ptr %unresponded_rts185 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %unresponded_rts185, align 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr183, i32 noundef %sub184, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.162, i32 noundef %128) #11
  %add187 = add i32 %call186, %add182
  %add.ptr188 = getelementptr i8, ptr %call9.i.i, i32 %add187
  %sub189 = sub i32 %., %add187
  %rxe_frame_lmt_overrun190 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 12
  %129 = ptrtoint ptr %rxe_frame_lmt_overrun190 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %rxe_frame_lmt_overrun190, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %call191 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr188, i32 noundef %sub189, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.163, i32 noundef %131) #11
  %add192 = add i32 %call191, %add187
  %add.ptr193 = getelementptr i8, ptr %call9.i.i, i32 %add192
  %sub194 = sub i32 %., %add192
  %sent_ack_cnt195 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 13
  %132 = ptrtoint ptr %sent_ack_cnt195 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %sent_ack_cnt195, align 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %call196 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr193, i32 noundef %sub194, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.164, i32 noundef %134) #11
  %add197 = add i32 %call196, %add192
  %add.ptr198 = getelementptr i8, ptr %call9.i.i, i32 %add197
  %sub199 = sub i32 %., %add197
  %sent_cts_cnt200 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 14
  %135 = ptrtoint ptr %sent_cts_cnt200 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %sent_cts_cnt200, align 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  %call201 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr198, i32 noundef %sub199, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.165, i32 noundef %137) #11
  %add202 = add i32 %call201, %add197
  %add.ptr203 = getelementptr i8, ptr %call9.i.i, i32 %add202
  %sub204 = sub i32 %., %add202
  %sent_ba_rsp_cnt205 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 15
  %138 = ptrtoint ptr %sent_ba_rsp_cnt205 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %sent_ba_rsp_cnt205, align 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  %call206 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr203, i32 noundef %sub204, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.166, i32 noundef %140) #11
  %add207 = add i32 %call206, %add202
  %add.ptr208 = getelementptr i8, ptr %call9.i.i, i32 %add207
  %sub209 = sub i32 %., %add207
  %dsp_self_kill210 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 16
  %141 = ptrtoint ptr %dsp_self_kill210 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %dsp_self_kill210, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  %call211 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr208, i32 noundef %sub209, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.167, i32 noundef %143) #11
  %add212 = add i32 %call211, %add207
  %add.ptr213 = getelementptr i8, ptr %call9.i.i, i32 %add212
  %sub214 = sub i32 %., %add212
  %mh_format_err215 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 17
  %144 = ptrtoint ptr %mh_format_err215 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %mh_format_err215, align 1
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %call216 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr213, i32 noundef %sub214, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.168, i32 noundef %146) #11
  %add217 = add i32 %call216, %add212
  %add.ptr218 = getelementptr i8, ptr %call9.i.i, i32 %add217
  %sub219 = sub i32 %., %add217
  %re_acq_main_rssi_sum220 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 18
  %147 = ptrtoint ptr %re_acq_main_rssi_sum220 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %re_acq_main_rssi_sum220, align 1
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
  %call221 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr218, i32 noundef %sub219, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.169, i32 noundef %149) #11
  %add222 = add i32 %call221, %add217
  %add.ptr223 = getelementptr i8, ptr %call9.i.i, i32 %add222
  %sub224 = sub i32 %., %add222
  %reserved225 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 19
  %150 = ptrtoint ptr %reserved225 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %reserved225, align 1
  %152 = tail call i32 @llvm.bswap.i32(i32 %151)
  %call226 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr223, i32 noundef %sub224, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.170, i32 noundef %152) #11
  %add227 = add i32 %call226, %add222
  br label %if.end256

if.else228:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  %cck230 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 5
  %add.ptr231 = getelementptr i8, ptr %call9.i.i, i32 %add124
  %sub232 = sub i32 %., %add124
  %153 = ptrtoint ptr %cck230 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %cck230, align 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %call234 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr231, i32 noundef %sub232, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.162, i32 noundef %155) #11
  %add235 = add i32 %call234, %add124
  %add.ptr236 = getelementptr i8, ptr %call9.i.i, i32 %add235
  %sub237 = sub i32 %., %add235
  %rxe_frame_lmt_overrun238 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 6
  %156 = ptrtoint ptr %rxe_frame_lmt_overrun238 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %rxe_frame_lmt_overrun238, align 1
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %call239 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr236, i32 noundef %sub237, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.163, i32 noundef %158) #11
  %add240 = add i32 %call239, %add235
  %add.ptr241 = getelementptr i8, ptr %call9.i.i, i32 %add240
  %sub242 = sub i32 %., %add240
  %sent_ba_rsp_cnt243 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 7
  %159 = ptrtoint ptr %sent_ba_rsp_cnt243 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %sent_ba_rsp_cnt243, align 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %call244 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr241, i32 noundef %sub242, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.166, i32 noundef %161) #11
  %add245 = add i32 %call244, %add240
  %add.ptr246 = getelementptr i8, ptr %call9.i.i, i32 %add245
  %sub247 = sub i32 %., %add245
  %dsp_self_kill248 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 8
  %162 = ptrtoint ptr %dsp_self_kill248 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %dsp_self_kill248, align 1
  %164 = tail call i32 @llvm.bswap.i32(i32 %163)
  %call249 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr246, i32 noundef %sub247, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.167, i32 noundef %164) #11
  %add250 = add i32 %call249, %add245
  %add.ptr251 = getelementptr i8, ptr %call9.i.i, i32 %add250
  %sub252 = sub i32 %., %add250
  %reserved253 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 9
  %165 = ptrtoint ptr %reserved253 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %reserved253, align 1
  %167 = tail call i32 @llvm.bswap.i32(i32 %166)
  %call254 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr251, i32 noundef %sub252, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.170, i32 noundef %167) #11
  %add255 = add i32 %call254, %add250
  br label %if.end256

if.end256:                                        ; preds = %if.else228, %if.then126
  %pos.1 = phi i32 [ %add255, %if.else228 ], [ %add227, %if.then126 ]
  %add.ptr257 = getelementptr i8, ptr %call9.i.i, i32 %pos.1
  %sub258 = sub i32 %., %pos.1
  %call259 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr257, i32 noundef %sub258, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.172) #11
  %add260 = add i32 %call259, %pos.1
  %168 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i1231 = getelementptr %struct.iwl_fw, ptr %169, i32 0, i32 5, i32 7, i32 1
  %170 = ptrtoint ptr %arrayidx.i.i.i1231 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %arrayidx.i.i.i1231, align 4
  %172 = and i32 %171, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.i.i1232.not = icmp eq i32 %172, 0
  br i1 %tobool.i.i1232.not, label %if.then262, label %if.else360

if.then262:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #13
  %general263 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2
  %add.ptr264 = getelementptr i8, ptr %call9.i.i, i32 %add260
  %sub265 = sub i32 %., %add260
  %173 = ptrtoint ptr %general263 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %general263, align 1
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  %call266 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr264, i32 noundef %sub265, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.173, i32 noundef %175) #11
  %add267 = add i32 %call266, %add260
  %add.ptr268 = getelementptr i8, ptr %call9.i.i, i32 %add267
  %sub269 = sub i32 %., %add267
  %bogus_ack = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 1
  %176 = ptrtoint ptr %bogus_ack to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %bogus_ack, align 1
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  %call270 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr268, i32 noundef %sub269, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.174, i32 noundef %178) #11
  %add271 = add i32 %call270, %add267
  %add.ptr272 = getelementptr i8, ptr %call9.i.i, i32 %add271
  %sub273 = sub i32 %., %add271
  %non_bssid_frames = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 2
  %179 = ptrtoint ptr %non_bssid_frames to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %non_bssid_frames, align 1
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  %call274 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr272, i32 noundef %sub273, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.175, i32 noundef %181) #11
  %add275 = add i32 %call274, %add271
  %add.ptr276 = getelementptr i8, ptr %call9.i.i, i32 %add275
  %sub277 = sub i32 %., %add275
  %filtered_frames = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 3
  %182 = ptrtoint ptr %filtered_frames to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %filtered_frames, align 1
  %184 = tail call i32 @llvm.bswap.i32(i32 %183)
  %call278 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr276, i32 noundef %sub277, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.176, i32 noundef %184) #11
  %add279 = add i32 %call278, %add275
  %add.ptr280 = getelementptr i8, ptr %call9.i.i, i32 %add279
  %sub281 = sub i32 %., %add279
  %non_channel_beacons = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 4
  %185 = ptrtoint ptr %non_channel_beacons to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %non_channel_beacons, align 1
  %187 = tail call i32 @llvm.bswap.i32(i32 %186)
  %call282 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr280, i32 noundef %sub281, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.177, i32 noundef %187) #11
  %add283 = add i32 %call282, %add279
  %add.ptr284 = getelementptr i8, ptr %call9.i.i, i32 %add283
  %sub285 = sub i32 %., %add283
  %channel_beacons = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 5
  %188 = ptrtoint ptr %channel_beacons to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %channel_beacons, align 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189)
  %call286 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr284, i32 noundef %sub285, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.178, i32 noundef %190) #11
  %add287 = add i32 %call286, %add283
  %add.ptr288 = getelementptr i8, ptr %call9.i.i, i32 %add287
  %sub289 = sub i32 %., %add287
  %num_missed_bcon = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 6
  %191 = ptrtoint ptr %num_missed_bcon to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %num_missed_bcon, align 1
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  %call290 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr288, i32 noundef %sub289, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.179, i32 noundef %193) #11
  %add291 = add i32 %call290, %add287
  %add.ptr292 = getelementptr i8, ptr %call9.i.i, i32 %add291
  %sub293 = sub i32 %., %add291
  %adc_rx_saturation_time = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 7
  %194 = ptrtoint ptr %adc_rx_saturation_time to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %adc_rx_saturation_time, align 1
  %196 = tail call i32 @llvm.bswap.i32(i32 %195)
  %call294 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr292, i32 noundef %sub293, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.180, i32 noundef %196) #11
  %add295 = add i32 %call294, %add291
  %add.ptr296 = getelementptr i8, ptr %call9.i.i, i32 %add295
  %sub297 = sub i32 %., %add295
  %ina_detection_search_time = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 8
  %197 = ptrtoint ptr %ina_detection_search_time to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %ina_detection_search_time, align 1
  %199 = tail call i32 @llvm.bswap.i32(i32 %198)
  %call298 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr296, i32 noundef %sub297, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.181, i32 noundef %199) #11
  %add299 = add i32 %call298, %add295
  %add.ptr300 = getelementptr i8, ptr %call9.i.i, i32 %add299
  %sub301 = sub i32 %., %add299
  %beacon_silence_rssi_a = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 9
  %200 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %beacon_silence_rssi_a, align 1
  %202 = tail call i32 @llvm.bswap.i32(i32 %201)
  %call302 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr300, i32 noundef %sub301, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.182, i32 noundef %202) #11
  %add303 = add i32 %call302, %add299
  %add.ptr304 = getelementptr i8, ptr %call9.i.i, i32 %add303
  %sub305 = sub i32 %., %add303
  %beacon_silence_rssi_b = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 10
  %203 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %beacon_silence_rssi_b, align 1
  %205 = tail call i32 @llvm.bswap.i32(i32 %204)
  %call306 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr304, i32 noundef %sub305, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.183, i32 noundef %205) #11
  %add307 = add i32 %call306, %add303
  %add.ptr308 = getelementptr i8, ptr %call9.i.i, i32 %add307
  %sub309 = sub i32 %., %add307
  %beacon_silence_rssi_c = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 11
  %206 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %207 = load i32, ptr %beacon_silence_rssi_c, align 1
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  %call310 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr308, i32 noundef %sub309, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.184, i32 noundef %208) #11
  %add311 = add i32 %call310, %add307
  %add.ptr312 = getelementptr i8, ptr %call9.i.i, i32 %add311
  %sub313 = sub i32 %., %add311
  %interference_data_flag = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 12
  %209 = ptrtoint ptr %interference_data_flag to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %interference_data_flag, align 1
  %211 = tail call i32 @llvm.bswap.i32(i32 %210)
  %call314 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr312, i32 noundef %sub313, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.185, i32 noundef %211) #11
  %add315 = add i32 %call314, %add311
  %add.ptr316 = getelementptr i8, ptr %call9.i.i, i32 %add315
  %sub317 = sub i32 %., %add315
  %channel_load = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 13
  %212 = ptrtoint ptr %channel_load to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %channel_load, align 1
  %214 = tail call i32 @llvm.bswap.i32(i32 %213)
  %call318 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr316, i32 noundef %sub317, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.186, i32 noundef %214) #11
  %add319 = add i32 %call318, %add315
  %add.ptr320 = getelementptr i8, ptr %call9.i.i, i32 %add319
  %sub321 = sub i32 %., %add319
  %dsp_false_alarms = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 14
  %215 = ptrtoint ptr %dsp_false_alarms to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %dsp_false_alarms, align 1
  %217 = tail call i32 @llvm.bswap.i32(i32 %216)
  %call322 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr320, i32 noundef %sub321, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.187, i32 noundef %217) #11
  %add323 = add i32 %call322, %add319
  %add.ptr324 = getelementptr i8, ptr %call9.i.i, i32 %add323
  %sub325 = sub i32 %., %add323
  %beacon_rssi_a = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 15
  %218 = ptrtoint ptr %beacon_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %beacon_rssi_a, align 1
  %220 = tail call i32 @llvm.bswap.i32(i32 %219)
  %call326 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr324, i32 noundef %sub325, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.188, i32 noundef %220) #11
  %add327 = add i32 %call326, %add323
  %add.ptr328 = getelementptr i8, ptr %call9.i.i, i32 %add327
  %sub329 = sub i32 %., %add327
  %beacon_rssi_b = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 16
  %221 = ptrtoint ptr %beacon_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %beacon_rssi_b, align 1
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  %call330 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr328, i32 noundef %sub329, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.189, i32 noundef %223) #11
  %add331 = add i32 %call330, %add327
  %add.ptr332 = getelementptr i8, ptr %call9.i.i, i32 %add331
  %sub333 = sub i32 %., %add331
  %beacon_rssi_c = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 17
  %224 = ptrtoint ptr %beacon_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %beacon_rssi_c, align 1
  %226 = tail call i32 @llvm.bswap.i32(i32 %225)
  %call334 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr332, i32 noundef %sub333, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.190, i32 noundef %226) #11
  %add335 = add i32 %call334, %add331
  %add.ptr336 = getelementptr i8, ptr %call9.i.i, i32 %add335
  %sub337 = sub i32 %., %add335
  %beacon_energy_a = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 18
  %227 = ptrtoint ptr %beacon_energy_a to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %beacon_energy_a, align 1
  %229 = tail call i32 @llvm.bswap.i32(i32 %228)
  %call338 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr336, i32 noundef %sub337, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.191, i32 noundef %229) #11
  %add339 = add i32 %call338, %add335
  %add.ptr340 = getelementptr i8, ptr %call9.i.i, i32 %add339
  %sub341 = sub i32 %., %add339
  %beacon_energy_b = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 19
  %230 = ptrtoint ptr %beacon_energy_b to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %beacon_energy_b, align 1
  %232 = tail call i32 @llvm.bswap.i32(i32 %231)
  %call342 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr340, i32 noundef %sub341, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.192, i32 noundef %232) #11
  %add343 = add i32 %call342, %add339
  %add.ptr344 = getelementptr i8, ptr %call9.i.i, i32 %add343
  %sub345 = sub i32 %., %add343
  %beacon_energy_c = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 20
  %233 = ptrtoint ptr %beacon_energy_c to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %beacon_energy_c, align 1
  %235 = tail call i32 @llvm.bswap.i32(i32 %234)
  %call346 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr344, i32 noundef %sub345, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.193, i32 noundef %235) #11
  %add347 = add i32 %call346, %add343
  %add.ptr348 = getelementptr i8, ptr %call9.i.i, i32 %add347
  %sub349 = sub i32 %., %add347
  %num_bt_kills = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 21
  %236 = ptrtoint ptr %num_bt_kills to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %num_bt_kills, align 1
  %238 = tail call i32 @llvm.bswap.i32(i32 %237)
  %call350 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr348, i32 noundef %sub349, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.194, i32 noundef %238) #11
  %add351 = add i32 %call350, %add347
  %add.ptr352 = getelementptr i8, ptr %call9.i.i, i32 %add351
  %sub353 = sub i32 %., %add351
  %mac_id = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 22
  %239 = ptrtoint ptr %mac_id to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %mac_id, align 1
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  %call354 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr352, i32 noundef %sub353, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.195, i32 noundef %241) #11
  %add355 = add i32 %call354, %add351
  %add.ptr356 = getelementptr i8, ptr %call9.i.i, i32 %add355
  %sub357 = sub i32 %., %add355
  %directed_data_mpdu = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 2, i32 23
  %242 = ptrtoint ptr %directed_data_mpdu to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %directed_data_mpdu, align 1
  %244 = tail call i32 @llvm.bswap.i32(i32 %243)
  %call358 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr356, i32 noundef %sub357, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.196, i32 noundef %244) #11
  %add359 = add i32 %call358, %add355
  br label %if.end463

if.else360:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #13
  %general362 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 10
  %add.ptr363 = getelementptr i8, ptr %call9.i.i, i32 %add260
  %sub364 = sub i32 %., %add260
  %245 = ptrtoint ptr %general362 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %general362, align 1
  %247 = tail call i32 @llvm.bswap.i32(i32 %246)
  %call366 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr363, i32 noundef %sub364, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.173, i32 noundef %247) #11
  %add367 = add i32 %call366, %add260
  %add.ptr368 = getelementptr i8, ptr %call9.i.i, i32 %add367
  %sub369 = sub i32 %., %add367
  %bogus_ack370 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 11
  %248 = ptrtoint ptr %bogus_ack370 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %bogus_ack370, align 1
  %250 = tail call i32 @llvm.bswap.i32(i32 %249)
  %call371 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr368, i32 noundef %sub369, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.174, i32 noundef %250) #11
  %add372 = add i32 %call371, %add367
  %add.ptr373 = getelementptr i8, ptr %call9.i.i, i32 %add372
  %sub374 = sub i32 %., %add372
  %non_channel_beacons375 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 12
  %251 = ptrtoint ptr %non_channel_beacons375 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %non_channel_beacons375, align 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252)
  %call376 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr373, i32 noundef %sub374, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.177, i32 noundef %253) #11
  %add377 = add i32 %call376, %add372
  %add.ptr378 = getelementptr i8, ptr %call9.i.i, i32 %add377
  %sub379 = sub i32 %., %add377
  %channel_beacons380 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 13
  %254 = ptrtoint ptr %channel_beacons380 to i32
  call void @__asan_loadN_noabort(i32 %254, i32 4)
  %255 = load i32, ptr %channel_beacons380, align 1
  %256 = tail call i32 @llvm.bswap.i32(i32 %255)
  %call381 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr378, i32 noundef %sub379, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.178, i32 noundef %256) #11
  %add382 = add i32 %call381, %add377
  %add.ptr383 = getelementptr i8, ptr %call9.i.i, i32 %add382
  %sub384 = sub i32 %., %add382
  %num_missed_bcon385 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 14
  %257 = ptrtoint ptr %num_missed_bcon385 to i32
  call void @__asan_loadN_noabort(i32 %257, i32 4)
  %258 = load i32, ptr %num_missed_bcon385, align 1
  %259 = tail call i32 @llvm.bswap.i32(i32 %258)
  %call386 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr383, i32 noundef %sub384, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.179, i32 noundef %259) #11
  %add387 = add i32 %call386, %add382
  %add.ptr388 = getelementptr i8, ptr %call9.i.i, i32 %add387
  %sub389 = sub i32 %., %add387
  %adc_rx_saturation_time390 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 15
  %260 = ptrtoint ptr %adc_rx_saturation_time390 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %261 = load i32, ptr %adc_rx_saturation_time390, align 1
  %262 = tail call i32 @llvm.bswap.i32(i32 %261)
  %call391 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr388, i32 noundef %sub389, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.180, i32 noundef %262) #11
  %add392 = add i32 %call391, %add387
  %add.ptr393 = getelementptr i8, ptr %call9.i.i, i32 %add392
  %sub394 = sub i32 %., %add392
  %ina_detection_search_time395 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 16
  %263 = ptrtoint ptr %ina_detection_search_time395 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %ina_detection_search_time395, align 1
  %265 = tail call i32 @llvm.bswap.i32(i32 %264)
  %call396 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr393, i32 noundef %sub394, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.181, i32 noundef %265) #11
  %add397 = add i32 %call396, %add392
  %add.ptr398 = getelementptr i8, ptr %call9.i.i, i32 %add397
  %sub399 = sub i32 %., %add397
  %beacon_silence_rssi_a400 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 17
  %266 = ptrtoint ptr %beacon_silence_rssi_a400 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load i32, ptr %beacon_silence_rssi_a400, align 1
  %268 = tail call i32 @llvm.bswap.i32(i32 %267)
  %call401 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr398, i32 noundef %sub399, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.182, i32 noundef %268) #11
  %add402 = add i32 %call401, %add397
  %add.ptr403 = getelementptr i8, ptr %call9.i.i, i32 %add402
  %sub404 = sub i32 %., %add402
  %beacon_silence_rssi_b405 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 18
  %269 = ptrtoint ptr %beacon_silence_rssi_b405 to i32
  call void @__asan_loadN_noabort(i32 %269, i32 4)
  %270 = load i32, ptr %beacon_silence_rssi_b405, align 1
  %271 = tail call i32 @llvm.bswap.i32(i32 %270)
  %call406 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr403, i32 noundef %sub404, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.183, i32 noundef %271) #11
  %add407 = add i32 %call406, %add402
  %add.ptr408 = getelementptr i8, ptr %call9.i.i, i32 %add407
  %sub409 = sub i32 %., %add407
  %beacon_silence_rssi_c410 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 0, i32 19
  %272 = ptrtoint ptr %beacon_silence_rssi_c410 to i32
  call void @__asan_loadN_noabort(i32 %272, i32 4)
  %273 = load i32, ptr %beacon_silence_rssi_c410, align 1
  %274 = tail call i32 @llvm.bswap.i32(i32 %273)
  %call411 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr408, i32 noundef %sub409, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.184, i32 noundef %274) #11
  %add412 = add i32 %call411, %add407
  %add.ptr413 = getelementptr i8, ptr %call9.i.i, i32 %add412
  %sub414 = sub i32 %., %add412
  %interference_data_flag415 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1
  %275 = ptrtoint ptr %interference_data_flag415 to i32
  call void @__asan_loadN_noabort(i32 %275, i32 4)
  %276 = load i32, ptr %interference_data_flag415, align 1
  %277 = tail call i32 @llvm.bswap.i32(i32 %276)
  %call416 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr413, i32 noundef %sub414, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.185, i32 noundef %277) #11
  %add417 = add i32 %call416, %add412
  %add.ptr418 = getelementptr i8, ptr %call9.i.i, i32 %add417
  %sub419 = sub i32 %., %add417
  %channel_load420 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 1
  %278 = ptrtoint ptr %channel_load420 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %channel_load420, align 1
  %280 = tail call i32 @llvm.bswap.i32(i32 %279)
  %call421 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr418, i32 noundef %sub419, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.186, i32 noundef %280) #11
  %add422 = add i32 %call421, %add417
  %add.ptr423 = getelementptr i8, ptr %call9.i.i, i32 %add422
  %sub424 = sub i32 %., %add422
  %beacon_rssi_a425 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 2
  %281 = ptrtoint ptr %beacon_rssi_a425 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 4)
  %282 = load i32, ptr %beacon_rssi_a425, align 1
  %283 = tail call i32 @llvm.bswap.i32(i32 %282)
  %call426 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr423, i32 noundef %sub424, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.188, i32 noundef %283) #11
  %add427 = add i32 %call426, %add422
  %add.ptr428 = getelementptr i8, ptr %call9.i.i, i32 %add427
  %sub429 = sub i32 %., %add427
  %beacon_rssi_b430 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 3
  %284 = ptrtoint ptr %beacon_rssi_b430 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %beacon_rssi_b430, align 1
  %286 = tail call i32 @llvm.bswap.i32(i32 %285)
  %call431 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr428, i32 noundef %sub429, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.189, i32 noundef %286) #11
  %add432 = add i32 %call431, %add427
  %add.ptr433 = getelementptr i8, ptr %call9.i.i, i32 %add432
  %sub434 = sub i32 %., %add432
  %beacon_rssi_c435 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 4
  %287 = ptrtoint ptr %beacon_rssi_c435 to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %288 = load i32, ptr %beacon_rssi_c435, align 1
  %289 = tail call i32 @llvm.bswap.i32(i32 %288)
  %call436 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr433, i32 noundef %sub434, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.190, i32 noundef %289) #11
  %add437 = add i32 %call436, %add432
  %add.ptr438 = getelementptr i8, ptr %call9.i.i, i32 %add437
  %sub439 = sub i32 %., %add437
  %beacon_energy_a440 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 5
  %290 = ptrtoint ptr %beacon_energy_a440 to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %beacon_energy_a440, align 1
  %292 = tail call i32 @llvm.bswap.i32(i32 %291)
  %call441 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr438, i32 noundef %sub439, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.191, i32 noundef %292) #11
  %add442 = add i32 %call441, %add437
  %add.ptr443 = getelementptr i8, ptr %call9.i.i, i32 %add442
  %sub444 = sub i32 %., %add442
  %beacon_energy_b445 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 6
  %293 = ptrtoint ptr %beacon_energy_b445 to i32
  call void @__asan_loadN_noabort(i32 %293, i32 4)
  %294 = load i32, ptr %beacon_energy_b445, align 1
  %295 = tail call i32 @llvm.bswap.i32(i32 %294)
  %call446 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr443, i32 noundef %sub444, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.192, i32 noundef %295) #11
  %add447 = add i32 %call446, %add442
  %add.ptr448 = getelementptr i8, ptr %call9.i.i, i32 %add447
  %sub449 = sub i32 %., %add447
  %beacon_energy_c450 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 7
  %296 = ptrtoint ptr %beacon_energy_c450 to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %beacon_energy_c450, align 1
  %298 = tail call i32 @llvm.bswap.i32(i32 %297)
  %call451 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr448, i32 noundef %sub449, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.193, i32 noundef %298) #11
  %add452 = add i32 %call451, %add447
  %add.ptr453 = getelementptr i8, ptr %call9.i.i, i32 %add452
  %sub454 = sub i32 %., %add452
  %num_bt_kills455 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 8
  %299 = ptrtoint ptr %num_bt_kills455 to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %num_bt_kills455, align 1
  %301 = tail call i32 @llvm.bswap.i32(i32 %300)
  %call456 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr453, i32 noundef %sub454, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.194, i32 noundef %301) #11
  %add457 = add i32 %call456, %add452
  %add.ptr458 = getelementptr i8, ptr %call9.i.i, i32 %add457
  %sub459 = sub i32 %., %add457
  %mac_id460 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 9
  %302 = ptrtoint ptr %mac_id460 to i32
  call void @__asan_loadN_noabort(i32 %302, i32 4)
  %303 = load i32, ptr %mac_id460, align 1
  %304 = tail call i32 @llvm.bswap.i32(i32 %303)
  %call461 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr458, i32 noundef %sub459, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.195, i32 noundef %304) #11
  %add462 = add i32 %call461, %add457
  br label %if.end463

if.end463:                                        ; preds = %if.else360, %if.then262
  %pos.2 = phi i32 [ %add462, %if.else360 ], [ %add359, %if.then262 ]
  %add.ptr464 = getelementptr i8, ptr %call9.i.i, i32 %pos.2
  %sub465 = sub i32 %., %pos.2
  %call466 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr464, i32 noundef %sub465, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.197) #11
  %add467 = add i32 %call466, %pos.2
  %305 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i1234 = getelementptr %struct.iwl_fw, ptr %306, i32 0, i32 5, i32 7, i32 1
  %307 = ptrtoint ptr %arrayidx.i.i.i1234 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load volatile i32, ptr %arrayidx.i.i.i1234, align 4
  %309 = and i32 %308, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool.i.i1235.not = icmp eq i32 %309, 0
  br i1 %tobool.i.i1235.not, label %if.then469, label %if.else516

if.then469:                                       ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #13
  %ofdm_ht = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3
  %add.ptr470 = getelementptr i8, ptr %call9.i.i, i32 %add467
  %sub471 = sub i32 %., %add467
  %310 = ptrtoint ptr %ofdm_ht to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %ofdm_ht, align 1
  %312 = tail call i32 @llvm.bswap.i32(i32 %311)
  %call473 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr470, i32 noundef %sub471, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.153, i32 noundef %312) #11
  %add474 = add i32 %call473, %add467
  %add.ptr475 = getelementptr i8, ptr %call9.i.i, i32 %add474
  %sub476 = sub i32 %., %add474
  %overrun_err477 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 1
  %313 = ptrtoint ptr %overrun_err477 to i32
  call void @__asan_loadN_noabort(i32 %313, i32 4)
  %314 = load i32, ptr %overrun_err477, align 1
  %315 = tail call i32 @llvm.bswap.i32(i32 %314)
  %call478 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr475, i32 noundef %sub476, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.155, i32 noundef %315) #11
  %add479 = add i32 %call478, %add474
  %add.ptr480 = getelementptr i8, ptr %call9.i.i, i32 %add479
  %sub481 = sub i32 %., %add479
  %early_overrun_err482 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 2
  %316 = ptrtoint ptr %early_overrun_err482 to i32
  call void @__asan_loadN_noabort(i32 %316, i32 4)
  %317 = load i32, ptr %early_overrun_err482, align 1
  %318 = tail call i32 @llvm.bswap.i32(i32 %317)
  %call483 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr480, i32 noundef %sub481, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.156, i32 noundef %318) #11
  %add484 = add i32 %call483, %add479
  %add.ptr485 = getelementptr i8, ptr %call9.i.i, i32 %add484
  %sub486 = sub i32 %., %add484
  %crc32_good487 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 3
  %319 = ptrtoint ptr %crc32_good487 to i32
  call void @__asan_loadN_noabort(i32 %319, i32 4)
  %320 = load i32, ptr %crc32_good487, align 1
  %321 = tail call i32 @llvm.bswap.i32(i32 %320)
  %call488 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr485, i32 noundef %sub486, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.157, i32 noundef %321) #11
  %add489 = add i32 %call488, %add484
  %add.ptr490 = getelementptr i8, ptr %call9.i.i, i32 %add489
  %sub491 = sub i32 %., %add489
  %crc32_err492 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 4
  %322 = ptrtoint ptr %crc32_err492 to i32
  call void @__asan_loadN_noabort(i32 %322, i32 4)
  %323 = load i32, ptr %crc32_err492, align 1
  %324 = tail call i32 @llvm.bswap.i32(i32 %323)
  %call493 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr490, i32 noundef %sub491, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.154, i32 noundef %324) #11
  %add494 = add i32 %call493, %add489
  %add.ptr495 = getelementptr i8, ptr %call9.i.i, i32 %add494
  %sub496 = sub i32 %., %add494
  %mh_format_err497 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 5
  %325 = ptrtoint ptr %mh_format_err497 to i32
  call void @__asan_loadN_noabort(i32 %325, i32 4)
  %326 = load i32, ptr %mh_format_err497, align 1
  %327 = tail call i32 @llvm.bswap.i32(i32 %326)
  %call498 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr495, i32 noundef %sub496, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.168, i32 noundef %327) #11
  %add499 = add i32 %call498, %add494
  %add.ptr500 = getelementptr i8, ptr %call9.i.i, i32 %add499
  %sub501 = sub i32 %., %add499
  %agg_crc32_good = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 6
  %328 = ptrtoint ptr %agg_crc32_good to i32
  call void @__asan_loadN_noabort(i32 %328, i32 4)
  %329 = load i32, ptr %agg_crc32_good, align 1
  %330 = tail call i32 @llvm.bswap.i32(i32 %329)
  %call502 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr500, i32 noundef %sub501, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.198, i32 noundef %330) #11
  %add503 = add i32 %call502, %add499
  %add.ptr504 = getelementptr i8, ptr %call9.i.i, i32 %add503
  %sub505 = sub i32 %., %add503
  %agg_mpdu_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 7
  %331 = ptrtoint ptr %agg_mpdu_cnt to i32
  call void @__asan_loadN_noabort(i32 %331, i32 4)
  %332 = load i32, ptr %agg_mpdu_cnt, align 1
  %333 = tail call i32 @llvm.bswap.i32(i32 %332)
  %call506 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr504, i32 noundef %sub505, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.199, i32 noundef %333) #11
  %add507 = add i32 %call506, %add503
  %add.ptr508 = getelementptr i8, ptr %call9.i.i, i32 %add507
  %sub509 = sub i32 %., %add507
  %agg_cnt = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 8
  %334 = ptrtoint ptr %agg_cnt to i32
  call void @__asan_loadN_noabort(i32 %334, i32 4)
  %335 = load i32, ptr %agg_cnt, align 1
  %336 = tail call i32 @llvm.bswap.i32(i32 %335)
  %call510 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr508, i32 noundef %sub509, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.200, i32 noundef %336) #11
  %add511 = add i32 %call510, %add507
  %add.ptr512 = getelementptr i8, ptr %call9.i.i, i32 %add511
  %sub513 = sub i32 %., %add511
  %unsupport_mcs = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 3, i32 9
  %337 = ptrtoint ptr %unsupport_mcs to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %unsupport_mcs, align 1
  %339 = tail call i32 @llvm.bswap.i32(i32 %338)
  %call514 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr512, i32 noundef %sub513, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.201, i32 noundef %339) #11
  %add515 = add i32 %call514, %add511
  br label %if.end539

if.else516:                                       ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #13
  %ofdm_ht518 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 10
  %add.ptr519 = getelementptr i8, ptr %call9.i.i, i32 %add467
  %sub520 = sub i32 %., %add467
  %340 = ptrtoint ptr %ofdm_ht518 to i32
  call void @__asan_loadN_noabort(i32 %340, i32 4)
  %341 = load i32, ptr %ofdm_ht518, align 1
  %342 = tail call i32 @llvm.bswap.i32(i32 %341)
  %call522 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr519, i32 noundef %sub520, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.168, i32 noundef %342) #11
  %add523 = add i32 %call522, %add467
  %add.ptr524 = getelementptr i8, ptr %call9.i.i, i32 %add523
  %sub525 = sub i32 %., %add523
  %agg_mpdu_cnt526 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 11
  %343 = ptrtoint ptr %agg_mpdu_cnt526 to i32
  call void @__asan_loadN_noabort(i32 %343, i32 4)
  %344 = load i32, ptr %agg_mpdu_cnt526, align 1
  %345 = tail call i32 @llvm.bswap.i32(i32 %344)
  %call527 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr524, i32 noundef %sub525, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.199, i32 noundef %345) #11
  %add528 = add i32 %call527, %add523
  %add.ptr529 = getelementptr i8, ptr %call9.i.i, i32 %add528
  %sub530 = sub i32 %., %add528
  %agg_cnt531 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 12
  %346 = ptrtoint ptr %agg_cnt531 to i32
  call void @__asan_loadN_noabort(i32 %346, i32 4)
  %347 = load i32, ptr %agg_cnt531, align 1
  %348 = tail call i32 @llvm.bswap.i32(i32 %347)
  %call532 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr529, i32 noundef %sub530, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.200, i32 noundef %348) #11
  %add533 = add i32 %call532, %add528
  %add.ptr534 = getelementptr i8, ptr %call9.i.i, i32 %add533
  %sub535 = sub i32 %., %add533
  %unsupport_mcs536 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 24, i32 0, i32 1, i32 13
  %349 = ptrtoint ptr %unsupport_mcs536 to i32
  call void @__asan_loadN_noabort(i32 %349, i32 4)
  %350 = load i32, ptr %unsupport_mcs536, align 1
  %351 = tail call i32 @llvm.bswap.i32(i32 %350)
  %call537 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr534, i32 noundef %sub535, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.201, i32 noundef %351) #11
  %add538 = add i32 %call537, %add533
  br label %if.end539

if.end539:                                        ; preds = %if.else516, %if.then469
  %pos.3 = phi i32 [ %add538, %if.else516 ], [ %add515, %if.then469 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %call541 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i.i, i32 noundef %pos.3) #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end539, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call541, %if.end539 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_request_statistics(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_drv_rx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.iwl_dbgfs_frame_stats_read.exit_crit_edge, label %if.end.i

entry.iwl_dbgfs_frame_stats_read.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_frame_stats_read.exit

if.end.i:                                         ; preds = %entry
  %drv_rx_stats = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83
  %drv_stats_lock.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %drv_stats_lock.i) #11
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 1024
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call7.i.i to i32
  %3 = ptrtoint ptr %drv_rx_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %drv_rx_stats, align 4
  %ht_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 1
  %5 = ptrtoint ptr %ht_frames.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ht_frames.i, align 4
  %vht_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 2
  %7 = ptrtoint ptr %vht_frames.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vht_frames.i, align 4
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1024, ptr noundef nonnull @.str.202, i32 noundef %4, i32 noundef %6, i32 noundef %8) #11
  %add.ptr2.i = getelementptr i8, ptr %call7.i.i, i32 %call1.i
  %gepdiff.i = sub i32 1024, %call1.i
  %bw_20_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 3
  %9 = ptrtoint ptr %bw_20_frames.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bw_20_frames.i, align 4
  %bw_40_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 4
  %11 = ptrtoint ptr %bw_40_frames.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bw_40_frames.i, align 4
  %bw_80_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 5
  %13 = ptrtoint ptr %bw_80_frames.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bw_80_frames.i, align 4
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %gepdiff.i, ptr noundef nonnull @.str.203, i32 noundef %10, i32 noundef %12, i32 noundef %14) #11
  %add.ptr7.i = getelementptr i8, ptr %add.ptr2.i, i32 %call6.i
  %sub.ptr.rhs.cast9.i = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.sub10.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast9.i
  %ngi_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 8
  %15 = ptrtoint ptr %ngi_frames.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ngi_frames.i, align 4
  %sgi_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 7
  %17 = ptrtoint ptr %sgi_frames.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sgi_frames.i, align 4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.i, i32 noundef %sub.ptr.sub10.i, ptr noundef nonnull @.str.204, i32 noundef %16, i32 noundef %18) #11
  %add.ptr12.i = getelementptr i8, ptr %add.ptr7.i, i32 %call11.i
  %sub.ptr.rhs.cast14.i = ptrtoint ptr %add.ptr12.i to i32
  %sub.ptr.sub15.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast14.i
  %siso_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 9
  %19 = ptrtoint ptr %siso_frames.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %siso_frames.i, align 4
  %mimo2_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 10
  %21 = ptrtoint ptr %mimo2_frames.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mimo2_frames.i, align 4
  %call16.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12.i, i32 noundef %sub.ptr.sub15.i, ptr noundef nonnull @.str.205, i32 noundef %20, i32 noundef %22) #11
  %add.ptr17.i = getelementptr i8, ptr %add.ptr12.i, i32 %call16.i
  %sub.ptr.rhs.cast19.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.sub20.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast19.i
  %fail_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 14
  %23 = ptrtoint ptr %fail_frames.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fail_frames.i, align 4
  %success_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 13
  %25 = ptrtoint ptr %success_frames.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %success_frames.i, align 4
  %call21.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i, i32 noundef %sub.ptr.sub20.i, ptr noundef nonnull @.str.206, i32 noundef %24, i32 noundef %26) #11
  %add.ptr22.i = getelementptr i8, ptr %add.ptr17.i, i32 %call21.i
  %sub.ptr.rhs.cast24.i = ptrtoint ptr %add.ptr22.i to i32
  %sub.ptr.sub25.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast24.i
  %agg_frames.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 11
  %27 = ptrtoint ptr %agg_frames.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %agg_frames.i, align 4
  %call26.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.i, i32 noundef %sub.ptr.sub25.i, ptr noundef nonnull @.str.207, i32 noundef %28) #11
  %add.ptr27.i = getelementptr i8, ptr %add.ptr22.i, i32 %call26.i
  %sub.ptr.rhs.cast29.i = ptrtoint ptr %add.ptr27.i to i32
  %sub.ptr.sub30.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast29.i
  %ampdu_count.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 12
  %29 = ptrtoint ptr %ampdu_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ampdu_count.i, align 4
  %call31.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub.ptr.sub30.i, ptr noundef nonnull @.str.208, i32 noundef %30) #11
  %add.ptr32.i = getelementptr i8, ptr %add.ptr27.i, i32 %call31.i
  %sub.ptr.rhs.cast34.i = ptrtoint ptr %add.ptr32.i to i32
  %sub.ptr.sub35.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast34.i
  %31 = ptrtoint ptr %ampdu_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ampdu_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i = icmp eq i32 %32, 0
  br i1 %cmp.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %agg_frames.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %agg_frames.i, align 4
  %div.i = udiv i32 %34, %32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %call39.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32.i, i32 noundef %sub.ptr.sub35.i, ptr noundef nonnull @.str.209, i32 noundef %cond.i) #11
  %add.ptr40.i = getelementptr i8, ptr %add.ptr32.i, i32 %call39.i
  %sub.ptr.rhs.cast42.i = ptrtoint ptr %add.ptr40.i to i32
  %sub.ptr.sub43.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast42.i
  %call44.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.i, i32 noundef %sub.ptr.sub43.i, ptr noundef nonnull @.str.210) #11
  %add.ptr45.i = getelementptr i8, ptr %add.ptr40.i, i32 %call44.i
  %last_frame_idx.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 16
  %35 = ptrtoint ptr %last_frame_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_frame_idx.i, align 4
  %sub.i = add i32 %36, -1
  %add.ptr63.i = getelementptr i8, ptr %call7.i.i, i32 1023
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end.i
  %i.0154.i = phi i32 [ 0, %cond.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %idx.0153.i = phi i32 [ %sub.i, %cond.end.i ], [ %rem.i, %for.inc.i.for.body.i_crit_edge ]
  %pos.0152.i = phi ptr [ %add.ptr45.i, %cond.end.i ], [ %pos.1.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add i32 %idx.0153.i, 1
  %rem.i = and i32 %add.i, 7
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 83, i32 15, i32 %rem.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp47.i = icmp eq i32 %38, 0
  br i1 %cmp47.i, label %for.body.i.for.inc.i_crit_edge, label %if.end49.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end49.i:                                       ; preds = %for.body.i
  %sub.ptr.rhs.cast51.i = ptrtoint ptr %pos.0152.i to i32
  %sub.ptr.sub52.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast51.i
  %sub53.i = sub nuw nsw i32 8, %i.0154.i
  %call54.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %pos.0152.i, i32 noundef %sub.ptr.sub52.i, ptr noundef nonnull @.str.211, i32 noundef %sub53.i) #11
  %add.ptr55.i = getelementptr i8, ptr %pos.0152.i, i32 %call54.i
  %sub.ptr.rhs.cast57.i = ptrtoint ptr %add.ptr55.i to i32
  %sub.ptr.sub58.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast57.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %call61.i = tail call i32 @rs_pretty_print_rate_v1(ptr noundef %add.ptr55.i, i32 noundef %sub.ptr.sub58.i, i32 noundef %40) #11
  %add.ptr62.i = getelementptr i8, ptr %add.ptr55.i, i32 %call61.i
  %cmp64.i = icmp ult ptr %add.ptr62.i, %add.ptr63.i
  br i1 %cmp64.i, label %if.then65.i, label %if.end49.i.for.inc.i_crit_edge

if.end49.i.for.inc.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then65.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr62.i, i32 1
  %41 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %add.ptr62.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then65.i, %if.end49.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pos.1.i = phi ptr [ %pos.0152.i, %for.body.i.for.inc.i_crit_edge ], [ %incdec.ptr.i, %if.then65.i ], [ %add.ptr62.i, %if.end49.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0154.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %drv_stats_lock.i) #11
  %sub.ptr.lhs.cast68.i = ptrtoint ptr %pos.1.i to i32
  %sub.ptr.sub70.i = sub i32 %sub.ptr.lhs.cast68.i, %sub.ptr.rhs.cast.i
  %call71.i = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %sub.ptr.sub70.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %iwl_dbgfs_frame_stats_read.exit

iwl_dbgfs_frame_stats_read.exit:                  ; preds = %for.end.i, %entry.iwl_dbgfs_frame_stats_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call71.i, %for.end.i ], [ -12, %entry.iwl_dbgfs_frame_stats_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs_pretty_print_rate_v1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_fw_restart_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 10)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 9)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i.i, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %fw_restart.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 95
  %12 = ptrtoint ptr %fw_restart.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_restart.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.i = icmp sgt i8 %13, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add nuw i8 %13, 1
  %14 = ptrtoint ptr %fw_restart.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %inc.i, ptr %fw_restart.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp5.i = icmp eq i32 %3, 6
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end4.i.if.end10.i_crit_edge

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.212, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.then8.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 9, ptr noundef %status.i.i) #11
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans.i, align 4
  %status9.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 7
  call void @_set_bit(i32 noundef 10, ptr noundef %status9.i) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true.i.if.end10.i_crit_edge, %if.end4.i.if.end10.i_crit_edge
  %call11.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %1, i32 noundef 258, i32 noundef 0, i16 noundef zeroext 0, ptr noundef null) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %3, %if.end10.i ], [ -5, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_fw_nmi_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 10)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 9)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i.i, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i = icmp eq i32 %3, 6
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.212, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.then2.i, label %land.lhs.true.i.if.end3.i_crit_edge

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 9, ptr noundef %status.i.i) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans.i, align 4
  call void @iwl_force_nmi(ptr noundef %13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %3, %if.end3.i ], [ -5, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_force_nmi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_bt_tx_prio_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %bt_tx_prio.i = alloca i32, align 4
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 10)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 9)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_tx_prio.i) #11
  %9 = ptrtoint ptr %bt_tx_prio.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %bt_tx_prio.i, align 4, !annotation !578
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.213, ptr noundef nonnull %bt_tx_prio.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge

if.end.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_bt_tx_prio_write.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %bt_tx_prio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bt_tx_prio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp1.i = icmp ugt i32 %11, 4
  br i1 %cmp1.i, label %if.end.i.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge, label %if.end3.i

if.end.i.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_bt_tx_prio_write.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %11 to i8
  %bt_tx_prio4.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 120
  %12 = ptrtoint ptr %bt_tx_prio4.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %bt_tx_prio4.i, align 8
  br label %iwl_dbgfs_bt_tx_prio_write.exit

iwl_dbgfs_bt_tx_prio_write.exit:                  ; preds = %if.end3.i, %if.end.i.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge, %if.end.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.end3.i ], [ -22, %if.end.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_bt_tx_prio_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_tx_prio.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_bt_tx_prio_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_bt_tx_prio_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_bt_force_ant_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 10)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 9)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call.i = call i32 @match_string(ptr noundef nonnull @iwl_dbgfs_bt_force_ant_write.modes_str, i32 noundef 4, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %bt_force_ant_mode1.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 122
  %9 = ptrtoint ptr %bt_force_ant_mode1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bt_force_ant_mode1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call.i)
  %cmp2.i = icmp eq i32 %10, %call.i
  br i1 %cmp2.i, label %if.end.i.out.thread.i_crit_edge, label %if.end4.i

if.end.i.out.thread.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.i

if.end4.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %bt_force_ant_mode1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %bt_force_ant_mode1.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %arrayidx.i = getelementptr [4 x ptr], ptr @iwl_dbgfs_bt_force_ant_write.modes_str, i32 0, i32 %call.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dbgfs_bt_force_ant_write, ptr noundef nonnull @.str.218, ptr noundef %15) #11
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.end4.i.out.thread.i_crit_edge, label %out.i

if.end4.i.out.thread.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.i

out.thread.i:                                     ; preds = %if.end4.i.out.thread.i_crit_edge, %if.end.i.out.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %19

out.i:                                            ; preds = %if.end4.i
  %call12.i = call i32 @iwl_mvm_send_bt_init_conf(ptr noundef %1) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %out.i._crit_edge, label %out.i.cleanup_crit_edge

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out.i._crit_edge:                                 ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %19

19:                                               ; preds = %out.i._crit_edge, %out.thread.i
  br label %cleanup

cleanup:                                          ; preds = %19, %out.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ %3, %19 ], [ %call12.i, %out.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_bt_init_conf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_scan_ant_rxchain_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.219) #11
  %scan_rx_ant = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 60
  %3 = ptrtoint ptr %scan_rx_ant to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %scan_rx_ant, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 32, %call
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.220) #11
  %add5 = add i32 %call4, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pos.0 = phi i32 [ %add5, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %scan_rx_ant to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_rx_ant, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %pos.0
  %sub13 = sub i32 32, %pos.0
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.221) #11
  %add15 = add i32 %call14, %pos.0
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  %pos.1 = phi i32 [ %add15, %if.then10 ], [ %pos.0, %if.end.if.end16_crit_edge ]
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %pos.1
  %sub19 = sub i32 32, %pos.1
  %9 = ptrtoint ptr %scan_rx_ant to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scan_rx_ant, align 4
  %conv21 = zext i8 %10 to i32
  %call22 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.222, i32 noundef %conv21) #11
  %add23 = add i32 %call22, %pos.1
  %call25 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add23) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_scan_ant_rxchain_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %scan_rx_ant.i = alloca i8, align 1
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buf, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan_rx_ant.i) #11
  %9 = ptrtoint ptr %scan_rx_ant.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %scan_rx_ant.i, align 1, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_scan_ant_rxchain_write.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.223, ptr noundef nonnull %scan_rx_ant.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge

if.end.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_scan_ant_rxchain_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %scan_rx_ant.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %scan_rx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %14)
  %cmp4.i = icmp ugt i8 %14, 7
  br i1 %cmp4.i, label %if.end3.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, label %if.end7.i

if.end3.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_scan_ant_rxchain_write.exit

if.end7.i:                                        ; preds = %if.end3.i
  %conv.i = zext i8 %14 to i32
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 31
  %15 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end7.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i8

if.end7.i.cond.false.i.i_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i

land.lhs.true.i.i8:                               ; preds = %if.end7.i
  %valid_rx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %valid_rx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid_rx_ant.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i8.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i8.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i.i, align 8
  %valid_rx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %valid_rx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %valid_rx_ant3.i.i, align 1
  %and.i.i = and i8 %22, %18
  br label %iwl_mvm_get_valid_rx_ant.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i8.cond.false.i.i_crit_edge, %if.end7.i.cond.false.i.i_crit_edge
  %fw8.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %fw8.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw8.i.i, align 8
  %valid_rx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %valid_rx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %valid_rx_ant9.i.i, align 1
  br label %iwl_mvm_get_valid_rx_ant.exit.i

iwl_mvm_get_valid_rx_ant.exit.i:                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %26, %cond.false.i.i ]
  %conv10.i = zext i8 %cond.i.i to i32
  %neg.i = xor i32 %conv10.i, -1
  %and.i = and i32 %neg.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %iwl_mvm_get_valid_rx_ant.exit.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge

iwl_mvm_get_valid_rx_ant.exit.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge: ; preds = %iwl_mvm_get_valid_rx_ant.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_scan_ant_rxchain_write.exit

if.end12.i:                                       ; preds = %iwl_mvm_get_valid_rx_ant.exit.i
  %scan_rx_ant13.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 60
  %27 = ptrtoint ptr %scan_rx_ant13.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %scan_rx_ant13.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %14)
  %cmp16.not.i = icmp eq i8 %28, %14
  br i1 %cmp16.not.i, label %if.end12.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, label %if.then18.i

if.end12.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_scan_ant_rxchain_write.exit

if.then18.i:                                      ; preds = %if.end12.i
  %29 = ptrtoint ptr %scan_rx_ant13.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %14, ptr %scan_rx_ant13.i, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %31, i32 0, i32 5, i32 8
  %32 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_capa.i.i, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i1.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i1.not.i, label %if.then18.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, label %if.then21.i

if.then18.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_scan_ant_rxchain_write.exit

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = call i32 @iwl_mvm_config_scan(ptr noundef %1) #11
  br label %iwl_dbgfs_scan_ant_rxchain_write.exit

iwl_dbgfs_scan_ant_rxchain_write.exit:            ; preds = %if.then21.i, %if.then18.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, %if.end12.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, %iwl_mvm_get_valid_rx_ant.exit.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, %if.end3.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, %if.end.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge, %if.end.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %if.end.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge ], [ -22, %if.end3.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge ], [ -22, %iwl_mvm_get_valid_rx_ant.exit.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge ], [ %3, %if.then18.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge ], [ %3, %if.then21.i ], [ %3, %if.end12.i.iwl_dbgfs_scan_ant_rxchain_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan_rx_ant.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_scan_ant_rxchain_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_scan_ant_rxchain_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_config_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_prph_reg_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %dbgfs_prph_reg_addr = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 72
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %dbgfs_prph_reg_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dbgfs_prph_reg_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %call = tail call i32 @iwl_read_prph(ptr noundef %6, i32 noundef %4) #11
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.224, i32 noundef %4, i32 noundef %call) #11
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_prph_reg_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #11
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %value.i, align 4, !annotation !578
  %dbgfs_prph_reg_addr.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 72
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.225, ptr noundef %dbgfs_prph_reg_addr.i, ptr noundef nonnull %value.i) #11
  %trunc.i = trunc i32 %call.i to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.end.iwl_dbgfs_prph_reg_write.exit_crit_edge [
    i8 1, label %if.end.out.i_crit_edge
    i8 2, label %if.end7.i
  ]

if.end.out.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.iwl_dbgfs_prph_reg_write.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_prph_reg_write.exit

if.end7.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans.i, align 4
  %13 = ptrtoint ptr %dbgfs_prph_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dbgfs_prph_reg_addr.i, align 4
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i, align 4
  call void @iwl_write_prph_delay(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 0) #11
  br label %out.i

out.i:                                            ; preds = %if.end7.i, %if.end.out.i_crit_edge
  br label %iwl_dbgfs_prph_reg_write.exit

iwl_dbgfs_prph_reg_write.exit:                    ; preds = %out.i, %if.end.iwl_dbgfs_prph_reg_write.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %out.i ], [ -22, %if.end.iwl_dbgfs_prph_reg_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_prph_reg_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_prph_reg_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_fw_dbg_conf_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %conf1 = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 12, i32 2
  %3 = ptrtoint ptr %conf1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %conf1, align 4
  %conv = zext i8 %4 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.72, i32 noundef %conv) #11
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_fw_dbg_conf_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %conf_id.i = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buf, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conf_id.i) #11
  %9 = ptrtoint ptr %conf_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %conf_id.i, align 4, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_fw_dbg_conf_write.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %conf_id.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge

if.end.i.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_fw_dbg_conf_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %conf_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %conf_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp.i = icmp ugt i32 %14, 31
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !580

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 1329, i32 noundef 9, ptr noundef null) #11
  br label %iwl_dbgfs_fw_dbg_conf_write.exit

if.end27.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %fwrt.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40
  %15 = ptrtoint ptr %conf_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %conf_id.i, align 4
  %conv.i = trunc i32 %16 to i8
  %call28.i = call i32 @iwl_fw_start_dbg_conf(ptr noundef %fwrt.i, i8 noundef zeroext %conv.i) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool30.not.i = icmp eq i32 %call28.i, 0
  %spec.select.i = select i1 %tobool30.not.i, i32 %3, i32 %call28.i
  br label %iwl_dbgfs_fw_dbg_conf_write.exit

iwl_dbgfs_fw_dbg_conf_write.exit:                 ; preds = %if.end27.i, %do.end.i, %if.end.i.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge, %if.end.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %spec.select.i, %if.end27.i ], [ -5, %if.end.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge ], [ %call1.i, %if.end.i.iwl_dbgfs_fw_dbg_conf_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf_id.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_fw_dbg_conf_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_fw_dbg_conf_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_start_dbg_conf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_fw_dbg_collect_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fwrt.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt.i, i32 noundef 9, ptr noundef null, i1 noundef zeroext false) #11
  %sub.i = add nsw i32 %3, -1
  %call.i = call i32 @iwl_fw_dbg_collect(ptr noundef %fwrt.i, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef %sub.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %3, %if.end.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_dbg_time_point_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %timepoint.i = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timepoint.i) #11
  %9 = ptrtoint ptr %timepoint.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %timepoint.i, align 4, !annotation !578
  %call.i.i8 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %timepoint.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %tobool.not.i = icmp eq i32 %call.i.i8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_dbg_time_point_write.exit_crit_edge

if.end.iwl_dbgfs_dbg_time_point_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_dbg_time_point_write.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %timepoint.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timepoint.i, align 4
  %12 = add i32 %11, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -26, i32 %12)
  %13 = icmp ult i32 %12, -26
  br i1 %13, label %if.end.i.iwl_dbgfs_dbg_time_point_write.exit_crit_edge, label %if.end3.i

if.end.i.iwl_dbgfs_dbg_time_point_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_dbg_time_point_write.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %fwrt.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt.i, i32 noundef %11, ptr noundef null, i1 noundef zeroext false) #11
  br label %iwl_dbgfs_dbg_time_point_write.exit

iwl_dbgfs_dbg_time_point_write.exit:              ; preds = %if.end3.i, %if.end.i.iwl_dbgfs_dbg_time_point_write.exit_crit_edge, %if.end.iwl_dbgfs_dbg_time_point_write.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.end3.i ], [ -22, %if.end.iwl_dbgfs_dbg_time_point_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_dbg_time_point_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timepoint.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_dbg_time_point_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_dbg_time_point_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_send_echo_cmd_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buf, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i.i, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %call1.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %1, i32 noundef 3, i32 noundef 0, i16 noundef zeroext 0, ptr noundef null) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %call1.i
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %spec.select.i, %if.end.i ], [ -5, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_indirection_tbl_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_rss_config_cmd, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 256)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 255)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %cmd.i) #11
  %9 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 172)
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %cmd.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %9, align 4
  %div2.i = lshr i32 %3, 1
  %indirection_table.i = getelementptr inbounds %struct.iwl_rss_config_cmd, ptr %cmd.i, i32 0, i32 4
  %call.i = call i32 @hex2bin(ptr noundef %indirection_table.i, ptr noundef nonnull %buf, i32 noundef %div2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_indirection_tbl_write.exit_crit_edge

if.end.iwl_dbgfs_indirection_tbl_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_indirection_tbl_write.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %3)
  %cmp5.i = icmp ult i32 %3, 130
  br i1 %cmp5.i, label %for.body.preheader.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  %div1.i.rhs.trunc = trunc i32 %div2.i to i8
  %div1.i10 = udiv i8 -128, %div1.i.rhs.trunc
  %13 = call i8 @llvm.umax.i8(i8 %div1.i10, i8 2)
  %umax.i = zext i8 %13 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %mul.i = mul nuw nsw i32 %i.06.i, %div2.i
  %arrayidx.i = getelementptr %struct.iwl_rss_config_cmd, ptr %cmd.i, i32 0, i32 4, i32 %mul.i
  %14 = call ptr @memcpy(ptr %arrayidx.i, ptr %indirection_table.i, i32 %div2.i)
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 1, %if.end.i.for.end.i_crit_edge ], [ %umax.i, %for.body.i.for.end.i_crit_edge ]
  %mul6.i = mul nuw nsw i32 %i.0.lcssa.i, %div2.i
  %arrayidx7.i = getelementptr %struct.iwl_rss_config_cmd, ptr %cmd.i, i32 0, i32 4, i32 %mul6.i
  %rem.i = urem i32 128, %div2.i
  %15 = call ptr @memcpy(ptr %arrayidx7.i, ptr %indirection_table.i, i32 %rem.i)
  %secret_key.i = getelementptr inbounds %struct.iwl_rss_config_cmd, ptr %cmd.i, i32 0, i32 3
  call void @netdev_rss_key_fill(ptr noundef %secret_key.i, i32 noundef 40) #11
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.end14.thread.i, label %if.end14.i

if.end14.thread.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %19

if.end14.i:                                       ; preds = %for.end.i
  %call13.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %1, i32 noundef 179, i32 noundef 0, i16 noundef zeroext 176, ptr noundef nonnull %cmd.i) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool16.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool16.not.i, label %if.end14.i._crit_edge, label %if.end14.i.iwl_dbgfs_indirection_tbl_write.exit_crit_edge

if.end14.i.iwl_dbgfs_indirection_tbl_write.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_indirection_tbl_write.exit

if.end14.i._crit_edge:                            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %19

19:                                               ; preds = %if.end14.i._crit_edge, %if.end14.thread.i
  br label %iwl_dbgfs_indirection_tbl_write.exit

iwl_dbgfs_indirection_tbl_write.exit:             ; preds = %19, %if.end14.i.iwl_dbgfs_indirection_tbl_write.exit_crit_edge, %if.end.iwl_dbgfs_indirection_tbl_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.iwl_dbgfs_indirection_tbl_write.exit_crit_edge ], [ %3, %19 ], [ %call13.i, %if.end14.i.iwl_dbgfs_indirection_tbl_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %cmd.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_indirection_tbl_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_indirection_tbl_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_inject_packet_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %rxb.i = alloca %struct.iwl_rx_cmd_buffer, align 4
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 512)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 511)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rxb.i) #11
  %9 = getelementptr inbounds i8, ptr %rxb.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 16)
  %div1.i = lshr i32 %3, 1
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_inject_packet_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_inject_packet_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_inject_packet_write.exit

if.end.i:                                         ; preds = %if.end
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg.i, align 4
  %mq_rx_supported.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %mq_rx_supported.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %mq_rx_supported.i, align 4
  %19 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %if.end.i.iwl_dbgfs_inject_packet_write.exit_crit_edge, label %if.end2.i

if.end.i.iwl_dbgfs_inject_packet_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_inject_packet_write.exit

if.end2.i:                                        ; preds = %if.end.i
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %20 = ptrtoint ptr %rxb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38.i.i.i.i, ptr %rxb.i, align 4
  %tobool5.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool5.not.i, label %if.end2.i.iwl_dbgfs_inject_packet_write.exit_crit_edge, label %if.end7.i

if.end2.i.iwl_dbgfs_inject_packet_write.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_inject_packet_write.exit

if.end7.i:                                        ; preds = %if.end2.i
  %call.i.i8 = call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #11
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %9, align 4
  %23 = ptrtoint ptr %rxb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxb.i, align 4
  %call10.i = call ptr @page_address(ptr noundef %24) #11
  %call11.i = call i32 @hex2bin(ptr noundef %call10.i, ptr noundef nonnull %buf, i32 noundef %div1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp ne i32 %call11.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.i = icmp ult i32 %3, 16
  %or.cond.i = or i1 %cmp.i, %tobool12.not.i
  br i1 %or.cond.i, label %if.end7.i.out.i_crit_edge, label %lor.lhs.false.i

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %25 = ptrtoint ptr %call.i.i8 to i32
  %add.i.i = add i32 %22, %25
  %26 = inttoptr i32 %add.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %26, align 1
  %29 = and i32 %28, -12648448
  %30 = call i32 @llvm.bswap.i32(i32 %29) #11
  %add.i = add nuw nsw i32 %30, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %add.i)
  %cmp16.not.i = icmp eq i32 %div1.i, %add.i
  br i1 %cmp16.not.i, label %if.end18.i, label %lor.lhs.false.i.out.i_crit_edge

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end18.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable() #11
  call void @iwl_mvm_rx_mq(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %rxb.i) #11
  call fastcc void @local_bh_enable() #11
  br label %out.i

out.i:                                            ; preds = %if.end18.i, %lor.lhs.false.i.out.i_crit_edge, %if.end7.i.out.i_crit_edge
  %31 = ptrtoint ptr %rxb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rxb.i, align 4
  %_rx_page_order.i.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb.i, i32 0, i32 3
  %33 = ptrtoint ptr %_rx_page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %_rx_page_order.i.i, align 4
  call void @__free_pages(ptr noundef %32, i32 noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool19.not.i = icmp eq i32 %call11.i, 0
  %spec.select.i = select i1 %tobool19.not.i, i32 %3, i32 %call11.i
  br label %iwl_dbgfs_inject_packet_write.exit

iwl_dbgfs_inject_packet_write.exit:               ; preds = %out.i, %if.end2.i.iwl_dbgfs_inject_packet_write.exit_crit_edge, %if.end.i.iwl_dbgfs_inject_packet_write.exit_crit_edge, %if.end.iwl_dbgfs_inject_packet_write.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %if.end.iwl_dbgfs_inject_packet_write.exit_crit_edge ], [ -524, %if.end.i.iwl_dbgfs_inject_packet_write.exit_crit_edge ], [ -12, %if.end2.i.iwl_dbgfs_inject_packet_write.exit_crit_edge ], [ %spec.select.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rxb.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_inject_packet_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_inject_packet_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_mq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_inject_beacon_ie_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 512)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 511)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call fastcc i32 @_iwl_dbgfs_inject_beacon_ie(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %3) #11
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %extra_beacon_tailroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %extra_beacon_tailroom.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %extra_beacon_tailroom.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_iwl_dbgfs_inject_beacon_ie(ptr noundef %mvm, ptr noundef %bin, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %beacon_cmd = alloca %struct.iwl_mac_beacon_cmd, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %beacon_cmd) #11
  %0 = call ptr @memset(ptr %beacon_cmd, i32 0, i32 32)
  %div = sdiv i32 %len, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %len)
  %cmp = icmp sgt i32 %len, 509
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %1 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status.i, align 4
  %3 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %4 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %9 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i83.not = icmp eq i16 %9, 0
  br i1 %tobool.i83.not, label %land.lhs.true, label %if.end2.do.body41.i_crit_edge

if.end2.do.body41.i_crit_edge:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i

land.lhs.true:                                    ; preds = %if.end2
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i84.not = icmp eq i32 %14, 0
  br i1 %tobool.i84.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body41.i_crit_edge

land.lhs.true.do.body41.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body41.i:                                      ; preds = %land.lhs.true.do.body41.i_crit_edge, %if.end2.do.body41.i_crit_edge
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool43.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true44.i, label %do.body41.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge

do.body41.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true44.i:                                ; preds = %do.body41.i
  %call45.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %land.lhs.true47.i

land.lhs.true44.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true47.i:                                ; preds = %land.lhs.true44.i
  %.b1.i = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  br i1 %.b1.i, label %land.lhs.true47.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %if.then49.i

land.lhs.true47.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

if.then49.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.68, i32 noundef 1223, ptr noundef nonnull @.str.69) #11
  br label %iwl_mvm_rcu_dereference_vif_id.exit

iwl_mvm_rcu_dereference_vif_id.exit:              ; preds = %if.then49.i, %land.lhs.true47.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %land.lhs.true44.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %do.body41.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge
  %arrayidx56.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 0
  %15 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx56.i, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %iwl_mvm_rcu_dereference_vif_id.exit.do.body41.i.1_crit_edge, label %if.end10

iwl_mvm_rcu_dereference_vif_id.exit.do.body41.i.1_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i.1

if.end10:                                         ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp11 = icmp eq i32 %18, 3
  br i1 %cmp11, label %if.end10.if.end19_crit_edge, label %if.end10.do.body41.i.1_crit_edge

if.end10.do.body41.i.1_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i.1

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body41.i.1:                                    ; preds = %if.end10.do.body41.i.1_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.do.body41.i.1_crit_edge
  %call.i.i.1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool43.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool43.not.i.1, label %land.lhs.true44.i.1, label %do.body41.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge

do.body41.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge: ; preds = %do.body41.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.1

land.lhs.true44.i.1:                              ; preds = %do.body41.i.1
  %call45.i.1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.1)
  %tobool46.not.i.1 = icmp eq i32 %call45.i.1, 0
  br i1 %tobool46.not.i.1, label %land.lhs.true44.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge, label %land.lhs.true47.i.1

land.lhs.true44.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge: ; preds = %land.lhs.true44.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.1

land.lhs.true47.i.1:                              ; preds = %land.lhs.true44.i.1
  %.b1.i.1 = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  br i1 %.b1.i.1, label %land.lhs.true47.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge, label %if.then49.i.1

land.lhs.true47.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge: ; preds = %land.lhs.true47.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.1

if.then49.i.1:                                    ; preds = %land.lhs.true47.i.1
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.68, i32 noundef 1223, ptr noundef nonnull @.str.69) #11
  br label %iwl_mvm_rcu_dereference_vif_id.exit.1

iwl_mvm_rcu_dereference_vif_id.exit.1:            ; preds = %if.then49.i.1, %land.lhs.true47.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge, %land.lhs.true44.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge, %do.body41.i.1.iwl_mvm_rcu_dereference_vif_id.exit.1_crit_edge
  %arrayidx56.i.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 1
  %19 = ptrtoint ptr %arrayidx56.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx56.i.1, align 4
  %tobool.not.1 = icmp eq ptr %20, null
  br i1 %tobool.not.1, label %iwl_mvm_rcu_dereference_vif_id.exit.1.do.body41.i.2_crit_edge, label %if.end10.1

iwl_mvm_rcu_dereference_vif_id.exit.1.do.body41.i.2_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i.2

if.end10.1:                                       ; preds = %iwl_mvm_rcu_dereference_vif_id.exit.1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp11.1 = icmp eq i32 %22, 3
  br i1 %cmp11.1, label %if.end10.1.if.end19_crit_edge, label %if.end10.1.do.body41.i.2_crit_edge

if.end10.1.do.body41.i.2_crit_edge:               ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i.2

if.end10.1.if.end19_crit_edge:                    ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body41.i.2:                                    ; preds = %if.end10.1.do.body41.i.2_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.1.do.body41.i.2_crit_edge
  %call.i.i.2 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool43.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool43.not.i.2, label %land.lhs.true44.i.2, label %do.body41.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge

do.body41.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge: ; preds = %do.body41.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.2

land.lhs.true44.i.2:                              ; preds = %do.body41.i.2
  %call45.i.2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.2)
  %tobool46.not.i.2 = icmp eq i32 %call45.i.2, 0
  br i1 %tobool46.not.i.2, label %land.lhs.true44.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge, label %land.lhs.true47.i.2

land.lhs.true44.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge: ; preds = %land.lhs.true44.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.2

land.lhs.true47.i.2:                              ; preds = %land.lhs.true44.i.2
  %.b1.i.2 = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  br i1 %.b1.i.2, label %land.lhs.true47.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge, label %if.then49.i.2

land.lhs.true47.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge: ; preds = %land.lhs.true47.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.2

if.then49.i.2:                                    ; preds = %land.lhs.true47.i.2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.68, i32 noundef 1223, ptr noundef nonnull @.str.69) #11
  br label %iwl_mvm_rcu_dereference_vif_id.exit.2

iwl_mvm_rcu_dereference_vif_id.exit.2:            ; preds = %if.then49.i.2, %land.lhs.true47.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge, %land.lhs.true44.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge, %do.body41.i.2.iwl_mvm_rcu_dereference_vif_id.exit.2_crit_edge
  %arrayidx56.i.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 2
  %23 = ptrtoint ptr %arrayidx56.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx56.i.2, align 4
  %tobool.not.2 = icmp eq ptr %24, null
  br i1 %tobool.not.2, label %iwl_mvm_rcu_dereference_vif_id.exit.2.do.body41.i.3_crit_edge, label %if.end10.2

iwl_mvm_rcu_dereference_vif_id.exit.2.do.body41.i.3_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i.3

if.end10.2:                                       ; preds = %iwl_mvm_rcu_dereference_vif_id.exit.2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp11.2 = icmp eq i32 %26, 3
  br i1 %cmp11.2, label %if.end10.2.if.end19_crit_edge, label %if.end10.2.do.body41.i.3_crit_edge

if.end10.2.do.body41.i.3_crit_edge:               ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41.i.3

if.end10.2.if.end19_crit_edge:                    ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body41.i.3:                                    ; preds = %if.end10.2.do.body41.i.3_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.2.do.body41.i.3_crit_edge
  %call.i.i.3 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool43.not.i.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool43.not.i.3, label %land.lhs.true44.i.3, label %do.body41.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge

do.body41.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge: ; preds = %do.body41.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.3

land.lhs.true44.i.3:                              ; preds = %do.body41.i.3
  %call45.i.3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.3)
  %tobool46.not.i.3 = icmp eq i32 %call45.i.3, 0
  br i1 %tobool46.not.i.3, label %land.lhs.true44.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge, label %land.lhs.true47.i.3

land.lhs.true44.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge: ; preds = %land.lhs.true44.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.3

land.lhs.true47.i.3:                              ; preds = %land.lhs.true44.i.3
  %.b1.i.3 = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  br i1 %.b1.i.3, label %land.lhs.true47.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge, label %if.then49.i.3

land.lhs.true47.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge: ; preds = %land.lhs.true47.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit.3

if.then49.i.3:                                    ; preds = %land.lhs.true47.i.3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.228, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.68, i32 noundef 1223, ptr noundef nonnull @.str.69) #11
  br label %iwl_mvm_rcu_dereference_vif_id.exit.3

iwl_mvm_rcu_dereference_vif_id.exit.3:            ; preds = %if.then49.i.3, %land.lhs.true47.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge, %land.lhs.true44.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge, %do.body41.i.3.iwl_mvm_rcu_dereference_vif_id.exit.3_crit_edge
  %arrayidx56.i.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 3
  %27 = ptrtoint ptr %arrayidx56.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx56.i.3, align 4
  %tobool.not.3 = icmp eq ptr %28, null
  br i1 %tobool.not.3, label %iwl_mvm_rcu_dereference_vif_id.exit.3.out_err_crit_edge, label %if.end10.3

iwl_mvm_rcu_dereference_vif_id.exit.3.out_err_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end10.3:                                       ; preds = %iwl_mvm_rcu_dereference_vif_id.exit.3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp11.3 = icmp eq i32 %30, 3
  br i1 %cmp11.3, label %if.end10.3.if.end19_crit_edge, label %if.end10.3.out_err_crit_edge

if.end10.3.out_err_crit_edge:                     ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end10.3.if.end19_crit_edge:                    ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.end10.3.if.end19_crit_edge, %if.end10.2.if.end19_crit_edge, %if.end10.1.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %vif.1 = phi ptr [ %28, %if.end10.3.if.end19_crit_edge ], [ %24, %if.end10.2.if.end19_crit_edge ], [ %20, %if.end10.1.if.end19_crit_edge ], [ %16, %if.end10.if.end19_crit_edge ]
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %extra_beacon_tailroom = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %extra_beacon_tailroom to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %extra_beacon_tailroom, align 8
  %34 = load ptr, ptr %hw, align 4
  %call21 = tail call ptr @ieee80211_beacon_get_template(ptr noundef %34, ptr noundef nonnull %vif.1, ptr noundef null) #11
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.out_err_crit_edge, label %if.end24

if.end19.out_err_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end24:                                         ; preds = %if.end19
  %len.off = add nsw i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.off)
  %35 = icmp ult i32 %len.off, 3
  br i1 %35, label %if.end24.if.end31_crit_edge, label %land.lhs.true26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true26:                                  ; preds = %if.end24
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call21, i32 noundef %div) #11
  %36 = call ptr @memset(ptr %call.i, i32 0, i32 %div)
  %call28 = tail call i32 @hex2bin(ptr noundef %call.i, ptr noundef %bin, i32 noundef %div) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true26.if.end31_crit_edge, label %if.then30

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef nonnull %call21) #11
  br label %out_err

if.end31:                                         ; preds = %land.lhs.true26.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %beacon_inject_active = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 75
  %37 = ptrtoint ptr %beacon_inject_active to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %beacon_inject_active, align 2
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif.1, i32 0, i32 19
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 3
  %call34 = tail call zeroext i8 @iwl_mvm_mac_ctxt_get_lowest_rate(ptr noundef %cb.i, ptr noundef nonnull %vif.1) #11
  %fw35 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %38 = ptrtoint ptr %fw35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw35, align 8
  %call36 = tail call zeroext i16 @iwl_mvm_mac_ctxt_get_beacon_flags(ptr noundef %39, i8 noundef zeroext %call34) #11
  %40 = tail call i16 @llvm.bswap.i16(i16 %call36)
  %flags = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %flags, align 2
  %len37 = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 6
  %42 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len37, align 4
  %conv38 = trunc i32 %43 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv38)
  %45 = ptrtoint ptr %beacon_cmd to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %beacon_cmd, align 2
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %id, align 4
  %conv39 = zext i16 %47 to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv39)
  %template_id = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd, i32 0, i32 4
  %49 = ptrtoint ptr %template_id to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %template_id, align 2
  %tim_idx = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd, i32 0, i32 5
  %tim_size = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd, i32 0, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 19
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  call void @iwl_mvm_mac_ctxt_set_tim(ptr noundef %mvm, ptr noundef %tim_idx, ptr noundef %tim_size, ptr noundef %51, i32 noundef %43) #11
  %call41 = call i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(ptr noundef %mvm, ptr noundef nonnull %call21, ptr noundef nonnull %beacon_cmd, i32 noundef 32) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  call void @consume_skb(ptr noundef nonnull %call21) #11
  br label %cleanup

out_err:                                          ; preds = %if.then30, %if.end19.out_err_crit_edge, %if.end10.3.out_err_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.3.out_err_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end31, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %out_err ], [ 0, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %beacon_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_template(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_mac_ctxt_get_lowest_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @iwl_mvm_mac_ctxt_get_beacon_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_mac_ctxt_set_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_inject_beacon_ie_restore_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 512)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 511)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call fastcc i32 @_iwl_dbgfs_inject_beacon_ie(ptr noundef %1, ptr noundef null, i32 noundef 0) #11
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %extra_beacon_tailroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %extra_beacon_tailroom.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %extra_beacon_tailroom.i, align 8
  %beacon_inject_active.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 75
  %12 = ptrtoint ptr %beacon_inject_active.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %beacon_inject_active.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rfi_freq_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [680 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 680, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 680)
  %call = tail call ptr @iwl_rfi_get_freq_table(ptr noundef %1) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %status3 = getelementptr inbounds %struct.iwl_rfi_freq_table_resp_cmd, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %status3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %status3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %for.body.preheader, label %if.then4

for.body.preheader:                               ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %call, align 1
  %conv = zext i16 %7 to i32
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 680, ptr noundef nonnull @.str.230, i32 noundef %conv) #11
  br label %for.body13

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 680, ptr noundef nonnull @.str.229, i32 noundef %8) #11
  br label %out

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body.preheader
  %pos.167 = phi i32 [ %call9, %for.body.preheader ], [ %add26, %for.body13.for.body13_crit_edge ]
  %j.066 = phi i32 [ 0, %for.body.preheader ], [ %inc, %for.body13.for.body13_crit_edge ]
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %pos.167
  %sub16 = sub i32 680, %pos.167
  %arrayidx19 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 0, i32 1, i32 %j.066
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %10 to i32
  %arrayidx23 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 0, i32 2, i32 %j.066
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %call25 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.231, i32 noundef %conv20, i32 noundef %conv24) #11
  %add26 = add i32 %call25, %pos.167
  %inc = add nuw nsw i32 %j.066, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.end:                                          ; preds = %for.body13
  %add.ptr28 = getelementptr i8, ptr %buf, i32 %add26
  %sub29 = sub i32 680, %add26
  %call30 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.92) #11
  %add31 = add i32 %call30, %add26
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %add31
  %sub.1 = sub i32 680, %add31
  %arrayidx.1 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx.1, align 1
  %conv.1 = zext i16 %14 to i32
  %call9.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.230, i32 noundef %conv.1) #11
  %add.1 = add i32 %call9.1, %add31
  br label %for.body13.1

for.body13.1:                                     ; preds = %for.body13.1.for.body13.1_crit_edge, %for.end
  %pos.167.1 = phi i32 [ %add.1, %for.end ], [ %add26.1, %for.body13.1.for.body13.1_crit_edge ]
  %j.066.1 = phi i32 [ 0, %for.end ], [ %inc.1, %for.body13.1.for.body13.1_crit_edge ]
  %add.ptr15.1 = getelementptr i8, ptr %buf, i32 %pos.167.1
  %sub16.1 = sub i32 680, %pos.167.1
  %arrayidx19.1 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 1, i32 1, i32 %j.066.1
  %15 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19.1, align 1
  %conv20.1 = zext i8 %16 to i32
  %arrayidx23.1 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 1, i32 2, i32 %j.066.1
  %17 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23.1, align 1
  %conv24.1 = zext i8 %18 to i32
  %call25.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.1, i32 noundef %sub16.1, ptr noundef nonnull @.str.231, i32 noundef %conv20.1, i32 noundef %conv24.1) #11
  %add26.1 = add i32 %call25.1, %pos.167.1
  %inc.1 = add nuw nsw i32 %j.066.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 15
  br i1 %exitcond.1.not, label %for.end.1, label %for.body13.1.for.body13.1_crit_edge

for.body13.1.for.body13.1_crit_edge:              ; preds = %for.body13.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.1

for.end.1:                                        ; preds = %for.body13.1
  %add.ptr28.1 = getelementptr i8, ptr %buf, i32 %add26.1
  %sub29.1 = sub i32 680, %add26.1
  %call30.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28.1, i32 noundef %sub29.1, ptr noundef nonnull @.str.92) #11
  %add31.1 = add i32 %call30.1, %add26.1
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add31.1
  %sub.2 = sub i32 680, %add31.1
  %arrayidx.2 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %arrayidx.2, align 1
  %conv.2 = zext i16 %20 to i32
  %call9.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.230, i32 noundef %conv.2) #11
  %add.2 = add i32 %call9.2, %add31.1
  br label %for.body13.2

for.body13.2:                                     ; preds = %for.body13.2.for.body13.2_crit_edge, %for.end.1
  %pos.167.2 = phi i32 [ %add.2, %for.end.1 ], [ %add26.2, %for.body13.2.for.body13.2_crit_edge ]
  %j.066.2 = phi i32 [ 0, %for.end.1 ], [ %inc.2, %for.body13.2.for.body13.2_crit_edge ]
  %add.ptr15.2 = getelementptr i8, ptr %buf, i32 %pos.167.2
  %sub16.2 = sub i32 680, %pos.167.2
  %arrayidx19.2 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 2, i32 1, i32 %j.066.2
  %21 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx19.2, align 1
  %conv20.2 = zext i8 %22 to i32
  %arrayidx23.2 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 2, i32 2, i32 %j.066.2
  %23 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23.2, align 1
  %conv24.2 = zext i8 %24 to i32
  %call25.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.2, i32 noundef %sub16.2, ptr noundef nonnull @.str.231, i32 noundef %conv20.2, i32 noundef %conv24.2) #11
  %add26.2 = add i32 %call25.2, %pos.167.2
  %inc.2 = add nuw nsw i32 %j.066.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 15
  br i1 %exitcond.2.not, label %for.end.2, label %for.body13.2.for.body13.2_crit_edge

for.body13.2.for.body13.2_crit_edge:              ; preds = %for.body13.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.2

for.end.2:                                        ; preds = %for.body13.2
  %add.ptr28.2 = getelementptr i8, ptr %buf, i32 %add26.2
  %sub29.2 = sub i32 680, %add26.2
  %call30.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28.2, i32 noundef %sub29.2, ptr noundef nonnull @.str.92) #11
  %add31.2 = add i32 %call30.2, %add26.2
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add31.2
  %sub.3 = sub i32 680, %add31.2
  %arrayidx.3 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx.3, align 1
  %conv.3 = zext i16 %26 to i32
  %call9.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.230, i32 noundef %conv.3) #11
  %add.3 = add i32 %call9.3, %add31.2
  br label %for.body13.3

for.body13.3:                                     ; preds = %for.body13.3.for.body13.3_crit_edge, %for.end.2
  %pos.167.3 = phi i32 [ %add.3, %for.end.2 ], [ %add26.3, %for.body13.3.for.body13.3_crit_edge ]
  %j.066.3 = phi i32 [ 0, %for.end.2 ], [ %inc.3, %for.body13.3.for.body13.3_crit_edge ]
  %add.ptr15.3 = getelementptr i8, ptr %buf, i32 %pos.167.3
  %sub16.3 = sub i32 680, %pos.167.3
  %arrayidx19.3 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 3, i32 1, i32 %j.066.3
  %27 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19.3, align 1
  %conv20.3 = zext i8 %28 to i32
  %arrayidx23.3 = getelementptr [4 x %struct.iwl_rfi_lut_entry], ptr %call, i32 0, i32 3, i32 2, i32 %j.066.3
  %29 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx23.3, align 1
  %conv24.3 = zext i8 %30 to i32
  %call25.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15.3, i32 noundef %sub16.3, ptr noundef nonnull @.str.231, i32 noundef %conv20.3, i32 noundef %conv24.3) #11
  %add26.3 = add i32 %call25.3, %pos.167.3
  %inc.3 = add nuw nsw i32 %j.066.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 15
  br i1 %exitcond.3.not, label %for.end.3, label %for.body13.3.for.body13.3_crit_edge

for.body13.3.for.body13.3_crit_edge:              ; preds = %for.body13.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.3

for.end.3:                                        ; preds = %for.body13.3
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr28.3 = getelementptr i8, ptr %buf, i32 %add26.3
  %sub29.3 = sub i32 680, %add26.3
  %call30.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28.3, i32 noundef %sub29.3, ptr noundef nonnull @.str.92) #11
  %add31.3 = add i32 %call30.3, %add26.3
  br label %out

out:                                              ; preds = %for.end.3, %if.then4
  %pos.2 = phi i32 [ 0, %if.then4 ], [ %add31.3, %for.end.3 ]
  call void @kfree(ptr noundef %call) #11
  %call36 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.2) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call36, %out ]
  call void @llvm.lifetime.end.p0(i64 680, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_rfi_freq_table_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %op_id.i = alloca i16, align 2
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %op_id.i) #11
  %9 = ptrtoint ptr %op_id.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %op_id.i, align 2, !annotation !578
  %call.i = call i32 @kstrtou16(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %op_id.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge

if.end.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_rfi_freq_table_write.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %op_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %op_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool1.not.i = icmp eq i16 %11, 0
  br i1 %tobool1.not.i, label %if.end5.i, label %if.end.i.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge

if.end.i.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_rfi_freq_table_write.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %call3.i = call i32 @iwl_rfi_send_config_cmd(ptr noundef %1, ptr noundef null) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not.i = icmp eq i32 %call3.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 %3, i32 %call3.i
  br label %iwl_dbgfs_rfi_freq_table_write.exit

iwl_dbgfs_rfi_freq_table_write.exit:              ; preds = %if.end5.i, %if.end.i.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge, %if.end.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge ], [ -95, %if.end.i.iwl_dbgfs_rfi_freq_table_write.exit_crit_edge ], [ %spec.select.i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %op_id.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_rfi_freq_table_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_rfi_freq_table_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_rfi_get_freq_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_rfi_send_config_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_phy_integration_ver_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 8
  %phy_integration_ver_len = getelementptr inbounds %struct.iwl_fw, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %phy_integration_ver_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_integration_ver_len, align 4
  %add = add i32 %5, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 8
  %phy_integration_ver_len2 = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %phy_integration_ver_len2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_integration_ver_len2, align 4
  %phy_integration_ver = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %phy_integration_ver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_integration_ver, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull @.str.232, i32 noundef %9, ptr noundef %11) #11
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %call4) #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_he_sniffer_params_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %cur_aid = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 173
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %cur_aid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cur_aid, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %cur_bssid = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 174
  %6 = ptrtoint ptr %cur_bssid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cur_bssid, align 8
  %conv1 = zext i8 %7 to i32
  %arrayidx3 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 174, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %arrayidx6 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 174, i32 2
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 2
  %conv7 = zext i8 %11 to i32
  %arrayidx9 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 174, i32 3
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %arrayidx12 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 174, i32 4
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 4
  %conv13 = zext i8 %15 to i32
  %arrayidx15 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 174, i32 5
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.233, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv4, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16) #11
  %call18 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_he_sniffer_params_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %wait.i = alloca %struct.iwl_notification_wait, align 4
  %he_mon_cmd.i = alloca %struct.iwl_he_monitor_cmd, align 1
  %apply.i = alloca %struct.iwl_mvm_sniffer_apply, align 4
  %wait_cmds.i = alloca [1 x i16], align 2
  %aid2.i = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait.i) #11
  %9 = call ptr @memset(ptr %wait.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %he_mon_cmd.i) #11
  %10 = call ptr @memset(ptr %he_mon_cmd.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %apply.i) #11
  %11 = getelementptr inbounds i8, ptr %apply.i, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %apply.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %apply.i, align 4
  %bssid.i = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, ptr %apply.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wait_cmds.i) #11
  %14 = ptrtoint ptr %wait_cmds.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1299, ptr %wait_cmds.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aid2.i) #11
  %15 = ptrtoint ptr %aid2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %aid2.i, align 4, !annotation !578
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_he_sniffer_params_write.exit

if.end.i:                                         ; preds = %if.end
  %arrayidx6.i = getelementptr inbounds [6 x i8], ptr %he_mon_cmd.i, i32 0, i32 1
  %arrayidx8.i = getelementptr inbounds [6 x i8], ptr %he_mon_cmd.i, i32 0, i32 2
  %arrayidx10.i = getelementptr inbounds [6 x i8], ptr %he_mon_cmd.i, i32 0, i32 3
  %arrayidx12.i = getelementptr inbounds [6 x i8], ptr %he_mon_cmd.i, i32 0, i32 4
  %arrayidx14.i = getelementptr inbounds [6 x i8], ptr %he_mon_cmd.i, i32 0, i32 5
  %call15.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.234, ptr noundef nonnull %aid2.i, ptr noundef nonnull %he_mon_cmd.i, ptr noundef %arrayidx6.i, ptr noundef %arrayidx8.i, ptr noundef %arrayidx10.i, ptr noundef %arrayidx12.i, ptr noundef %arrayidx14.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call15.i)
  %cmp.not.i = icmp eq i32 %call15.i, 7
  br i1 %cmp.not.i, label %if.end18.i, label %if.end.i.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge

if.end.i.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_he_sniffer_params_write.exit

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %aid2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aid2.i, align 4
  %conv19.i = trunc i32 %20 to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv19.i) #11
  %aid20.i = getelementptr inbounds %struct.iwl_he_monitor_cmd, ptr %he_mon_cmd.i, i32 0, i32 2
  %22 = ptrtoint ptr %aid20.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %aid20.i, align 1
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv19.i, ptr %11, align 4
  %24 = ptrtoint ptr %bssid.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %he_mon_cmd.i, ptr %bssid.i, align 4
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %notif_wait.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait.i, ptr noundef nonnull %wait.i, ptr noundef nonnull %wait_cmds.i, i32 noundef 1, ptr noundef nonnull @iwl_mvm_sniffer_apply, ptr noundef nonnull %apply.i) #11
  %call27.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %1, i32 noundef 1299, i32 noundef 0, i16 noundef zeroext 16, ptr noundef nonnull %he_mon_cmd.i) #11
  call void @iwl_remove_notification(ptr noundef %notif_wait.i, ptr noundef nonnull %wait.i) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i = icmp eq i32 %call27.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %call27.i
  br label %iwl_dbgfs_he_sniffer_params_write.exit

iwl_dbgfs_he_sniffer_params_write.exit:           ; preds = %if.end18.i, %if.end.i.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge, %if.end.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end18.i ], [ -5, %if.end.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_he_sniffer_params_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aid2.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wait_cmds.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %apply.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %he_mon_cmd.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_he_sniffer_params_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_he_sniffer_params_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @iwl_mvm_sniffer_apply(ptr nocapture noundef readnone %notif_data, ptr nocapture noundef readnone %pkt, ptr nocapture noundef readonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aid = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aid, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %cur_aid = getelementptr inbounds %struct.iwl_mvm, ptr %4, i32 0, i32 173
  %5 = ptrtoint ptr %cur_aid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %2, ptr %cur_aid, align 2
  %6 = load ptr, ptr %data, align 4
  %cur_bssid = getelementptr inbounds %struct.iwl_mvm, ptr %6, i32 0, i32 174
  %bssid = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bssid, align 4
  %9 = call ptr @memcpy(ptr %cur_bssid, ptr %8, i32 6)
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_iwl_dbgfs_ltr_config_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %ltr_config.i = alloca %struct.iwl_ltr_config_cmd, align 1
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 0, i32 512)
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 511)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !576
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ltr_config.i) #11
  %9 = call ptr @memset(ptr %ltr_config.i, i32 0, i32 32)
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.end.iwl_dbgfs_ltr_config_write.exit_crit_edge, label %if.end.i

if.end.iwl_dbgfs_ltr_config_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_ltr_config_write.exit

if.end.i:                                         ; preds = %if.end
  %static_long.i = getelementptr inbounds %struct.iwl_ltr_config_cmd, ptr %ltr_config.i, i32 0, i32 1
  %static_short.i = getelementptr inbounds %struct.iwl_ltr_config_cmd, ptr %ltr_config.i, i32 0, i32 2
  %ltr_cfg_values.i = getelementptr inbounds %struct.iwl_ltr_config_cmd, ptr %ltr_config.i, i32 0, i32 3
  %arrayidx2.i = getelementptr inbounds %struct.iwl_ltr_config_cmd, ptr %ltr_config.i, i32 0, i32 3, i32 1
  %arrayidx4.i = getelementptr inbounds %struct.iwl_ltr_config_cmd, ptr %ltr_config.i, i32 0, i32 3, i32 2
  %arrayidx6.i = getelementptr inbounds %struct.iwl_ltr_config_cmd, ptr %ltr_config.i, i32 0, i32 3, i32 3
  %call7.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.235, ptr noundef nonnull %ltr_config.i, ptr noundef %static_long.i, ptr noundef %static_short.i, ptr noundef %ltr_cfg_values.i, ptr noundef %arrayidx2.i, ptr noundef %arrayidx4.i, ptr noundef %arrayidx6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 7
  br i1 %cmp.not.i, label %if.end9.i, label %if.end.i.iwl_dbgfs_ltr_config_write.exit_crit_edge

if.end.i.iwl_dbgfs_ltr_config_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_ltr_config_write.exit

if.end9.i:                                        ; preds = %if.end.i
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %call10.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %1, i32 noundef 238, i32 noundef 0, i16 noundef zeroext 32, ptr noundef nonnull %ltr_config.i) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end9.i.iwl_dbgfs_ltr_config_write.exit_crit_edge, label %do.end.i

if.end9.i.iwl_dbgfs_ltr_config_write.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_dbgfs_ltr_config_write.exit

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.236) #11
  br label %iwl_dbgfs_ltr_config_write.exit

iwl_dbgfs_ltr_config_write.exit:                  ; preds = %do.end.i, %if.end9.i.iwl_dbgfs_ltr_config_write.exit_crit_edge, %if.end.i.iwl_dbgfs_ltr_config_write.exit_crit_edge, %if.end.iwl_dbgfs_ltr_config_write.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %if.end.iwl_dbgfs_ltr_config_write.exit_crit_edge ], [ -22, %if.end.i.iwl_dbgfs_ltr_config_write.exit_crit_edge ], [ %call10.i, %do.end.i ], [ %3, %if.end9.i.iwl_dbgfs_ltr_config_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ltr_config.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_dbgfs_ltr_config_write.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %retval.0.i, %iwl_dbgfs_ltr_config_write.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_uapsd_noagg_bssids_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [361 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 361, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 361)
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %pos.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.012
  %sub = sub i32 361, %pos.012
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 136, i32 %i.013
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.80, ptr noundef %arrayidx) #11
  %add = add i32 %call, %pos.012
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mutex) #11
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add) #11
  call void @llvm.lifetime.end.p0(i64 361, ptr nonnull %buf) #11
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_mem_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_dbg_mem_access_cmd, align 4
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #11
  %2 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !578
  %4 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 3
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 4
  %5 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %flags, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 12, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %9 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %arrayinit.end4, align 4
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %14)
  %tobool.not = icmp ugt i64 %14, 16777215
  %conv.i = zext i1 %tobool.not to i32
  %add.i = or i32 %conv.i, 3840
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %id, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cmd, align 4
  %17 = trunc i64 %14 to i32
  %conv13 = and i32 %17, 3
  %conv15 = and i32 %17, -4
  %18 = call i32 @llvm.bswap.i32(i32 %conv15)
  %addr = getelementptr inbounds %struct.iwl_dbg_mem_access_cmd, ptr %cmd, i32 0, i32 1
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %addr, align 4
  %add = add i32 %count, 3
  %add16 = add i32 %add, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add16)
  %cmp = icmp ult i32 %add16, 128
  %div92 = lshr i32 %add16, 2
  %cond19 = select i1 %cmp, i32 %div92, i32 32
  %20 = call i32 @llvm.bswap.i32(i32 %cond19)
  %len20 = getelementptr inbounds %struct.iwl_dbg_mem_access_cmd, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %len20, align 4
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call21 = call i32 @iwl_mvm_send_cmd(ptr noundef %1, ptr noundef nonnull %hcmd) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %22 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resp_pkt, align 4
  %data28 = getelementptr inbounds %struct.iwl_rx_packet, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %data28 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %data28, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp29.not = icmp eq i32 %25, 0
  br i1 %cmp29.not, label %if.end32, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end32:                                         ; preds = %if.end26
  %len33 = getelementptr inbounds %struct.iwl_rx_packet, ptr %23, i32 1, i32 1
  %26 = ptrtoint ptr %len33 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %len33, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %shl = shl i32 %28, 2
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %23, align 1
  %31 = and i32 %30, -12648448
  %32 = call i32 @llvm.bswap.i32(i32 %31) #11
  %sub36 = add nsw i32 %32, -12
  %33 = call i32 @llvm.umin.i32(i32 %shl, i32 %sub36)
  %sub44 = sub i32 %33, %conv13
  %34 = call i32 @llvm.umin.i32(i32 %sub44, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp52 = icmp slt i32 %34, 0
  br i1 %cmp52, label %if.end32.out_crit_edge, label %if.end55

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end55:                                         ; preds = %if.end32
  %data56 = getelementptr inbounds %struct.iwl_rx_packet, ptr %23, i32 2
  %add.ptr = getelementptr i8, ptr %data56, i32 %conv13
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %34, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end55.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end55.copy_to_user.exit_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end55
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %34, i32 -1226833920) #15, !srcloc !581
  %asmresult.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %34) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef %add.ptr, i32 noundef %34) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end55.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %34, %if.end55.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %34, %if.end.i.i.copy_to_user.exit_crit_edge ]
  %sub59 = sub i32 %34, %n.addr.0.i
  %conv60 = sext i32 %sub59 to i64
  %36 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ppos, align 8
  %add61 = add i64 %37, %conv60
  store i64 %add61, ptr %ppos, align 8
  br label %out

out:                                              ; preds = %copy_to_user.exit, %if.end32.out_crit_edge, %if.end26.out_crit_edge
  %ret.0 = phi i32 [ %sub59, %copy_to_user.exit ], [ -6, %if.end26.out_crit_edge ], [ -14, %if.end32.out_crit_edge ]
  %38 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %_rx_page_addr, align 4
  %40 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %39, i32 noundef %41) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -5, %entry.cleanup_crit_edge ], [ %call21, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_mem_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #11
  %2 = call ptr @memset(ptr %hcmd, i32 0, i32 36)
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %7)
  %tobool.not = icmp ugt i64 %7, 16777215
  %conv.i = zext i1 %tobool.not to i32
  %add.i = or i32 %conv.i, 3840
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %id, align 4
  %and = and i64 %7, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp ne i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp ult i32 %count, 4
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 3
  %conv6 = sub nuw nsw i32 4, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %conv6, i32 %count)
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %count)
  %cmp12 = icmp ult i32 %count, 128
  %shr10 = lshr i32 %count, 2
  %cond17 = select i1 %cmp12, i32 %shr10, i32 32
  %shl = shl nuw i32 %cond17, 2
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then4
  %data_size.0 = phi i32 [ %11, %if.then4 ], [ %shl, %if.else ]
  %op.0 = phi i32 [ 33554432, %if.then4 ], [ 16777216, %if.else ]
  %len.0 = phi i32 [ %11, %if.then4 ], [ %cond17, %if.else ]
  %12 = add i32 %data_size.0, 15
  %add20 = and i32 %12, -4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add20, i32 noundef 3520) #16
  %tobool22.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %op.0, ptr %call9.i.i, align 128
  %14 = tail call i32 @llvm.bswap.i32(i32 %len.0)
  %len26 = getelementptr inbounds %struct.iwl_dbg_mem_access_cmd, ptr %call9.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %len26, align 8
  %16 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ppos, align 8
  %conv27 = trunc i64 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv27)
  %addr = getelementptr inbounds %struct.iwl_dbg_mem_access_cmd, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %addr, align 4
  %data = getelementptr inbounds %struct.iwl_dbg_mem_access_cmd, ptr %call9.i.i, i32 0, i32 3
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %data_size.0, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end24.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end24.if.end.i.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end24
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %data_size.0, i32 -1226833920) #15, !srcloc !573
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !574

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef %data_size.0) #11
  %21 = tail call i32 @llvm.read_register.i32(metadata !563) #11
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !575
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data, ptr noundef %user_buf, i32 noundef %data_size.0) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #11, !srcloc !576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end24.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %data_size.0, %if.end24.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %data_size.0, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end31, label %if.then11.i.i, !prof !574

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %data_size.0, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end.i.i
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 4
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %flags, align 4
  %26 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i, ptr %hcmd, align 4
  %conv33 = trunc i32 %add20 to i16
  %len34 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %27 = ptrtoint ptr %len34 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv33, ptr %len34, align 4
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call36 = call i32 @iwl_mvm_send_cmd(ptr noundef %1, ptr noundef nonnull %hcmd) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp38 = icmp slt i32 %call36, 0
  br i1 %cmp38, label %if.end31.cleanup_crit_edge, label %if.end41

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 1
  %28 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resp_pkt, align 4
  %data42 = getelementptr inbounds %struct.iwl_rx_packet, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %data42 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %data42, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp44.not = icmp eq i32 %31, 0
  br i1 %cmp44.not, label %if.end47, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %conv48 = sext i32 %data_size.0 to i64
  %32 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ppos, align 8
  %add49 = add i64 %33, %conv48
  store i64 %add49, ptr %ppos, align 8
  br label %out

out:                                              ; preds = %if.end47, %if.end41.out_crit_edge
  %ret.0 = phi i32 [ %data_size.0, %if.end47 ], [ -6, %if.end41.out_crit_edge ]
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 2
  %34 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %_rx_page_addr.i, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 3
  %36 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %35, i32 noundef %37) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end31.cleanup_crit_edge, %if.then11.i.i, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ %ret.0, %out ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %call36, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !136, !138, !140, !142, !143, !145, !147, !149, !151, !152, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561}
!llvm.named.register.sp = !{!563}
!llvm.module.flags = !{!564, !565, !566, !567, !568, !569, !570, !571}
!llvm.ident = !{!572}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1853, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1855, i32 2}
!4 = !{ptr @iwl_mvm_dbgfs_register.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1862, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1864, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1865, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1866, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1867, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1868, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1869, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1870, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1871, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1872, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1873, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1874, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1875, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1876, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1877, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1878, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1879, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1880, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1881, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1882, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1883, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1884, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1885, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1886, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1887, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1888, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1889, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1890, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1891, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1892, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1893, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1896, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1900, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1903, i32 3}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1905, i32 22}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1907, i32 22}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1910, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1913, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1914, i32 22}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1916, i32 21}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1920, i32 20}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1922, i32 22}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1924, i32 22}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1926, i32 22}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1928, i32 22}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1930, i32 22}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1932, i32 22}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1935, i32 22}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1945, i32 22}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1946, i32 26}
!105 = !{ptr @iwl_dbgfs_rs_data_ops, !106, !"iwl_dbgfs_rs_data_ops", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1678, i32 1}
!107 = distinct !{null, !108, !"bufsz", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 379, i32 22}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 390, i32 47}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 393, i32 6}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 396, i32 6}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 399, i32 6}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 400, i32 45}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 400, i32 56}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 401, i32 45}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 403, i32 6}
!125 = !{ptr @iwl_dbgfs_amsdu_len_ops, !126, !"iwl_dbgfs_amsdu_len_ops", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1706, i32 1}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 455, i32 36}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 456, i32 49}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!138 = !{ptr @iwl_dbgfs_tx_flush_ops, !139, !"iwl_dbgfs_tx_flush_ops", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1671, i32 1}
!140 = !{ptr @__func__.iwl_dbgfs_tx_flush_write, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 91, i32 3}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 101, i32 2}
!145 = !{ptr @iwl_dbgfs_sta_drain_ops, !146, !"iwl_dbgfs_sta_drain_ops", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1672, i32 1}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 121, i32 18}
!149 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1203, i32 8}
!151 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @iwl_dbgfs_sram_ops, !154, !"iwl_dbgfs_sram_ops", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1674, i32 1}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 191, i32 18}
!157 = !{ptr @iwl_dbgfs_set_nic_temperature_ops, !158, !"iwl_dbgfs_set_nic_temperature_ops", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1675, i32 1}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 217, i32 38}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 219, i32 38}
!163 = !{ptr @__func__.iwl_dbgfs_set_nic_temperature_write, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 263, i32 2}
!165 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @iwl_dbgfs_nic_temp_ops, !169, !"iwl_dbgfs_nic_temp_ops", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1676, i32 1}
!170 = !{ptr @iwl_dbgfs_ctdp_budget_ops, !171, !"iwl_dbgfs_ctdp_budget_ops", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1668, i32 1}
!172 = !{ptr @iwl_dbgfs_stop_ctdp_ops, !173, !"iwl_dbgfs_stop_ctdp_ops", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1669, i32 1}
!174 = !{ptr @iwl_dbgfs_force_ctkill_ops, !175, !"iwl_dbgfs_force_ctkill_ops", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1670, i32 1}
!176 = !{ptr @iwl_dbgfs_stations_ops, !177, !"iwl_dbgfs_stations_ops", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1677, i32 1}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 354, i32 44}
!180 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 355, i32 9}
!182 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 358, i32 45}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 360, i32 45}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 363, i32 45}
!189 = !{ptr @iwl_dbgfs_bt_notif_ops, !190, !"iwl_dbgfs_bt_notif_ops", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1679, i32 1}
!191 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 582, i32 43}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 584, i32 43}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 586, i32 43}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 589, i32 18}
!199 = !{ptr @.str.85, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 591, i32 43}
!201 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 593, i32 43}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 596, i32 43}
!205 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 598, i32 43}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 510, i32 39}
!209 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 512, i32 2}
!211 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 513, i32 2}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 514, i32 2}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 515, i32 2}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 516, i32 2}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 517, i32 2}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 518, i32 2}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 519, i32 2}
!227 = !{ptr @.str.100, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 520, i32 2}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 521, i32 2}
!231 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 522, i32 2}
!233 = !{ptr @.str.103, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 524, i32 39}
!235 = !{ptr @.str.104, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 526, i32 2}
!237 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 527, i32 2}
!239 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 528, i32 2}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 529, i32 2}
!243 = !{ptr @.str.108, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 530, i32 2}
!245 = !{ptr @.str.109, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 531, i32 2}
!247 = !{ptr @.str.110, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 533, i32 39}
!249 = !{ptr @.str.111, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 535, i32 2}
!251 = !{ptr @.str.112, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 536, i32 2}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 537, i32 2}
!255 = !{ptr @.str.114, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 538, i32 2}
!257 = !{ptr @.str.115, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 539, i32 2}
!259 = !{ptr @.str.116, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 540, i32 2}
!261 = !{ptr @.str.117, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 541, i32 2}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 542, i32 2}
!265 = !{ptr @.str.119, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 543, i32 2}
!267 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 544, i32 2}
!269 = !{ptr @.str.121, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 546, i32 39}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 548, i32 2}
!273 = !{ptr @.str.123, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 549, i32 2}
!275 = !{ptr @.str.124, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 550, i32 2}
!277 = !{ptr @.str.125, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 551, i32 2}
!279 = !{ptr @.str.126, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 552, i32 2}
!281 = !{ptr @.str.127, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 553, i32 2}
!283 = !{ptr @.str.128, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 554, i32 2}
!285 = !{ptr @.str.129, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 555, i32 2}
!287 = !{ptr @.str.130, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 556, i32 2}
!289 = !{ptr @.str.131, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 557, i32 2}
!291 = !{ptr @.str.132, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 558, i32 2}
!293 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 559, i32 2}
!295 = !{ptr @.str.134, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 560, i32 2}
!297 = !{ptr @.str.135, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 561, i32 2}
!299 = !{ptr @iwl_dbgfs_bt_cmd_ops, !300, !"iwl_dbgfs_bt_cmd_ops", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1680, i32 1}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 621, i32 43}
!303 = !{ptr @.str.137, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 623, i32 5}
!305 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 626, i32 5}
!307 = !{ptr @iwl_dbgfs_disable_power_off_ops, !308, !"iwl_dbgfs_disable_power_off_ops", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1681, i32 1}
!309 = !{ptr @.str.139, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 471, i32 39}
!311 = !{ptr @.str.140, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 473, i32 39}
!313 = !{ptr @.str.141, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 487, i32 15}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 488, i32 24}
!317 = !{ptr @.str.143, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 491, i32 22}
!319 = !{ptr @iwl_dbgfs_fw_ver_ops, !320, !"iwl_dbgfs_fw_ver_ops", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1684, i32 1}
!321 = distinct !{null, !322, !"bufsz", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 691, i32 22}
!323 = !{ptr @.str.144, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 701, i32 38}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 703, i32 38}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 705, i32 38}
!329 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 707, i32 38}
!331 = !{ptr @iwl_dbgfs_fw_rx_stats_ops, !332, !"iwl_dbgfs_fw_rx_stats_ops", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1682, i32 1}
!333 = !{ptr @.str.148, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 750, i32 33}
!335 = distinct !{null, !336, !"fmt_table", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 750, i32 21}
!337 = !{ptr @.str.149, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 751, i32 34}
!339 = distinct !{null, !340, !"fmt_header", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 751, i32 21}
!341 = !{ptr @.str.150, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 775, i32 5}
!343 = !{ptr @.str.151, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 779, i32 3}
!345 = !{ptr @.str.152, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 780, i32 3}
!347 = !{ptr @.str.153, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 781, i32 3}
!349 = !{ptr @.str.154, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 782, i32 3}
!351 = !{ptr @.str.155, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 783, i32 3}
!353 = !{ptr @.str.156, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 784, i32 3}
!355 = !{ptr @.str.157, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 785, i32 3}
!357 = !{ptr @.str.158, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 786, i32 3}
!359 = !{ptr @.str.159, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 787, i32 3}
!361 = !{ptr @.str.160, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 788, i32 3}
!363 = !{ptr @.str.161, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 789, i32 3}
!365 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 790, i32 3}
!367 = !{ptr @.str.163, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 791, i32 3}
!369 = !{ptr @.str.164, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 792, i32 3}
!371 = !{ptr @.str.165, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 793, i32 3}
!373 = !{ptr @.str.166, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 794, i32 3}
!375 = !{ptr @.str.167, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 795, i32 3}
!377 = !{ptr @.str.168, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 796, i32 3}
!379 = !{ptr @.str.169, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 797, i32 3}
!381 = !{ptr @.str.170, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 798, i32 3}
!383 = !{ptr @.str.171, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 810, i32 5}
!385 = !{ptr @.str.172, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 845, i32 5}
!387 = !{ptr @.str.173, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 850, i32 3}
!389 = !{ptr @.str.174, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 851, i32 3}
!391 = !{ptr @.str.175, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 852, i32 3}
!393 = !{ptr @.str.176, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 853, i32 3}
!395 = !{ptr @.str.177, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 854, i32 3}
!397 = !{ptr @.str.178, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 855, i32 3}
!399 = !{ptr @.str.179, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 856, i32 3}
!401 = !{ptr @.str.180, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 857, i32 3}
!403 = !{ptr @.str.181, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 858, i32 3}
!405 = !{ptr @.str.182, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 859, i32 3}
!407 = !{ptr @.str.183, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 860, i32 3}
!409 = !{ptr @.str.184, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 861, i32 3}
!411 = !{ptr @.str.185, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 862, i32 3}
!413 = !{ptr @.str.186, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 863, i32 3}
!415 = !{ptr @.str.187, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 864, i32 3}
!417 = !{ptr @.str.188, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 865, i32 3}
!419 = !{ptr @.str.189, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 866, i32 3}
!421 = !{ptr @.str.190, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 867, i32 3}
!423 = !{ptr @.str.191, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 868, i32 3}
!425 = !{ptr @.str.192, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 869, i32 3}
!427 = !{ptr @.str.193, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 870, i32 3}
!429 = !{ptr @.str.194, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 871, i32 3}
!431 = !{ptr @.str.195, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 872, i32 3}
!433 = !{ptr @.str.196, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 873, i32 3}
!435 = !{ptr @.str.197, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 901, i32 5}
!437 = !{ptr @.str.198, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 912, i32 3}
!439 = !{ptr @.str.199, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 913, i32 3}
!441 = !{ptr @.str.200, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 914, i32 3}
!443 = !{ptr @.str.201, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 915, i32 3}
!445 = !{ptr @iwl_dbgfs_drv_rx_stats_ops, !446, !"iwl_dbgfs_drv_rx_stats_ops", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1683, i32 1}
!447 = distinct !{null, !448, !"bufsz", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 943, i32 22}
!449 = !{ptr @.str.202, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 955, i32 5}
!451 = !{ptr @.str.203, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 959, i32 38}
!453 = !{ptr @.str.204, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 963, i32 38}
!455 = !{ptr @.str.205, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 966, i32 38}
!457 = !{ptr @.str.206, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 969, i32 38}
!459 = !{ptr @.str.207, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 972, i32 38}
!461 = !{ptr @.str.208, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 974, i32 38}
!463 = !{ptr @.str.209, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 976, i32 38}
!465 = !{ptr @.str.210, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 980, i32 38}
!467 = !{ptr @.str.211, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 987, i32 39}
!469 = !{ptr @iwl_dbgfs_fw_restart_ops, !470, !"iwl_dbgfs_fw_restart_ops", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1686, i32 1}
!471 = !{ptr @.str.212, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1026, i32 33}
!473 = !{ptr @iwl_dbgfs_fw_nmi_ops, !474, !"iwl_dbgfs_fw_nmi_ops", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1687, i32 1}
!475 = !{ptr @iwl_dbgfs_bt_tx_prio_ops, !476, !"iwl_dbgfs_bt_tx_prio_ops", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1688, i32 1}
!477 = !{ptr @.str.213, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 640, i32 18}
!479 = !{ptr @iwl_dbgfs_bt_force_ant_ops, !480, !"iwl_dbgfs_bt_force_ant_ops", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1689, i32 1}
!481 = !{ptr @.str.214, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 655, i32 24}
!483 = !{ptr @.str.215, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 656, i32 25}
!485 = !{ptr @.str.216, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 657, i32 23}
!487 = !{ptr @.str.217, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 658, i32 25}
!489 = !{ptr @iwl_dbgfs_bt_force_ant_write.modes_str, !490, !"modes_str", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 654, i32 28}
!491 = !{ptr @__func__.iwl_dbgfs_bt_force_ant_write, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 673, i32 2}
!493 = !{ptr @.str.218, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @iwl_dbgfs_scan_ant_rxchain_ops, !495, !"iwl_dbgfs_scan_ant_rxchain_ops", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1690, i32 1}
!496 = !{ptr @.str.219, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1066, i32 43}
!498 = !{ptr @.str.220, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1068, i32 44}
!500 = !{ptr @.str.221, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1070, i32 44}
!502 = !{ptr @.str.222, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1071, i32 43}
!504 = !{ptr @.str.223, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1085, i32 18}
!506 = !{ptr @iwl_dbgfs_prph_reg_ops, !507, !"iwl_dbgfs_prph_reg_ops", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1665, i32 1}
!508 = !{ptr @.str.224, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1409, i32 43}
!510 = !{ptr @.str.225, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1423, i32 21}
!512 = !{ptr @iwl_dbgfs_fw_dbg_conf_ops, !513, !"iwl_dbgfs_fw_dbg_conf_ops", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1691, i32 1}
!514 = !{ptr @iwl_dbgfs_fw_dbg_collect_ops, !515, !"iwl_dbgfs_fw_dbg_collect_ops", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1692, i32 1}
!516 = !{ptr @iwl_dbgfs_dbg_time_point_ops, !517, !"iwl_dbgfs_dbg_time_point_ops", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1693, i32 1}
!518 = !{ptr @iwl_dbgfs_send_echo_cmd_ops, !519, !"iwl_dbgfs_send_echo_cmd_ops", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1673, i32 1}
!520 = !{ptr @iwl_dbgfs_indirection_tbl_ops, !521, !"iwl_dbgfs_indirection_tbl_ops", i1 false, i1 false}
!521 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1694, i32 1}
!522 = !{ptr @iwl_dbgfs_inject_packet_ops, !523, !"iwl_dbgfs_inject_packet_ops", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1696, i32 1}
!524 = distinct !{null, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!526 = !{ptr @iwl_dbgfs_inject_beacon_ie_ops, !527, !"iwl_dbgfs_inject_beacon_ie_ops", i1 false, i1 false}
!527 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1697, i32 1}
!528 = distinct !{null, !529, !"__warned", i1 false, i1 false}
!529 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1220, i32 10}
!530 = distinct !{null, !529, !"<string literal>", i1 false, i1 false}
!531 = distinct !{null, !532, !"__warned", i1 false, i1 false}
!532 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1222, i32 9}
!533 = !{ptr @iwl_dbgfs_inject_beacon_ie_restore_ops, !534, !"iwl_dbgfs_inject_beacon_ie_restore_ops", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1698, i32 1}
!535 = !{ptr @iwl_dbgfs_rfi_freq_table_ops, !536, !"iwl_dbgfs_rfi_freq_table_ops", i1 false, i1 false}
!536 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1711, i32 1}
!537 = !{ptr @.str.229, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1644, i32 36}
!539 = !{ptr @.str.230, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1649, i32 55}
!541 = !{ptr @.str.231, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1654, i32 7}
!543 = !{ptr @iwl_dbgfs_phy_integration_ver_ops, !544, !"iwl_dbgfs_phy_integration_ver_ops", i1 false, i1 false}
!544 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1685, i32 1}
!545 = !{ptr @.str.232, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 731, i32 30}
!547 = !{ptr @iwl_dbgfs_he_sniffer_params_ops, !548, !"iwl_dbgfs_he_sniffer_params_ops", i1 false, i1 false}
!548 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1708, i32 1}
!549 = !{ptr @.str.233, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1538, i32 4}
!551 = !{ptr @.str.234, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1490, i32 20}
!553 = !{ptr @iwl_dbgfs_ltr_config_ops, !554, !"iwl_dbgfs_ltr_config_ops", i1 false, i1 false}
!554 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1710, i32 1}
!555 = !{ptr @.str.235, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1577, i32 18}
!557 = !{ptr @.str.236, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1594, i32 3}
!559 = !{ptr @iwl_dbgfs_uapsd_noagg_bssids_ops, !560, !"iwl_dbgfs_uapsd_noagg_bssids_ops", i1 false, i1 false}
!560 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1700, i32 1}
!561 = !{ptr @iwl_dbgfs_mem_ops, !562, !"iwl_dbgfs_mem_ops", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/debugfs.c", i32 1838, i32 37}
!563 = !{!"sp"}
!564 = !{i32 1, !"wchar_size", i32 2}
!565 = !{i32 1, !"min_enum_size", i32 4}
!566 = !{i32 8, !"branch-target-enforcement", i32 0}
!567 = !{i32 8, !"sign-return-address", i32 0}
!568 = !{i32 8, !"sign-return-address-all", i32 0}
!569 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!570 = !{i32 7, !"uwtable", i32 1}
!571 = !{i32 7, !"frame-pointer", i32 2}
!572 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!573 = !{i64 2152525016, i64 2152525041}
!574 = !{!"branch_weights", i32 2000, i32 1}
!575 = !{i64 5020571}
!576 = !{i64 5020768}
!577 = !{i64 2152506001}
!578 = !{!"auto-init"}
!579 = !{i8 0, i8 2}
!580 = !{!"branch_weights", i32 1, i32 2000}
!581 = !{i64 2152525697, i64 2152525722}
