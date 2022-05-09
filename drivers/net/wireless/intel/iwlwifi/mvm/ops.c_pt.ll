; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/ops.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mvm_mod_params = type { i8, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_fw_runtime_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iwl_dump_sanitize_ops = type { ptr, ptr, ptr }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.iwl_hcmd_arr = type { ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_hcmd_names = type { i8, ptr }
%struct.iwl_rx_handlers = type { i16, i16, i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.iwl_fw_dump_desc = type { i32, %struct.iwl_fw_error_dump_trigger_desc }
%struct.iwl_fw_error_dump_trigger_desc = type { i32, [0 x i8] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.128, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.128 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.129] }
%struct.anon.129 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.137, %struct.anon.138, %struct.anon.138, %struct.list_head, %union.anon.139, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.152, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.154, %struct.list_head, %struct.anon.156, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.137 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.138 = type { i64, i64, i64, i64 }
%union.anon.139 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.142, %struct.anon.147, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.141], i32, i32, i32, [6 x i32] }
%struct.anon.141 = type { [15 x i32], i32 }
%struct.anon.142 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.146 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.143 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.146 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.147 = type { %struct.delayed_work, i32, i64 }
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
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.151 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.148, %struct.anon.149, %struct.anon.150, i8 }
%struct.anon.148 = type { [4 x i32], i32 }
%struct.anon.149 = type { [4 x i32], i32, i32 }
%struct.anon.150 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.151 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.152 = type { %struct.delayed_work, i32, i8, %struct.anon.153 }
%struct.anon.153 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.154 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.155, %struct.list_head }
%struct.anon.155 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.156 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.134, %struct.anon.135, %struct.iwl_dma_ptr }
%struct.anon.134 = type { i8, i8, i32 }
%struct.anon.135 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_async_handler_entry = type { %struct.list_head, %struct.iwl_rx_cmd_buffer, i32, ptr }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%union.iwl_dbg_tlv_tp_data = type { ptr }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i32, i32, i32, i32, i8, i8, i16, i16, i8, [5 x i8], [0 x i8] }
%struct.cmd = type { i8, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.136, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.136 = type { i32, i16 }
%struct.iwl_mvm_reprobe = type { ptr, %struct.work_struct }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_trans_config = type { ptr, i8, i8, i32, ptr, i32, i32, i8, i8, ptr, i32, i8, i8 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.124 = type { i64, i64, i8 }
%struct.iwl_pwr_tx_backoff = type { i32, i32 }
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
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.140, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.140 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.122 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.122 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mvm_frob_txf_data = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_cmd_header_wide = type { i8, i8, i16, i16, i8, i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.iwl_mvm_tvqm_txq_info = type { i8, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }

@__UNIQUE_ID_description427 = internal constant [66 x i8] c"iwlmvm.description=The new Intel(R) wireless AGN driver for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file428 = internal constant [58 x i8] c"iwlmvm.file=drivers/net/wireless/intel/iwlwifi/mvm/iwlmvm\00", section ".modinfo", align 1
@__UNIQUE_ID_license429 = internal constant [19 x i8] c"iwlmvm.license=GPL\00", section ".modinfo", align 1
@iwlmvm_mod_params = dso_local global { %struct.iwl_mvm_mod_params, [24 x i8] } { %struct.iwl_mvm_mod_params { i8 0, i32 2 }, [24 x i8] zeroinitializer }, align 32
@__param_str_init_dbg = internal constant [16 x i8] c"iwlmvm.init_dbg\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_init_dbg = internal constant %struct.kernel_param { ptr @__param_str_init_dbg, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @iwlmvm_mod_params } }, section "__param", align 4
@__UNIQUE_ID_init_dbgtype430 = internal constant [30 x i8] c"iwlmvm.parmtype=init_dbg:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_init_dbg431 = internal constant [79 x i8] c"iwlmvm.parm=init_dbg:set to true to debug an ASSERT in INIT fw (default: false\00", section ".modinfo", align 1
@__param_str_power_scheme = internal constant [20 x i8] c"iwlmvm.power_scheme\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_power_scheme = internal constant %struct.kernel_param { ptr @__param_str_power_scheme, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @iwlmvm_mod_params, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_power_schemetype432 = internal constant [33 x i8] c"iwlmvm.parmtype=power_scheme:int\00", section ".modinfo", align 1
@__UNIQUE_ID_power_scheme433 = internal constant [96 x i8] c"iwlmvm.parm=power_scheme:power management scheme: 1-active, 2-balanced, 3-low power, default: 2\00", section ".modinfo", align 1
@__initcall__kmod_iwlmvm__434_70_iwl_mvm_init6 = internal global ptr @iwl_mvm_init, section ".initcall6.init", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iwlmvm\00", [25 x i8] zeroinitializer }, align 32
@__exitcall_iwl_mvm_exit = internal global ptr @iwl_mvm_exit, section ".exitcall.exit", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/ops.c\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_get_csme_conn_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Starting mac, retry will be triggered anyway\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Firmware error during reconfiguration - reprobe!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Module is being unloaded - abort\0A\00", [62 x i8] zeroinitializer }, align 32
@iwl_mvm_nic_restart.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&reprobe->work)\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HW restart already requested, but not started\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_nic_restart = private unnamed_addr constant [20 x i8] c"iwl_mvm_nic_restart\00", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FW restart requested after debug collection\0A\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to register rate control algorithm: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iwl_mvm_init\00", [19 x i8] zeroinitializer }, align 32
@iwl_mvm_init._entry_ptr = internal global ptr @iwl_mvm_init._entry, section ".printk_index", align 4
@iwl_mvm_ops = internal constant { %struct.iwl_op_mode_ops, [40 x i8] } { %struct.iwl_op_mode_ops { ptr @iwl_op_mode_mvm_start, ptr @iwl_op_mode_mvm_stop, ptr @iwl_mvm_rx, ptr null, ptr @iwl_mvm_async_cb, ptr @iwl_mvm_stop_sw_queue, ptr @iwl_mvm_wake_sw_queue, ptr @iwl_mvm_set_hw_rfkill_state, ptr @iwl_mvm_free_skb, ptr @iwl_mvm_nic_error, ptr @iwl_mvm_cmd_queue_full, ptr @iwl_mvm_nic_config, ptr null, ptr @iwl_op_mode_mvm_time_point }, [40 x i8] zeroinitializer }, align 32
@iwl_mvm_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.1, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Unable to register MVM op_mode: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@iwl_mvm_init._entry_ptr.13 = internal global ptr @iwl_mvm_init._entry.11, section ".printk_index", align 4
@iwl_op_mode_mvm_start.no_reclaim_cmds = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\1C", [31 x i8] zeroinitializer }, align 32
@iwl_mvm_hw_ops = external dso_local constant %struct.ieee80211_ops, align 4
@iwl_mvm_fwrt_ops = internal constant { %struct.iwl_fw_runtime_ops, [44 x i8] } { %struct.iwl_fw_runtime_ops { ptr @iwl_mvm_fwrt_dump_start, ptr @iwl_mvm_fwrt_dump_end, ptr @iwl_mvm_fwrt_fw_running, ptr @iwl_mvm_fwrt_send_hcmd, ptr @iwl_mvm_d3_debug_enable }, [44 x i8] zeroinitializer }, align 32
@iwl_mvm_sanitize_ops = internal constant { %struct.iwl_dump_sanitize_ops, [20 x i8] } { %struct.iwl_dump_sanitize_ops { ptr @iwl_mvm_frob_txf, ptr @iwl_mvm_frob_hcmd, ptr @iwl_mvm_frob_mem }, [20 x i8] zeroinitializer }, align 32
@iwl_mvm_ops_mq = internal constant { %struct.iwl_op_mode_ops, [40 x i8] } { %struct.iwl_op_mode_ops { ptr @iwl_op_mode_mvm_start, ptr @iwl_op_mode_mvm_stop, ptr @iwl_mvm_rx_mq, ptr @iwl_mvm_rx_mq_rss, ptr @iwl_mvm_async_cb, ptr @iwl_mvm_stop_sw_queue, ptr @iwl_mvm_wake_sw_queue, ptr @iwl_mvm_set_hw_rfkill_state, ptr @iwl_mvm_free_skb, ptr @iwl_mvm_nic_error, ptr @iwl_mvm_cmd_queue_full, ptr @iwl_mvm_nic_config, ptr null, ptr @iwl_op_mode_mvm_time_point }, [40 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@iwl_op_mode_mvm_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mvm->mutex\00", [20 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&mvm->async_handlers_lock\00", [38 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mvm->time_event_lock\00", [42 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&mvm->async_handlers_wk)\00", [53 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&mvm->roc_done_wk)\00", [59 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&mvm->sap_connected_wk)\00", [54 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&mvm->tdls_cs.dwork)->work)\00", [48 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&mvm->tdls_cs.dwork)->timer\00", [34 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&mvm->scan_timeout_dwork)->work)\00", [43 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&mvm->scan_timeout_dwork)->timer\00", [61 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&mvm->add_stream_wk)\00", [57 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mvm->rx_sync_waitq\00", [44 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mvm->tcm.lock\00", [17 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&mvm->tcm.work)->work)\00", [53 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&mvm->tcm.work)->timer\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iwl_op_mode_mvm_start.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&mvm->cs_tx_unblock_dwork)->work)\00", [42 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&mvm->cs_tx_unblock_dwork)->timer\00", [60 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_op_mode_mvm_start.__already_done.47 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_op_mode_mvm_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.1, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Unsupported amsdu_size: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iwl_op_mode_mvm_start\00", [42 x i8] zeroinitializer }, align 32
@iwl_op_mode_mvm_start._entry_ptr = internal global ptr @iwl_op_mode_mvm_start._entry, section ".printk_index", align 4
@iwl_mvm_groups = internal constant { [13 x %struct.iwl_hcmd_arr], [56 x i8] } { [13 x %struct.iwl_hcmd_arr] [%struct.iwl_hcmd_arr { ptr @iwl_mvm_legacy_names, i32 89 }, %struct.iwl_hcmd_arr { ptr @iwl_mvm_legacy_names, i32 89 }, %struct.iwl_hcmd_arr { ptr @iwl_mvm_system_names, i32 6 }, %struct.iwl_hcmd_arr { ptr @iwl_mvm_mac_conf_names, i32 4 }, %struct.iwl_hcmd_arr { ptr @iwl_mvm_phy_names, i32 6 }, %struct.iwl_hcmd_arr { ptr @iwl_mvm_data_path_names, i32 13 }, %struct.iwl_hcmd_arr zeroinitializer, %struct.iwl_hcmd_arr zeroinitializer, %struct.iwl_hcmd_arr { ptr @iwl_mvm_location_names, i32 10 }, %struct.iwl_hcmd_arr zeroinitializer, %struct.iwl_hcmd_arr zeroinitializer, %struct.iwl_hcmd_arr { ptr @iwl_mvm_prot_offload_names, i32 1 }, %struct.iwl_hcmd_arr { ptr @iwl_mvm_regulatory_and_nvm_names, i32 3 }], [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot init phy_db\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Detected %s, REV=0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"working without external nvm file\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't get started...\0A\00", [39 x i8] zeroinitializer }, align 32
@iwl_mvm_tx_unblock_dwork.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_legacy_names = internal constant { [89 x %struct.iwl_hcmd_names], [184 x i8] } { [89 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 1, ptr @.str.58 }, %struct.iwl_hcmd_names { i8 2, ptr @.str.59 }, %struct.iwl_hcmd_names { i8 3, ptr @.str.60 }, %struct.iwl_hcmd_names { i8 4, ptr @.str.61 }, %struct.iwl_hcmd_names { i8 8, ptr @.str.62 }, %struct.iwl_hcmd_names { i8 9, ptr @.str.63 }, %struct.iwl_hcmd_names { i8 12, ptr @.str.64 }, %struct.iwl_hcmd_names { i8 13, ptr @.str.65 }, %struct.iwl_hcmd_names { i8 14, ptr @.str.66 }, %struct.iwl_hcmd_names { i8 15, ptr @.str.67 }, %struct.iwl_hcmd_names { i8 19, ptr @.str.68 }, %struct.iwl_hcmd_names { i8 23, ptr @.str.69 }, %struct.iwl_hcmd_names { i8 24, ptr @.str.70 }, %struct.iwl_hcmd_names { i8 25, ptr @.str.71 }, %struct.iwl_hcmd_names { i8 26, ptr @.str.72 }, %struct.iwl_hcmd_names { i8 28, ptr @.str.73 }, %struct.iwl_hcmd_names { i8 29, ptr @.str.74 }, %struct.iwl_hcmd_names { i8 30, ptr @.str.75 }, %struct.iwl_hcmd_names { i8 31, ptr @.str.76 }, %struct.iwl_hcmd_names { i8 32, ptr @.str.77 }, %struct.iwl_hcmd_names { i8 37, ptr @.str.78 }, %struct.iwl_hcmd_names { i8 39, ptr @.str.79 }, %struct.iwl_hcmd_names { i8 40, ptr @.str.80 }, %struct.iwl_hcmd_names { i8 41, ptr @.str.81 }, %struct.iwl_hcmd_names { i8 42, ptr @.str.82 }, %struct.iwl_hcmd_names { i8 43, ptr @.str.83 }, %struct.iwl_hcmd_names { i8 44, ptr @.str.84 }, %struct.iwl_hcmd_names { i8 45, ptr @.str.85 }, %struct.iwl_hcmd_names { i8 72, ptr @.str.86 }, %struct.iwl_hcmd_names { i8 78, ptr @.str.87 }, %struct.iwl_hcmd_names { i8 79, ptr @.str.88 }, %struct.iwl_hcmd_names { i8 81, ptr @.str.89 }, %struct.iwl_hcmd_names { i8 82, ptr @.str.90 }, %struct.iwl_hcmd_names { i8 83, ptr @.str.91 }, %struct.iwl_hcmd_names { i8 86, ptr @.str.92 }, %struct.iwl_hcmd_names { i8 92, ptr @.str.93 }, %struct.iwl_hcmd_names { i8 93, ptr @.str.94 }, %struct.iwl_hcmd_names { i8 106, ptr @.str.95 }, %struct.iwl_hcmd_names { i8 107, ptr @.str.96 }, %struct.iwl_hcmd_names { i8 108, ptr @.str.97 }, %struct.iwl_hcmd_names { i8 109, ptr @.str.98 }, %struct.iwl_hcmd_names { i8 110, ptr @.str.99 }, %struct.iwl_hcmd_names { i8 119, ptr @.str.100 }, %struct.iwl_hcmd_names { i8 120, ptr @.str.101 }, %struct.iwl_hcmd_names { i8 126, ptr @.str.102 }, %struct.iwl_hcmd_names { i8 -125, ptr @.str.103 }, %struct.iwl_hcmd_names { i8 -120, ptr @.str.104 }, %struct.iwl_hcmd_names { i8 -112, ptr @.str.105 }, %struct.iwl_hcmd_names { i8 -111, ptr @.str.106 }, %struct.iwl_hcmd_names { i8 -104, ptr @.str.107 }, %struct.iwl_hcmd_names { i8 -101, ptr @.str.108 }, %struct.iwl_hcmd_names { i8 -100, ptr @.str.109 }, %struct.iwl_hcmd_names { i8 -99, ptr @.str.110 }, %struct.iwl_hcmd_names { i8 -98, ptr @.str.111 }, %struct.iwl_hcmd_names { i8 -97, ptr @.str.112 }, %struct.iwl_hcmd_names { i8 -94, ptr @.str.113 }, %struct.iwl_hcmd_names { i8 -89, ptr @.str.114 }, %struct.iwl_hcmd_names { i8 -87, ptr @.str.115 }, %struct.iwl_hcmd_names { i8 -86, ptr @.str.116 }, %struct.iwl_hcmd_names { i8 -79, ptr @.str.117 }, %struct.iwl_hcmd_names { i8 -77, ptr @.str.118 }, %struct.iwl_hcmd_names { i8 -75, ptr @.str.119 }, %struct.iwl_hcmd_names { i8 -64, ptr @.str.120 }, %struct.iwl_hcmd_names { i8 -63, ptr @.str.121 }, %struct.iwl_hcmd_names { i8 -62, ptr @.str.122 }, %struct.iwl_hcmd_names { i8 -61, ptr @.str.123 }, %struct.iwl_hcmd_names { i8 -59, ptr @.str.124 }, %struct.iwl_hcmd_names { i8 -56, ptr @.str.125 }, %struct.iwl_hcmd_names { i8 -55, ptr @.str.126 }, %struct.iwl_hcmd_names { i8 -53, ptr @.str.127 }, %struct.iwl_hcmd_names { i8 -50, ptr @.str.128 }, %struct.iwl_hcmd_names { i8 -48, ptr @.str.129 }, %struct.iwl_hcmd_names { i8 -47, ptr @.str.130 }, %struct.iwl_hcmd_names { i8 -46, ptr @.str.131 }, %struct.iwl_hcmd_names { i8 -45, ptr @.str.132 }, %struct.iwl_hcmd_names { i8 -44, ptr @.str.133 }, %struct.iwl_hcmd_names { i8 -43, ptr @.str.134 }, %struct.iwl_hcmd_names { i8 -39, ptr @.str.135 }, %struct.iwl_hcmd_names { i8 -35, ptr @.str.136 }, %struct.iwl_hcmd_names { i8 -32, ptr @.str.137 }, %struct.iwl_hcmd_names { i8 -31, ptr @.str.138 }, %struct.iwl_hcmd_names { i8 -30, ptr @.str.139 }, %struct.iwl_hcmd_names { i8 -29, ptr @.str.140 }, %struct.iwl_hcmd_names { i8 -28, ptr @.str.141 }, %struct.iwl_hcmd_names { i8 -27, ptr @.str.142 }, %struct.iwl_hcmd_names { i8 -25, ptr @.str.143 }, %struct.iwl_hcmd_names { i8 -19, ptr @.str.144 }, %struct.iwl_hcmd_names { i8 -18, ptr @.str.145 }, %struct.iwl_hcmd_names { i8 -10, ptr @.str.146 }], [184 x i8] zeroinitializer }, align 32
@iwl_mvm_system_names = internal constant { [6 x %struct.iwl_hcmd_names], [48 x i8] } { [6 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 0, ptr @.str.147 }, %struct.iwl_hcmd_names { i8 3, ptr @.str.148 }, %struct.iwl_hcmd_names { i8 7, ptr @.str.149 }, %struct.iwl_hcmd_names { i8 11, ptr @.str.150 }, %struct.iwl_hcmd_names { i8 12, ptr @.str.151 }, %struct.iwl_hcmd_names { i8 13, ptr @.str.152 }], [48 x i8] zeroinitializer }, align 32
@iwl_mvm_mac_conf_names = internal constant { [4 x %struct.iwl_hcmd_names], [32 x i8] } { [4 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 4, ptr @.str.153 }, %struct.iwl_hcmd_names { i8 5, ptr @.str.154 }, %struct.iwl_hcmd_names { i8 -5, ptr @.str.155 }, %struct.iwl_hcmd_names { i8 -1, ptr @.str.156 }], [32 x i8] zeroinitializer }, align 32
@iwl_mvm_phy_names = internal constant { [6 x %struct.iwl_hcmd_names], [48 x i8] } { [6 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 0, ptr @.str.157 }, %struct.iwl_hcmd_names { i8 3, ptr @.str.158 }, %struct.iwl_hcmd_names { i8 4, ptr @.str.159 }, %struct.iwl_hcmd_names { i8 5, ptr @.str.160 }, %struct.iwl_hcmd_names { i8 -2, ptr @.str.161 }, %struct.iwl_hcmd_names { i8 -1, ptr @.str.162 }], [48 x i8] zeroinitializer }, align 32
@iwl_mvm_data_path_names = internal constant { [13 x %struct.iwl_hcmd_names], [56 x i8] } { [13 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 0, ptr @.str.163 }, %struct.iwl_hcmd_names { i8 1, ptr @.str.164 }, %struct.iwl_hcmd_names { i8 2, ptr @.str.165 }, %struct.iwl_hcmd_names { i8 7, ptr @.str.166 }, %struct.iwl_hcmd_names { i8 8, ptr @.str.167 }, %struct.iwl_hcmd_names { i8 13, ptr @.str.168 }, %struct.iwl_hcmd_names { i8 15, ptr @.str.169 }, %struct.iwl_hcmd_names { i8 20, ptr @.str.170 }, %struct.iwl_hcmd_names { i8 -12, ptr @.str.171 }, %struct.iwl_hcmd_names { i8 -10, ptr @.str.172 }, %struct.iwl_hcmd_names { i8 -3, ptr @.str.173 }, %struct.iwl_hcmd_names { i8 -2, ptr @.str.174 }, %struct.iwl_hcmd_names { i8 -1, ptr @.str.175 }], [56 x i8] zeroinitializer }, align 32
@iwl_mvm_location_names = internal constant { [10 x %struct.iwl_hcmd_names], [48 x i8] } { [10 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 0, ptr @.str.176 }, %struct.iwl_hcmd_names { i8 1, ptr @.str.177 }, %struct.iwl_hcmd_names { i8 2, ptr @.str.178 }, %struct.iwl_hcmd_names { i8 3, ptr @.str.179 }, %struct.iwl_hcmd_names { i8 4, ptr @.str.180 }, %struct.iwl_hcmd_names { i8 5, ptr @.str.181 }, %struct.iwl_hcmd_names { i8 -4, ptr @.str.182 }, %struct.iwl_hcmd_names { i8 -3, ptr @.str.183 }, %struct.iwl_hcmd_names { i8 -2, ptr @.str.184 }, %struct.iwl_hcmd_names { i8 -1, ptr @.str.185 }], [48 x i8] zeroinitializer }, align 32
@iwl_mvm_prot_offload_names = internal constant { [1 x %struct.iwl_hcmd_names], [24 x i8] } { [1 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 -1, ptr @.str.186 }], [24 x i8] zeroinitializer }, align 32
@iwl_mvm_regulatory_and_nvm_names = internal constant { [3 x %struct.iwl_hcmd_names], [40 x i8] } { [3 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 0, ptr @.str.187 }, %struct.iwl_hcmd_names { i8 2, ptr @.str.188 }, %struct.iwl_hcmd_names { i8 3, ptr @.str.189 }], [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UCODE_ALIVE_NTFY\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REPLY_ERROR\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ECHO_CMD\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INIT_COMPLETE_NOTIF\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PHY_CONTEXT_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DBG_CFG\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SCAN_CFG_CMD\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCAN_REQ_UMAC\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCAN_ABORT_UMAC\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SCAN_COMPLETE_UMAC\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BA_WINDOW_STATUS_NOTIFICATION_ID\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADD_STA_KEY\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADD_STA\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REMOVE_STA\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FW_GET_ITEM_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX_CMD\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCD_QUEUE_CFG\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TXPATH_FLUSH\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MGMT_MCAST_KEY\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WEP_KEY\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHARED_MEM_CFG\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TDLS_CHANNEL_SWITCH_CMD\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MAC_CONTEXT_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TIME_EVENT_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TIME_EVENT_NOTIFICATION\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BINDING_CONTEXT_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TIME_QUOTA_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NON_QOS_TX_COUNTER_CMD\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LEDS_CMD\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LQ_CMD\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FW_PAGING_BLOCK_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SCAN_OFFLOAD_REQUEST_CMD\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCAN_OFFLOAD_ABORT_CMD\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HOT_SPOT_CMD\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SCAN_OFFLOAD_PROFILES_QUERY_CMD\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BT_COEX_UPDATE_REDUCED_TXP\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_COEX_CI\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHY_CONFIGURATION_CMD\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CALIB_RES_NOTIF_PHY_DB\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PHY_DB_CMD\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCAN_OFFLOAD_COMPLETE\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SCAN_OFFLOAD_UPDATE_PROFILES_CMD\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"POWER_TABLE_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PSM_UAPSD_AP_MISBEHAVING_NOTIFICATION\00", [58 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"REPLY_THERMAL_MNG_BACKOFF\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DC2DC_CONFIG_CMD\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NVM_ACCESS_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BEACON_NOTIFICATION\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BEACON_TEMPLATE_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TX_ANT_CONFIGURATION_CMD\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CONFIG\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STATISTICS_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STATISTICS_NOTIFICATION\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EOSP_NOTIFICATION\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REDUCE_TX_POWER_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MISSED_BEACONS_NOTIFICATION\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TDLS_CONFIG_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC_PM_POWER_TABLE\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TDLS_CHANNEL_SWITCH_NOTIFICATION\00", [63 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MFUART_LOAD_NOTIFICATION\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RSS_CONFIG_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SCAN_ITERATION_COMPLETE_UMAC\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPLY_RX_PHY_CMD\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REPLY_RX_MPDU_CMD\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BAR_FRAME_RELEASE\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FRAME_RELEASE\00", [18 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BA_NOTIF\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MCC_UPDATE_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MCC_CHUB_UPDATE_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MARKER_CMD\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BT_PROFILE_NOTIFICATION\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MCAST_FILTER_CMD\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPLY_SF_CFG_CMD\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"REPLY_BEACON_FILTERING_CMD\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"D3_CONFIG_CMD\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PROT_OFFLOAD_CONFIG_CMD\00", [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OFFLOADS_QUERY_CMD\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MATCH_FOUND_NOTIFICATION\00", [39 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DTS_MEASUREMENT_NOTIFICATION\00", [35 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WOWLAN_PATTERNS\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WOWLAN_CONFIGURATION\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WOWLAN_TSC_RSC_PARAM\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WOWLAN_TKIP_PARAM\00", [46 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WOWLAN_KEK_KCK_MATERIAL\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WOWLAN_GET_STATUSES\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SCAN_ITERATION_COMPLETE\00", [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"D0I3_END_CMD\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTR_CONFIG\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LDBG_CONFIG_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SHARED_MEM_CFG_CMD\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INIT_EXTENDED_CFG_CMD\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW_ERROR_RECOVERY_CMD\00", [42 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RFI_CONFIG_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RFI_GET_FREQ_TABLE_CMD\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SYSTEM_FEATURES_CONTROL_CMD\00", [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CHANNEL_SWITCH_TIME_EVENT_CMD\00", [34 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SESSION_PROTECTION_CMD\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SESSION_PROTECTION_NOTIF\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CHANNEL_SWITCH_START_NOTIF\00", [37 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CMD_DTS_MEASUREMENT_TRIGGER_WIDE\00", [63 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CTDP_CONFIG_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TEMP_REPORTING_THRESHOLDS_CMD\00", [34 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PER_CHAIN_LIMIT_OFFSET_CMD\00", [37 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CT_KILL_NOTIFICATION\00", [43 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DTS_MEASUREMENT_NOTIF_WIDE\00", [37 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DQA_ENABLE_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UPDATE_MU_GROUPS_CMD\00", [43 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TRIGGER_RX_QUEUES_NOTIF_CMD\00", [36 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STA_HE_CTXT_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RLC_CONFIG_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RFH_QUEUE_CONFIG_CMD\00", [43 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TLC_MNG_CONFIG_CMD\00", [45 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CHEST_COLLECTOR_FILTER_CONFIG_CMD\00", [62 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MONITOR_NOTIF\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"THERMAL_DUAL_CHAIN_REQUEST\00", [37 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STA_PM_NOTIF\00", [19 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MU_GROUP_MGMT_NOTIF\00", [44 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_QUEUES_NOTIFICATION\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TOF_RANGE_REQ_CMD\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TOF_CONFIG_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TOF_RANGE_ABORT_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TOF_RANGE_REQ_EXT_CMD\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TOF_RESPONDER_CONFIG_CMD\00", [39 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TOF_RESPONDER_DYN_CONFIG_CMD\00", [35 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TOF_LC_NOTIF\00", [19 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TOF_RESPONDER_STATS\00", [44 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TOF_MCSI_DEBUG_NOTIF\00", [43 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TOF_RANGE_RESPONSE_NOTIF\00", [39 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"STORED_BEACON_NTF\00", [46 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NVM_ACCESS_COMPLETE\00", [44 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NVM_GET_INFO\00", [19 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TAS_CONFIG\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.191 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"csme is owner, but we aren't registered to iwlmei\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Got a NULL NVM from CSME, trying to get it from the device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to run INIT ucode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iwl_trans_block_txq_ptrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_block_txq_ptrs = private unnamed_addr constant [25 x i8] c"iwl_trans_block_txq_ptrs\00", align 1
@iwl_mvm_queue_state_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_queue_state_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.195 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_nic_config = private unnamed_addr constant [19 x i8] c"iwl_mvm_nic_config\00", align 1
@.str.196 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Radio type=0x%x-0x%x-0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_handlers = internal constant { [35 x %struct.iwl_rx_handlers], [124 x i8] } { [35 x %struct.iwl_rx_handlers] [%struct.iwl_rx_handlers { i16 28, i16 44, i32 0, ptr @iwl_mvm_rx_tx_cmd }, %struct.iwl_rx_handlers { i16 197, i16 28, i32 0, ptr @iwl_mvm_rx_ba_notif }, %struct.iwl_rx_handlers { i16 1527, i16 20, i32 0, ptr @iwl_mvm_tlc_update_notif }, %struct.iwl_rx_handlers { i16 206, i16 40, i32 1, ptr @iwl_mvm_rx_bt_coex_notif }, %struct.iwl_rx_handlers { i16 144, i16 0, i32 1, ptr @iwl_mvm_rx_beacon_notif }, %struct.iwl_rx_handlers { i16 157, i16 0, i32 1, ptr @iwl_mvm_rx_statistics }, %struct.iwl_rx_handlers { i16 19, i16 256, i32 0, ptr @iwl_mvm_window_status_notif }, %struct.iwl_rx_handlers { i16 42, i16 24, i32 0, ptr @iwl_mvm_rx_time_event_notif }, %struct.iwl_rx_handlers { i16 1019, i16 16, i32 0, ptr @iwl_mvm_rx_session_protect_notif }, %struct.iwl_rx_handlers { i16 201, i16 4, i32 1, ptr @iwl_mvm_rx_chub_update_mcc }, %struct.iwl_rx_handlers { i16 158, i16 8, i32 0, ptr @iwl_mvm_rx_eosp_notif }, %struct.iwl_rx_handlers { i16 231, i16 12, i32 0, ptr @iwl_mvm_rx_lmac_scan_iter_complete_notif }, %struct.iwl_rx_handlers { i16 109, i16 12, i32 1, ptr @iwl_mvm_rx_lmac_scan_complete_notif }, %struct.iwl_rx_handlers { i16 217, i16 0, i32 0, ptr @iwl_mvm_rx_scan_match_found }, %struct.iwl_rx_handlers { i16 15, i16 16, i32 1, ptr @iwl_mvm_rx_umac_scan_complete_notif }, %struct.iwl_rx_handlers { i16 181, i16 16, i32 0, ptr @iwl_mvm_rx_umac_scan_iter_complete_notif }, %struct.iwl_rx_handlers { i16 162, i16 20, i32 0, ptr @iwl_mvm_rx_missed_beacons_notif }, %struct.iwl_rx_handlers { i16 2, i16 20, i32 0, ptr @iwl_mvm_rx_fw_error }, %struct.iwl_rx_handlers { i16 120, i16 8, i32 0, ptr @iwl_mvm_power_uapsd_misbehaving_ap_notif }, %struct.iwl_rx_handlers { i16 221, i16 0, i32 1, ptr @iwl_mvm_temp_notif }, %struct.iwl_rx_handlers { i16 1279, i16 0, i32 2, ptr @iwl_mvm_temp_notif }, %struct.iwl_rx_handlers { i16 1278, i16 4, i32 0, ptr @iwl_mvm_ct_kill_notif }, %struct.iwl_rx_handlers { i16 170, i16 12, i32 1, ptr @iwl_mvm_rx_tdls_notif }, %struct.iwl_rx_handlers { i16 177, i16 16, i32 0, ptr @iwl_mvm_rx_mfuart_notif }, %struct.iwl_rx_handlers { i16 2301, i16 24, i32 1, ptr @iwl_mvm_ftm_responder_stats }, %struct.iwl_rx_handlers { i16 2303, i16 0, i32 1, ptr @iwl_mvm_ftm_range_resp }, %struct.iwl_rx_handlers { i16 2300, i16 0, i32 1, ptr @iwl_mvm_ftm_lc_notif }, %struct.iwl_rx_handlers { i16 4094, i16 16, i32 0, ptr @iwl_mvm_mfu_assert_dump_notif }, %struct.iwl_rx_handlers { i16 3071, i16 628, i32 0, ptr @iwl_mvm_rx_stored_beacon_notif }, %struct.iwl_rx_handlers { i16 1534, i16 24, i32 0, ptr @iwl_mvm_mu_mimo_grp_notif }, %struct.iwl_rx_handlers { i16 1533, i16 4, i32 0, ptr @iwl_mvm_sta_pm_notif }, %struct.iwl_rx_handlers { i16 1020, i16 44, i32 1, ptr @iwl_mvm_probe_resp_data_notif }, %struct.iwl_rx_handlers { i16 1023, i16 4, i32 0, ptr @iwl_mvm_channel_switch_start_notif }, %struct.iwl_rx_handlers { i16 1524, i16 8, i32 1, ptr @iwl_mvm_rx_monitor_notif }, %struct.iwl_rx_handlers { i16 1526, i16 4, i32 1, ptr @iwl_mvm_rx_thermal_dual_chain_req }], [124 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CMD 0x%02x.%02x received\00", [39 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@iwl_dump_desc_assert = external dso_local constant %struct.iwl_fw_dump_desc, align 4
@iwl_mvm_reprobe_wk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.1, i32 1758, ptr @.str.203, ptr @.str.204 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reprobe failed!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iwl_mvm_reprobe_wk\00", [45 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iwl_mvm_reprobe_wk._entry_ptr = internal global ptr @iwl_mvm_reprobe_wk._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.iwl_op_mode_mvm_start = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 193, i64 194, i64 195, i64 1525, i64 1535]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 16, i64 192, i64 193]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967164]
@__sancov_gen_cov_switch_values.207 = internal global [7 x i64] [i64 5, i64 8, i64 23, i64 31, i64 32, i64 227, i64 228]
@__sancov_gen_cov_switch_values.208 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.209 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 16, i64 193, i64 195, i64 1535]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"iwlmvm_mod_params\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 39, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 74, i32 24 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1345, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1702, i32 9 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1791, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1795, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1804, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1814, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1818, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1848, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 60, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [12 x i8] c"iwl_mvm_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1919, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 66, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [16 x i8] c"no_reclaim_cmds\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1055, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"iwl_mvm_fwrt_ops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 674, i32 40 }
@___asan_gen_.269 = private unnamed_addr constant [21 x i8] c"iwl_mvm_sanitize_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 938, i32 43 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"iwl_mvm_ops_mq\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1945, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1149, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1150, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1154, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1159, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1160, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1161, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1162, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1163, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1164, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1167, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1173, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1174, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1179, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1217, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [15 x i8] c"iwl_mvm_groups\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 577, i32 34 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1242, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1266, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1270, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1276, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 695, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 723, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1007, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [21 x i8] c"iwl_mvm_legacy_names\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 400, i32 36 }
@___asan_gen_.416 = private unnamed_addr constant [21 x i8] c"iwl_mvm_system_names\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 495, i32 36 }
@___asan_gen_.419 = private unnamed_addr constant [23 x i8] c"iwl_mvm_mac_conf_names\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 507, i32 36 }
@___asan_gen_.422 = private unnamed_addr constant [18 x i8] c"iwl_mvm_phy_names\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 517, i32 36 }
@___asan_gen_.425 = private unnamed_addr constant [24 x i8] c"iwl_mvm_data_path_names\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 529, i32 36 }
@___asan_gen_.428 = private unnamed_addr constant [23 x i8] c"iwl_mvm_location_names\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 548, i32 36 }
@___asan_gen_.431 = private unnamed_addr constant [27 x i8] c"iwl_mvm_prot_offload_names\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 564, i32 36 }
@___asan_gen_.434 = private unnamed_addr constant [33 x i8] c"iwl_mvm_regulatory_and_nvm_names\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 571, i32 36 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 401, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 402, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 403, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 404, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 405, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 406, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 407, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 408, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 409, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 410, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 411, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 412, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 413, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 414, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 415, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 416, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 417, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 418, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 419, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 420, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 421, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 422, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 423, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 424, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 425, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 426, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 427, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 428, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 429, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 430, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 431, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 432, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 433, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 434, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 435, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 436, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 437, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 438, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 439, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 440, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 441, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 442, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 443, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 444, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 445, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 446, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 447, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 448, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 449, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 450, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 451, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 452, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 453, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 454, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 455, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 456, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 457, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 458, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 459, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 460, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 461, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 462, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 463, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 464, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 465, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 466, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 467, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 468, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 469, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 470, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 471, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 472, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 473, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 474, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 475, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 476, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 477, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 478, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 479, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 480, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 481, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 482, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 483, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 484, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 485, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 486, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 487, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 488, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 489, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 496, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 497, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 498, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 499, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 500, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 501, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 508, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 509, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 510, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 511, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 518, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 519, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 520, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 521, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 522, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 523, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 530, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 531, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 532, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 533, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 534, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 535, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 536, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 537, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 538, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 539, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 540, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 541, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 542, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 549, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 550, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 551, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 552, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 553, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 554, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 555, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 556, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 557, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 558, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 565, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 572, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 573, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 574, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.846, i32 1040, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 688, i32 7 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 705, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 738, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.846, i32 1296, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1630, i32 8 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 128, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant [20 x i8] c"iwl_mvm_rx_handlers\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 289, i32 37 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1494, i32 6 }
@___asan_gen_.861 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.861, i32 121, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.864, i32 510, i32 6 }
@___asan_gen_.867 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.867, i32 1160, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.882 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.882, i32 1758, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant [35 x i8] c"switch.table.iwl_op_mode_mvm_start\00", align 1
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_description427, ptr @__UNIQUE_ID_file428, ptr @__UNIQUE_ID_init_dbg431, ptr @__UNIQUE_ID_init_dbgtype430, ptr @__UNIQUE_ID_license429, ptr @__UNIQUE_ID_power_scheme433, ptr @__UNIQUE_ID_power_schemetype432, ptr @__exitcall_iwl_mvm_exit, ptr @__initcall__kmod_iwlmvm__434_70_iwl_mvm_init6, ptr @__param_init_dbg, ptr @__param_power_scheme, ptr @iwl_mvm_exit, ptr @iwl_mvm_init._entry, ptr @iwl_mvm_init._entry.11, ptr @iwl_mvm_init._entry_ptr, ptr @iwl_mvm_init._entry_ptr.13, ptr @iwl_mvm_reprobe_wk._entry, ptr @iwl_mvm_reprobe_wk._entry_ptr, ptr @iwl_op_mode_mvm_start._entry, ptr @iwl_op_mode_mvm_start._entry_ptr, ptr @iwlmvm_mod_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @iwl_mvm_nic_restart.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @iwl_mvm_ops, ptr @.str.12, ptr @iwl_op_mode_mvm_start.no_reclaim_cmds, ptr @iwl_mvm_fwrt_ops, ptr @iwl_mvm_sanitize_ops, ptr @iwl_mvm_ops_mq, ptr @iwl_op_mode_mvm_start.__key, ptr @.str.14, ptr @iwl_op_mode_mvm_start.__key.15, ptr @.str.16, ptr @iwl_op_mode_mvm_start.__key.17, ptr @.str.18, ptr @iwl_op_mode_mvm_start.__key.19, ptr @.str.20, ptr @iwl_op_mode_mvm_start.__key.21, ptr @.str.22, ptr @iwl_op_mode_mvm_start.__key.23, ptr @.str.24, ptr @iwl_op_mode_mvm_start.__key.25, ptr @.str.26, ptr @iwl_op_mode_mvm_start.__key.27, ptr @.str.28, ptr @iwl_op_mode_mvm_start.__key.29, ptr @.str.30, ptr @iwl_op_mode_mvm_start.__key.31, ptr @.str.32, ptr @iwl_op_mode_mvm_start.__key.33, ptr @.str.34, ptr @iwl_op_mode_mvm_start.__key.35, ptr @.str.36, ptr @iwl_op_mode_mvm_start.__key.37, ptr @.str.38, ptr @iwl_op_mode_mvm_start.__key.39, ptr @.str.40, ptr @iwl_op_mode_mvm_start.__key.41, ptr @.str.42, ptr @iwl_op_mode_mvm_start.__key.43, ptr @.str.44, ptr @iwl_op_mode_mvm_start.__key.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @iwl_mvm_groups, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @iwl_mvm_legacy_names, ptr @iwl_mvm_system_names, ptr @iwl_mvm_mac_conf_names, ptr @iwl_mvm_phy_names, ptr @iwl_mvm_data_path_names, ptr @iwl_mvm_location_names, ptr @iwl_mvm_prot_offload_names, ptr @iwl_mvm_regulatory_and_nvm_names, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @iwl_mvm_rx_handlers, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @switch.table.iwl_op_mode_mvm_start], section "llvm.metadata"
@0 = internal global [225 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlmvm_mod_params to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_nic_restart.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.no_reclaim_cmds to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_fwrt_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_sanitize_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_ops_mq to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_mvm_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_groups to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_legacy_names to i32), i32 712, i32 896, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_system_names to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_mac_conf_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_phy_names to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_data_path_names to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_location_names to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_prot_offload_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_regulatory_and_nvm_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_rx_handlers to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_reprobe_wk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_op_mode_mvm_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iwl_mvm_rate_control_register() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @iwl_opmode_register(ptr noundef nonnull @.str, ptr noundef nonnull @iwl_mvm_ops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_opmode_deregister(ptr noundef nonnull @.str) #16
  tail call void @iwl_mvm_rate_control_unregister() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_opmode_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rate_control_unregister() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_apply_fw_smps_request(ptr noundef %vif) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 8
  %fw_static_smps_request = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 129
  %2 = ptrtoint ptr %fw_static_smps_request to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_static_smps_request, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %width = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 32, i32 1
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %he_support = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %he_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %he_support, align 2, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true2 ]
  tail call void @iwl_mvm_update_smps(ptr noundef %1, ptr noundef %vif, i32 noundef 3, i32 noundef %mode.0) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_update_smps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_stop_device(ptr noundef %mvm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !473

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1345, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %timestamp.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 13
  %delay.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 13, i32 1
  %1 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %delay.i, align 4
  %call.i35 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timestamp.i) #16
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status) #16
  tail call void @iwl_fw_dbg_stop_sync(ptr noundef %fwrt) #16
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.190, i32 noundef 1091) #16
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %stop_device.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %stop_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_device.i, align 4
  tail call void %7(ptr noundef %3) #16
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state.i, align 8
  tail call void @iwl_free_fw_paging(ptr noundef %fwrt) #16
  %conf.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %9 = ptrtoint ptr %conf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %conf.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_dbg_stop_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_free_fw_paging(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_async_handlers_purge(ptr noundef %mvm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %async_handlers_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %async_handlers_lock) #16
  %async_handlers_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 7
  %0 = ptrtoint ptr %async_handlers_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_handlers_list, align 4
  %cmp.not24 = icmp eq ptr %1, %async_handlers_list
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.025 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %entry1.025 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %entry1.025, align 4
  %rxb = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %entry1.025, i32 0, i32 1
  %3 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxb, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %entry1.025, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_rx_page_order.i, align 4
  tail call void @__free_pages(ptr noundef %4, i32 noundef %6) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.025) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.025, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %entry1.025 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.025, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %entry1.025 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.025, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.025, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.025) #16
  %cmp.not = icmp eq ptr %tmp.0, %async_handlers_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_handlers_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_mq(ptr noundef %op_mode, ptr noundef %napi, ptr noundef %rxb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #16
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1
  %group_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %group_id, align 1
  %conv = zext i8 %7 to i16
  %shl = shl nuw i16 %conv, 8
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdr, align 1
  %conv3 = zext i8 %9 to i16
  %or = or i16 %shl, %conv3
  %10 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or, label %if.else33 [
    i16 193, label %if.then
    i16 1535, label %if.then17
    i16 195, label %if.then22
    i16 194, label %if.then27
    i16 1525, label %if.then32
  ], !prof !474

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_mpdu_mq(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef 0) #16
  br label %if.end37

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_queue_notif(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef 0) #16
  br label %if.end37

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_frame_release(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef 0) #16
  br label %if.end37

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_bar_frame_release(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef 0) #16
  br label %if.end37

if.then32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_monitor_no_data(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef 0) #16
  br label %if.end37

if.else33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @iwl_mvm_rx_common(ptr noundef %op_mode_specific, ptr noundef %rxb, ptr noundef %5)
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.then32, %if.then27, %if.then22, %if.then17, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_mpdu_mq(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_queue_notif(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_frame_release(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_bar_frame_release(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_monitor_no_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_rx_common(ptr noundef %mvm, ptr noundef %rxb, ptr noundef %pkt) unnamed_addr #2 align 64 {
entry:
  %tp_data = alloca %union.iwl_dbg_tlv_tp_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pkt, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  %sub.i = add nsw i32 %3, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp_data) #16
  %4 = ptrtoint ptr %tp_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pkt, ptr %tp_data, align 4
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 8, ptr noundef nonnull %tp_data, i1 noundef zeroext false) #16
  %5 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 10
  %7 = ptrtoint ptr %internal_ini_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %internal_ini_cfg.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i.i, label %iwl_trans_dbg_ini_valid.exit.i.i, label %entry.iwl_mvm_rx_check_trigger.exit_crit_edge

entry.iwl_mvm_rx_check_trigger.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_rx_check_trigger.exit

iwl_trans_dbg_ini_valid.exit.i.i:                 ; preds = %entry
  %external_ini_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 11
  %9 = ptrtoint ptr %external_ini_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %external_ini_cfg.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp2.i.not.i.i, label %if.end.i.i, label %iwl_trans_dbg_ini_valid.exit.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge

iwl_trans_dbg_ini_valid.exit.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_rx_check_trigger.exit

if.end.i.i:                                       ; preds = %iwl_trans_dbg_ini_valid.exit.i.i
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %11 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %12, i32 0, i32 20, i32 3, i32 5
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge, label %if.end4.i.i

if.end.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_rx_check_trigger.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %14, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16) #16
  %trig_dis_ms.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %14, i32 0, i32 7
  %18 = ptrtoint ptr %trig_dis_ms.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %trig_dis_ms.i.i.i, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19) #16
  %conv.i.i.i = zext i16 %20 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, 1000
  %call3.i.i.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i.i) #16
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %17
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i.i, label %if.end4.i.i.if.end7.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end4.i.i.if.end7.i.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = add i32 %22, %call3.i.i.i.i.i
  %sub.i.i.i.i = sub i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i, label %land.lhs.true.i.i.i.i.if.end7.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end7.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %25 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i.i, align 8
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %14, align 1
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %26, ptr noundef nonnull @.str.198, i32 noundef %28) #16
  br label %iwl_mvm_rx_check_trigger.exit

if.end7.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.i.if.end7.i.i.i_crit_edge, %if.end4.i.i.if.end7.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx.i.i.i.i, align 4
  %mode.i.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %14, i32 0, i32 4
  %31 = ptrtoint ptr %mode.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mode.i.i.i.i, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i1.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i1.i.i.i, label %if.end7.i.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge, label %land.rhs.i.i.i.i

if.end7.i.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_rx_check_trigger.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end7.i.i.i
  %conf.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %34 = ptrtoint ptr %conf.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %conf.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp.i2.i.i.i = icmp eq i8 %35, -1
  br i1 %cmp.i2.i.i.i, label %land.rhs.i.i.i.i.if.end.i_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.i

land.rhs.i.i.i.i.if.end.i_crit_edge:              ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

iwl_fw_dbg_trigger_check_stop.exit.i.i:           ; preds = %land.rhs.i.i.i.i
  %conv1.i.i.i.i = zext i8 %35 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv1.i.i.i.i
  %stop_conf_ids.i.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %14, i32 0, i32 2
  %36 = ptrtoint ptr %stop_conf_ids.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %stop_conf_ids.i.i.i.i, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37) #16
  %and6.i.i.i.i = and i32 %38, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.i.i.not.i.i = icmp eq i32 %and6.i.i.i.i, 0
  br i1 %tobool7.i.i.not.i.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end.i_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

iwl_fw_dbg_trigger_check_stop.exit.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_rx_check_trigger.exit

if.end.i:                                         ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.i.if.end.i_crit_edge, %land.rhs.i.i.i.i.if.end.i_crit_edge
  %data.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %14, i32 0, i32 10
  %hdr.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %group_id17.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.049.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.cmd], ptr %data.i, i32 0, i32 %i.049.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool4.not.i = icmp eq i8 %40, 0
  br i1 %tobool4.not.i, label %for.body.i.iwl_mvm_rx_check_trigger.exit_crit_edge, label %if.end6.i

for.body.i.iwl_mvm_rx_check_trigger.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_rx_check_trigger.exit

if.end6.i:                                        ; preds = %for.body.i
  %41 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hdr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp11.not.i = icmp eq i8 %40, %42
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %if.end6.i.for.inc.i_crit_edge

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %group_id.i = getelementptr [16 x %struct.cmd], ptr %data.i, i32 0, i32 %i.049.i, i32 1
  %43 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %group_id.i, align 1
  %45 = ptrtoint ptr %group_id17.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %group_id17.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp19.not.i = icmp eq i8 %44, %46
  br i1 %cmp19.not.i, label %if.end22.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end22.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv10.le.i = zext i8 %40 to i32
  %conv18.i = zext i8 %44 to i32
  %call30.i = call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %14, ptr noundef nonnull @.str.197, i32 noundef %conv18.i, i32 noundef %conv10.le.i) #16
  br label %iwl_mvm_rx_check_trigger.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %if.end6.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.iwl_mvm_rx_check_trigger.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.iwl_mvm_rx_check_trigger.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_rx_check_trigger.exit

iwl_mvm_rx_check_trigger.exit:                    ; preds = %for.inc.i.iwl_mvm_rx_check_trigger.exit_crit_edge, %if.end22.i, %for.body.i.iwl_mvm_rx_check_trigger.exit_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge, %if.end7.i.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge, %do.end.i.i.i, %if.end.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.i.iwl_mvm_rx_check_trigger.exit_crit_edge, %entry.iwl_mvm_rx_check_trigger.exit_crit_edge
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  %call.i = call zeroext i1 @iwl_notification_wait(ptr noundef %notif_wait, ptr noundef %pkt) #16
  br i1 %call.i, label %if.then.i, label %iwl_mvm_rx_check_trigger.exit.iwl_notification_wait_notify.exit_crit_edge

iwl_mvm_rx_check_trigger.exit.iwl_notification_wait_notify.exit_crit_edge: ; preds = %iwl_mvm_rx_check_trigger.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_notification_wait_notify.exit

if.then.i:                                        ; preds = %iwl_mvm_rx_check_trigger.exit
  call void @__sanitizer_cov_trace_pc() #18
  %notif_waitq.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23, i32 2
  call void @__wake_up(ptr noundef %notif_waitq.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  br label %iwl_notification_wait_notify.exit

iwl_notification_wait_notify.exit:                ; preds = %if.then.i, %iwl_mvm_rx_check_trigger.exit.iwl_notification_wait_notify.exit_crit_edge
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %group_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %group_id, align 1
  %conv2 = zext i8 %48 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %49 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hdr, align 1
  %conv4 = zext i8 %50 to i32
  %or = or i32 %shl, %conv4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %iwl_notification_wait_notify.exit
  %i.078 = phi i32 [ 0, %iwl_notification_wait_notify.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.iwl_rx_handlers], ptr @iwl_mvm_rx_handlers, i32 0, i32 %i.078
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp5.not = icmp eq i32 %or, %conv
  br i1 %cmp5.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %min_size = getelementptr [35 x %struct.iwl_rx_handlers], ptr @iwl_mvm_rx_handlers, i32 0, i32 %i.078, i32 1
  %53 = ptrtoint ptr %min_size to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %min_size, align 2
  %conv7 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv7)
  %cmp8 = icmp ult i32 %sub.i, %conv7
  br i1 %cmp8, label %if.end.cleanup34_crit_edge, label %if.end12, !prof !473

if.end.cleanup34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34

if.end12:                                         ; preds = %if.end
  %context = getelementptr [35 x %struct.iwl_rx_handlers], ptr @iwl_mvm_rx_handlers, i32 0, i32 %i.078, i32 2
  %55 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp13 = icmp eq i32 %56, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %fn = getelementptr [35 x %struct.iwl_rx_handlers], ptr @iwl_mvm_rx_handlers, i32 0, i32 %i.078, i32 3
  %57 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fn, align 4
  call void %58(ptr noundef %mvm, ptr noundef %rxb) #16
  br label %cleanup34

if.end16:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 2848, i32 noundef 36) #20
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup34_crit_edge, label %if.end20

if.end16.cleanup34_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34

if.end20:                                         ; preds = %if.end16
  %_page_stolen.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 2
  %60 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %_page_stolen.i, align 4
  %61 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rxb, align 4
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !475

if.then.i.i.i:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = add i32 %65, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %62 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %66, %if.end.i.i.i ]
  %67 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %68 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %69, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !473

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @dump_page(ptr noundef %67, ptr noundef nonnull @.str.200) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !476
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !477
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iwl_mvm_rx_common, %if.then.i.i.i.i.i69)) #16
          to label %rxb_steal_page.exit [label %if.then.i.i.i.i.i69], !srcloc !478

if.then.i.i.i.i.i69:                              ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__page_ref_mod(ptr noundef %67, i32 noundef 1) #16
  br label %rxb_steal_page.exit

rxb_steal_page.exit:                              ; preds = %if.then.i.i.i.i.i69, %do.end5.i.i.i
  %71 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rxb, align 4
  %rxb22 = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %call7.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %rxb22 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %rxb22, align 8
  %_offset = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %74 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %_offset, align 4
  %_offset24 = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %_offset24 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %_offset24, align 4
  %_rx_page_order = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 3
  %77 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %_rx_page_order, align 4
  %_rx_page_order26 = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %call7.i.i, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %_rx_page_order26 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %_rx_page_order26, align 4
  %fn27 = getelementptr [35 x %struct.iwl_rx_handlers], ptr @iwl_mvm_rx_handlers, i32 0, i32 %i.078, i32 3
  %80 = ptrtoint ptr %fn27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fn27, align 4
  %fn28 = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %call7.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %fn28 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %fn28, align 8
  %context30 = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %call7.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %context30 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %56, ptr %context30, align 4
  %async_handlers_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %async_handlers_lock) #16
  %async_handlers_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %85, ptr noundef %async_handlers_list) #16
  br i1 %call.i.i, label %if.end.i.i70, label %rxb_steal_page.exit.list_add_tail.exit_crit_edge

rxb_steal_page.exit.list_add_tail.exit_crit_edge: ; preds = %rxb_steal_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i70:                                     ; preds = %rxb_steal_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %async_handlers_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i.i, ptr %85, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i70, %rxb_steal_page.exit.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %async_handlers_lock) #16
  %async_handlers_wk = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %90 = load ptr, ptr @system_wq, align 4
  %call.i.i71 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %async_handlers_wk) #16
  br label %cleanup34

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.inc.cleanup34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34

cleanup34:                                        ; preds = %for.inc.cleanup34_crit_edge, %list_add_tail.exit, %if.end16.cleanup34_crit_edge, %if.then15, %if.end.cleanup34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp_data) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_set_hw_ctkill_state(ptr noundef %mvm, i1 noundef zeroext %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %0 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %iwl_mvm_is_radio_killed.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

iwl_mvm_is_radio_killed.exit.i:                   ; preds = %if.end
  %2 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.i.not.i, label %iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge, label %iwl_mvm_is_radio_killed.exit.i.if.then.i_crit_edge

iwl_mvm_is_radio_killed.exit.i.if.then.i_crit_edge: ; preds = %iwl_mvm_is_radio_killed.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge: ; preds = %iwl_mvm_is_radio_killed.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_set_rfkill_state.exit

if.then.i:                                        ; preds = %iwl_mvm_is_radio_killed.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %rx_sync_waitq.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 117
  tail call void @__wake_up(ptr noundef %rx_sync_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %iwl_mvm_set_rfkill_state.exit

iwl_mvm_set_rfkill_state.exit:                    ; preds = %if.then.i, %iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge
  %5 = phi i1 [ true, %if.then.i ], [ false, %iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge ]
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %9, i1 noundef zeroext %5, i32 noundef 1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_mvm_get_csme_conn_info(ptr noundef %mvm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b6 = load i1, ptr @iwl_mvm_get_csme_conn_info.__warned, align 1
  br i1 %.b6, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @iwl_mvm_get_csme_conn_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1703, ptr noundef nonnull @.str.2) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %csme_conn_info = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 33
  %0 = ptrtoint ptr %csme_conn_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csme_conn_info, align 8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_nic_restart(ptr noundef %mvm, i1 noundef zeroext %fw_error) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  tail call void @iwl_abort_notification_waits(ptr noundef %notif_wait) #16
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  tail call void @iwl_dbg_tlv_del_timers(ptr noundef %1) #16
  tail call void @iwl_mvm_report_scan_aborted(ptr noundef %mvm) #16
  %fw_restart = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 95
  %2 = ptrtoint ptr %fw_restart to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_restart, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = and i1 %tobool.not, %fw_error
  br i1 %4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %5 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 10
  %7 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %if.then
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 11
  %9 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i.not.i = icmp eq i32 %10, 0
  br i1 %cmp2.i.not.i, label %if.then.i, label %iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge

iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = tail call i32 @iwl_fw_dbg_collect_desc(ptr noundef %fwrt, ptr noundef nonnull @iwl_dump_desc_assert, i1 noundef zeroext false, i32 noundef 0) #16
  br label %if.end130

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %hw_error.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 15
  %11 = ptrtoint ptr %hw_error.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_error.i, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %hw_error.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %hw_error.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %tp_id.0.i = phi i32 [ 5, %if.then3.i ], [ 4, %if.end.i.if.end7.i_crit_edge ]
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef %tp_id.0.i, ptr noundef null, i1 noundef zeroext false) #16
  br label %if.end130

if.else:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %if.else6, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.3) #16
  br label %if.end130

if.else6:                                         ; preds = %if.else
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %if.else44, label %if.then10

if.then10:                                        ; preds = %if.else6
  %22 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.4) #16
  %call17 = tail call zeroext i1 @try_module_get(ptr noundef null) #16
  br i1 %call17, label %if.end, label %do.end22

do.end22:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.5) #16
  br label %if.end130

if.end:                                           ; preds = %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2848, i32 noundef 48) #20
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @module_put(ptr noundef null) #16
  br label %if.end130

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trans, align 4
  %dev31 = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev31, align 8
  %call32 = tail call ptr @get_device(ptr noundef %30) #16
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call32, ptr %call7.i.i, align 8
  %work = getelementptr inbounds %struct.iwl_mvm_reprobe, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #16
  %32 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.iwl_mvm_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @iwl_mvm_nic_restart.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry38 = getelementptr inbounds %struct.iwl_mvm_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry38, ptr %entry38, align 8
  %prev.i = getelementptr inbounds %struct.iwl_mvm_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry38, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_mvm_reprobe, ptr %call7.i.i, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @iwl_mvm_reprobe_wk, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work) #16
  br label %if.end130

if.else44:                                        ; preds = %if.else6
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %status, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool47.not = icmp eq i32 %39, 0
  br i1 %tobool47.not, label %if.else56, label %do.end52

do.end52:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.7) #16
  br label %if.end130

if.else56:                                        ; preds = %if.else44
  %fwrt57 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 10
  %42 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %land.lhs.true58, label %if.else56.if.end130_crit_edge

if.else56.if.end130_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

land.lhs.true58:                                  ; preds = %if.else56
  %hw_registered = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 16
  %44 = ptrtoint ptr %hw_registered to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hw_registered, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool59.not = icmp eq i8 %45, 0
  br i1 %tobool59.not, label %land.lhs.true58.if.end130_crit_edge, label %land.lhs.true60

land.lhs.true58.if.end130_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

land.lhs.true60:                                  ; preds = %land.lhs.true58
  %46 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trans, align 4
  %status62 = getelementptr inbounds %struct.iwl_trans, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %status62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %status62, align 4
  %50 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool64.not = icmp eq i32 %50, 0
  br i1 %tobool64.not, label %if.then65, label %land.lhs.true60.if.end130_crit_edge

land.lhs.true60.if.end130_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.then65:                                        ; preds = %land.lhs.true60
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #16
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 8
  %error_log_size = getelementptr inbounds %struct.iwl_fw, ptr %52, i32 0, i32 5, i32 5
  %53 = ptrtoint ptr %error_log_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %error_log_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool67.not = icmp eq i32 %54, 0
  br i1 %tobool67.not, label %if.then65.if.end91_crit_edge, label %if.then68

if.then65.if.end91_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then68:                                        ; preds = %if.then65
  %error_log_addr = getelementptr inbounds %struct.iwl_fw, ptr %52, i32 0, i32 5, i32 4
  %55 = ptrtoint ptr %error_log_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error_log_addr, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 2848) #21
  %tobool75.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool75.not, label %if.then68.if.end91_crit_edge, label %if.then76

if.then68.if.end91_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then76:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  %error_recovery_buf = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 97
  %57 = ptrtoint ptr %error_recovery_buf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i, ptr %error_recovery_buf, align 8
  %58 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trans, align 4
  %div175 = lshr i32 %54, 2
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %61, i32 0, i32 26
  %62 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_mem.i, align 4
  %call.i = tail call i32 %63(ptr noundef %59, i32 noundef %56, ptr noundef nonnull %call9.i.i, i32 noundef %div175) #16
  br label %if.end91

if.end91:                                         ; preds = %if.then76, %if.then68.if.end91_crit_edge, %if.then65.if.end91_crit_edge
  tail call fastcc void @iwl_fw_error_collect(ptr noundef %fwrt57, i1 noundef zeroext false)
  br i1 %fw_error, label %land.lhs.true94, label %if.end91.if.else100_crit_edge

if.end91.if.else100_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else100

land.lhs.true94:                                  ; preds = %if.end91
  %64 = ptrtoint ptr %fw_restart to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %fw_restart, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp96 = icmp sgt i8 %65, 0
  br i1 %cmp96, label %if.then98, label %land.lhs.true94.if.else100_crit_edge

land.lhs.true94.if.else100_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else100

if.then98:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add nsw i8 %65, -1
  %66 = ptrtoint ptr %fw_restart to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %dec, ptr %fw_restart, align 4
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %68) #16
  br label %if.end130

if.else100:                                       ; preds = %land.lhs.true94.if.else100_crit_edge, %if.end91.if.else100_crit_edge
  %69 = ptrtoint ptr %fwrt57 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fwrt57, align 8
  %restart_required = getelementptr inbounds %struct.iwl_trans, ptr %70, i32 0, i32 32, i32 24
  %71 = ptrtoint ptr %restart_required to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %restart_required, align 8, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool103.not = icmp eq i8 %72, 0
  br i1 %tobool103.not, label %if.else117, label %do.end108

do.end108:                                        ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %74, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_nic_restart, ptr noundef nonnull @.str.8) #16
  %75 = ptrtoint ptr %fwrt57 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fwrt57, align 8
  %restart_required115 = getelementptr inbounds %struct.iwl_trans, ptr %76, i32 0, i32 32, i32 24
  %77 = ptrtoint ptr %restart_required115 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %restart_required115, align 8
  %hw116 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %78 = ptrtoint ptr %hw116 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw116, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %79) #16
  br label %if.end130

if.else117:                                       ; preds = %if.else100
  %80 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %85)
  %cmp119 = icmp ult i32 %85, 17
  br i1 %cmp119, label %if.then121, label %if.else117.if.end130_crit_edge

if.else117.if.end130_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.then121:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #18
  %hw122 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %86 = ptrtoint ptr %hw122 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw122, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %87) #16
  br label %if.end130

if.end130:                                        ; preds = %if.then121, %if.else117.if.end130_crit_edge, %do.end108, %if.then98, %land.lhs.true60.if.end130_crit_edge, %land.lhs.true58.if.end130_crit_edge, %if.else56.if.end130_crit_edge, %do.end52, %if.end29, %if.then28, %do.end22, %do.end, %if.end7.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_abort_notification_waits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dbg_tlv_del_timers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_report_scan_aborted(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fw_error_collect(ptr noundef %fwrt, i1 noundef zeroext %sync) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 10
  %2 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %iwl_trans_dbg_ini_valid.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

iwl_trans_dbg_ini_valid.exit:                     ; preds = %entry
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 11
  %4 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i.not = icmp eq i32 %5, 0
  br i1 %cmp2.i.not, label %if.then, label %iwl_trans_dbg_ini_valid.exit.if.end_crit_edge

iwl_trans_dbg_ini_valid.exit.if.end_crit_edge:    ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %iwl_trans_dbg_ini_valid.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 @iwl_fw_dbg_collect_desc(ptr noundef %fwrt, ptr noundef nonnull @iwl_dump_desc_assert, i1 noundef zeroext false, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %iwl_trans_dbg_ini_valid.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %hw_error = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 15
  %6 = ptrtoint ptr %hw_error to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_error, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %hw_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hw_error, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %tp_id.0 = phi i32 [ 5, %if.then3 ], [ 4, %if.end.if.end7_crit_edge ]
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef %tp_id.0, ptr noundef null, i1 noundef zeroext %sync) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_reprobe_wk(ptr noundef %wk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @device_reprobe(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.201) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void @put_device(ptr noundef %5) #16
  tail call void @kfree(ptr noundef %add.ptr) #16
  tail call void @module_put(ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_rate_control_register() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_opmode_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iwl_op_mode_mvm_start(ptr noundef %trans, ptr noundef %cfg, ptr noundef %fw, ptr noundef %dbgfs_dir) #2 align 64 {
entry:
  %trans_cfg = alloca %struct.iwl_trans_config, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %trans_cfg) #16
  %0 = call ptr @memset(ptr %trans_cfg, i32 0, i32 40)
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 7092, ptr noundef nonnull @iwl_mvm_hw_ops, ptr noundef null) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_rx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 17
  %1 = ptrtoint ptr %max_rx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %max_rx_aggregation_subframes, align 4
  %max_tx_agg_size = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 26
  %2 = ptrtoint ptr %max_tx_agg_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_tx_agg_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %conv = zext i8 %3 to i16
  %spec.select = select i1 %tobool1.not, i16 256, i16 %conv
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.select, ptr %4, align 2
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %op_mode_specific, align 8
  %trans7 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 2
  %11 = ptrtoint ptr %trans7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %trans, ptr %trans7, align 4
  %cfg8 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 4
  %12 = ptrtoint ptr %cfg8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cfg, ptr %cfg8, align 4
  %fw9 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 3
  %13 = ptrtoint ptr %fw9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fw, ptr %fw9, align 8
  %hw10 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 6
  %14 = ptrtoint ptr %hw10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %hw10, align 4
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 629
  tail call void @iwl_fw_runtime_init(ptr noundef %fwrt, ptr noundef %trans, ptr noundef %fw, ptr noundef nonnull @iwl_mvm_fwrt_ops, ptr noundef %op_mode_specific, ptr noundef nonnull @iwl_mvm_sanitize_ops, ptr noundef %op_mode_specific, ptr noundef %dbgfs_dir) #16
  tail call void @iwl_mvm_get_acpi_tables(ptr noundef %op_mode_specific) #16
  %init_status = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 65
  %15 = ptrtoint ptr %init_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %init_status, align 8
  %16 = ptrtoint ptr %fw9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw9, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 8, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.i.not, label %if.else17, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @iwl_mvm_ops_mq, ptr %7, align 4
  %trans_cfg14 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %22 = ptrtoint ptr %trans_cfg14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trans_cfg14, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %25)
  %cmp = icmp ugt i32 %25, 18
  %conv16 = select i1 %cmp, i8 64, i8 48
  %rx_mpdu_cmd_hdr_size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 17
  %26 = ptrtoint ptr %rx_mpdu_cmd_hdr_size to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv16, ptr %rx_mpdu_cmd_hdr_size, align 1
  br label %if.end50

if.else17:                                        ; preds = %if.end
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @iwl_mvm_ops, ptr %7, align 4
  %rx_mpdu_cmd_hdr_size19 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 17
  %28 = ptrtoint ptr %rx_mpdu_cmd_hdr_size19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %rx_mpdu_cmd_hdr_size19, align 1
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %29 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp21 = icmp ugt i8 %30, 1
  br i1 %cmp21, label %do.end34, label %if.else17.if.end50_crit_edge, !prof !473

if.else17.if.end50_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

do.end34:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1115, i32 noundef 9, ptr noundef null) #16
  br label %out_free

if.end50:                                         ; preds = %if.else17.if.end50_crit_edge, %if.then13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3) to i32))
  %31 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3), align 4, !range !472
  %sext = sub nsw i8 0, %31
  %fw_restart = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1208
  %32 = ptrtoint ptr %fw_restart to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %sext, ptr %fw_restart, align 4
  %33 = ptrtoint ptr %trans7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trans7, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %38 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.i.not = icmp eq i16 %38, 0
  %.sink744 = select i1 %tobool.i.not, i16 1, i16 -1
  %.sink743 = select i1 %tobool.i.not, i16 2, i16 -1
  %.sink742 = select i1 %tobool.i.not, i16 9, i16 -1
  %39 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1618
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %.sink744, ptr %39, align 4
  %41 = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 142
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %.sink743, ptr %41, align 2
  %43 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1619
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %.sink742, ptr %43, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 144
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %.sink743, ptr %45, align 2
  %sf_state = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1116
  %47 = ptrtoint ptr %sf_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %sf_state, align 4
  %48 = ptrtoint ptr %trans7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trans7, align 4
  %trans_cfg.i700 = getelementptr inbounds %struct.iwl_trans, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %trans_cfg.i700 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trans_cfg.i700, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %53)
  %cmp.i701 = icmp ult i32 %53, 18
  %.sink745 = zext i1 %cmp.i701 to i32
  %54 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 769
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink745, ptr %54, align 8
  %drop_bcn_ap_mode = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1742
  %56 = ptrtoint ptr %drop_bcn_ap_mode to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %drop_bcn_ap_mode, align 4
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @iwl_op_mode_mvm_start.__key) #16
  %async_handlers_lock = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 32
  tail call void @__raw_spin_lock_init(ptr noundef %async_handlers_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.15, i16 noundef signext 3) #16
  %time_event_list = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1185
  %57 = ptrtoint ptr %time_event_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %time_event_list, ptr %time_event_list, align 4
  %prev.i = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1186
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %time_event_list, ptr %prev.i, align 4
  %aux_roc_te_list = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1375
  %59 = ptrtoint ptr %aux_roc_te_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %aux_roc_te_list, ptr %aux_roc_te_list, align 4
  %prev.i703 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1376
  %60 = ptrtoint ptr %prev.i703 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %aux_roc_te_list, ptr %prev.i703, align 4
  %async_handlers_list = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 30
  %61 = ptrtoint ptr %async_handlers_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %async_handlers_list, ptr %async_handlers_list, align 4
  %prev.i704 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 31
  %62 = ptrtoint ptr %prev.i704 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %async_handlers_list, ptr %prev.i704, align 4
  %time_event_lock = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1187
  tail call void @__raw_spin_lock_init(ptr noundef %time_event_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.17, i16 noundef signext 3) #16
  %loc_list = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1695
  %63 = ptrtoint ptr %loc_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %loc_list, ptr %loc_list, align 4
  %prev.i705 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1696
  %64 = ptrtoint ptr %prev.i705 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %loc_list, ptr %prev.i705, align 4
  %pasn_list = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1704
  %65 = ptrtoint ptr %pasn_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %pasn_list, ptr %pasn_list, align 4
  %prev.i706 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1705
  %66 = ptrtoint ptr %prev.i706 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %pasn_list, ptr %prev.i706, align 4
  %resp_pasn_list = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1706
  %67 = ptrtoint ptr %resp_pasn_list to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %resp_pasn_list, ptr %resp_pasn_list, align 4
  %prev.i707 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1707
  %68 = ptrtoint ptr %prev.i707 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %resp_pasn_list, ptr %prev.i707, align 4
  %async_handlers_wk = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 43
  tail call void @__init_work(ptr noundef %async_handlers_wk, i32 noundef 0) #16
  %69 = ptrtoint ptr %async_handlers_wk to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -64, ptr %async_handlers_wk, align 8
  %lockdep_map = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 47
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry85 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 44
  %70 = ptrtoint ptr %entry85 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %entry85, ptr %entry85, align 4
  %prev.i708 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 45
  %71 = ptrtoint ptr %prev.i708 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %entry85, ptr %prev.i708, align 4
  %func = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 46
  %72 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @iwl_mvm_async_handlers_wk, ptr %func, align 4
  %roc_done_wk = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 54
  tail call void @__init_work(ptr noundef %roc_done_wk, i32 noundef 0) #16
  %73 = ptrtoint ptr %roc_done_wk to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -64, ptr %roc_done_wk, align 4
  %lockdep_map95 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 58
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map95, ptr noundef nonnull @.str.22, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry97 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 55
  %74 = ptrtoint ptr %entry97 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %entry97, ptr %entry97, align 4
  %prev.i709 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 56
  %75 = ptrtoint ptr %prev.i709 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %entry97, ptr %prev.i709, align 4
  %func99 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 57
  %76 = ptrtoint ptr %func99 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @iwl_mvm_roc_done_wk, ptr %func99, align 4
  %sap_connected_wk = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 591
  tail call void @__init_work(ptr noundef %sap_connected_wk, i32 noundef 0) #16
  %77 = ptrtoint ptr %sap_connected_wk to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -64, ptr %sap_connected_wk, align 8
  %lockdep_map108 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 595
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map108, ptr noundef nonnull @.str.24, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry110 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 592
  %78 = ptrtoint ptr %entry110 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %entry110, ptr %entry110, align 4
  %prev.i710 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 593
  %79 = ptrtoint ptr %prev.i710 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %entry110, ptr %prev.i710, align 4
  %func112 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 594
  %80 = ptrtoint ptr %func112 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @iwl_mvm_sap_connected_wk, ptr %func112, align 4
  %tdls_cs = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1629
  tail call void @__init_work(ptr noundef %tdls_cs, i32 noundef 0) #16
  %81 = ptrtoint ptr %tdls_cs to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -64, ptr %tdls_cs, align 8
  %lockdep_map126 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1633
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map126, ptr noundef nonnull @.str.26, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry130 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1630
  %82 = ptrtoint ptr %entry130 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %entry130, ptr %entry130, align 4
  %prev.i711 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1631
  %83 = ptrtoint ptr %prev.i711 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %entry130, ptr %prev.i711, align 4
  %func134 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1632
  %84 = ptrtoint ptr %func134 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @iwl_mvm_tdls_ch_switch_work, ptr %func134, align 4
  %timer = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1640
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.27) #16
  %scan_timeout_dwork = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1074
  tail call void @__init_work(ptr noundef %scan_timeout_dwork, i32 noundef 0) #16
  %85 = ptrtoint ptr %scan_timeout_dwork to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -64, ptr %scan_timeout_dwork, align 4
  %lockdep_map154 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1078
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map154, ptr noundef nonnull @.str.30, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry157 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1075
  %86 = ptrtoint ptr %entry157 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %entry157, ptr %entry157, align 4
  %prev.i712 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1076
  %87 = ptrtoint ptr %prev.i712 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %entry157, ptr %prev.i712, align 4
  %func160 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1077
  %88 = ptrtoint ptr %func160 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @iwl_mvm_scan_timeout_wk, ptr %func160, align 4
  %timer165 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1085
  tail call void @init_timer_key(ptr noundef %timer165, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.32, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.31) #16
  %add_stream_wk = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 575
  tail call void @__init_work(ptr noundef %add_stream_wk, i32 noundef 0) #16
  %89 = ptrtoint ptr %add_stream_wk to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -64, ptr %add_stream_wk, align 8
  %lockdep_map176 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 579
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map176, ptr noundef nonnull @.str.34, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry178 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 576
  %90 = ptrtoint ptr %entry178 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %entry178, ptr %entry178, align 4
  %prev.i713 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 577
  %91 = ptrtoint ptr %prev.i713 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %entry178, ptr %prev.i713, align 4
  %func180 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 578
  %92 = ptrtoint ptr %func180 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @iwl_mvm_add_new_dqa_stream_wk, ptr %func180, align 4
  %add_stream_txqs = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 189
  %93 = ptrtoint ptr %add_stream_txqs to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %add_stream_txqs, ptr %add_stream_txqs, align 4
  %prev.i714 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 190
  %94 = ptrtoint ptr %prev.i714 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add_stream_txqs, ptr %prev.i714, align 4
  %rx_sync_waitq = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1344
  tail call void @__init_waitqueue_head(ptr noundef %rx_sync_waitq, ptr noundef nonnull @.str.36, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.35) #16
  %queue_sync_state = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 68
  %95 = ptrtoint ptr %queue_sync_state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %queue_sync_state, align 4
  %96 = ptrtoint ptr %hw10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw10, align 4
  %98 = ptrtoint ptr %trans7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %trans7, align 4
  %dev188 = getelementptr inbounds %struct.iwl_trans, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev188, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %97, i32 0, i32 1
  %102 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %103, i32 0, i32 56, i32 1
  %104 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %parent.i.i, align 8
  %tcm = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1439
  %lock = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1464
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.37, i16 noundef signext 3) #16
  tail call void @__init_work(ptr noundef %tcm, i32 noundef 0) #16
  %105 = ptrtoint ptr %tcm to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -64, ptr %tcm, align 8
  %lockdep_map207 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1443
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map207, ptr noundef nonnull @.str.40, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry211 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1440
  %106 = ptrtoint ptr %entry211 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %entry211, ptr %entry211, align 4
  %prev.i715 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1441
  %107 = ptrtoint ptr %prev.i715 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %entry211, ptr %prev.i715, align 4
  %func215 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1442
  %108 = ptrtoint ptr %func215 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @iwl_mvm_tcm_work, ptr %func215, align 4
  %timer221 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1450
  tail call void @init_timer_key(ptr noundef %timer221, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.41) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %ts = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1475
  %110 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %ts, align 8
  %111 = load volatile i32, ptr @jiffies, align 128
  %ll_ts = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1476
  %112 = ptrtoint ptr %ll_ts to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %ll_ts, align 4
  %113 = load volatile i32, ptr @jiffies, align 128
  %uapsd_nonagg_ts = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1477
  %114 = ptrtoint ptr %uapsd_nonagg_ts to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %uapsd_nonagg_ts, align 8
  %cs_tx_unblock_dwork = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1743
  tail call void @__init_work(ptr noundef %cs_tx_unblock_dwork, i32 noundef 0) #16
  %115 = ptrtoint ptr %cs_tx_unblock_dwork to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -64, ptr %cs_tx_unblock_dwork, align 8
  %lockdep_map239 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1747
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map239, ptr noundef nonnull @.str.44, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.43, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry242 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1744
  %116 = ptrtoint ptr %entry242 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %entry242, ptr %entry242, align 4
  %prev.i716 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1745
  %117 = ptrtoint ptr %prev.i716 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %entry242, ptr %prev.i716, align 4
  %func245 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1746
  %118 = ptrtoint ptr %func245 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @iwl_mvm_tx_unblock_dwork, ptr %func245, align 4
  %timer250 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1754
  tail call void @init_timer_key(ptr noundef %timer250, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.46, ptr noundef nonnull @iwl_op_mode_mvm_start.__key.45) #16
  %119 = ptrtoint ptr %fw9 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fw9, align 8
  %call256 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %120, i8 noundef zeroext 0, i8 noundef zeroext -19, i8 noundef zeroext 0) #16
  %cmd_ver = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1708
  %121 = ptrtoint ptr %cmd_ver to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %call256, ptr %cmd_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call256)
  %cmp260 = icmp ugt i8 %call256, 1
  br i1 %cmp260, label %land.rhs, label %if.end314.critedge

land.rhs:                                         ; preds = %if.end50
  %.b694 = load i1, ptr @iwl_op_mode_mvm_start.__already_done, align 1
  br i1 %.b694, label %land.rhs.out_free_crit_edge, label %if.then277, !prof !475

land.rhs.out_free_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.then277:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @iwl_op_mode_mvm_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1185, i32 noundef 9, ptr noundef null) #16
  br label %out_free

if.end314.critedge:                               ; preds = %if.end50
  %122 = ptrtoint ptr %fw9 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fw9, align 8
  %call316 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %123, i8 noundef zeroext 8, i8 noundef zeroext -1, i8 noundef zeroext 5) #16
  %range_resp = getelementptr inbounds %struct.anon.156, ptr %cmd_ver, i32 0, i32 1
  %124 = ptrtoint ptr %range_resp to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %call316, ptr %range_resp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call316)
  %cmp322 = icmp ugt i8 %call316, 9
  br i1 %cmp322, label %land.rhs331, label %if.end379.critedge

land.rhs331:                                      ; preds = %if.end314.critedge
  %.b692693 = load i1, ptr @iwl_op_mode_mvm_start.__already_done.47, align 1
  br i1 %.b692693, label %land.rhs331.out_free_crit_edge, label %if.then342, !prof !475

land.rhs331.out_free_crit_edge:                   ; preds = %land.rhs331
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.then342:                                       ; preds = %land.rhs331
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @iwl_op_mode_mvm_start.__already_done.47, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1192, i32 noundef 9, ptr noundef null) #16
  br label %out_free

if.end379.critedge:                               ; preds = %if.end314.critedge
  %125 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %7, ptr %trans_cfg, align 4
  %no_reclaim_cmds = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 4
  %126 = ptrtoint ptr %no_reclaim_cmds to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @iwl_op_mode_mvm_start.no_reclaim_cmds, ptr %no_reclaim_cmds, align 4
  %n_no_reclaim_cmds = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 5
  %127 = ptrtoint ptr %n_no_reclaim_cmds to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %n_no_reclaim_cmds, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2) to i32))
  %128 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %128)
  %129 = icmp ult i32 %128, 4
  br i1 %129, label %switch.lookup, label %do.end389

do.end389:                                        ; preds = %if.end379.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %call391 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str, i32 noundef %128) #19
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end379.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.iwl_op_mode_mvm_start, i32 0, i32 %128
  %130 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %130)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end389
  %.sink = phi i32 [ 1, %do.end389 ], [ %switch.load, %switch.lookup ]
  %rx_buf_size392 = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 6
  %131 = ptrtoint ptr %rx_buf_size392 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %.sink, ptr %rx_buf_size392, align 4
  %wide_cmd_header = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 23
  %132 = ptrtoint ptr %wide_cmd_header to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %wide_cmd_header, align 8
  %133 = ptrtoint ptr %trans7 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %trans7, align 4
  %trans_cfg394 = getelementptr inbounds %struct.iwl_trans, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %trans_cfg394 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %trans_cfg394, align 4
  %device_family395 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %device_family395 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %device_family395, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %138)
  %cmp396 = icmp ult i32 %138, 19
  %bc_table_dword = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 7
  %frombool398 = zext i1 %cmp396 to i8
  %139 = ptrtoint ptr %bc_table_dword to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %frombool398, ptr %bc_table_dword, align 4
  %command_groups = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 9
  %140 = ptrtoint ptr %command_groups to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @iwl_mvm_groups, ptr %command_groups, align 4
  %command_groups_size = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 10
  %141 = ptrtoint ptr %command_groups_size to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 13, ptr %command_groups_size, align 4
  %cmd_queue = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 1
  %142 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %cmd_queue, align 4
  %cmd_fifo = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 2
  %143 = ptrtoint ptr %cmd_fifo to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 7, ptr %cmd_fifo, align 1
  %scd_set_active = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 8
  %144 = ptrtoint ptr %scd_set_active to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %scd_set_active, align 1
  %cb_data_offs = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 11
  %145 = ptrtoint ptr %cb_data_offs to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 16, ptr %cb_data_offs, align 4
  %call399 = tail call i32 @iwl_mvm_get_wd_timeout(ptr noundef %op_mode_specific, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #16
  %cmd_q_wdg_timeout = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 3
  %146 = ptrtoint ptr %cmd_q_wdg_timeout to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call399, ptr %cmd_q_wdg_timeout, align 4
  %147 = ptrtoint ptr %hw10 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw10, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wiphy, align 8
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %150, i32 0, i32 38
  %fw_version402 = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 1
  %call404 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.50, ptr noundef %fw_version402)
  %151 = ptrtoint ptr %fw9 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fw9, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %152, i32 0, i32 5, i32 8, i32 1
  %153 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %arrayidx.i.i, align 4
  %fw_reset_handshake = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 12
  %155 = lshr i32 %154, 25
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = ptrtoint ptr %fw_reset_handshake to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %fw_reset_handshake, align 1
  %159 = ptrtoint ptr %trans7 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %trans7, align 4
  %161 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %trans_cfg, align 4
  %op_mode1.i = getelementptr inbounds %struct.iwl_trans, ptr %160, i32 0, i32 2
  %163 = ptrtoint ptr %op_mode1.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %op_mode1.i, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %160, i32 0, i32 1
  %164 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ops.i, align 4
  %configure.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %165, i32 0, i32 29
  %166 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %configure.i, align 4
  call void %167(ptr noundef %160, ptr noundef nonnull %trans_cfg) #16
  %call.i718 = call i32 @iwl_cmd_groups_verify_sorted(ptr noundef nonnull %trans_cfg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i718)
  %tobool.not.i = icmp eq i32 %call.i718, 0
  br i1 %tobool.not.i, label %sw.epilog.iwl_trans_configure.exit_crit_edge, label %do.end.i, !prof !475

sw.epilog.iwl_trans_configure.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_trans_configure.exit

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.190, i32 noundef 1040, i32 noundef 9, ptr noundef null) #16
  br label %iwl_trans_configure.exit

iwl_trans_configure.exit:                         ; preds = %do.end.i, %sw.epilog.iwl_trans_configure.exit_crit_edge
  %rx_mpdu_cmd = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 16
  %168 = ptrtoint ptr %rx_mpdu_cmd to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -63, ptr %rx_mpdu_cmd, align 8
  %169 = ptrtoint ptr %fw9 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %fw9, align 8
  %dbg = getelementptr inbounds %struct.iwl_fw, ptr %170, i32 0, i32 20
  %171 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dbg, align 4
  %dbg410 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32
  %dest_tlv411 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 2
  %173 = ptrtoint ptr %dest_tlv411 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %dest_tlv411, align 4
  %174 = load ptr, ptr %fw9, align 8
  %n_dest_reg = getelementptr inbounds %struct.iwl_fw, ptr %174, i32 0, i32 20, i32 1
  %175 = ptrtoint ptr %n_dest_reg to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %n_dest_reg, align 4
  %177 = ptrtoint ptr %dbg410 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %dbg410, align 8
  %conf_tlv = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 3
  %178 = load ptr, ptr %fw9, align 8
  %conf_tlv420 = getelementptr inbounds %struct.iwl_fw, ptr %178, i32 0, i32 20, i32 2
  %179 = call ptr @memcpy(ptr %conf_tlv, ptr %conf_tlv420, i32 128)
  %180 = load ptr, ptr %fw9, align 8
  %trigger_tlv = getelementptr inbounds %struct.iwl_fw, ptr %180, i32 0, i32 20, i32 3
  %trigger_tlv426 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 4
  %181 = ptrtoint ptr %trigger_tlv426 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %trigger_tlv, ptr %trigger_tlv426, align 8
  %182 = load ptr, ptr %fw9, align 8
  %iml = getelementptr inbounds %struct.iwl_fw, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %iml to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %iml, align 4
  %iml428 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 27
  %185 = ptrtoint ptr %iml428 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %184, ptr %iml428, align 8
  %186 = load ptr, ptr %fw9, align 8
  %iml_len = getelementptr inbounds %struct.iwl_fw, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %iml_len to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %iml_len, align 4
  %iml_len430 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 26
  %189 = ptrtoint ptr %iml_len430 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %iml_len430, align 4
  %notif_wait = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 73
  call void @iwl_notification_wait_init(ptr noundef %notif_wait) #16
  %call431 = call ptr @iwl_phy_db_init(ptr noundef %trans) #16
  %phy_db = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 5
  %190 = ptrtoint ptr %phy_db to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call431, ptr %phy_db, align 8
  %tobool433.not = icmp eq ptr %call431, null
  %191 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %op_mode_specific, align 8
  br i1 %tobool433.not, label %do.end438, label %do.end446

do.end438:                                        ; preds = %iwl_trans_configure.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %192, i32 noundef 0, ptr noundef nonnull @.str.51) #16
  br label %out_free

do.end446:                                        ; preds = %iwl_trans_configure.exit
  %193 = ptrtoint ptr %trans7 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %trans7, align 4
  %name = getelementptr inbounds %struct.iwl_trans, ptr %194, i32 0, i32 35
  %195 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %name, align 4
  %hw_rev = getelementptr inbounds %struct.iwl_trans, ptr %194, i32 0, i32 10
  %197 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %hw_rev, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %192, ptr noundef nonnull @.str.52, ptr noundef %196, i32 noundef %198) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 9) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 9), align 4
  %tobool452.not = icmp eq ptr %199, null
  br i1 %tobool452.not, label %do.end458, label %if.then453

if.then453:                                       ; preds = %do.end446
  call void @__sanitizer_cov_trace_pc() #18
  %nvm_file_name = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 586
  %200 = ptrtoint ptr %nvm_file_name to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %199, ptr %nvm_file_name, align 4
  br label %if.end463

do.end458:                                        ; preds = %do.end446
  call void @__sanitizer_cov_trace_pc() #18
  %201 = ptrtoint ptr %trans7 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %trans7, align 4
  %dev460 = getelementptr inbounds %struct.iwl_trans, ptr %202, i32 0, i32 8
  %203 = ptrtoint ptr %dev460 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev460, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %204, i32 noundef 64, i1 noundef zeroext false, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.53) #16
  br label %if.end463

if.end463:                                        ; preds = %do.end458, %if.then453
  %call464 = call i32 @iwl_mvm_scan_size(ptr noundef %op_mode_specific) #16
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call464, i32 noundef 3264) #21
  %scan_cmd = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1069
  %205 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call9.i, ptr %scan_cmd, align 8
  %tobool467.not = icmp eq ptr %call9.i, null
  br i1 %tobool467.not, label %if.end463.out_free_crit_edge, label %if.end469

if.end463.out_free_crit_edge:                     ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end469:                                        ; preds = %if.end463
  %aux_sta = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1109
  %206 = ptrtoint ptr %aux_sta to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 255, ptr %aux_sta, align 8
  %snif_sta = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1112
  %207 = ptrtoint ptr %snif_sta to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 255, ptr %snif_sta, align 4
  %last_ebs_successful = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1115
  %208 = ptrtoint ptr %last_ebs_successful to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %last_ebs_successful, align 8
  %209 = ptrtoint ptr %cfg8 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cfg8, align 4
  %pwr_tx_backoffs.i = getelementptr inbounds %struct.iwl_cfg, ptr %210, i32 0, i32 5
  %211 = ptrtoint ptr %pwr_tx_backoffs.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pwr_tx_backoffs.i, align 8
  %tobool.not.i720 = icmp eq ptr %212, null
  br i1 %tobool.not.i720, label %if.end469.iwl_mvm_min_backoff.exit_crit_edge, label %if.end469.while.cond.i_crit_edge

if.end469.while.cond.i_crit_edge:                 ; preds = %if.end469
  br label %while.cond.i

if.end469.iwl_mvm_min_backoff.exit_crit_edge:     ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_min_backoff.exit

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end469.while.cond.i_crit_edge
  %backoff.0.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ], [ %212, %if.end469.while.cond.i_crit_edge ]
  %213 = ptrtoint ptr %backoff.0.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %backoff.0.i, align 4
  %tobool1.not.i = icmp eq i32 %214, 0
  %incdec.ptr.i = getelementptr %struct.iwl_pwr_tx_backoff, ptr %backoff.0.i, i32 1
  br i1 %tobool1.not.i, label %while.cond.i.iwl_mvm_min_backoff.exit_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

while.cond.i.iwl_mvm_min_backoff.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_min_backoff.exit

iwl_mvm_min_backoff.exit:                         ; preds = %while.cond.i.iwl_mvm_min_backoff.exit_crit_edge, %if.end469.iwl_mvm_min_backoff.exit_crit_edge
  call void @iwl_mvm_thermal_initialize(ptr noundef %op_mode_specific, i32 noundef 0) #16
  %215 = ptrtoint ptr %fw9 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %fw9, align 8
  %arrayidx.i.i.i722 = getelementptr %struct.iwl_fw, ptr %216, i32 0, i32 5, i32 7, i32 1
  %217 = ptrtoint ptr %arrayidx.i.i.i722 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %arrayidx.i.i.i722, align 4
  %219 = and i32 %218, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool.i.i723.not = icmp eq i32 %219, 0
  %220 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 99
  br i1 %tobool.i.i723.not, label %if.then473, label %if.else474

if.then473:                                       ; preds = %iwl_mvm_min_backoff.exit
  call void @__sanitizer_cov_trace_pc() #18
  %221 = call ptr @memset(ptr %220, i32 0, i32 296)
  br label %if.end475

if.else474:                                       ; preds = %iwl_mvm_min_backoff.exit
  call void @__sanitizer_cov_trace_pc() #18
  %222 = call ptr @memset(ptr %220, i32 0, i32 136)
  br label %if.end475

if.end475:                                        ; preds = %if.else474, %if.then473
  %debugfs_dir = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1117
  %223 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %dbgfs_dir, ptr %debugfs_dir, align 8
  %mei_registered = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 35
  %224 = ptrtoint ptr %mei_registered to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 1, ptr %mei_registered, align 1
  %call481 = call fastcc i32 @iwl_mvm_start_get_nvm(ptr noundef %op_mode_specific)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481)
  %tobool482.not = icmp eq i32 %call481, 0
  br i1 %tobool482.not, label %if.end491, label %if.then483

if.then483:                                       ; preds = %if.end475
  %225 = ptrtoint ptr %trans to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %trans, align 8, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool484.not = icmp eq i8 %226, 0
  br i1 %tobool484.not, label %if.then483.out_thermal_exit_crit_edge, label %land.lhs.true

if.then483.out_thermal_exit_crit_edge:            ; preds = %if.then483
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_thermal_exit

land.lhs.true:                                    ; preds = %if.then483
  %227 = ptrtoint ptr %mei_registered to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %mei_registered, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool487.not = icmp eq i8 %228, 0
  br i1 %tobool487.not, label %land.lhs.true.out_thermal_exit_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.out_thermal_exit_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_thermal_exit

if.end491:                                        ; preds = %if.end475
  %call492 = call fastcc i32 @iwl_mvm_start_post_nvm(ptr noundef %op_mode_specific)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call492)
  %tobool493.not = icmp eq i32 %call492, 0
  br i1 %tobool493.not, label %if.end491.cleanup_crit_edge, label %if.end491.out_thermal_exit_crit_edge

if.end491.out_thermal_exit_crit_edge:             ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_thermal_exit

if.end491.cleanup_crit_edge:                      ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out_thermal_exit:                                 ; preds = %if.end491.out_thermal_exit_crit_edge, %land.lhs.true.out_thermal_exit_crit_edge, %if.then483.out_thermal_exit_crit_edge
  call void @iwl_mvm_thermal_exit(ptr noundef %op_mode_specific) #16
  br label %out_free

out_free:                                         ; preds = %out_thermal_exit, %if.end463.out_free_crit_edge, %do.end438, %if.then342, %land.rhs331.out_free_crit_edge, %if.then277, %land.rhs.out_free_crit_edge, %do.end34
  %229 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fwrt, align 8
  call void @iwl_dbg_tlv_del_timers(ptr noundef %230) #16
  %wk.i = getelementptr %struct.iwl_op_mode, ptr %7, i32 814
  %call.i724 = call zeroext i1 @flush_delayed_work(ptr noundef %wk.i) #16
  %wk.1.i = getelementptr %struct.iwl_op_mode, ptr %7, i32 842
  %call.1.i = call zeroext i1 @flush_delayed_work(ptr noundef %wk.1.i) #16
  %wk.2.i = getelementptr %struct.iwl_op_mode, ptr %7, i32 870
  %call.2.i = call zeroext i1 @flush_delayed_work(ptr noundef %wk.2.i) #16
  %wk.3.i = getelementptr %struct.iwl_op_mode, ptr %7, i32 898
  %call.3.i = call zeroext i1 @flush_delayed_work(ptr noundef %wk.3.i) #16
  %wk.4.i = getelementptr %struct.iwl_op_mode, ptr %7, i32 926
  %call.4.i = call zeroext i1 @flush_delayed_work(ptr noundef %wk.4.i) #16
  %d3_debug_data.i = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 982
  %231 = ptrtoint ptr %d3_debug_data.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %d3_debug_data.i, align 4
  call void @kfree(ptr noundef %232) #16
  %233 = ptrtoint ptr %d3_debug_data.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %d3_debug_data.i, align 4
  %234 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %fwrt, align 8
  call void @iwl_dbg_tlv_del_timers(ptr noundef %235) #16
  %call.i726 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.i) #16
  %call.1.i728 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.1.i) #16
  %call.2.i730 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.2.i) #16
  %call.3.i732 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.3.i) #16
  %call.4.i734 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.4.i) #16
  %236 = load i8, ptr @iwlmvm_mod_params, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool502.not = icmp eq i8 %236, 0
  br i1 %tobool502.not, label %if.end504, label %out_free.cleanup_crit_edge

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end504:                                        ; preds = %out_free
  %phy_db505 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 5
  %237 = ptrtoint ptr %phy_db505 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %phy_db505, align 8
  call void @iwl_phy_db_free(ptr noundef %238) #16
  %scan_cmd506 = getelementptr inbounds %struct.iwl_op_mode, ptr %7, i32 1069
  %239 = ptrtoint ptr %scan_cmd506 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %scan_cmd506, align 8
  call void @kfree(ptr noundef %240) #16
  call void @__might_sleep(ptr noundef nonnull @.str.190, i32 noundef 1052) #16
  %ops.i735 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %241 = ptrtoint ptr %ops.i735 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ops.i735, align 4
  %op_mode_leave.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %op_mode_leave.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %op_mode_leave.i, align 4
  %tobool.not.i736 = icmp eq ptr %244, null
  br i1 %tobool.not.i736, label %if.end504.iwl_trans_op_mode_leave.exit_crit_edge, label %if.then.i737

if.end504.iwl_trans_op_mode_leave.exit_crit_edge: ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_trans_op_mode_leave.exit

if.then.i737:                                     ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #18
  call void %244(ptr noundef %trans) #16
  br label %iwl_trans_op_mode_leave.exit

iwl_trans_op_mode_leave.exit:                     ; preds = %if.then.i737, %if.end504.iwl_trans_op_mode_leave.exit_crit_edge
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %245 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr null, ptr %op_mode.i, align 8
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 6
  %246 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 0, ptr %state.i, align 8
  %247 = ptrtoint ptr %hw10 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hw10, align 4
  call void @ieee80211_free_hw(ptr noundef %248) #16
  br label %cleanup

cleanup:                                          ; preds = %iwl_trans_op_mode_leave.exit, %out_free.cleanup_crit_edge, %if.end491.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %iwl_trans_op_mode_leave.exit ], [ null, %entry.cleanup_crit_edge ], [ %7, %land.lhs.true.cleanup_crit_edge ], [ %7, %if.end491.cleanup_crit_edge ], [ %7, %out_free.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %trans_cfg) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_op_mode_mvm_stop(ptr noundef %op_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %mei_registered = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 35
  %0 = ptrtoint ptr %mei_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mei_registered, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_lock() #16
  tail call void @rtnl_unlock() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sap_connected_wk = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 591
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %sap_connected_wk) #16
  tail call void @iwl_mvm_leds_exit(ptr noundef %op_mode_specific) #16
  tail call void @iwl_mvm_thermal_exit(ptr noundef %op_mode_specific) #16
  %hw_registered = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 70
  %2 = ptrtoint ptr %hw_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_registered, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %5) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %scan_cmd = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1069
  %6 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_cmd, align 8
  tail call void @kfree(ptr noundef %7) #16
  %mcast_filter_cmd = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1070
  %8 = ptrtoint ptr %mcast_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mcast_filter_cmd, align 4
  tail call void @kfree(ptr noundef %9) #16
  %10 = ptrtoint ptr %mcast_filter_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mcast_filter_cmd, align 4
  %error_recovery_buf = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1209
  %11 = ptrtoint ptr %error_recovery_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %error_recovery_buf, align 8
  tail call void @kfree(ptr noundef %12) #16
  %13 = ptrtoint ptr %error_recovery_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %error_recovery_buf, align 8
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %14 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.190, i32 noundef 1052) #16
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %op_mode_leave.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %op_mode_leave.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_mode_leave.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end3.iwl_trans_op_mode_leave.exit_crit_edge, label %if.then.i

if.end3.iwl_trans_op_mode_leave.exit_crit_edge:   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_trans_op_mode_leave.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %19(ptr noundef %15) #16
  br label %iwl_trans_op_mode_leave.exit

iwl_trans_op_mode_leave.exit:                     ; preds = %if.then.i, %if.end3.iwl_trans_op_mode_leave.exit_crit_edge
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %op_mode.i, align 8
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 6
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state.i, align 8
  %phy_db = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 5
  %22 = ptrtoint ptr %phy_db to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_db, align 8
  tail call void @iwl_phy_db_free(ptr noundef %23) #16
  %24 = ptrtoint ptr %phy_db to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %phy_db, align 8
  %nvm_data = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 587
  %25 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nvm_data, align 8
  tail call void @kfree(ptr noundef %26) #16
  %mei_nvm_data = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 588
  %27 = ptrtoint ptr %mei_nvm_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mei_nvm_data, align 4
  tail call void @kfree(ptr noundef %28) #16
  %csme_conn_info = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 589
  %29 = ptrtoint ptr %csme_conn_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %csme_conn_info, align 8
  tail call void @kfree(ptr noundef %30) #16
  %temp_nvm_data = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 602
  %31 = ptrtoint ptr %temp_nvm_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %temp_nvm_data, align 4
  tail call void @kfree(ptr noundef %32) #16
  %data = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 604
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %34) #16
  %data.1 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 606
  %35 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.1, align 4
  tail call void @kfree(ptr noundef %36) #16
  %data.2 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 608
  %37 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.2, align 4
  tail call void @kfree(ptr noundef %38) #16
  %data.3 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 610
  %39 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.3, align 4
  tail call void @kfree(ptr noundef %40) #16
  %data.4 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 612
  %41 = ptrtoint ptr %data.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.4, align 4
  tail call void @kfree(ptr noundef %42) #16
  %data.5 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 614
  %43 = ptrtoint ptr %data.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.5, align 4
  tail call void @kfree(ptr noundef %44) #16
  %data.6 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 616
  %45 = ptrtoint ptr %data.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.6, align 4
  tail call void @kfree(ptr noundef %46) #16
  %data.7 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 618
  %47 = ptrtoint ptr %data.7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.7, align 4
  tail call void @kfree(ptr noundef %48) #16
  %data.8 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 620
  %49 = ptrtoint ptr %data.8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.8, align 4
  tail call void @kfree(ptr noundef %50) #16
  %data.9 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 622
  %51 = ptrtoint ptr %data.9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.9, align 4
  tail call void @kfree(ptr noundef %52) #16
  %data.10 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 624
  %53 = ptrtoint ptr %data.10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.10, align 4
  tail call void @kfree(ptr noundef %54) #16
  %data.11 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 626
  %55 = ptrtoint ptr %data.11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.11, align 4
  tail call void @kfree(ptr noundef %56) #16
  %data.12 = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 628
  %57 = ptrtoint ptr %data.12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.12, align 4
  tail call void @kfree(ptr noundef %58) #16
  %tcm = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1439
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tcm) #16
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 629
  %d3_debug_data.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 982
  %59 = ptrtoint ptr %d3_debug_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d3_debug_data.i, align 4
  tail call void @kfree(ptr noundef %60) #16
  %61 = ptrtoint ptr %d3_debug_data.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %d3_debug_data.i, align 4
  %62 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fwrt, align 8
  tail call void @iwl_dbg_tlv_del_timers(ptr noundef %63) #16
  %wk.i = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 814
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.i) #16
  %wk.1.i = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 842
  %call.1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.1.i) #16
  %wk.2.i = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 870
  %call.2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.2.i) #16
  %wk.3.i = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 898
  %call.3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.3.i) #16
  %wk.4.i = getelementptr %struct.iwl_op_mode, ptr %op_mode, i32 926
  %call.4.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.4.i) #16
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 7
  tail call void @mutex_destroy(ptr noundef %mutex) #16
  %hw13 = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  %64 = ptrtoint ptr %hw13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw13, align 4
  tail call void @ieee80211_free_hw(ptr noundef %65) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_rx(ptr noundef %op_mode, ptr noundef %napi, ptr noundef %rxb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #16
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1
  %group_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %group_id, align 1
  %conv = zext i8 %7 to i16
  %shl = shl nuw i16 %conv, 8
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdr, align 1
  %conv3 = zext i8 %9 to i16
  %or = or i16 %shl, %conv3
  %10 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.205)
  switch i16 %or, label %if.else12 [
    i16 193, label %if.then
    i16 192, label %if.then11
  ], !prof !479

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_rx_mpdu(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb) #16
  br label %if.end13

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_rx_phy_cmd(ptr noundef %op_mode_specific, ptr noundef %rxb) #16
  br label %if.end13

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @iwl_mvm_rx_common(ptr noundef %op_mode_specific, ptr noundef %rxb, ptr noundef %5)
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_async_cb(ptr nocapture noundef readonly %op_mode, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 2
  br i1 %cmp.not.i, label %if.end45.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @iwl_trans_block_txq_ptrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.do.end41.i_crit_edge, label %if.then.i, !prof !475

land.rhs.i.do.end41.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end41.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @iwl_trans_block_txq_ptrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.190, i32 noundef 1295, i32 noundef 9, ptr noundef null) #16
  br label %do.end41.i

do.end41.i:                                       ; preds = %if.then.i, %land.rhs.i.do.end41.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @.str.194, ptr noundef nonnull @__func__.iwl_trans_block_txq_ptrs, i32 noundef %7) #16
  br label %iwl_trans_block_txq_ptrs.exit

if.end45.i:                                       ; preds = %entry
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %block_txq_ptrs.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %block_txq_ptrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block_txq_ptrs.i, align 4
  %tobool46.not.i = icmp eq ptr %11, null
  br i1 %tobool46.not.i, label %if.end45.i.iwl_trans_block_txq_ptrs.exit_crit_edge, label %if.then47.i

if.end45.i.iwl_trans_block_txq_ptrs.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_trans_block_txq_ptrs.exit

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %11(ptr noundef %1, i1 noundef zeroext false) #16
  br label %iwl_trans_block_txq_ptrs.exit

iwl_trans_block_txq_ptrs.exit:                    ; preds = %if.then47.i, %if.end45.i.iwl_trans_block_txq_ptrs.exit_crit_edge, %do.end41.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_stop_sw_queue(ptr noundef %op_mode, i32 noundef %hw_queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iwl_mvm_queue_state_change(ptr noundef %op_mode, i32 noundef %hw_queue, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_wake_sw_queue(ptr noundef %op_mode, i32 noundef %hw_queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iwl_mvm_queue_state_change(ptr noundef %op_mode, i32 noundef %hw_queue, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_mvm_set_hw_rfkill_state(ptr noundef %op_mode, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %rfkill_safe_init_done1 = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 17
  %0 = ptrtoint ptr %rfkill_safe_init_done1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %rfkill_safe_init_done1, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %trans.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %2 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_family.i, align 4
  %status = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 66
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 66
  %8 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %iwl_mvm_is_radio_killed.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

iwl_mvm_is_radio_killed.exit.i:                   ; preds = %if.end
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.i.not.i, label %iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge, label %iwl_mvm_is_radio_killed.exit.i.if.then.i_crit_edge

iwl_mvm_is_radio_killed.exit.i.if.then.i_crit_edge: ; preds = %iwl_mvm_is_radio_killed.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge: ; preds = %iwl_mvm_is_radio_killed.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_set_rfkill_state.exit

if.then.i:                                        ; preds = %iwl_mvm_is_radio_killed.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %rx_sync_waitq.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1344
  tail call void @__wake_up(ptr noundef %rx_sync_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %iwl_mvm_set_rfkill_state.exit

iwl_mvm_set_rfkill_state.exit:                    ; preds = %if.then.i, %iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge
  %13 = phi i1 [ true, %if.then.i ], [ false, %iwl_mvm_is_radio_killed.exit.i.iwl_mvm_set_rfkill_state.exit_crit_edge ]
  %hw.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy.i, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %17, i1 noundef zeroext %13, i32 noundef 1) #16
  br i1 %tobool, label %if.then9, label %iwl_mvm_set_rfkill_state.exit.if.end10_crit_edge

iwl_mvm_set_rfkill_state.exit.if.end10_crit_edge: ; preds = %iwl_mvm_set_rfkill_state.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then9:                                         ; preds = %iwl_mvm_set_rfkill_state.exit
  call void @__sanitizer_cov_trace_pc() #18
  %notif_wait = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 73
  tail call void @iwl_abort_notification_waits(ptr noundef %notif_wait) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %iwl_mvm_set_rfkill_state.exit.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %7)
  %cmp.i = icmp ult i32 %7, 18
  %18 = and i1 %cmp.i, %state
  %spec.select25 = select i1 %18, i1 %tobool, i1 false
  ret i1 %spec.select25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_free_skb(ptr nocapture noundef readonly %op_mode, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %arrayidx = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_cmd_pool.i, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef %3) #16
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %7, ptr noundef %skb) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_nic_error(ptr noundef %op_mode, i1 noundef zeroext %sync) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %status1 = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 66
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %status1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %fwrt.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 629
  tail call void @iwl_fwrt_dump_error_logs(ptr noundef %fwrt.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %sync, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 629
  %5 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 10
  %7 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %if.then5.if.end.i_crit_edge

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %if.then5
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 11
  %9 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i.not.i = icmp eq i32 %10, 0
  br i1 %cmp2.i.not.i, label %if.then.i, label %iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge

iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = tail call i32 @iwl_fw_dbg_collect_desc(ptr noundef %fwrt, ptr noundef nonnull @iwl_dump_desc_assert, i1 noundef zeroext false, i32 noundef 0) #16
  br label %cleanup

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge, %if.then5.if.end.i_crit_edge
  %hw_error.i = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 32, i32 15
  %11 = ptrtoint ptr %hw_error.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_error.i, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %hw_error.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %hw_error.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %tp_id.0.i = phi i32 [ 5, %if.then3.i ], [ 4, %if.end.i.if.end7.i_crit_edge ]
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef %tp_id.0.i, ptr noundef null, i1 noundef zeroext true) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %status7 = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 66
  %14 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status7, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_nic_restart(ptr noundef %op_mode_specific, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end7.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_cmd_queue_full(ptr noundef %op_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1891, i32 noundef 9, ptr noundef null) #16
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  tail call void @iwl_mvm_nic_restart(ptr noundef %op_mode_specific, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_nic_config(ptr nocapture noundef readonly %op_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %fw.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 3
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i, align 8
  %phy_config5.i = getelementptr inbounds %struct.iwl_fw, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %phy_config5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_config5.i, align 4
  %conv = and i32 %3, 3
  %4 = lshr i32 %3, 2
  %conv3 = and i32 %4, 3
  %and.i = lshr i32 %3, 4
  %conv6 = and i32 %and.i, 3
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %hw_rev = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_rev, align 8
  %and7 = and i32 %8, 15
  %shl = shl nuw nsw i32 %conv, 10
  %or = or i32 %and7, %shl
  %shl10 = shl nuw nsw i32 %conv3, 14
  %or11 = or i32 %or, %shl10
  %shl13 = shl nuw nsw i32 %conv6, 12
  %or14 = or i32 %or11, %shl13
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp ult i32 %12, 16
  %or40 = or i32 %or14, 512
  %reg_val.0 = select i1 %cmp, i32 %or40, i32 %or14
  %fw.i80 = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 630
  %13 = ptrtoint ptr %fw.i80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw.i80, align 4
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %14, i32 0, i32 5, i32 8, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %17 = and i32 %16, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %entry.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, label %land.lhs.true.i

entry.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_fw_dbg_is_d3_debug_enabled.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 629
  %18 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fwrt, align 8
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %d3_debug_data_length.i = getelementptr inbounds %struct.iwl_cfg, ptr %21, i32 0, i32 32
  %22 = ptrtoint ptr %d3_debug_data_length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d3_debug_data_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_fw_dbg_is_d3_debug_enabled.exit.thread

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %ops.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 632
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %land.lhs.true1.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, label %land.lhs.true3.i

land.lhs.true1.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_fw_dbg_is_d3_debug_enabled.exit.thread

land.lhs.true3.i:                                 ; preds = %land.lhs.true1.i
  %d3_debug_enable.i = getelementptr inbounds %struct.iwl_fw_runtime_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %d3_debug_enable.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d3_debug_enable.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  br i1 %tobool5.not.i, label %land.lhs.true3.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_fw_dbg_is_d3_debug_enabled.exit.thread

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %ops_ctx.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 633
  %28 = ptrtoint ptr %ops_ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops_ctx.i, align 8
  %call9.i = tail call zeroext i1 %27(ptr noundef %29) #16
  br i1 %call9.i, label %iwl_fw_dbg_is_d3_debug_enabled.exit, label %land.lhs.true6.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge

land.lhs.true6.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_fw_dbg_is_d3_debug_enabled.exit.thread

iwl_fw_dbg_is_d3_debug_enabled.exit:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %fw.i80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i80, align 4
  %dump_mask.i.i = getelementptr inbounds %struct.iwl_fw, ptr %31, i32 0, i32 20, i32 7
  %32 = ptrtoint ptr %dump_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dump_mask.i.i, align 4
  %and.i.i81 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.i18.i.not = icmp eq i32 %and.i.i81, 0
  %spec.select = select i1 %tobool.i18.i.not, i32 %reg_val.0, i32 %or40
  br label %iwl_fw_dbg_is_d3_debug_enabled.exit.thread

iwl_fw_dbg_is_d3_debug_enabled.exit.thread:       ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit, %land.lhs.true6.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, %land.lhs.true3.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, %land.lhs.true1.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, %land.lhs.true.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge, %entry.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge
  %34 = phi i32 [ %reg_val.0, %land.lhs.true6.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge ], [ %reg_val.0, %land.lhs.true3.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge ], [ %reg_val.0, %land.lhs.true1.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge ], [ %reg_val.0, %land.lhs.true.i.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge ], [ %reg_val.0, %entry.iwl_fw_dbg_is_d3_debug_enabled.exit.thread_crit_edge ], [ %spec.select, %iwl_fw_dbg_is_d3_debug_enabled.exit ]
  %35 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans, align 4
  %ops.i82 = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ops.i82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i82, align 4
  %set_bits_mask.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %38, i32 0, i32 34
  %39 = ptrtoint ptr %set_bits_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_bits_mask.i, align 4
  tail call void %40(ptr noundef %36, i32 noundef 0, i32 noundef 65295, i32 noundef %34) #16
  %41 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %op_mode_specific, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_nic_config, ptr noundef nonnull @.str.196, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6) #16
  %43 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trans, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg, align 8
  %apmg_not_supported = getelementptr inbounds %struct.iwl_cfg, ptr %46, i32 0, i32 21
  %47 = ptrtoint ptr %apmg_not_supported to i32
  call void @__asan_loadN_noabort(i32 %47, i32 3)
  %bf.load = load i24, ptr %apmg_not_supported, align 4
  %48 = and i24 %bf.load, 32
  %tobool57.not = icmp eq i24 %48, 0
  br i1 %tobool57.not, label %if.then58, label %iwl_fw_dbg_is_d3_debug_enabled.exit.thread.if.end60_crit_edge

iwl_fw_dbg_is_d3_debug_enabled.exit.thread.if.end60_crit_edge: ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then58:                                        ; preds = %iwl_fw_dbg_is_d3_debug_enabled.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_set_bits_mask_prph(ptr noundef %44, i32 noundef 12300, i32 noundef 4194304, i32 noundef -4194305) #16
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %iwl_fw_dbg_is_d3_debug_enabled.exit.thread.if.end60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_op_mode_mvm_time_point(ptr noundef %op_mode, i32 noundef %tp_id, ptr noundef %tp_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fwrt = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 629
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef %tp_id, ptr noundef %tp_data, i1 noundef zeroext false) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fw_runtime_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_get_acpi_tables(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_async_handlers_wk(ptr noundef %wk) #2 align 64 {
entry:
  %local_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_list) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %local_list, i32 0, i32 1
  %1 = ptrtoint ptr %local_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %local_list, ptr %local_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %local_list, ptr %0, align 4
  %async_handlers_lock = getelementptr i8, ptr %wk, i32 -44
  call void @_raw_spin_lock_bh(ptr noundef %async_handlers_lock) #16
  %async_handlers_list = getelementptr i8, ptr %wk, i32 -52
  %3 = ptrtoint ptr %async_handlers_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %async_handlers_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %async_handlers_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local_list, align 4
  %prev2.i.i = getelementptr i8, ptr %wk, i32 -48
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %local_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %local_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %async_handlers_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %async_handlers_list, ptr %async_handlers_list, align 4
  store ptr %async_handlers_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %async_handlers_lock) #16
  %13 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local_list, align 4
  %cmp.not41 = icmp eq ptr %14, %local_list
  br i1 %cmp.not41, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %mutex = getelementptr i8, ptr %wk, i32 -144
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.lr.ph
  %entry1.042 = phi ptr [ %14, %for.body.lr.ph ], [ %tmp2.044, %if.end20.for.body_crit_edge ]
  %15 = ptrtoint ptr %entry1.042 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp2.044 = load ptr, ptr %entry1.042, align 4
  %context = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %entry1.042, i32 0, i32 2
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp13 = icmp eq i32 %17, 1
  br i1 %cmp13, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %fn = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %entry1.042, i32 0, i32 3
  %18 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn, align 4
  %rxb = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %entry1.042, i32 0, i32 1
  call void %19(ptr noundef %add.ptr, ptr noundef %rxb) #16
  %20 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxb, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_async_handler_entry, ptr %entry1.042, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_rx_page_order.i, align 4
  call void @__free_pages(ptr noundef %21, i32 noundef %23) #16
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.042) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.042, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %entry1.042 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entry1.042, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %30 = ptrtoint ptr %entry1.042 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.042, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.042, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %32 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp17 = icmp eq i32 %33, 1
  br i1 %cmp17, label %if.then18, label %list_del.exit.if.end20_crit_edge

list_del.exit.if.end20_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then18:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_unlock(ptr noundef %mutex) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %list_del.exit.if.end20_crit_edge
  call void @kfree(ptr noundef %entry1.042) #16
  %cmp.not = icmp eq ptr %tmp2.044, %local_list
  br i1 %cmp.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_list) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_roc_done_wk(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_sap_connected_wk(ptr noundef %wk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -2360
  %call = tail call fastcc i32 @iwl_mvm_start_get_nvm(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @iwl_mvm_start_post_nvm(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.57) #16
  %fwrt = getelementptr i8, ptr %wk, i32 152
  %2 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwrt, align 8
  tail call void @iwl_dbg_tlv_del_timers(ptr noundef %3) #16
  %wk.i = getelementptr i8, ptr %wk, i32 892
  %call.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %wk.i) #16
  %wk.1.i = getelementptr i8, ptr %wk, i32 1004
  %call.1.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %wk.1.i) #16
  %wk.2.i = getelementptr i8, ptr %wk, i32 1116
  %call.2.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %wk.2.i) #16
  %wk.3.i = getelementptr i8, ptr %wk, i32 1228
  %call.3.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %wk.3.i) #16
  %wk.4.i = getelementptr i8, ptr %wk, i32 1340
  %call.4.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %wk.4.i) #16
  tail call void @iwl_mvm_thermal_exit(ptr noundef %add.ptr) #16
  %d3_debug_data.i = getelementptr i8, ptr %wk, i32 1564
  %4 = ptrtoint ptr %d3_debug_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d3_debug_data.i, align 4
  tail call void @kfree(ptr noundef %5) #16
  %6 = ptrtoint ptr %d3_debug_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %d3_debug_data.i, align 4
  %7 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fwrt, align 8
  tail call void @iwl_dbg_tlv_del_timers(ptr noundef %8) #16
  %call.i23 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.i) #16
  %call.1.i25 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.1.i) #16
  %call.2.i27 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.2.i) #16
  %call.3.i29 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.3.i) #16
  %call.4.i31 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wk.4.i) #16
  %phy_db = getelementptr i8, ptr %wk, i32 -2344
  %9 = ptrtoint ptr %phy_db to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_db, align 8
  tail call void @iwl_phy_db_free(ptr noundef %10) #16
  %scan_cmd = getelementptr i8, ptr %wk, i32 1912
  %11 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scan_cmd, align 8
  tail call void @kfree(ptr noundef %12) #16
  %trans = getelementptr i8, ptr %wk, i32 -2356
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.190, i32 noundef 1052) #16
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %op_mode_leave.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %op_mode_leave.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %op_mode_leave.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.iwl_trans_op_mode_leave.exit_crit_edge, label %if.then.i

do.end.iwl_trans_op_mode_leave.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_trans_op_mode_leave.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %18(ptr noundef %14) #16
  br label %iwl_trans_op_mode_leave.exit

iwl_trans_op_mode_leave.exit:                     ; preds = %if.then.i, %do.end.iwl_trans_op_mode_leave.exit_crit_edge
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %op_mode.i, align 8
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state.i, align 8
  %nvm_data = getelementptr i8, ptr %wk, i32 -16
  %21 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nvm_data, align 8
  tail call void @kfree(ptr noundef %22) #16
  %mei_nvm_data = getelementptr i8, ptr %wk, i32 -12
  %23 = ptrtoint ptr %mei_nvm_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mei_nvm_data, align 4
  tail call void @kfree(ptr noundef %24) #16
  %hw = getelementptr i8, ptr %wk, i32 -2340
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_hw(ptr noundef %26) #16
  br label %cleanup

cleanup:                                          ; preds = %iwl_trans_op_mode_leave.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_tdls_ch_switch_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_scan_timeout_wk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_add_new_dqa_stream_wk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_tcm_work(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_tx_unblock_dwork(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6968
  %mutex = getelementptr i8, ptr %work, i32 -6944
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %dep_map = getelementptr i8, ptr %work, i32 -6880
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @iwl_mvm_tx_unblock_dwork.__warned, align 1
  br i1 %.b31, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @iwl_mvm_tx_unblock_dwork.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 624, ptr noundef nonnull @.str.2) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %csa_tx_blocked_vif = getelementptr i8, ptr %work, i32 -476
  %0 = ptrtoint ptr %csa_tx_blocked_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csa_tx_blocked_vif, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.end.unlock_crit_edge, label %if.end9

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  tail call void @iwl_mvm_modify_all_sta_disable_tx(ptr noundef %add.ptr, ptr noundef %drv_priv.i, i1 noundef zeroext false) #16
  %2 = ptrtoint ptr %csa_tx_blocked_vif to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %csa_tx_blocked_vif, align 4
  br label %unlock

unlock:                                           ; preds = %if.end9, %do.end.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_get_wd_timeout(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_notification_wait_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_phy_db_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_scan_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_thermal_initialize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_start_get_nvm(ptr noundef %mvm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %trans1 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %0 = ptrtoint ptr %trans1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.get_nvm_from_fw_crit_edge, label %if.then

entry.get_nvm_from_fw_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_nvm_from_fw

if.then:                                          ; preds = %entry
  %mei_registered = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 35
  %4 = ptrtoint ptr %mei_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mei_registered, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %do.end, label %if.end26.critedge, !prof !473

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 689, i32 noundef 9, ptr noundef nonnull @.str.191) #16
  br label %get_nvm_from_fw

if.end26.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %mei_nvm_data = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 32
  %6 = ptrtoint ptr %mei_nvm_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mei_nvm_data, align 4
  %7 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.192) #16
  br label %get_nvm_from_fw

get_nvm_from_fw:                                  ; preds = %if.end26.critedge, %do.end, %entry.get_nvm_from_fw_crit_edge
  tail call void @rtnl_lock() #16
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #16
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %13 = ptrtoint ptr %trans1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.190, i32 noundef 1045) #16
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i = tail call i32 %18(ptr noundef %14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %if.end47, label %if.then43

if.then43:                                        ; preds = %get_nvm_from_fw
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %wiphy46 = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy46, align 8
  tail call void @mutex_unlock(ptr noundef %22) #16
  tail call void @rtnl_unlock() #16
  br label %cleanup

if.end47:                                         ; preds = %get_nvm_from_fw
  %call48 = tail call i32 @iwl_run_init_mvm_ucode(ptr noundef %mvm) #16
  %23 = zext i32 %call48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %call48, label %if.then50 [
    i32 0, label %land.lhs.true54
    i32 -132, label %if.end47.if.end60_crit_edge
  ]

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %call51 = tail call i32 @iwl_fw_dbg_error_collect(ptr noundef %fwrt, i32 noundef 16) #16
  br label %if.end60

land.lhs.true54:                                  ; preds = %if.end47
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %24 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nvm_data.i, align 8
  %lar_enabled.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %lar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lar_enabled.i, align 1, !range !472
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %29, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_capa.i.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.i = icmp ne i32 %32, 0
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %33 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i, align 4
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i = icmp eq i32 %36, 1
  br i1 %cmp.i, label %if.then.i, label %iwl_mvm_is_lar_supported.exit

if.then.i:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp ne i8 %27, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %tobool.i.i, i1 false
  br i1 %spec.select.i, label %if.then.i.if.then56_crit_edge, label %if.then.i.if.then63_crit_edge

if.then.i.if.then63_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63

if.then.i.if.then56_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

iwl_mvm_is_lar_supported.exit:                    ; preds = %land.lhs.true54
  br i1 %tobool.i.i, label %iwl_mvm_is_lar_supported.exit.if.then56_crit_edge, label %iwl_mvm_is_lar_supported.exit.if.then63_crit_edge

iwl_mvm_is_lar_supported.exit.if.then63_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63

iwl_mvm_is_lar_supported.exit.if.then56_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

if.then56:                                        ; preds = %iwl_mvm_is_lar_supported.exit.if.then56_crit_edge, %if.then.i.if.then56_crit_edge
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %wiphy58 = getelementptr inbounds %struct.ieee80211_hw, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wiphy58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiphy58, align 8
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %regulatory_flags, align 4
  %or = or i32 %42, 128
  store i32 %or, ptr %regulatory_flags, align 4
  %call59 = tail call i32 @iwl_mvm_init_mcc(ptr noundef %mvm) #16
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.then50, %if.end47.if.end60_crit_edge
  %ret.0 = phi i32 [ %call48, %if.then50 ], [ %call59, %if.then56 ], [ %call48, %if.end47.if.end60_crit_edge ]
  %43 = load i8, ptr @iwlmvm_mod_params, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool61.not = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool62.not = icmp eq i32 %ret.0, 0
  %or.cond111 = select i1 %tobool61.not, i1 true, i1 %tobool62.not
  br i1 %or.cond111, label %if.end60.if.then63_crit_edge, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64

if.end60.if.then63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63

if.then63:                                        ; preds = %if.end60.if.then63_crit_edge, %iwl_mvm_is_lar_supported.exit.if.then63_crit_edge, %if.then.i.if.then63_crit_edge
  %tobool62.not119 = phi i1 [ %tobool62.not, %if.end60.if.then63_crit_edge ], [ true, %iwl_mvm_is_lar_supported.exit.if.then63_crit_edge ], [ true, %if.then.i.if.then63_crit_edge ]
  %ret.0117 = phi i32 [ %ret.0, %if.end60.if.then63_crit_edge ], [ 0, %iwl_mvm_is_lar_supported.exit.if.then63_crit_edge ], [ 0, %if.then.i.if.then63_crit_edge ]
  tail call void @iwl_mvm_stop_device(ptr noundef %mvm)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %tobool62.not118 = phi i1 [ false, %if.end60.if.end64_crit_edge ], [ %tobool62.not119, %if.then63 ]
  %ret.0116 = phi i32 [ %ret.0, %if.end60.if.end64_crit_edge ], [ %ret.0117, %if.then63 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %wiphy67 = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy67, align 8
  tail call void @mutex_unlock(ptr noundef %47) #16
  tail call void @rtnl_unlock() #16
  br i1 %tobool62.not118, label %if.end64.cleanup_crit_edge, label %do.end73

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end73:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @.str.193, i32 noundef %ret.0116) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end64.cleanup_crit_edge, %if.then43
  %retval.0 = phi i32 [ %call.i, %if.then43 ], [ %ret.0116, %do.end73 ], [ %ret.0116, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_start_post_nvm(ptr noundef %mvm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_last_antenna_idx = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 66
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %0 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

entry.cond.false.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i.i, align 8
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i = and i8 %7, %3
  br label %iwl_mvm_toggle_tx_ant.exit

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %entry.cond.false.i.i_crit_edge
  %fw8.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %8 = ptrtoint ptr %fw8.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw8.i.i, align 8
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_toggle_tx_ant.exit

iwl_mvm_toggle_tx_ant.exit:                       ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %11, %cond.false.i.i ]
  %12 = ptrtoint ptr %mgmt_last_antenna_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mgmt_last_antenna_idx, align 1
  %call1.i = tail call zeroext i8 @iwl_mvm_next_antenna(ptr noundef %mvm, i8 noundef zeroext %cond.i.i, i8 noundef zeroext %13) #16
  %14 = ptrtoint ptr %mgmt_last_antenna_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call1.i, ptr %mgmt_last_antenna_idx, align 1
  %call = tail call i32 @iwl_mvm_mac_setup_register(ptr noundef %mvm) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %iwl_mvm_toggle_tx_ant.exit.cleanup_crit_edge

iwl_mvm_toggle_tx_ant.exit.cleanup_crit_edge:     ; preds = %iwl_mvm_toggle_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %iwl_mvm_toggle_tx_ant.exit
  %hw_registered = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 16
  %15 = ptrtoint ptr %hw_registered to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hw_registered, align 4
  tail call void @iwl_mvm_dbgfs_register(ptr noundef %mvm) #16
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy, align 8
  %mei_rfkill_blocked = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 34
  %20 = ptrtoint ptr %mei_rfkill_blocked to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mei_rfkill_blocked, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1 = icmp ne i8 %21, 0
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %19, i1 noundef zeroext %tobool1, i32 noundef 2) #16
  %22 = ptrtoint ptr %hw_registered to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hw_registered, align 4, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.cond.end.i_crit_edge, label %cond.true.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy.i, align 8
  %rfkill.i = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 82
  %28 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rfkill.i, align 8
  %call.i = tail call zeroext i1 @rfkill_soft_blocked(ptr noundef %29) #16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.cond.end.i_crit_edge
  %mei_registered.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 35
  %30 = ptrtoint ptr %mei_registered.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mei_registered.i, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool2.not.i = icmp eq i8 %31, 0
  br i1 %tobool2.not.i, label %cond.end.i.cleanup_crit_edge, label %if.then.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %cond.end.i
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %32 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i11 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i11, label %lor.rhs.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %status.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i.i, %if.then.i.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %iwl_mvm_toggle_tx_ant.exit.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_thermal_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_phy_db_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_fwrt_dump_start(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_fwrt_dump_end(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @iwl_mvm_fwrt_fw_running(ptr noundef %ctx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 12
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i = icmp ne i32 %2, 0
  ret i1 %tobool.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_fwrt_send_hcmd(ptr noundef %ctx, ptr noundef %host_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %call = tail call i32 @iwl_mvm_send_cmd(ptr noundef %ctx, ptr noundef %host_cmd) #16
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @iwl_mvm_d3_debug_enable(ptr nocapture noundef readnone %ctx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_frob_txf(ptr nocapture noundef readonly %ctx, ptr noundef %buf, i32 noundef %buflen) #2 align 64 {
entry:
  %txf = alloca %struct.iwl_mvm_frob_txf_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txf) #16
  %0 = getelementptr inbounds %struct.iwl_mvm_frob_txf_data, ptr %txf, i32 0, i32 1
  %1 = ptrtoint ptr %txf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %txf, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %buflen, ptr %0, align 4
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %8 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i.not = icmp eq i16 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !462) #16
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !480
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 5
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  call void @ieee80211_iter_keys_rcu(ptr noundef %14, ptr noundef null, ptr noundef nonnull @iwl_mvm_frob_txf_key_iter, ptr noundef nonnull %txf) #16
  %call.i5 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i5, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %rcu_read_lock.exit
  %call1.i6 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !481
  %15 = call i32 @llvm.read_register.i32(metadata !462) #16
  %and.i.i.i.i.i12 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txf) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_frob_hcmd(ptr nocapture noundef readnone %ctx, ptr nocapture noundef %hcmd, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ult i32 %len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %group_id = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %hcmd, i32 0, i32 1
  %0 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %group_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1.not = icmp eq i8 %1, 1
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %hcmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hcmd, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %3, label %if.end4.cleanup_crit_edge [
    i8 32, label %if.end4.if.end13_crit_edge
    i8 -29, label %if.end4.if.end13_crit_edge33
    i8 -28, label %if.end4.if.end13_crit_edge34
    i8 23, label %if.end4.if.end13_crit_edge35
    i8 31, label %sw.bb6
  ]

if.end4.if.end13_crit_edge35:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end4.if.end13_crit_edge34:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end4.if.end13_crit_edge33:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %sw.bb6, %if.end4.if.end13_crit_edge, %if.end4.if.end13_crit_edge33, %if.end4.if.end13_crit_edge34, %if.end4.if.end13_crit_edge35
  %frob_start.0.ph = phi i32 [ 4, %sw.bb6 ], [ 8, %if.end4.if.end13_crit_edge ], [ 8, %if.end4.if.end13_crit_edge33 ], [ 8, %if.end4.if.end13_crit_edge34 ], [ 8, %if.end4.if.end13_crit_edge35 ]
  %frob_end.0.ph = phi i32 [ 36, %sw.bb6 ], [ 2147483647, %if.end4.if.end13_crit_edge ], [ 2147483647, %if.end4.if.end13_crit_edge33 ], [ 2147483647, %if.end4.if.end13_crit_edge34 ], [ 2147483647, %if.end4.if.end13_crit_edge35 ]
  %5 = tail call i32 @llvm.umin.i32(i32 %frob_end.0.ph, i32 %len)
  %add.ptr = getelementptr i8, ptr %hcmd, i32 %frob_start.0.ph
  %sub = sub nsw i32 %5, %frob_start.0.ph
  %6 = call ptr @memset(ptr %add.ptr, i32 170, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_frob_mem(ptr nocapture noundef readonly %ctx, i32 noundef %mem_addr, ptr nocapture noundef writeonly %mem, i32 noundef %buflen) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 40, i32 10
  %0 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_fw_img, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %1, label %entry.cleanup27_crit_edge [
    i32 2, label %sw.bb2
    i32 0, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge59
  ]

entry.sw.bb1_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge59
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 2
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 8
  %dump_excl = getelementptr inbounds %struct.iwl_fw, ptr %4, i32 0, i32 23
  br label %do.end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fw3 = getelementptr inbounds %struct.iwl_mvm, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %fw3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw3, align 8
  %dump_excl_wowlan = getelementptr inbounds %struct.iwl_fw, ptr %6, i32 0, i32 24
  br label %do.end

do.end:                                           ; preds = %sw.bb2, %sw.bb1
  %excl.0 = phi ptr [ %dump_excl, %sw.bb1 ], [ %dump_excl_wowlan, %sw.bb2 ]
  %add13 = add i32 %buflen, %mem_addr
  %idx.neg = sub i32 0, %mem_addr
  %7 = ptrtoint ptr %excl.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %excl.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %size = getelementptr %struct.iwl_dump_exclude, ptr %excl.0, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mem_addr)
  %cmp11.not = icmp ugt i32 %add, %mem_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add13)
  %cmp14.not = icmp ult i32 %8, %add13
  %or.cond = and i1 %cmp11.not, %cmp14.not
  br i1 %or.cond, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = tail call i32 @llvm.umax.i32(i32 %8, i32 %mem_addr)
  %12 = tail call i32 @llvm.umin.i32(i32 %add, i32 %add13)
  %add.ptr = getelementptr i8, ptr %mem, i32 %11
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %sub = sub i32 %12, %11
  %13 = call ptr @memset(ptr %add.ptr25, i32 170, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.iwl_dump_exclude, ptr %excl.0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1 = icmp eq i32 %15, 0
  br i1 %tobool.not.1, label %cleanup.cleanup27_crit_edge, label %lor.lhs.false.1

cleanup.cleanup27_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

lor.lhs.false.1:                                  ; preds = %cleanup
  %size.1 = getelementptr %struct.iwl_dump_exclude, ptr %excl.0, i32 1, i32 1
  %16 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.1 = icmp eq i32 %17, 0
  br i1 %tobool6.not.1, label %lor.lhs.false.1.cleanup27_crit_edge, label %if.end.1

lor.lhs.false.1.cleanup27_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

if.end.1:                                         ; preds = %lor.lhs.false.1
  %add.1 = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %mem_addr)
  %cmp11.not.1 = icmp ugt i32 %add.1, %mem_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add13)
  %cmp14.not.1 = icmp ult i32 %15, %add13
  %or.cond.1 = and i1 %cmp11.not.1, %cmp14.not.1
  br i1 %or.cond.1, label %if.end16.1, label %if.end.1.cleanup27_crit_edge

if.end.1.cleanup27_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup27

if.end16.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #18
  %18 = tail call i32 @llvm.umax.i32(i32 %15, i32 %mem_addr)
  %19 = tail call i32 @llvm.umin.i32(i32 %add.1, i32 %add13)
  %add.ptr.1 = getelementptr i8, ptr %mem, i32 %18
  %add.ptr25.1 = getelementptr i8, ptr %add.ptr.1, i32 %idx.neg
  %sub.1 = sub i32 %19, %18
  %20 = call ptr @memset(ptr %add.ptr25.1, i32 170, i32 %sub.1)
  br label %cleanup27

cleanup27:                                        ; preds = %if.end16.1, %if.end.1.cleanup27_crit_edge, %lor.lhs.false.1.cleanup27_crit_edge, %cleanup.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iter_keys_rcu(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_frob_txf_key_iter(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %sta, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cipher, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1027076, label %sw.bb
    i32 1027073, label %entry.sw.bb3_crit_edge
    i32 1027077, label %entry.sw.bb3_crit_edge110
    i32 1027074, label %entry.sw.bb3_crit_edge111
  ]

entry.sw.bb3_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb3_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %key1 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen2 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %3 = ptrtoint ptr %keylen2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %keylen2, align 2
  %buflen4 = getelementptr inbounds %struct.iwl_mvm_frob_txf_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buflen4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp93.not = icmp eq i32 %6, 0
  br i1 %cmp93.not, label %sw.bb.cleanup_crit_edge, label %for.body.lr.ph

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.bb
  %conv11 = zext i8 %4 to i32
  %idx.neg = sub nsw i32 0, %conv11
  br label %for.body

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge110, %entry.sw.bb3_crit_edge111
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %buflen = getelementptr inbounds %struct.iwl_mvm_frob_txf_data, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buflen, align 4
  %11 = call ptr @memset(ptr %8, i32 187, i32 %10)
  br label %cleanup

for.cond21.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %match.1)
  %tobool.not97 = icmp ne i8 %match.1, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %match.1)
  %cmp2599 = icmp ne i8 %4, %match.1
  %or.cond100 = select i1 %tobool.not97, i1 %cmp2599, i1 false
  br i1 %or.cond100, label %for.body27.lr.ph, label %for.cond21.preheader.cleanup_crit_edge

for.cond21.preheader.cleanup_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body27.lr.ph:                                 ; preds = %for.cond21.preheader
  %conv2296 = zext i8 %match.1 to i32
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = xor i8 %match.1, -1
  %15 = add i8 %4, %14
  %16 = zext i8 %15 to i32
  br label %for.body27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc.for.body_crit_edge ]
  %match.094 = phi i8 [ 0, %for.body.lr.ph ], [ %match.1, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %i.095
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %match.094 to i32
  %arrayidx6 = getelementptr i8, ptr %key1, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp8.not = icmp eq i8 %20, %22
  br i1 %cmp8.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inc = add i8 %match.094, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc, i8 %4)
  %cmp12 = icmp eq i8 %inc, %4
  br i1 %cmp12, label %if.then14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr17 = getelementptr i8, ptr %arrayidx, i32 %idx.neg
  %23 = call ptr @memset(ptr %add.ptr17, i32 170, i32 %conv11)
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %match.1 = phi i8 [ 0, %if.then14 ], [ %inc, %if.end.for.inc_crit_edge ], [ 0, %for.body.for.inc_crit_edge ]
  %inc20 = add nuw i32 %i.095, 1
  %24 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buflen4, align 4
  %cmp = icmp ult i32 %inc20, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond21.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body27:                                       ; preds = %for.inc53.for.body27_crit_edge, %for.body27.lr.ph
  %conv22103 = phi i32 [ %conv2296, %for.body27.lr.ph ], [ %conv22, %for.inc53.for.body27_crit_edge ]
  %i.1102 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc54, %for.inc53.for.body27_crit_edge ]
  %match.2101 = phi i8 [ %match.1, %for.body27.lr.ph ], [ %inc38, %for.inc53.for.body27_crit_edge ]
  %arrayidx29 = getelementptr i8, ptr %13, i32 %i.1102
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29, align 1
  %arrayidx32 = getelementptr i8, ptr %key1, i32 %conv22103
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp34.not = icmp eq i8 %27, %29
  br i1 %cmp34.not, label %if.end37, label %for.body27.cleanup_crit_edge

for.body27.cleanup_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end37:                                         ; preds = %for.body27
  %inc38 = add i8 %match.2101, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc38, i8 %4)
  %cmp41 = icmp eq i8 %inc38, %4
  br i1 %cmp41, label %if.then43, label %for.inc53

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %add = add nuw nsw i32 %16, 1
  %30 = call ptr @memset(ptr %13, i32 170, i32 %add)
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buflen4, align 4
  %add.ptr47 = getelementptr i8, ptr %32, i32 %34
  %idx.neg49 = sub nsw i32 0, %conv2296
  %add.ptr50 = getelementptr i8, ptr %add.ptr47, i32 %idx.neg49
  %35 = call ptr @memset(ptr %add.ptr50, i32 170, i32 %conv2296)
  br label %cleanup

for.inc53:                                        ; preds = %if.end37
  %inc54 = add nuw nsw i32 %i.1102, 1
  %conv22 = zext i8 %inc38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc38)
  %tobool.not = icmp ne i8 %inc38, 0
  %sub = sub nsw i32 %conv11, %conv22
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54, i32 %sub)
  %cmp25 = icmp ult i32 %inc54, %sub
  %or.cond = select i1 %tobool.not, i1 %cmp25, i1 false
  br i1 %or.cond, label %for.inc53.for.body27_crit_edge, label %for.inc53.cleanup_crit_edge

for.inc53.cleanup_crit_edge:                      ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc53.for.body27_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27

cleanup:                                          ; preds = %for.inc53.cleanup_crit_edge, %if.then43, %for.body27.cleanup_crit_edge, %for.cond21.preheader.cleanup_crit_edge, %sw.bb3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_rx_mq_rss(ptr noundef %op_mode, ptr noundef %napi, ptr noundef %rxb, i32 noundef %queue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #16
  %trans = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rx_queues, align 8
  %conv5 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %queue)
  %cmp.not = icmp ugt i32 %conv5, %queue
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !475

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %6 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_offset.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  %add.i = add i32 %7, %8
  %9 = inttoptr i32 %add.i to ptr
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdr, align 1
  %group_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %9, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %group_id, align 1
  %conv = zext i8 %13 to i16
  %shl = shl nuw i16 %conv, 8
  %conv3 = zext i8 %11 to i16
  %or = or i16 %shl, %conv3
  %14 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.210)
  switch i16 %or, label %if.end.cleanup_crit_edge [
    i16 195, label %if.then17
    i16 1535, label %if.then27
    i16 193, label %if.then38
  ], !prof !482

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_frame_release(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef %queue) #16
  br label %cleanup

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_queue_notif(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef %queue) #16
  br label %cleanup

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iwl_mvm_rx_mpdu_mq(ptr noundef %op_mode_specific, ptr noundef %napi, ptr noundef %rxb, i32 noundef %queue) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.then27, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_modify_all_sta_disable_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_cmd_groups_verify_sorted(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_run_init_mvm_ucode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_error_collect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_init_mcc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_mac_setup_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_dbgfs_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_next_antenna(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_soft_blocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_leds_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_rx_mpdu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_rx_phy_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_queue_state_change(ptr noundef %op_mode, i32 noundef %hw_queue, i1 noundef zeroext %start) unnamed_addr #2 align 64 {
entry:
  %tid_bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid_bitmap) #16
  %0 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tid_bitmap, align 4, !annotation !483
  %trans.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %1 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %6 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not = icmp eq i16 %6, 0
  %7 = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 191
  %arrayidx = getelementptr [512 x %struct.iwl_mvm_tvqm_txq_info], ptr %7, i32 0, i32 %hw_queue
  %arrayidx2 = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %7, i32 0, i32 %hw_queue
  %cond.in.in = select i1 %tobool.i.not, ptr %arrayidx2, ptr %arrayidx
  %8 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %8)
  %cond.in148 = load i8, ptr %cond.in.in, align 2
  %conv5 = zext i8 %cond.in148 to i32
  %fw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 3
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %10, i32 0, i32 5, i32 6
  %11 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv5)
  %cmp.not = icmp ugt i32 %12, %conv5
  br i1 %cmp.not, label %if.end45, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b150 = load i1, ptr @iwl_mvm_queue_state_change.__already_done, align 1
  br i1 %.b150, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !475

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @iwl_mvm_queue_state_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1625, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end45:                                         ; preds = %entry
  %13 = tail call i32 @llvm.read_register.i32(metadata !462) #16
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !480
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end45.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end45.rcu_read_lock.exit_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end45
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end45.rcu_read_lock.exit_crit_edge
  %fw_id_to_mac_id = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1050
  %arrayidx50 = getelementptr [16 x ptr], ptr %fw_id_to_mac_id, i32 0, i32 %conv5
  %17 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx50, align 4
  %call52 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end61_crit_edge

rcu_read_lock.exit.do.end61_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true.do.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true
  %.b147149 = load i1, ptr @iwl_mvm_queue_state_change.__warned, align 1
  br i1 %.b147149, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @iwl_mvm_queue_state_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1630, ptr noundef nonnull @.str.195) #16
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true.do.end61_crit_edge, %rcu_read_lock.exit.do.end61_crit_edge
  %tobool.not.i152 = icmp eq ptr %18, null
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i152, %cmp.i
  br i1 %spec.select.i, label %do.end61.out_crit_edge, label %if.end65

do.end61.out_crit_edge:                           ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end65:                                         ; preds = %do.end61
  %aux_queue.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1618
  %19 = ptrtoint ptr %aux_queue.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %aux_queue.i, align 4
  %conv.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %hw_queue)
  %cmp.i153 = icmp eq i32 %conv.i, %hw_queue
  br i1 %cmp.i153, label %if.end65.if.then69_crit_edge, label %lor.lhs.false.i

if.end65.if.then69_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then69

lor.lhs.false.i:                                  ; preds = %if.end65
  %probe_queue.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 1619
  %21 = ptrtoint ptr %probe_queue.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %probe_queue.i, align 8
  %conv2.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %hw_queue)
  %cmp3.i = icmp eq i32 %conv2.i, %hw_queue
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then69_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.if.then69_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then69

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %p2p_dev_queue.i = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 144
  %23 = ptrtoint ptr %p2p_dev_queue.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %p2p_dev_queue.i, align 2
  %conv6.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %hw_queue)
  %cmp7.i = icmp eq i32 %conv6.i, %hw_queue
  br i1 %cmp7.i, label %lor.lhs.false5.i.if.then69_crit_edge, label %iwl_mvm_is_static_queue.exit

lor.lhs.false5.i.if.then69_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then69

iwl_mvm_is_static_queue.exit:                     ; preds = %lor.lhs.false5.i
  %snif_queue.i = getelementptr inbounds %struct.iwl_mvm, ptr %op_mode_specific, i32 0, i32 142
  %25 = ptrtoint ptr %snif_queue.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %snif_queue.i, align 2
  %conv9.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i, i32 %hw_queue)
  %cmp10.i.not = icmp eq i32 %conv9.i, %hw_queue
  br i1 %cmp10.i.not, label %iwl_mvm_is_static_queue.exit.if.then69_crit_edge, label %if.end78

iwl_mvm_is_static_queue.exit.if.then69_crit_edge: ; preds = %iwl_mvm_is_static_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then69

if.then69:                                        ; preds = %iwl_mvm_is_static_queue.exit.if.then69_crit_edge, %lor.lhs.false5.i.if.then69_crit_edge, %lor.lhs.false.i.if.then69_crit_edge, %if.end65.if.then69_crit_edge
  br i1 %start, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %28) #16
  br label %out

if.else:                                          ; preds = %if.then69
  %sta_state = getelementptr inbounds %struct.ieee80211_sta, ptr %18, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %sta_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sta_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp72.not = icmp eq i32 %30, 0
  br i1 %cmp72.not, label %if.else.out_crit_edge, label %if.then74

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %hw75 = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  %31 = ptrtoint ptr %hw75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw75, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %32) #16
  br label %out

if.end78:                                         ; preds = %iwl_mvm_is_static_queue.exit
  %33 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i155 = getelementptr inbounds %struct.iwl_trans, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %trans_cfg.i155 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg.i155, align 4
  %use_tfh.i156 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %use_tfh.i156 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i157 = load i16, ptr %use_tfh.i156, align 4
  %38 = and i16 %bf.load.i157, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.i158.not = icmp eq i16 %38, 0
  br i1 %tobool.i158.not, label %if.else83, label %if.then80

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  %txq_tid = getelementptr inbounds %struct.iwl_mvm_tvqm_txq_info, ptr %arrayidx, i32 0, i32 1
  %39 = ptrtoint ptr %txq_tid to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %txq_tid, align 1
  %conv82 = zext i8 %40 to i32
  %shl = shl nuw i32 1, %conv82
  br label %if.end87

if.else83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  %tid_bitmap85 = getelementptr inbounds %struct.iwl_mvm_dqa_txq_info, ptr %arrayidx2, i32 0, i32 4
  %41 = ptrtoint ptr %tid_bitmap85 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tid_bitmap85, align 4
  %conv86 = zext i16 %42 to i32
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.then80
  %storemerge = phi i32 [ %conv86, %if.else83 ], [ %shl, %if.then80 ]
  %43 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %tid_bitmap, align 4
  %call88 = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap, i32 noundef 9, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call88)
  %cmp89170 = icmp slt i32 %call88, 9
  br i1 %cmp89170, label %for.body.lr.ph, label %if.end87.out_crit_edge

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body.lr.ph:                                   ; preds = %if.end87
  %lnot100 = xor i1 %start, true
  %frombool102 = zext i1 %lnot100 to i8
  %sta_state106 = getelementptr inbounds %struct.ieee80211_sta, ptr %18, i32 1, i32 0, i32 5
  %hw110 = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end111.for.body_crit_edge, %for.body.lr.ph
  %i.0171 = phi i32 [ %call88, %for.body.lr.ph ], [ %call112, %if.end111.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0171)
  %cmp92 = icmp eq i32 %i.0171, 8
  %spec.store.select = select i1 %cmp92, i32 16, i32 %i.0171
  %arrayidx97 = getelementptr %struct.ieee80211_sta, ptr %18, i32 0, i32 28, i32 %spec.store.select
  %44 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx97, align 4
  %stopped = getelementptr inbounds %struct.ieee80211_txq, ptr %45, i32 2, i32 1
  %46 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool102, ptr %stopped, align 4
  br i1 %start, label %land.lhs.true105, label %for.body.if.end111_crit_edge

for.body.if.end111_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

land.lhs.true105:                                 ; preds = %for.body
  %47 = ptrtoint ptr %sta_state106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sta_state106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp107.not = icmp eq i32 %48, 0
  br i1 %cmp107.not, label %land.lhs.true105.if.end111_crit_edge, label %if.then109

land.lhs.true105.if.end111_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

if.then109:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %hw110 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw110, align 4
  call void @iwl_mvm_mac_itxq_xmit(ptr noundef %50, ptr noundef %45) #16
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %land.lhs.true105.if.end111_crit_edge, %for.body.if.end111_crit_edge
  %add = add nsw i32 %i.0171, 1
  %call112 = call i32 @_find_next_bit_be(ptr noundef nonnull %tid_bitmap, i32 noundef 9, i32 noundef %add) #16
  %cmp89 = icmp slt i32 %call112, 9
  br i1 %cmp89, label %if.end111.for.body_crit_edge, label %if.end111.out_crit_edge

if.end111.out_crit_edge:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end111.for.body_crit_edge:                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

out:                                              ; preds = %if.end111.out_crit_edge, %if.end87.out_crit_edge, %if.then74, %if.else.out_crit_edge, %if.then71, %do.end61.out_crit_edge
  %call.i160 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i160, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i163

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i163:                               ; preds = %out
  %call1.i161 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i161)
  %tobool.not.i162 = icmp eq i32 %call1.i161, 0
  br i1 %tobool.not.i162, label %land.lhs.true.i163.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i165

land.lhs.true.i163.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i165:                              ; preds = %land.lhs.true.i163
  %.b4.i164 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i164, label %land.lhs.true2.i165.rcu_read_unlock.exit_crit_edge, label %if.then.i166

land.lhs.true2.i165.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i165
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i166:                                     ; preds = %land.lhs.true2.i165
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i166, %land.lhs.true2.i165.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i163.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !481
  %51 = call i32 @llvm.read_register.i32(metadata !462) #16
  %and.i.i.i.i.i167 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i167 to ptr
  %preempt_count.i.i.i.i168 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i168, align 4
  %sub.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i168, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then, %land.rhs.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_bitmap) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_mac_itxq_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_fwrt_dump_error_logs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_mask_prph(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_notification_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_tx_cmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_ba_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_tlc_update_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_bt_coex_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_beacon_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_statistics(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_window_status_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_time_event_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_session_protect_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_chub_update_mcc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_eosp_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_lmac_scan_iter_complete_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_lmac_scan_complete_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_scan_match_found(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_umac_scan_complete_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_umac_scan_iter_complete_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_missed_beacons_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_fw_error(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_power_uapsd_misbehaving_ap_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_temp_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_ct_kill_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_tdls_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_mfuart_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_ftm_responder_stats(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_ftm_range_resp(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_ftm_lc_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_mfu_assert_dump_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_rx_stored_beacon_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_mu_mimo_grp_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_sta_pm_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_probe_resp_data_notif(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_channel_switch_start_notif(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_rx_monitor_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #16
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %8 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_id, align 1
  %conv = zext i8 %9 to i32
  %call1 = tail call ptr @iwl_mvm_get_vif_by_macid(ptr noundef %mvm, i32 noundef %conv) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp3.not = icmp eq i32 %11, 2
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %chandef = getelementptr inbounds %struct.ieee80211_vif, ptr %call1, i32 0, i32 1, i32 32
  %12 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %lor.lhs.false8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12.not = icmp eq i32 %15, 0
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %width = getelementptr inbounds %struct.ieee80211_vif, ptr %call1, i32 0, i32 1, i32 32, i32 1
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp17 = icmp ult i32 %17, 2
  br i1 %cmp17, label %lor.lhs.false14.cleanup_crit_edge, label %if.end20

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false14
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %call1, i32 0, i32 1, i32 10
  %18 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %assoc, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %cca_40mhz_workaround = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 18
  %20 = ptrtoint ptr %cca_40mhz_workaround to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cca_40mhz_workaround, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  br i1 %tobool25.not, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %22 = ptrtoint ptr %cca_40mhz_workaround to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %cca_40mhz_workaround, align 2
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bands, align 16
  %ht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 5
  %ht_supported = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ht_supported, align 2, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool29.not = icmp eq i8 %30, 0
  br i1 %tobool29.not, label %do.end, label %if.end27.if.end45_crit_edge, !prof !473

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 185, i32 noundef 9, ptr noundef null) #16
  br label %if.end45

if.end45:                                         ; preds = %do.end, %if.end27.if.end45_crit_edge
  %31 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ht_cap, align 4
  %33 = and i16 %32, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool55.not = icmp eq i16 %33, 0
  br i1 %tobool55.not, label %do.end73, label %if.end45.if.end79_crit_edge, !prof !473

if.end45.if.end79_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

do.end73:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 186, i32 noundef 9, ptr noundef null) #16
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end45.if.end79_crit_edge
  %34 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ht_cap, align 4
  %36 = and i16 %35, -3
  store i16 %36, ptr %ht_cap, align 4
  %37 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call1, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %call1, i32 0, i32 3
  %39 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %p2p.i, align 2, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.end79.if.end.i.i_crit_edge, label %if.then.i.i

if.end79.if.end.i.i_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end79
  %41 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %38, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.end79.if.end.i.i_crit_edge
  %phi.cast = trunc i32 %38 to i8
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i8 [ %phi.cast, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  %call94 = tail call fastcc ptr @ieee80211_get_he_iftype_cap(ptr noundef %28, i8 noundef zeroext %retval.0.i.i)
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %ieee80211_vif_type_p2p.exit.if.end172_crit_edge, label %if.then96

ieee80211_vif_type_p2p.exit.if.end172_crit_edge:  ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end172

if.then96:                                        ; preds = %ieee80211_vif_type_p2p.exit
  %42 = ptrtoint ptr %call94 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %call94, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool98.not = icmp eq i8 %43, 0
  br i1 %tobool98.not, label %do.end116, label %if.then96.if.end122_crit_edge, !prof !473

if.then96.if.end122_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

do.end116:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 196, i32 noundef 9, ptr noundef null) #16
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %if.then96.if.end122_crit_edge
  %phy_cap_info = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %call94, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %phy_cap_info to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %phy_cap_info, align 1
  %46 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool134.not = icmp eq i8 %46, 0
  br i1 %tobool134.not, label %do.end152, label %if.end122.if.end158_crit_edge, !prof !473

if.end122.if.end158_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

do.end152:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 9, ptr noundef null) #16
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %if.end122.if.end158_crit_edge
  %47 = ptrtoint ptr %phy_cap_info to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %phy_cap_info, align 1
  %49 = and i8 %48, -3
  store i8 %49, ptr %phy_cap_info, align 1
  br label %if.end172

if.end172:                                        ; preds = %if.end158, %ieee80211_vif_type_p2p.exit.if.end172_crit_edge
  tail call void @ieee80211_disconnect(ptr noundef nonnull %call1, i1 noundef zeroext true) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end172, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_rx_thermal_dual_chain_req(ptr nocapture noundef %mvm, ptr nocapture noundef readonly %rxb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #16
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp = icmp eq i32 %7, 16777216
  %fw_static_smps_request = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 129
  %frombool = zext i1 %cmp to i8
  %8 = ptrtoint ptr %fw_static_smps_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %fw_static_smps_request, align 1
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_iterate_interfaces(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @iwl_mvm_intf_dual_chain_req, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_mvm_get_vif_by_macid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_get_he_iftype_cap(ptr nocapture noundef readonly %sband, i8 noundef zeroext %iftype) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = zext i8 %iftype to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %iftype)
  %cmp.i = icmp ugt i8 %iftype, 11
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i, !prof !473

for.cond.preheader.i:                             ; preds = %entry
  %n_iftype_data.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 9
  %0 = ptrtoint ptr %n_iftype_data.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n_iftype_data.i, align 4
  %conv23.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2438.not.i = icmp eq i16 %1, 0
  br i1 %cmp2438.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %iftype_data.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 10
  %2 = ptrtoint ptr %iftype_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iftype_data.i, align 4
  %shl.i = shl nuw i32 1, %conv.i
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.199, i32 noundef 510, i32 noundef 9, ptr noundef null) #16
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv23.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.039.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 4
  %conv26.i = zext i16 %5 to i32
  %and.i = and i32 %shl.i, %conv26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %for.cond.i, label %ieee80211_get_sband_iftype_data.exit

ieee80211_get_sband_iftype_data.exit:             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %ieee80211_get_sband_iftype_data.exit.if.end_crit_edge, label %land.lhs.true

ieee80211_get_sband_iftype_data.exit.if.end_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %ieee80211_get_sband_iftype_data.exit
  %he_cap = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.039.i, i32 1
  %6 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %he_cap, align 2, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %ieee80211_get_sband_iftype_data.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %do.end.i, %for.cond.preheader.i.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end ], [ %he_cap, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_disconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_intf_dual_chain_req(ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i.i, align 8
  %fw_static_smps_request.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 129
  %2 = ptrtoint ptr %fw_static_smps_request.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_static_smps_request.i, align 1, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.iwl_mvm_apply_fw_smps_request.exit_crit_edge, label %land.lhs.true.i

entry.iwl_mvm_apply_fw_smps_request.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_apply_fw_smps_request.exit

land.lhs.true.i:                                  ; preds = %entry
  %width.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 32, i32 1
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.i = icmp eq i32 %5, 5
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.iwl_mvm_apply_fw_smps_request.exit_crit_edge

land.lhs.true.i.iwl_mvm_apply_fw_smps_request.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %iwl_mvm_apply_fw_smps_request.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %he_support.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %he_support.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %he_support.i, align 2, !range !472
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 2
  br label %iwl_mvm_apply_fw_smps_request.exit

iwl_mvm_apply_fw_smps_request.exit:               ; preds = %land.lhs.true2.i, %land.lhs.true.i.iwl_mvm_apply_fw_smps_request.exit_crit_edge, %entry.iwl_mvm_apply_fw_smps_request.exit_crit_edge
  %mode.0.i = phi i32 [ 0, %land.lhs.true.i.iwl_mvm_apply_fw_smps_request.exit_crit_edge ], [ 0, %entry.iwl_mvm_apply_fw_smps_request.exit_crit_edge ], [ %spec.select.i, %land.lhs.true2.i ]
  tail call void @iwl_mvm_update_smps(ptr noundef %1, ptr noundef %vif, i32 noundef 3, i32 noundef %mode.0.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_reprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !437, !439, !441, !442, !444, !445, !447, !449, !451, !453, !455, !457, !458, !459, !460, !461}
!llvm.named.register.sp = !{!462}
!llvm.module.flags = !{!463, !464, !465, !466, !467, !468, !469, !470}
!llvm.ident = !{!471}

!0 = !{ptr @__UNIQUE_ID_description427, !1, !"__UNIQUE_ID_description427", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_file428, !3, !"__UNIQUE_ID_file428", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_license429, !3, !"__UNIQUE_ID_license429", i1 false, i1 false}
!5 = !{ptr @iwlmvm_mod_params, !6, !"iwlmvm_mod_params", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 39, i32 27}
!7 = !{ptr @__param_init_dbg, !8, !"__param_init_dbg", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_init_dbgtype430, !8, !"__UNIQUE_ID_init_dbgtype430", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_init_dbg431, !11, !"__UNIQUE_ID_init_dbg431", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 45, i32 1}
!12 = !{ptr @__param_power_scheme, !13, !"__param_power_scheme", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 47, i32 1}
!14 = !{ptr @__UNIQUE_ID_power_schemetype432, !13, !"__UNIQUE_ID_power_schemetype432", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_power_scheme433, !16, !"__UNIQUE_ID_power_scheme433", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 48, i32 1}
!17 = !{ptr @__initcall__kmod_iwlmvm__434_70_iwl_mvm_init6, !18, !"__initcall__kmod_iwlmvm__434_70_iwl_mvm_init6", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 70, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 74, i32 24}
!21 = !{ptr @__exitcall_iwl_mvm_exit, !22, !"__exitcall_iwl_mvm_exit", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 77, i32 1}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1345, i32 2}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1702, i32 9}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1791, i32 3}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1795, i32 3}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1804, i32 4}
!34 = !{ptr @iwl_mvm_nic_restart.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1814, i32 3}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1818, i32 3}
!39 = !{ptr @__func__.iwl_mvm_nic_restart, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1848, i32 4}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__param_str_init_dbg, !8, !"__param_str_init_dbg", i1 false, i1 false}
!43 = !{ptr @__param_str_power_scheme, !13, !"__param_str_power_scheme", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 60, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iwl_mvm_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @iwl_mvm_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 66, i32 3}
!51 = !{ptr @iwl_mvm_init._entry.11, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @iwl_mvm_init._entry_ptr.13, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @iwl_mvm_ops, !54, !"iwl_mvm_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1919, i32 37}
!55 = !{ptr @iwl_op_mode_mvm_start.no_reclaim_cmds, !56, !"no_reclaim_cmds", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1055, i32 18}
!57 = !{ptr @iwl_op_mode_mvm_start.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1149, i32 2}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @iwl_op_mode_mvm_start.__key.15, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1150, i32 2}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @iwl_op_mode_mvm_start.__key.17, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1154, i32 2}
!65 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @iwl_op_mode_mvm_start.__key.19, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1159, i32 2}
!68 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iwl_op_mode_mvm_start.__key.21, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1160, i32 2}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @iwl_op_mode_mvm_start.__key.23, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1161, i32 2}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @iwl_op_mode_mvm_start.__key.25, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1162, i32 2}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @iwl_op_mode_mvm_start.__key.27, !76, !"__key", i1 false, i1 false}
!79 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @iwl_op_mode_mvm_start.__key.29, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1163, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iwl_op_mode_mvm_start.__key.31, !81, !"__key", i1 false, i1 false}
!84 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @iwl_op_mode_mvm_start.__key.33, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1164, i32 2}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @iwl_op_mode_mvm_start.__key.35, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1167, i32 2}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @iwl_op_mode_mvm_start.__key.37, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1173, i32 2}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @iwl_op_mode_mvm_start.__key.39, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1174, i32 2}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @iwl_op_mode_mvm_start.__key.41, !95, !"__key", i1 false, i1 false}
!98 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @iwl_op_mode_mvm_start.__key.43, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1179, i32 2}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @iwl_op_mode_mvm_start.__key.45, !100, !"__key", i1 false, i1 false}
!103 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1185, i32 6}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1192, i32 6}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1217, i32 3}
!110 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @iwl_op_mode_mvm_start._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @iwl_op_mode_mvm_start._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1242, i32 4}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1266, i32 3}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1270, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1276, i32 3}
!121 = !{ptr @iwl_mvm_fwrt_ops, !122, !"iwl_mvm_fwrt_ops", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 674, i32 40}
!123 = !{ptr @iwl_mvm_sanitize_ops, !124, !"iwl_mvm_sanitize_ops", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 938, i32 43}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!127 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!131 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @iwl_mvm_ops_mq, !133, !"iwl_mvm_ops_mq", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1945, i32 37}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1007, i32 2}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 623, i32 3}
!138 = !{ptr @iwl_mvm_groups, !139, !"iwl_mvm_groups", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 577, i32 34}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 401, i32 2}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 402, i32 2}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 403, i32 2}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 404, i32 2}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 405, i32 2}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 406, i32 2}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 407, i32 2}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 408, i32 2}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 409, i32 2}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 410, i32 2}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 411, i32 2}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 412, i32 2}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 413, i32 2}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 414, i32 2}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 415, i32 2}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 416, i32 2}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 417, i32 2}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 418, i32 2}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 419, i32 2}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 420, i32 2}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 421, i32 2}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 422, i32 2}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 423, i32 2}
!186 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 424, i32 2}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 425, i32 2}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 426, i32 2}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 427, i32 2}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 428, i32 2}
!196 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 429, i32 2}
!198 = !{ptr @.str.87, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 430, i32 2}
!200 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 431, i32 2}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 432, i32 2}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 433, i32 2}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 434, i32 2}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 435, i32 2}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 436, i32 2}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 437, i32 2}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 438, i32 2}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 439, i32 2}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 440, i32 2}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 441, i32 2}
!222 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 442, i32 2}
!224 = !{ptr @.str.100, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 443, i32 2}
!226 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 444, i32 2}
!228 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 445, i32 2}
!230 = !{ptr @.str.103, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 446, i32 2}
!232 = !{ptr @.str.104, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 447, i32 2}
!234 = !{ptr @.str.105, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 448, i32 2}
!236 = !{ptr @.str.106, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 449, i32 2}
!238 = !{ptr @.str.107, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 450, i32 2}
!240 = !{ptr @.str.108, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 451, i32 2}
!242 = !{ptr @.str.109, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 452, i32 2}
!244 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 453, i32 2}
!246 = !{ptr @.str.111, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 454, i32 2}
!248 = !{ptr @.str.112, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 455, i32 2}
!250 = !{ptr @.str.113, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 456, i32 2}
!252 = !{ptr @.str.114, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 457, i32 2}
!254 = !{ptr @.str.115, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 458, i32 2}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 459, i32 2}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 460, i32 2}
!260 = !{ptr @.str.118, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 461, i32 2}
!262 = !{ptr @.str.119, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 462, i32 2}
!264 = !{ptr @.str.120, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 463, i32 2}
!266 = !{ptr @.str.121, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 464, i32 2}
!268 = !{ptr @.str.122, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 465, i32 2}
!270 = !{ptr @.str.123, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 466, i32 2}
!272 = !{ptr @.str.124, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 467, i32 2}
!274 = !{ptr @.str.125, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 468, i32 2}
!276 = !{ptr @.str.126, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 469, i32 2}
!278 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 470, i32 2}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 471, i32 2}
!282 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 472, i32 2}
!284 = !{ptr @.str.130, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 473, i32 2}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 474, i32 2}
!288 = !{ptr @.str.132, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 475, i32 2}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 476, i32 2}
!292 = !{ptr @.str.134, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 477, i32 2}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 478, i32 2}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 479, i32 2}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 480, i32 2}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 481, i32 2}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 482, i32 2}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 483, i32 2}
!306 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 484, i32 2}
!308 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 485, i32 2}
!310 = !{ptr @.str.143, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 486, i32 2}
!312 = !{ptr @.str.144, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 487, i32 2}
!314 = !{ptr @.str.145, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 488, i32 2}
!316 = !{ptr @.str.146, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 489, i32 2}
!318 = !{ptr @iwl_mvm_legacy_names, !319, !"iwl_mvm_legacy_names", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 400, i32 36}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 496, i32 2}
!322 = !{ptr @.str.148, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 497, i32 2}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 498, i32 2}
!326 = !{ptr @.str.150, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 499, i32 2}
!328 = !{ptr @.str.151, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 500, i32 2}
!330 = !{ptr @.str.152, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 501, i32 2}
!332 = !{ptr @iwl_mvm_system_names, !333, !"iwl_mvm_system_names", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 495, i32 36}
!334 = !{ptr @.str.153, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 508, i32 2}
!336 = !{ptr @.str.154, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 509, i32 2}
!338 = !{ptr @.str.155, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 510, i32 2}
!340 = !{ptr @.str.156, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 511, i32 2}
!342 = !{ptr @iwl_mvm_mac_conf_names, !343, !"iwl_mvm_mac_conf_names", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 507, i32 36}
!344 = !{ptr @.str.157, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 518, i32 2}
!346 = !{ptr @.str.158, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 519, i32 2}
!348 = !{ptr @.str.159, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 520, i32 2}
!350 = !{ptr @.str.160, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 521, i32 2}
!352 = !{ptr @.str.161, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 522, i32 2}
!354 = !{ptr @.str.162, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 523, i32 2}
!356 = !{ptr @iwl_mvm_phy_names, !357, !"iwl_mvm_phy_names", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 517, i32 36}
!358 = !{ptr @.str.163, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 530, i32 2}
!360 = !{ptr @.str.164, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 531, i32 2}
!362 = !{ptr @.str.165, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 532, i32 2}
!364 = !{ptr @.str.166, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 533, i32 2}
!366 = !{ptr @.str.167, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 534, i32 2}
!368 = !{ptr @.str.168, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 535, i32 2}
!370 = !{ptr @.str.169, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 536, i32 2}
!372 = !{ptr @.str.170, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 537, i32 2}
!374 = !{ptr @.str.171, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 538, i32 2}
!376 = !{ptr @.str.172, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 539, i32 2}
!378 = !{ptr @.str.173, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 540, i32 2}
!380 = !{ptr @.str.174, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 541, i32 2}
!382 = !{ptr @.str.175, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 542, i32 2}
!384 = !{ptr @iwl_mvm_data_path_names, !385, !"iwl_mvm_data_path_names", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 529, i32 36}
!386 = !{ptr @.str.176, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 549, i32 2}
!388 = !{ptr @.str.177, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 550, i32 2}
!390 = !{ptr @.str.178, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 551, i32 2}
!392 = !{ptr @.str.179, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 552, i32 2}
!394 = !{ptr @.str.180, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 553, i32 2}
!396 = !{ptr @.str.181, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 554, i32 2}
!398 = !{ptr @.str.182, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 555, i32 2}
!400 = !{ptr @.str.183, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 556, i32 2}
!402 = !{ptr @.str.184, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 557, i32 2}
!404 = !{ptr @.str.185, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 558, i32 2}
!406 = !{ptr @iwl_mvm_location_names, !407, !"iwl_mvm_location_names", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 548, i32 36}
!408 = !{ptr @.str.186, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 565, i32 2}
!410 = !{ptr @iwl_mvm_prot_offload_names, !411, !"iwl_mvm_prot_offload_names", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 564, i32 36}
!412 = !{ptr @.str.187, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 572, i32 2}
!414 = !{ptr @.str.188, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 573, i32 2}
!416 = !{ptr @.str.189, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 574, i32 2}
!418 = !{ptr @iwl_mvm_regulatory_and_nvm_names, !419, !"iwl_mvm_regulatory_and_nvm_names", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 571, i32 36}
!420 = !{ptr @.str.190, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1040, i32 2}
!422 = distinct !{null, !423, !"mei_ops", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1039, i32 33}
!424 = distinct !{null, !425, !"__warned", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 953, i32 19}
!426 = !{ptr @.str.191, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 688, i32 7}
!428 = !{ptr @.str.192, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 705, i32 3}
!430 = !{ptr @.str.193, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 738, i32 3}
!432 = distinct !{null, !433, !"__already_done", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1295, i32 6}
!434 = !{ptr @.str.194, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../iwl-trans.h", i32 1296, i32 3}
!436 = !{ptr @__func__.iwl_trans_block_txq_ptrs, !435, !"<string literal>", i1 false, i1 false}
!437 = distinct !{null, !438, !"__already_done", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1625, i32 6}
!439 = distinct !{null, !440, !"__warned", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1630, i32 8}
!441 = !{ptr @.str.195, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @__func__.iwl_mvm_nic_config, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 128, i32 2}
!444 = !{ptr @.str.196, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @.str.197, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1494, i32 6}
!447 = !{ptr @.str.198, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 121, i32 3}
!449 = !{ptr @iwl_mvm_rx_handlers, !450, !"iwl_mvm_rx_handlers", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 289, i32 37}
!451 = !{ptr @.str.199, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../include/net/cfg80211.h", i32 510, i32 6}
!453 = !{ptr @.str.200, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!455 = !{ptr @.str.201, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ops.c", i32 1758, i32 3}
!457 = !{ptr @.str.202, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @.str.203, !456, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.204, !456, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @iwl_mvm_reprobe_wk._entry, !456, !"_entry", i1 false, i1 false}
!461 = !{ptr @iwl_mvm_reprobe_wk._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!462 = !{!"sp"}
!463 = !{i32 1, !"wchar_size", i32 2}
!464 = !{i32 1, !"min_enum_size", i32 4}
!465 = !{i32 8, !"branch-target-enforcement", i32 0}
!466 = !{i32 8, !"sign-return-address", i32 0}
!467 = !{i32 8, !"sign-return-address-all", i32 0}
!468 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!469 = !{i32 7, !"uwtable", i32 1}
!470 = !{i32 7, !"frame-pointer", i32 2}
!471 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!472 = !{i8 0, i8 2}
!473 = !{!"branch_weights", i32 1, i32 2000}
!474 = !{!"branch_weights", i32 2000, i32 32016000, i32 8, i32 8000, i32 4000, i32 2000}
!475 = !{!"branch_weights", i32 2000, i32 1}
!476 = !{i64 2154052680, i64 2154053164, i64 2154052717, i64 2154052773, i64 2154052807, i64 2154052831, i64 2154052872, i64 2154052893, i64 2154052921, i64 2154052955}
!477 = !{i64 2148394366, i64 2148394392, i64 2148394421, i64 2148394455, i64 2148394486, i64 2148394509}
!478 = !{i64 2149007743, i64 2149007748, i64 2149007761, i64 2149007805, i64 2149007839, i64 2149007860}
!479 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!480 = !{i64 2149410525}
!481 = !{i64 2149410791}
!482 = !{!"branch_weights", i32 2000000, i32 2002000, i32 2001000, i32 -294967296}
!483 = !{!"auto-init"}
