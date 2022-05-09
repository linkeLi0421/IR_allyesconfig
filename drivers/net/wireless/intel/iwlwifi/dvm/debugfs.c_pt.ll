; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.iwl_priv = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, i8, [32 x i8], [32 x %struct.atomic_t], [1 x i32], ptr, ptr, %struct.list_head, ptr, %struct.iwl_hw_params, i32, i8, [255 x ptr], %struct.iwl_notif_wait_data, %struct.iwl_spectrum_notification, i8, i32, i32, i32, i32, [255 x i32], %struct.iwl_rf_reset, i32, i32, i8, i8, i32, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, [6 x i8], i8, i8, i8, i8, [2 x %struct.mac_address], [2 x %struct.iwl_rxon_context], i16, i8, %struct.iwl_sensitivity_data, %struct.iwl_chain_noise_data, [11 x i16], [12 x i16], %struct.iwl_ht_config, i8, i32, %struct.iwl_power_mgr, %struct.iwl_tt_mgmt, i32, [16 x %struct.iwl_station_entry], i32, [16 x [8 x %struct.iwl_tid_data]], %struct.atomic_t, i8, i8, i32, i64, %struct.anon.135, %struct.anon.136, %struct.anon.136, %struct.anon.136, i8, %struct.iwl_rx_phy_res, i32, i8, i8, i8, %struct.reply_tx_error_statistics, %struct.reply_agg_tx_error_statistics, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i16, i16, i16, i8, %struct.work_struct, i8, ptr, i8, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8, i8, ptr, i32, i32, i8, ptr, ptr, ptr, i32, %struct.work_struct, i32, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.iwl_event_log, %struct.led_classdev, i32, i32, i8, [16 x i8], [16 x i8], i64, i16, i8, %struct.wiphy_wowlan_support, %struct.anon.138, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.iwl_hw_params = type { i8, i8, i8, i32, i32, ptr }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_spectrum_notification = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i8, [3 x i8], %struct.iwl_measurement_histogram, i32, i32 }
%struct.iwl_measurement_histogram = type { [8 x i32], [8 x i32] }
%struct.iwl_rf_reset = type { i32, i32, i32, i32 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rxon_context = type { ptr, i8, [4 x i8], [4 x i8], i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd, %struct.iwl_rxon_time_cmd, %struct.iwl_qos_info, i8, i8, i8, i8, i8, i8, i8, [4 x %struct.iwl_wep_key], i8, i32, i32, %struct.anon.133 }
%struct.iwl_rxon_cmd = type <{ [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, i8, i8, i16, i8, i8, i16, i32, i32, i16, i8, i8, i8, i8, i16, i16 }>
%struct.iwl_rxon_time_cmd = type <{ i64, i16, i16, i32, i16, i8, i8 }>
%struct.iwl_qos_info = type { i32, %struct.iwl_qosparam_cmd }
%struct.iwl_qosparam_cmd = type { i32, [4 x %struct.iwl_ac_qos] }
%struct.iwl_ac_qos = type { i16, i16, i8, i8, i16 }
%struct.iwl_wep_key = type { i8, i8, [2 x i8], i8, [3 x i8], [16 x i8] }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.iwl_sensitivity_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [20 x i8], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.iwl_chain_noise_data = type { i32, i32, i32, i32, i32, i32, i32, i16, [3 x i8], [3 x i8], i8, i8 }
%struct.iwl_ht_config = type { i8, i32 }
%struct.iwl_power_mgr = type { %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd, i32, i8 }
%struct.iwl_powertable_cmd = type { i16, i8, i8, i32, i32, [5 x i32], i32 }
%struct.iwl_tt_mgmt = type { i32, i8, i8, i8, i32, ptr, ptr, %struct.timer_list, %struct.timer_list }
%struct.iwl_station_entry = type { %struct.iwl_addsta_cmd, i8, i8, ptr }
%struct.iwl_addsta_cmd = type <{ i8, [3 x i8], %struct.sta_id_modify, %struct.iwl_keyinfo, i32, i32, i16, i16, i8, i8, i16, i16, i16 }>
%struct.sta_id_modify = type { [6 x i8], i16, i8, i8, i16 }
%struct.iwl_keyinfo = type { i16, i8, i8, [5 x i16], i8, i8, [16 x i8], i64, i64, i64 }
%struct.iwl_tid_data = type { i16, i16, %struct.iwl_ht_agg }
%struct.iwl_ht_agg = type { i32, i32, i16, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.anon.135 = type { i32, %struct.statistics_general_common, %struct.statistics_rx_non_phy, %struct.statistics_rx_phy, %struct.statistics_rx_ht_phy, %struct.statistics_rx_phy, %struct.statistics_tx, %struct.statistics_bt_activity, i32, i32, %struct.spinlock }
%struct.statistics_general_common = type { i32, i32, %struct.statistics_dbg, i32, i32, i32, i32, %struct.statistics_div, i32, i32 }
%struct.statistics_dbg = type { i32, i32, i32, [3 x i32] }
%struct.statistics_div = type { i32, i32, i32, i32, i32, i32 }
%struct.statistics_rx_non_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_rx_ht_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_rx_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_tx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.statistics_tx_non_phy_agg, %struct.statistics_tx_power, i32 }
%struct.statistics_tx_non_phy_agg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_tx_power = type { i8, i8, i8, i8 }
%struct.statistics_bt_activity = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.136 = type { %struct.statistics_general_common, %struct.statistics_rx_non_phy, %struct.statistics_rx_phy, %struct.statistics_rx_ht_phy, %struct.statistics_rx_phy, %struct.statistics_tx, %struct.statistics_bt_activity }
%struct.iwl_rx_phy_res = type <{ i8, i8, i8, i8, i64, i32, i16, i16, [32 x i8], i32, i16, i16 }>
%struct.reply_tx_error_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reply_agg_tx_error_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_event_log = type { i8, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.138 = type { i32, i32 }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.23, ptr }
%union.anon.23 = type { i64 }
%struct.lockref = type { %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.103 = type { i64, i64, i8 }
%struct.file = type { %union.anon.22, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.101 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.fw_desc = type { ptr, i32, i32 }
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
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_tt_restriction = type { i32, i32, i8 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rf\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nvm\00", [28 x i8] zeroinitializer }, align 32
@iwl_dbgfs_nvm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_nvm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@iwl_dbgfs_sram_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_sram_read, ptr @iwl_dbgfs_sram_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wowlan_sram\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_wowlan_sram_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_wowlan_sram_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stations\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_stations_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_stations_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_channels_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_channels_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@iwl_dbgfs_status_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_status_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_handlers\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rx_handlers_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rx_handlers_read, ptr @iwl_dbgfs_rx_handlers_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qos\00", [28 x i8] zeroinitializer }, align 32
@iwl_dbgfs_qos_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_qos_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sleep_level_override\00", [43 x i8] zeroinitializer }, align 32
@iwl_dbgfs_sleep_level_override_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_sleep_level_override_read, ptr @iwl_dbgfs_sleep_level_override_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"current_sleep_command\00", [42 x i8] zeroinitializer }, align 32
@iwl_dbgfs_current_sleep_command_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_current_sleep_command_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"thermal_throttling\00", [45 x i8] zeroinitializer }, align 32
@iwl_dbgfs_thermal_throttling_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_thermal_throttling_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_ht40\00", [19 x i8] zeroinitializer }, align 32
@iwl_dbgfs_disable_ht40_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_disable_ht40_read, ptr @iwl_dbgfs_disable_ht40_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_temperature_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_temperature_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power_save_status\00", [46 x i8] zeroinitializer }, align 32
@iwl_dbgfs_power_save_status_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_power_save_status_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clear_ucode_statistics\00", [41 x i8] zeroinitializer }, align 32
@iwl_dbgfs_clear_ucode_statistics_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @iwl_dbgfs_clear_ucode_statistics_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"missed_beacon\00", [18 x i8] zeroinitializer }, align 32
@iwl_dbgfs_missed_beacon_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_missed_beacon_read, ptr @iwl_dbgfs_missed_beacon_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"plcp_delta\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_plcp_delta_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_plcp_delta_read, ptr @iwl_dbgfs_plcp_delta_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rf_reset\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rf_reset_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rf_reset_read, ptr @iwl_dbgfs_rf_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucode_rx_stats\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ucode_rx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_ucode_rx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucode_tx_stats\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ucode_tx_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_ucode_tx_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ucode_general_stats\00", [44 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ucode_general_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_ucode_general_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txfifo_flush\00", [19 x i8] zeroinitializer }, align 32
@iwl_dbgfs_txfifo_flush_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @iwl_dbgfs_txfifo_flush_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"protection_mode\00", [16 x i8] zeroinitializer }, align 32
@iwl_dbgfs_protection_mode_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_protection_mode_read, ptr @iwl_dbgfs_protection_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sensitivity\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_sensitivity_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_sensitivity_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chain_noise\00", [20 x i8] zeroinitializer }, align 32
@iwl_dbgfs_chain_noise_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_chain_noise_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucode_tracing\00", [18 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ucode_tracing_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_ucode_tracing_read, ptr @iwl_dbgfs_ucode_tracing_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucode_bt_stats\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_ucode_bt_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_ucode_bt_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reply_tx_error\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_reply_tx_error_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_reply_tx_error_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rxon_flags\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rxon_flags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rxon_flags_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxon_filter_flags\00", [46 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rxon_filter_flags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rxon_filter_flags_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"echo_test\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_echo_test_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @iwl_dbgfs_echo_test_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_restart\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fw_restart_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @iwl_dbgfs_fw_restart_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"log_event\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_log_event_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_log_event_read, ptr @iwl_dbgfs_log_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt_traffic\00", [21 x i8] zeroinitializer }, align 32
@iwl_dbgfs_bt_traffic_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_bt_traffic_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"calib_disabled\00", [17 x i8] zeroinitializer }, align 32
@iwl_dbgfs_calib_disabled_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_calib_disabled_read, ptr @iwl_dbgfs_calib_disabled_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"../../%pd2\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iwlwifi\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NVM version: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0x%.4x %16ph\0A\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sram_len: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sram_offset: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08X: \00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x,%x\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"num of stations: %d\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"station %d - addr: %pM, flags: %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TID seqno  next_rclmd rate_n_flags state txq\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:  0x%.4x 0x%.4x     0x%.8x   %d     %.2d\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" - waitforba\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Displaying %d channels in 2.4GHz band 802.11bg):\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d: %ddBm: BSS%s%s, %s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" (IEEE 802.11h required)\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", IBSS\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"passive only\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"active/passive\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Displaying %d channels in 5.2GHz band (802.11a)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STATUS_RF_KILL_HW:\09 %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STATUS_CT_KILL:\09\09 %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"STATUS_ALIVE:\09\09 %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"STATUS_READY:\09\09 %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"STATUS_EXIT_PENDING:\09 %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STATUS_STATISTICS:\09 %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STATUS_SCANNING:\09 %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"STATUS_SCAN_ABORTING:\09 %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STATUS_SCAN_HW:\09\09 %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"STATUS_POWER_PMI:\09 %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STATUS_FW_ERROR:\09 %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09Rx handler[%36s]:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"context %d:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09cw_min\09cw_max\09aifsn\09txop\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AC[%d]\09%u\09%u\09%u\09%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flags: %#.2x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX/TX timeout: %d/%d usec\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sleep_interval[%d]: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Thermal Throttling Mode: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Advance\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Thermal Throttling State: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tx mode: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Rx mode: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HT mode: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"11n 40MHz Mode: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Power Save Status: \00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PHY\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RF reset statistics\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09number of reset request: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\09number of reset request success: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09number of reset request reject: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%-32s    current  cumulative       delta         max\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Statistics_Rx - OFDM:\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  %-30s %10u  %10u  %10u  %10u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ina_cnt:\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fina_cnt:\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plcp_err:\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crc32_err:\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"overrun_err:\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"early_overrun_err:\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"crc32_good:\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"false_alarm_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fina_sync_err_cnt:\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sfd_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fina_timeout:\00", [18 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unresponded_rts:\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxe_frame_lmt_ovrun:\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sent_ack_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sent_cts_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sent_ba_rsp_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsp_self_kill:\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mh_format_err:\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"re_acq_main_rssi_sum:\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Statistics_Rx - CCK:\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Statistics_Rx - GENERAL:\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bogus_cts:\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bogus_ack:\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"non_bssid_frames:\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"filtered_frames:\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"non_channel_beacons:\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel_beacons:\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"num_missed_bcon:\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adc_rx_saturation_time:\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ina_detect_search_tm:\00", [42 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon_silence_rssi_a:\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon_silence_rssi_b:\00", [41 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon_silence_rssi_c:\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interference_data_flag:\00", [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"channel_load:\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsp_false_alarms:\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_rssi_a:\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_rssi_b:\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_rssi_c:\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_energy_a:\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_energy_b:\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_energy_c:\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Statistics_Rx - OFDM_HT:\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"agg_crc32_good:\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"agg_mpdu_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"agg_cnt:\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unsupport_mcs:\00", [17 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.160 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c\00", [47 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Statistics Flag(0x%X):\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09Statistics have been cleared\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09Operational Frequency: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.4 GHz\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.2 GHz\00", [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09TGj Narrow Band: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Statistics_Tx:\00", [17 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"preamble:\00", [22 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_detected_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt_prio_defer_cnt:\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bt_prio_kill_cnt:\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"few_bytes_cnt:\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cts_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ack_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"expected_ack_cnt:\00", [46 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"actual_ack_cnt:\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_msdu_cnt:\00", [17 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"abort_nxt_frame_mismatch:\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"abort_missing_nxt_frame:\00", [39 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cts_timeout_collision:\00", [41 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ack_ba_timeout_collision:\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"agg ba_timeout:\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"agg ba_resched_frames:\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"agg scd_query_agg_frame:\00", [39 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"agg scd_query_no_agg:\00", [42 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"agg scd_query_agg:\00", [45 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"agg scd_query_mismatch:\00", [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"agg frame_not_ready:\00", [43 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"agg underrun:\00", [18 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"agg bt_prio_kill:\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"agg rx_ba_rsp_cnt:\00", [45 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx power: (1/2 dB step)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  %-30s       0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"antenna A:\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"antenna B:\00", [21 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"antenna C:\00", [21 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Statistics_General:\00", [44 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  %-30s %10u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temperature:\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temperature_m:\00", [17 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttl_timestamp:\00", [17 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"burst_check:\00", [19 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"burst_count:\00", [19 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wait_for_silence_timeout_count:\00", [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sleep_time:\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slots_out:\00", [21 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slots_idle:\00", [20 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_on_a:\00", [23 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_on_b:\00", [23 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exec_time:\00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"probe_time:\00", [20 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_enable_counter:\00", [45 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"num_of_sos_states:\00", [45 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"use %s for aggregation\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts/cts\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cts-to-self\00", [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"auto_corr_ofdm:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"auto_corr_ofdm_mrc:\09\09 %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"auto_corr_ofdm_x1:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"auto_corr_ofdm_mrc_x1:\09\09 %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"auto_corr_cck:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"auto_corr_cck_mrc:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"last_bad_plcp_cnt_ofdm:\09\09 %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"last_fa_cnt_ofdm:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"last_bad_plcp_cnt_cck:\09\09 %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"last_fa_cnt_cck:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_curr_state:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_prev_state:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nrg_value:\09\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nrg_silence_rssi:\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_silence_ref:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_energy_idx:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nrg_silence_idx:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nrg_th_cck:\09\09\09 %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nrg_auto_corr_silence_diff:\09 %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"num_in_cck_no_fa:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nrg_th_ofdm:\09\09\09 %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_chains:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chain_noise_a:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chain_noise_b:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chain_noise_c:\09\09\09 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chain_signal_a:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chain_signal_b:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chain_signal_c:\09\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"beacon_count:\09\09\09 %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disconn_array:\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta_gain_code:\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radio_write:\09\09\09 %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"state:\09\09\09\09 %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ucode trace timer is %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"non_wraps_count:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wraps_once_count:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wraps_more_count:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.260 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Statistics_BT:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09\09\09current\09\09\09accumulative\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hi_priority_tx_req_cnt:\09\09%u\09\09\09%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hi_priority_tx_denied_cnt:\09%u\09\09\09%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lo_priority_tx_req_cnt:\09\09%u\09\09\09%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lo_priority_tx_denied_cnt:\09%u\09\09\09%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hi_priority_rx_req_cnt:\09\09%u\09\09\09%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hi_priority_rx_denied_cnt:\09%u\09\09\09%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lo_priority_rx_req_cnt:\09\09%u\09\09\09%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lo_priority_rx_denied_cnt:\09%u\09\09\09%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(rx)num_bt_kills:\09\09%u\09\09\09%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Statistics_TX_Error:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:\09\09\09\09%u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s:\09\09\09%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:\09\09%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UNKNOWN:\09\09\09%u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0AStatistics_Agg_TX_Error:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"echo testing fail: 0X%x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_cmd_echo_test = private unnamed_addr constant [18 x i8] c"iwl_cmd_echo_test\00", align 1
@.str.279 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"echo testing pass\0A\00", [45 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@.str.280 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BT coex disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BT enable flag: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BT in %s mode\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"full concurrency\00", [47 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3-wire\00", [25 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BT status: %s, last traffic notif: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ch_announcement: %d, kill_ack_mask: %x, kill_cts_mask: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bluetooth traffic load: \00", [39 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Continuous\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"High\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Low\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"None\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sensitivity calibrations %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chain noise calibrations %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tx power calibrations %s\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.iwl_dbgfs_bt_traffic_read = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.291, ptr @.str.290, ptr @.str.289], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2317, i32 32 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2318, i32 30 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2319, i32 33 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2321, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"iwl_dbgfs_nvm_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 626, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2322, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [19 x i8] c"iwl_dbgfs_sram_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 624, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2323, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_wowlan_sram_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 625, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2324, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_stations_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 627, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2325, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_channels_ops\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 628, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2326, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [21 x i8] c"iwl_dbgfs_status_ops\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 629, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2327, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_rx_handlers_ops\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 630, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2328, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [18 x i8] c"iwl_dbgfs_qos_ops\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 631, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2329, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [35 x i8] c"iwl_dbgfs_sleep_level_override_ops\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 635, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2330, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [36 x i8] c"iwl_dbgfs_current_sleep_command_ops\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 636, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2331, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [33 x i8] c"iwl_dbgfs_thermal_throttling_ops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 632, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2332, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [27 x i8] c"iwl_dbgfs_disable_ht40_ops\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 633, i32 1 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2333, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_temperature_ops\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 634, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2335, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [32 x i8] c"iwl_dbgfs_power_save_status_ops\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2287, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2336, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [37 x i8] c"iwl_dbgfs_clear_ucode_statistics_ops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2288, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2337, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [28 x i8] c"iwl_dbgfs_missed_beacon_ops\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2290, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2338, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_plcp_delta_ops\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2291, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2339, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_rf_reset_ops\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2292, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2340, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_ucode_rx_stats_ops\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2282, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2341, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_ucode_tx_stats_ops\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2283, i32 1 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2342, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [34 x i8] c"iwl_dbgfs_ucode_general_stats_ops\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2284, i32 1 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2343, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [27 x i8] c"iwl_dbgfs_txfifo_flush_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2295, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2344, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [30 x i8] c"iwl_dbgfs_protection_mode_ops\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2298, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2345, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_sensitivity_ops\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2285, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2346, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [26 x i8] c"iwl_dbgfs_chain_noise_ops\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2286, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2347, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [28 x i8] c"iwl_dbgfs_ucode_tracing_ops\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2289, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2348, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_ucode_bt_stats_ops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2296, i32 1 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2349, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_reply_tx_error_ops\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2299, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2350, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_rxon_flags_ops\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2293, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2351, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [32 x i8] c"iwl_dbgfs_rxon_filter_flags_ops\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2294, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2352, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_echo_test_ops\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2300, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2353, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_fw_restart_ops\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2301, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2355, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_log_event_ops\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2303, i32 1 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2359, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant [25 x i8] c"iwl_dbgfs_bt_traffic_ops\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2297, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2362, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [29 x i8] c"iwl_dbgfs_calib_disabled_ops\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2305, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2377, i32 22 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2379, i32 26 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 267, i32 5 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 269, i32 47 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 91, i32 43 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 93, i32 43 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 107, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 111, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 114, i32 5 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 126, i32 45 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 128, i32 45 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 130, i32 45 }
@___asan_gen_.554 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1375, i32 6 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 155, i32 18 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 158, i32 25 }
@___asan_gen_.563 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 156, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 199, i32 43 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 207, i32 6 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 211, i32 5 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 217, i32 5 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 227, i32 8 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 297, i32 5 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 302, i32 6 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 306, i32 6 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 306, i32 35 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 310, i32 6 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 313, i32 6 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 313, i32 23 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 320, i32 5 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 352, i32 43 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 354, i32 43 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 356, i32 43 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 358, i32 43 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 360, i32 43 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 362, i32 43 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 364, i32 43 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 366, i32 43 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 368, i32 43 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 370, i32 43 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 372, i32 43 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 396, i32 5 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 439, i32 44 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 443, i32 5 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 445, i32 5 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 596, i32 30 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 554, i32 18 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 611, i32 5 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 613, i32 5 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 618, i32 6 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 468, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 469, i32 22 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 469, i32 34 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 471, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 476, i32 5 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 479, i32 5 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 482, i32 5 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 521, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 522, i32 25 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 522, i32 38 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1794, i32 43 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1795, i32 43 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1796, i32 50 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1797, i32 51 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1798, i32 51 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1799, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1955, i32 43 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1996, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1998, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2001, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2004, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 715, i32 5 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 715, i32 17 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 717, i32 5 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 717, i32 16 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 722, i32 16 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 726, i32 16 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 730, i32 16 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 734, i32 16 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 739, i32 16 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 745, i32 16 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 750, i32 16 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 756, i32 16 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 762, i32 16 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 767, i32 16 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 772, i32 16 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 778, i32 16 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 784, i32 16 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 789, i32 16 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 794, i32 16 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 800, i32 16 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 806, i32 16 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 812, i32 16 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 819, i32 17 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 917, i32 17 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 919, i32 16 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 924, i32 16 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 929, i32 16 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 935, i32 16 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 941, i32 16 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 947, i32 16 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 953, i32 16 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 959, i32 16 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 965, i32 16 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 971, i32 16 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 977, i32 16 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 983, i32 16 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 989, i32 16 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 995, i32 16 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1001, i32 16 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1007, i32 16 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1013, i32 16 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1019, i32 16 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1025, i32 16 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1031, i32 16 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1037, i32 16 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1044, i32 17 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1073, i32 16 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1078, i32 16 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1083, i32 16 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1087, i32 16 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 648, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 652, i32 37 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 655, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 656, i32 37 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 658, i32 5 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 658, i32 17 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 659, i32 37 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 661, i32 6 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 661, i32 18 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1130, i32 17 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1132, i32 16 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1137, i32 16 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1142, i32 16 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1148, i32 16 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1154, i32 16 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1159, i32 16 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1163, i32 16 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1168, i32 16 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1174, i32 16 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1180, i32 16 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1186, i32 16 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1192, i32 16 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1198, i32 16 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1204, i32 16 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1210, i32 16 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1216, i32 16 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1222, i32 16 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1228, i32 16 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1234, i32 16 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1240, i32 16 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1246, i32 16 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1252, i32 16 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1257, i32 16 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1263, i32 16 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1271, i32 4 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1275, i32 6 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1275, i32 15 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1280, i32 15 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1285, i32 15 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1339, i32 17 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1341, i32 5 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1341, i32 16 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1344, i32 16 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1347, i32 16 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1350, i32 16 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1355, i32 16 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1360, i32 16 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1366, i32 16 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1371, i32 16 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1376, i32 16 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1381, i32 16 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1385, i32 16 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1389, i32 16 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1393, i32 16 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1397, i32 16 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1403, i32 16 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2102, i32 5 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2104, i32 5 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2104, i32 17 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2106, i32 44 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1663, i32 43 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1666, i32 4 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1668, i32 43 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1671, i32 4 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1673, i32 43 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1675, i32 43 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1678, i32 4 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1680, i32 43 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1683, i32 4 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1685, i32 43 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1687, i32 43 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1689, i32 43 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1691, i32 43 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1693, i32 44 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1697, i32 43 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1703, i32 43 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1705, i32 43 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1707, i32 43 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1709, i32 43 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1712, i32 4 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1714, i32 43 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1716, i32 43 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1742, i32 43 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1744, i32 43 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1746, i32 43 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1748, i32 43 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1750, i32 43 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1752, i32 43 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1754, i32 43 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1756, i32 43 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1759, i32 43 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1765, i32 43 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1771, i32 43 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1773, i32 43 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1837, i32 43 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1838, i32 34 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1838, i32 41 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1839, i32 43 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1841, i32 43 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1843, i32 43 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1456, i32 43 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1458, i32 4 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1460, i32 5 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1464, i32 5 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1468, i32 5 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1472, i32 5 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1476, i32 5 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1480, i32 5 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1484, i32 5 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1488, i32 5 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1493, i32 5 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1522, i32 43 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1523, i32 43 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1526, i32 43 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1538, i32 43 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1592, i32 43 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1596, i32 5 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 1887, i32 21 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2146, i32 3 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2148, i32 3 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2202, i32 18 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2055, i32 44 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2058, i32 43 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2060, i32 43 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2061, i32 30 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2061, i32 51 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2062, i32 43 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2065, i32 43 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2070, i32 43 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2073, i32 44 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2076, i32 44 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2079, i32 44 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2083, i32 44 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2221, i32 5 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2224, i32 5 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2224, i32 18 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2226, i32 5 }
@___asan_gen_.1288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1289 = private constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c\00", align 1
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1289, i32 2231, i32 5 }
@___asan_gen_.1291 = private unnamed_addr constant [39 x i8] c"switch.table.iwl_dbgfs_bt_traffic_read\00", align 1
@llvm.compiler.used = appending global [332 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @iwl_dbgfs_nvm_ops, ptr @.str.4, ptr @iwl_dbgfs_sram_ops, ptr @.str.5, ptr @iwl_dbgfs_wowlan_sram_ops, ptr @.str.6, ptr @iwl_dbgfs_stations_ops, ptr @.str.7, ptr @iwl_dbgfs_channels_ops, ptr @.str.8, ptr @iwl_dbgfs_status_ops, ptr @.str.9, ptr @iwl_dbgfs_rx_handlers_ops, ptr @.str.10, ptr @iwl_dbgfs_qos_ops, ptr @.str.11, ptr @iwl_dbgfs_sleep_level_override_ops, ptr @.str.12, ptr @iwl_dbgfs_current_sleep_command_ops, ptr @.str.13, ptr @iwl_dbgfs_thermal_throttling_ops, ptr @.str.14, ptr @iwl_dbgfs_disable_ht40_ops, ptr @.str.15, ptr @iwl_dbgfs_temperature_ops, ptr @.str.16, ptr @iwl_dbgfs_power_save_status_ops, ptr @.str.17, ptr @iwl_dbgfs_clear_ucode_statistics_ops, ptr @.str.18, ptr @iwl_dbgfs_missed_beacon_ops, ptr @.str.19, ptr @iwl_dbgfs_plcp_delta_ops, ptr @.str.20, ptr @iwl_dbgfs_rf_reset_ops, ptr @.str.21, ptr @iwl_dbgfs_ucode_rx_stats_ops, ptr @.str.22, ptr @iwl_dbgfs_ucode_tx_stats_ops, ptr @.str.23, ptr @iwl_dbgfs_ucode_general_stats_ops, ptr @.str.24, ptr @iwl_dbgfs_txfifo_flush_ops, ptr @.str.25, ptr @iwl_dbgfs_protection_mode_ops, ptr @.str.26, ptr @iwl_dbgfs_sensitivity_ops, ptr @.str.27, ptr @iwl_dbgfs_chain_noise_ops, ptr @.str.28, ptr @iwl_dbgfs_ucode_tracing_ops, ptr @.str.29, ptr @iwl_dbgfs_ucode_bt_stats_ops, ptr @.str.30, ptr @iwl_dbgfs_reply_tx_error_ops, ptr @.str.31, ptr @iwl_dbgfs_rxon_flags_ops, ptr @.str.32, ptr @iwl_dbgfs_rxon_filter_flags_ops, ptr @.str.33, ptr @iwl_dbgfs_echo_test_ops, ptr @.str.34, ptr @iwl_dbgfs_fw_restart_ops, ptr @.str.35, ptr @iwl_dbgfs_log_event_ops, ptr @.str.36, ptr @iwl_dbgfs_bt_traffic_ops, ptr @.str.37, ptr @iwl_dbgfs_calib_disabled_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @switch.table.iwl_dbgfs_bt_traffic_read], section "llvm.metadata"
@0 = internal global [332 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_nvm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_sram_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_wowlan_sram_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_stations_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_channels_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_status_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rx_handlers_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_qos_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_sleep_level_override_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_current_sleep_command_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_thermal_throttling_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_disable_ht40_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_temperature_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_power_save_status_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_clear_ucode_statistics_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_missed_beacon_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_plcp_delta_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rf_reset_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ucode_rx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ucode_tx_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ucode_general_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_txfifo_flush_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_protection_mode_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_sensitivity_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_chain_noise_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ucode_tracing_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_ucode_bt_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_reply_tx_error_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rxon_flags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rxon_filter_flags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_echo_test_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fw_restart_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_log_event_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_bt_traffic_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_calib_disabled_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_dbgfs_bt_traffic_read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_dbgfs_register(ptr noundef %priv, ptr noundef %dbgfs_dir) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 118
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dbgfs_dir, ptr %debugfs_dir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %dbgfs_dir) #8
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %dbgfs_dir) #8
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef %dbgfs_dir) #8
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_nvm_ops) #8
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_sram_ops) #8
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_wowlan_sram_ops) #8
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_stations_ops) #8
  %call17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_channels_ops) #8
  %call21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_status_ops) #8
  %call25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_rx_handlers_ops) #8
  %call29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_qos_ops) #8
  %call33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_sleep_level_override_ops) #8
  %call37 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_current_sleep_command_ops) #8
  %call41 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_thermal_throttling_ops) #8
  %call45 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_disable_ht40_ops) #8
  %call49 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_temperature_ops) #8
  %call53 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_power_save_status_ops) #8
  %call57 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 128, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_clear_ucode_statistics_ops) #8
  %call61 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 128, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_missed_beacon_ops) #8
  %call65 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_plcp_delta_ops) #8
  %call69 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_rf_reset_ops) #8
  %call73 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_ucode_rx_stats_ops) #8
  %call77 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_ucode_tx_stats_ops) #8
  %call81 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_ucode_general_stats_ops) #8
  %call85 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 128, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_txfifo_flush_ops) #8
  %call89 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_protection_mode_ops) #8
  %call93 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_sensitivity_ops) #8
  %call97 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_chain_noise_ops) #8
  %call101 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_ucode_tracing_ops) #8
  %call105 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_ucode_bt_stats_ops) #8
  %call109 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_reply_tx_error_ops) #8
  %call113 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 128, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_rxon_flags_ops) #8
  %call117 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 128, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_rxon_filter_flags_ops) #8
  %call121 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 128, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_echo_test_ops) #8
  %call125 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 128, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_fw_restart_ops) #8
  %call129 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 384, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_log_event_ops) #8
  %lib.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %1 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lib.i, align 8
  %bt_params.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %bt_params.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bt_params.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.do.body137_crit_edge, label %iwl_advanced_bt_coexist.exit

entry.do.body137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body137

iwl_advanced_bt_coexist.exit:                     ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.i.not = icmp eq i8 %6, 0
  br i1 %tobool3.i.not, label %iwl_advanced_bt_coexist.exit.do.body137_crit_edge, label %do.body133

iwl_advanced_bt_coexist.exit.do.body137_crit_edge: ; preds = %iwl_advanced_bt_coexist.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body137

do.body133:                                       ; preds = %iwl_advanced_bt_coexist.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call134 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_bt_traffic_ops) #8
  br label %do.body137

do.body137:                                       ; preds = %do.body133, %iwl_advanced_bt_coexist.exit.do.body137_crit_edge, %entry.do.body137_crit_edge
  %call138 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %priv, ptr noundef nonnull @iwl_dbgfs_calib_disabled_ops) #8
  %mac80211_registered = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %7 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mac80211_registered, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.body137.if.end145_crit_edge, label %if.then141

do.body137.if.end145_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then141:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #8
  %9 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dbgfs_dir, i32 0, i32 3
  %10 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_parent, align 8
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 58
  %16 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfsdir, align 4
  %call142 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.38, ptr noundef %11)
  %call144 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.39, ptr noundef %17, ptr noundef nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #8
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %do.body137.if.end145_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_nvm_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %eeprom_blob_size = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 125
  %2 = ptrtoint ptr %eeprom_blob_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom_blob_size, align 8
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 256
  %rem = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %eeprom_blob = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 124
  %4 = ptrtoint ptr %eeprom_blob to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom_blob, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end8.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool4.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end6

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i.i
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 123
  %6 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nvm_data, align 8
  %nvm_version = getelementptr inbounds %struct.iwl_nvm_data, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %nvm_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nvm_version, align 4
  %conv7 = and i32 %9, 65535
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef nonnull @.str.40, i32 noundef %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49.not = icmp eq i32 %3, 0
  br i1 %cmp49.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %ofs.051 = phi i32 [ %add16, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %pos.050 = phi i32 [ %add15, %for.body.for.body_crit_edge ], [ %call8, %if.end6.for.body_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %call9.i.i, i32 %pos.050
  %sub12 = sub i32 %add, %pos.050
  %add.ptr13 = getelementptr i8, ptr %5, i32 %ofs.051
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.41, i32 noundef %ofs.051, ptr noundef %add.ptr13) #8
  %add15 = add i32 %call14, %pos.050
  %add16 = add i32 %ofs.051, 16
  %cmp = icmp ult i32 %add16, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %call8, %if.end6.for.end_crit_edge ], [ %add15, %for.body.for.end_crit_edge ]
  %call17 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i.i, i32 noundef %pos.0.lcssa) #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %for.end ], [ -61, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_sram_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %value.i186 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i183, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i183:                                      ; preds = %entry
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i183.cleanup_crit_edge, label %iwl_is_ready_rf.exit

if.end.i183.cleanup_crit_edge:                    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

iwl_is_ready_rf.exit:                             ; preds = %if.end.i183
  %7 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status.i.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.not = icmp eq i32 %9, 0
  br i1 %tobool.not.not, label %if.end, label %iwl_is_ready_rf.exit.cleanup_crit_edge

iwl_is_ready_rf.exit.cleanup_crit_edge:           ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %iwl_is_ready_rf.exit
  %dbgfs_sram_offset = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 119
  %10 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbgfs_sram_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %dbgfs_sram_len = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 120
  %12 = ptrtoint ptr %dbgfs_sram_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dbgfs_sram_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then3:                                         ; preds = %land.lhs.true
  %14 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8388608, ptr %dbgfs_sram_offset, align 8
  %ucode_loaded = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 32
  %15 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucode_loaded, align 8, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %cur_ucode = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 143
  %19 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_ucode, align 8
  %arrayidx = getelementptr %struct.iwl_fw, ptr %18, i32 0, i32 2, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %len10 = getelementptr inbounds %struct.fw_desc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len10, align 4
  %25 = ptrtoint ptr %dbgfs_sram_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dbgfs_sram_len, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %dbgfs_sram_len13 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 120
  %26 = ptrtoint ptr %dbgfs_sram_len13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dbgfs_sram_len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %27)
  %cmp = icmp eq i32 %27, -4
  %spec.select = select i1 %cmp, i32 4, i32 %27
  %mul = shl i32 %spec.select, 2
  %add = add i32 %mul, 50
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull @.str.42, i32 noundef %spec.select) #8
  %add.ptr22 = getelementptr i8, ptr %call9.i, i32 %call20
  %sub23 = sub i32 %add, %call20
  %28 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dbgfs_sram_offset, align 8
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.43, i32 noundef %29) #8
  %add26 = add i32 %call25, %call20
  %30 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dbgfs_sram_offset, align 8
  %and = and i32 %31, 3
  %and29 = and i32 %31, -4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %34 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %value.i, align 4, !annotation !679
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_mem.i.i, align 4
  %call.i.i = call i32 %38(ptr noundef %33, i32 noundef %and29, ptr noundef nonnull %value.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i184 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i184, label %if.end22.i, label %do.end.i, !prof !680

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 1375, i32 noundef 9, ptr noundef null) #8
  br label %iwl_trans_read_mem32.exit

if.end22.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i, align 4
  br label %iwl_trans_read_mem32.exit

iwl_trans_read_mem32.exit:                        ; preds = %if.end22.i, %do.end.i
  %retval.0.i185 = phi i32 [ -1515870811, %do.end.i ], [ %40, %if.end22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool31.not197 = icmp eq i32 %spec.select, 0
  br i1 %tobool31.not197, label %iwl_trans_read_mem32.exit.if.end95_crit_edge, label %for.body.preheader

iwl_trans_read_mem32.exit.if.end95_crit_edge:     ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

for.body.preheader:                               ; preds = %iwl_trans_read_mem32.exit
  %.str.46.sink = select i1 %cmp, ptr @.str.45, ptr @.str.46
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %sram.0205 = phi i32 [ %sram.1, %for.inc.for.body_crit_edge ], [ %and29, %for.body.preheader ]
  %pos.0204 = phi i32 [ %pos.3, %for.inc.for.body_crit_edge ], [ %add26, %for.body.preheader ]
  %len.1203 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %spec.select, %for.body.preheader ]
  %offset.0201 = phi i32 [ %offset.1, %for.inc.for.body_crit_edge ], [ %and, %for.body.preheader ]
  %i.0200 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.0198 = phi i32 [ %val.1, %for.inc.for.body_crit_edge ], [ %retval.0.i185, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0200)
  %cmp32 = icmp eq i32 %i.0200, 0
  br i1 %cmp32, label %if.then33, label %for.body.if.end39_crit_edge

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr34 = getelementptr i8, ptr %call9.i, i32 %pos.0204
  %sub35 = sub i32 %add, %pos.0204
  %add36 = add i32 %sram.0205, %offset.0201
  %call37 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.44, i32 noundef %add36) #8
  %add38 = add i32 %call37, %pos.0204
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %for.body.if.end39_crit_edge
  %pos.1 = phi i32 [ %add38, %if.then33 ], [ %pos.0204, %for.body.if.end39_crit_edge ]
  %add.ptr42 = getelementptr i8, ptr %call9.i, i32 %pos.1
  %sub43 = sub i32 %add, %pos.1
  %mul51 = shl i32 %offset.0201, 3
  %.neg = mul i32 %offset.0201, -8
  %mul45 = add i32 %.neg, 24
  %mul51.sink = select i1 %cmp, i32 %mul45, i32 %mul51
  %shr52 = lshr i32 %val.0198, %mul51.sink
  %and53 = and i32 %shr52, 255
  %call54 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull %.str.46.sink, i32 noundef %and53) #8
  %pos.2 = add i32 %call54, %pos.1
  %inc = add i32 %offset.0201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp57 = icmp eq i32 %inc, 4
  br i1 %cmp57, label %if.then58, label %if.end39.if.end62_crit_edge

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then58:                                        ; preds = %if.end39
  %add59 = add i32 %sram.0205, 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i186) #8
  %43 = ptrtoint ptr %value.i186 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %value.i186, align 4, !annotation !679
  %ops.i.i187 = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %ops.i.i187 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i187, align 4
  %read_mem.i.i188 = getelementptr inbounds %struct.iwl_trans_ops, ptr %45, i32 0, i32 26
  %46 = ptrtoint ptr %read_mem.i.i188 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_mem.i.i188, align 4
  %call.i.i189 = call i32 %47(ptr noundef %42, i32 noundef %add59, ptr noundef nonnull %value.i186, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i189)
  %tobool.not.i190 = icmp eq i32 %call.i.i189, 0
  br i1 %tobool.not.i190, label %if.end22.i192, label %do.end.i191, !prof !680

do.end.i191:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 1375, i32 noundef 9, ptr noundef null) #8
  br label %iwl_trans_read_mem32.exit194

if.end22.i192:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %value.i186 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value.i186, align 4
  br label %iwl_trans_read_mem32.exit194

iwl_trans_read_mem32.exit194:                     ; preds = %if.end22.i192, %do.end.i191
  %retval.0.i193 = phi i32 [ -1515870811, %do.end.i191 ], [ %49, %if.end22.i192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i186) #8
  br label %if.end62

if.end62:                                         ; preds = %iwl_trans_read_mem32.exit194, %if.end39.if.end62_crit_edge
  %val.1 = phi i32 [ %retval.0.i193, %iwl_trans_read_mem32.exit194 ], [ %val.0198, %if.end39.if.end62_crit_edge ]
  %offset.1 = phi i32 [ 0, %iwl_trans_read_mem32.exit194 ], [ %inc, %if.end39.if.end62_crit_edge ]
  %sram.1 = phi i32 [ %add59, %iwl_trans_read_mem32.exit194 ], [ %sram.0205, %if.end39.if.end62_crit_edge ]
  %inc63 = add i32 %i.0200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc63)
  %cmp64 = icmp eq i32 %inc63, 16
  br i1 %cmp64, label %if.end62.for.inc.sink.split_crit_edge, label %if.else70

if.end62.for.inc.sink.split_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else70:                                        ; preds = %if.end62
  %and71 = and i32 %inc63, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else70.for.inc.sink.split_crit_edge, label %if.else78

if.else70.for.inc.sink.split_crit_edge:           ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else78:                                        ; preds = %if.else70
  %and79 = and i32 %inc63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else78.for.inc.sink.split_crit_edge, label %if.else78.for.inc_crit_edge

if.else78.for.inc_crit_edge:                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else78.for.inc.sink.split_crit_edge:           ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else78.for.inc.sink.split_crit_edge, %if.else70.for.inc.sink.split_crit_edge, %if.end62.for.inc.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.47, %if.end62.for.inc.sink.split_crit_edge ], [ @.str.48, %if.else70.for.inc.sink.split_crit_edge ], [ @.str.49, %if.else78.for.inc.sink.split_crit_edge ]
  %i.1.ph = phi i32 [ 0, %if.end62.for.inc.sink.split_crit_edge ], [ %inc63, %if.else70.for.inc.sink.split_crit_edge ], [ %inc63, %if.else78.for.inc.sink.split_crit_edge ]
  %add.ptr66 = getelementptr i8, ptr %call9.i, i32 %pos.2
  %sub67 = sub i32 %add, %pos.2
  %call68 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull %.str.47.sink) #8
  %add69 = add i32 %call68, %pos.2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else78.for.inc_crit_edge
  %i.1 = phi i32 [ %inc63, %if.else78.for.inc_crit_edge ], [ %i.1.ph, %for.inc.sink.split ]
  %pos.3 = phi i32 [ %pos.2, %if.else78.for.inc_crit_edge ], [ %add69, %for.inc.sink.split ]
  %dec = add i32 %len.1203, -1
  %tobool31.not = icmp eq i32 %dec, 0
  br i1 %tobool31.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool89.not = icmp eq i32 %i.1, 0
  br i1 %tobool89.not, label %for.end.if.end95_crit_edge, label %if.then90

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then90:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr91 = getelementptr i8, ptr %call9.i, i32 %pos.3
  %sub92 = sub i32 %add, %pos.3
  %call93 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.47) #8
  %add94 = add i32 %call93, %pos.3
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %for.end.if.end95_crit_edge, %iwl_trans_read_mem32.exit.if.end95_crit_edge
  %pos.4 = phi i32 [ %add94, %if.then90 ], [ %pos.3, %for.end.if.end95_crit_edge ], [ %add26, %iwl_trans_read_mem32.exit.if.end95_crit_edge ]
  %call96 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %pos.4) #8
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.end12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %iwl_is_ready_rf.exit.cleanup_crit_edge, %if.end.i183.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call96, %if.end95 ], [ -11, %iwl_is_ready_rf.exit.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge ], [ -11, %if.end.i183.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_sram_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #8
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !679
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !679
  %4 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #8
  %7 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.51, ptr noundef nonnull %offset, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %dbgfs_sram_offset = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 119
  %13 = ptrtoint ptr %dbgfs_sram_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dbgfs_sram_offset, align 8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %dbgfs_sram_len = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 120
  %16 = ptrtoint ptr %dbgfs_sram_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dbgfs_sram_len, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.52, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %dbgfs_sram_offset10 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 119
  %19 = ptrtoint ptr %dbgfs_sram_offset10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dbgfs_sram_offset10, align 8
  %dbgfs_sram_len11 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 120
  %20 = ptrtoint ptr %dbgfs_sram_len11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -4, ptr %dbgfs_sram_len11, align 4
  br label %cleanup

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dbgfs_sram_offset13 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 119
  %21 = ptrtoint ptr %dbgfs_sram_offset13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dbgfs_sram_offset13, align 8
  %dbgfs_sram_len14 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 120
  %22 = ptrtoint ptr %dbgfs_sram_len14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dbgfs_sram_len14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %if.then9, %if.then5, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.then9 ], [ %count, %if.else12 ], [ %count, %if.then5 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_wowlan_sram_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wowlan_sram = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 122
  %2 = ptrtoint ptr %wowlan_sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wowlan_sram, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %arrayidx = getelementptr %struct.iwl_fw, ptr %5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr inbounds %struct.fw_desc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %3, i32 noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_stations_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_stations = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stations, align 4
  %mul = mul i32 %3, 500
  %add = add i32 %mul, 30
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_stations, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %add, ptr noundef nonnull @.str.56, i32 noundef %5) #8
  br label %for.body

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %if.end
  %pos.0117 = phi i32 [ %call2, %if.end ], [ %pos.3, %for.inc47.for.body_crit_edge ]
  %i.0115 = phi i32 [ 0, %if.end ], [ %inc48, %for.inc47.for.body_crit_edge ]
  %used = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 63, i32 %i.0115, i32 1
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %for.body.for.inc47_crit_edge, label %if.end6

for.body.for.inc47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

if.end6:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 63, i32 %i.0115
  %add.ptr7 = getelementptr i8, ptr %call9.i, i32 %pos.0117
  %sub8 = sub i32 %add, %pos.0117
  %sta9 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 2
  %station_flags_msk = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 5
  %8 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %station_flags_msk, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.57, i32 noundef %i.0115, ptr noundef %sta9, i32 noundef %9) #8
  %add12 = add i32 %call11, %pos.0117
  %add.ptr13 = getelementptr i8, ptr %call9.i, i32 %add12
  %sub14 = sub i32 %add, %add12
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.58) #8
  %add16 = add i32 %add12, %call15
  br label %for.body19

for.body19:                                       ; preds = %if.end38.for.body19_crit_edge, %if.end6
  %pos.1114 = phi i32 [ %add16, %if.end6 ], [ %add42, %if.end38.for.body19_crit_edge ]
  %j.0113 = phi i32 [ 0, %if.end6 ], [ %inc, %if.end38.for.body19_crit_edge ]
  %arrayidx22 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 65, i32 %i.0115, i32 %j.0113
  %add.ptr23 = getelementptr i8, ptr %call9.i, i32 %pos.1114
  %sub24 = sub i32 %add, %pos.1114
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx22, align 4
  %conv = zext i16 %11 to i32
  %next_reclaimed = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 65, i32 %i.0115, i32 %j.0113, i32 1
  %12 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %next_reclaimed, align 2
  %conv25 = zext i16 %13 to i32
  %agg = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 65, i32 %i.0115, i32 %j.0113, i32 2
  %14 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agg, align 4
  %state = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 65, i32 %i.0115, i32 %j.0113, i32 2, i32 1
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %txq_id = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 65, i32 %i.0115, i32 %j.0113, i32 2, i32 2
  %18 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %txq_id, align 4
  %conv28 = zext i16 %19 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.59, i32 noundef %j.0113, i32 noundef %conv, i32 noundef %conv25, i32 noundef %15, i32 noundef %17, i32 noundef %conv28) #8
  %add30 = add i32 %call29, %pos.1114
  %wait_for_ba = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 65, i32 %i.0115, i32 %j.0113, i32 2, i32 4
  %20 = ptrtoint ptr %wait_for_ba to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wait_for_ba, align 4, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  br i1 %tobool32.not, label %for.body19.if.end38_crit_edge, label %if.then33

for.body19.if.end38_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then33:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr34 = getelementptr i8, ptr %call9.i, i32 %add30
  %sub35 = sub i32 %add, %add30
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.60) #8
  %add37 = add i32 %call36, %add30
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %for.body19.if.end38_crit_edge
  %pos.2 = phi i32 [ %add37, %if.then33 ], [ %add30, %for.body19.if.end38_crit_edge ]
  %add.ptr39 = getelementptr i8, ptr %call9.i, i32 %pos.2
  %sub40 = sub i32 %add, %pos.2
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.47) #8
  %add42 = add i32 %call41, %pos.2
  %inc = add nuw nsw i32 %j.0113, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end38.for.body19_crit_edge

if.end38.for.body19_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19

for.end:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr43 = getelementptr i8, ptr %call9.i, i32 %add42
  %sub44 = sub i32 %add, %add42
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.47) #8
  %add46 = add i32 %call45, %add42
  br label %for.inc47

for.inc47:                                        ; preds = %for.end, %for.body.for.inc47_crit_edge
  %pos.3 = phi i32 [ %add46, %for.end ], [ %pos.0117, %for.body.for.inc47_crit_edge ]
  %inc48 = add nuw nsw i32 %i.0115, 1
  %exitcond118.not = icmp eq i32 %inc48, 16
  br i1 %exitcond118.not, label %for.end49, label %for.inc47.for.body_crit_edge

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end49:                                        ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %pos.3) #8
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %for.end49 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_channels_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.if.end28_crit_edge, label %if.then3

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then3:                                         ; preds = %if.end
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_channels, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.61, i32 noundef %12) #8
  %13 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp145 = icmp sgt i32 %14, 0
  br i1 %cmp145, label %if.then3.for.body_crit_edge, label %if.then3.if.end28_crit_edge

if.then3.if.end28_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then3.for.body_crit_edge
  %i.0147 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then3.for.body_crit_edge ]
  %pos.0146 = phi i32 [ %add27, %for.body.for.body_crit_edge ], [ %call5, %if.then3.for.body_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %call7.i.i, i32 %pos.0146
  %sub8 = sub i32 4096, %pos.0146
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.0147, i32 3
  %15 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %16 to i32
  %max_power = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.0147, i32 6
  %17 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_power, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.0147, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11 = icmp ne i32 %and, 0
  %cond = select i1 %tobool11, ptr @.str.63, ptr @.str.64
  %and14 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %not.tobool15.not = xor i1 %tobool15.not, true
  %spec.select = select i1 %not.tobool15.not, i1 true, i1 %tobool11
  %cond20 = select i1 %spec.select, ptr @.str.64, ptr @.str.65
  %cond25 = select i1 %tobool15.not, ptr @.str.67, ptr @.str.66
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.62, i32 noundef %conv, i32 noundef %18, ptr noundef nonnull %cond, ptr noundef nonnull %cond20, ptr noundef nonnull %cond25) #8
  %add27 = add i32 %call26, %pos.0146
  %inc = add nuw nsw i32 %i.0147, 1
  %21 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_channels, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end28:                                         ; preds = %for.body.if.end28_crit_edge, %if.then3.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %pos.1 = phi i32 [ 0, %if.end.if.end28_crit_edge ], [ %call5, %if.then3.if.end28_crit_edge ], [ %add27, %for.body.if.end28_crit_edge ]
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 4
  %wiphy.i143 = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy.i143 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy.i143, align 8
  %arrayidx.i144 = getelementptr %struct.wiphy, ptr %26, i32 0, i32 53, i32 1
  %27 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i144, align 4
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %if.end28.if.end76_crit_edge, label %if.then31

if.end28.if.end76_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then31:                                        ; preds = %if.end28
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %pos.1
  %sub34 = sub i32 4096, %pos.1
  %n_channels35 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %n_channels35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_channels35, align 4
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.68, i32 noundef %32) #8
  %add37 = add i32 %call36, %pos.1
  %33 = ptrtoint ptr %n_channels35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_channels35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp40148 = icmp sgt i32 %34, 0
  br i1 %cmp40148, label %if.then31.for.body42_crit_edge, label %if.then31.if.end76_crit_edge

if.then31.if.end76_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then31.for.body42_crit_edge:                   ; preds = %if.then31
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %if.then31.for.body42_crit_edge
  %i.1150 = phi i32 [ %inc74, %for.body42.for.body42_crit_edge ], [ 0, %if.then31.for.body42_crit_edge ]
  %pos.2149 = phi i32 [ %add72, %for.body42.for.body42_crit_edge ], [ %add37, %if.then31.for.body42_crit_edge ]
  %add.ptr43 = getelementptr i8, ptr %call7.i.i, i32 %pos.2149
  %sub44 = sub i32 4096, %pos.2149
  %hw_value46 = getelementptr %struct.ieee80211_channel, ptr %30, i32 %i.1150, i32 3
  %35 = ptrtoint ptr %hw_value46 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hw_value46, align 2
  %conv47 = zext i16 %36 to i32
  %max_power49 = getelementptr %struct.ieee80211_channel, ptr %30, i32 %i.1150, i32 6
  %37 = ptrtoint ptr %max_power49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_power49, align 4
  %flags51 = getelementptr %struct.ieee80211_channel, ptr %30, i32 %i.1150, i32 4
  %39 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags51, align 4
  %and52 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53 = icmp ne i32 %and52, 0
  %cond54 = select i1 %tobool53, ptr @.str.63, ptr @.str.64
  %and57 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %not.tobool58.not = xor i1 %tobool58.not, true
  %spec.select141 = select i1 %not.tobool58.not, i1 true, i1 %tobool53
  %cond65 = select i1 %spec.select141, ptr @.str.64, ptr @.str.65
  %cond70 = select i1 %tobool58.not, ptr @.str.67, ptr @.str.66
  %call71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.62, i32 noundef %conv47, i32 noundef %38, ptr noundef nonnull %cond54, ptr noundef nonnull %cond65, ptr noundef nonnull %cond70) #8
  %add72 = add i32 %call71, %pos.2149
  %inc74 = add nuw nsw i32 %i.1150, 1
  %41 = ptrtoint ptr %n_channels35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_channels35, align 4
  %cmp40 = icmp slt i32 %inc74, %42
  br i1 %cmp40, label %for.body42.for.body42_crit_edge, label %for.body42.if.end76_crit_edge

for.body42.if.end76_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42

if.end76:                                         ; preds = %for.body42.if.end76_crit_edge, %if.then31.if.end76_crit_edge, %if.end28.if.end76_crit_edge
  %pos.3 = phi i32 [ %pos.1, %if.end28.if.end76_crit_edge ], [ %add37, %if.then31.if.end76_crit_edge ], [ %add72, %for.body42.if.end76_crit_edge ]
  %call77 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %pos.3) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %if.end76 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_status_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %status = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %4, 1
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 512, ptr noundef nonnull @.str.69, i32 noundef %and1.i) #8
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call1
  %sub4 = sub i32 512, %call1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %shr.i = lshr i32 %6, 1
  %and1.i117 = and i32 %shr.i, 1
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.70, i32 noundef %and1.i117) #8
  %add8 = add i32 %call7, %call1
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %add8
  %sub11 = sub i32 512, %add8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %shr.i118 = lshr i32 %8, 2
  %and1.i119 = and i32 %shr.i118, 1
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.71, i32 noundef %and1.i119) #8
  %add15 = add i32 %call14, %add8
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add15
  %sub18 = sub i32 512, %add15
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status, align 4
  %shr.i120 = lshr i32 %10, 3
  %and1.i121 = and i32 %shr.i120, 1
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.72, i32 noundef %and1.i121) #8
  %add22 = add i32 %call21, %add15
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %add22
  %sub25 = sub i32 512, %add22
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status, align 4
  %shr.i122 = lshr i32 %12, 5
  %and1.i123 = and i32 %shr.i122, 1
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.73, i32 noundef %and1.i123) #8
  %add29 = add i32 %call28, %add22
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add29
  %sub32 = sub i32 512, %add29
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status, align 4
  %shr.i124 = lshr i32 %14, 6
  %and1.i125 = and i32 %shr.i124, 1
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.74, i32 noundef %and1.i125) #8
  %add36 = add i32 %call35, %add29
  %add.ptr38 = getelementptr i8, ptr %buf, i32 %add36
  %sub39 = sub i32 512, %add36
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %status, align 4
  %shr.i126 = lshr i32 %16, 7
  %and1.i127 = and i32 %shr.i126, 1
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.75, i32 noundef %and1.i127) #8
  %add43 = add i32 %call42, %add36
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %add43
  %sub46 = sub i32 512, %add43
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %status, align 4
  %shr.i128 = lshr i32 %18, 8
  %and1.i129 = and i32 %shr.i128, 1
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr45, i32 noundef %sub46, ptr noundef nonnull @.str.76, i32 noundef %and1.i129) #8
  %add50 = add i32 %call49, %add43
  %add.ptr52 = getelementptr i8, ptr %buf, i32 %add50
  %sub53 = sub i32 512, %add50
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status, align 4
  %shr.i130 = lshr i32 %20, 9
  %and1.i131 = and i32 %shr.i130, 1
  %call56 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.77, i32 noundef %and1.i131) #8
  %add57 = add i32 %call56, %add50
  %add.ptr59 = getelementptr i8, ptr %buf, i32 %add57
  %sub60 = sub i32 512, %add57
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status, align 4
  %shr.i132 = lshr i32 %22, 13
  %and1.i133 = and i32 %shr.i132, 1
  %call63 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.78, i32 noundef %and1.i133) #8
  %add64 = add i32 %call63, %add57
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %add64
  %sub67 = sub i32 512, %add64
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status, align 4
  %shr.i134 = lshr i32 %24, 10
  %and1.i135 = and i32 %shr.i134, 1
  %call70 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.79, i32 noundef %and1.i135) #8
  %add71 = add i32 %call70, %add64
  %call73 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add71) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #8
  ret i32 %call73
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rx_handlers_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1536) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %pos.027 = phi i32 [ %pos.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 28, i32 %cnt.028
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %pos.027
  %sub = sub i32 1536, %pos.027
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call3 = tail call ptr @iwl_get_cmd_string(ptr noundef %6, i32 noundef %cnt.028) #8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.80, ptr noundef %call3, i32 noundef %8) #8
  %add = add i32 %call6, %pos.027
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %pos.1 = phi i32 [ %add, %if.then2 ], [ %pos.027, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %cnt.028, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %pos.1) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rx_handlers_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %reset_flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_flag) #8
  %2 = ptrtoint ptr %reset_flag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reset_flag, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.52, ptr noundef nonnull %reset_flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %reset_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %rx_handlers_stats = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 28
  %12 = call ptr @memset(ptr %rx_handlers_stats, i32 0, i32 1020)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.end.cleanup_crit_edge ], [ %count, %if.then8 ], [ %count, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_flag) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_qos_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 50
  %arrayidx2 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 51
  %cmp73 = icmp ult ptr %contexts, %arrayidx2
  br i1 %cmp73, label %for.body.lr.ph, label %entry.for.end41_crit_edge

entry.for.end41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.body.lr.ph:                                   ; preds = %entry
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %for.body.lr.ph
  %pos.076 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.2, %for.inc40.for.body_crit_edge ]
  %ctx.074 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc40.for.body_crit_edge ]
  %3 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %4 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 7
  %5 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %6
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc40_crit_edge, label %if.then

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc40

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.076
  %sub = sub i32 512, %pos.076
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.81, i32 noundef %6) #8
  %add = add i32 %call, %pos.076
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add
  %sub10 = sub i32 512, %add
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.82) #8
  %add12 = add i32 %call11, %add
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add12
  %sub15 = sub i32 512, %add12
  %arrayidx16 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx16, align 4
  %conv17 = zext i16 %8 to i32
  %cw_max = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cw_max, align 2
  %conv22 = zext i16 %10 to i32
  %aifsn = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %aifsn to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aifsn, align 4
  %conv27 = zext i8 %12 to i32
  %edca_txop = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %edca_txop to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %edca_txop, align 2
  %conv32 = zext i16 %14 to i32
  %call33 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.83, i32 noundef 0, i32 noundef %conv17, i32 noundef %conv22, i32 noundef %conv27, i32 noundef %conv32) #8
  %add34 = add i32 %call33, %add12
  %add.ptr9.1 = getelementptr i8, ptr %buf, i32 %add34
  %sub10.1 = sub i32 512, %add34
  %call11.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.1, i32 noundef %sub10.1, ptr noundef nonnull @.str.82) #8
  %add12.1 = add i32 %call11.1, %add34
  %add.ptr14.1 = getelementptr i8, ptr %buf, i32 %add12.1
  %sub15.1 = sub i32 512, %add12.1
  %arrayidx16.1 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx16.1, align 4
  %conv17.1 = zext i16 %16 to i32
  %cw_max.1 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %cw_max.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cw_max.1, align 2
  %conv22.1 = zext i16 %18 to i32
  %aifsn.1 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %aifsn.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %aifsn.1, align 4
  %conv27.1 = zext i8 %20 to i32
  %edca_txop.1 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 1, i32 4
  %21 = ptrtoint ptr %edca_txop.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %edca_txop.1, align 2
  %conv32.1 = zext i16 %22 to i32
  %call33.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.1, i32 noundef %sub15.1, ptr noundef nonnull @.str.83, i32 noundef 1, i32 noundef %conv17.1, i32 noundef %conv22.1, i32 noundef %conv27.1, i32 noundef %conv32.1) #8
  %add34.1 = add i32 %call33.1, %add12.1
  %add.ptr9.2 = getelementptr i8, ptr %buf, i32 %add34.1
  %sub10.2 = sub i32 512, %add34.1
  %call11.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.2, i32 noundef %sub10.2, ptr noundef nonnull @.str.82) #8
  %add12.2 = add i32 %call11.2, %add34.1
  %add.ptr14.2 = getelementptr i8, ptr %buf, i32 %add12.2
  %sub15.2 = sub i32 512, %add12.2
  %arrayidx16.2 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx16.2, align 4
  %conv17.2 = zext i16 %24 to i32
  %cw_max.2 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 2, i32 1
  %25 = ptrtoint ptr %cw_max.2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cw_max.2, align 2
  %conv22.2 = zext i16 %26 to i32
  %aifsn.2 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 2, i32 2
  %27 = ptrtoint ptr %aifsn.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %aifsn.2, align 4
  %conv27.2 = zext i8 %28 to i32
  %edca_txop.2 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 2, i32 4
  %29 = ptrtoint ptr %edca_txop.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %edca_txop.2, align 2
  %conv32.2 = zext i16 %30 to i32
  %call33.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.2, i32 noundef %sub15.2, ptr noundef nonnull @.str.83, i32 noundef 2, i32 noundef %conv17.2, i32 noundef %conv22.2, i32 noundef %conv27.2, i32 noundef %conv32.2) #8
  %add34.2 = add i32 %call33.2, %add12.2
  %add.ptr9.3 = getelementptr i8, ptr %buf, i32 %add34.2
  %sub10.3 = sub i32 512, %add34.2
  %call11.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.3, i32 noundef %sub10.3, ptr noundef nonnull @.str.82) #8
  %add12.3 = add i32 %call11.3, %add34.2
  %add.ptr14.3 = getelementptr i8, ptr %buf, i32 %add12.3
  %sub15.3 = sub i32 512, %add12.3
  %arrayidx16.3 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 3
  %31 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx16.3, align 4
  %conv17.3 = zext i16 %32 to i32
  %cw_max.3 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 3, i32 1
  %33 = ptrtoint ptr %cw_max.3 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cw_max.3, align 2
  %conv22.3 = zext i16 %34 to i32
  %aifsn.3 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 3, i32 2
  %35 = ptrtoint ptr %aifsn.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %aifsn.3, align 4
  %conv27.3 = zext i8 %36 to i32
  %edca_txop.3 = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 0, i32 17, i32 1, i32 1, i32 3, i32 4
  %37 = ptrtoint ptr %edca_txop.3 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %edca_txop.3, align 2
  %conv32.3 = zext i16 %38 to i32
  %call33.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.3, i32 noundef %sub15.3, ptr noundef nonnull @.str.83, i32 noundef 3, i32 noundef %conv17.3, i32 noundef %conv22.3, i32 noundef %conv27.3, i32 noundef %conv32.3) #8
  %add34.3 = add i32 %call33.3, %add12.3
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %add34.3
  %sub37 = sub i32 512, %add34.3
  %call38 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.47) #8
  %add39 = add i32 %call38, %add34.3
  br label %for.inc40

for.inc40:                                        ; preds = %if.then, %for.body.for.inc40_crit_edge
  %pos.2 = phi i32 [ %add39, %if.then ], [ %pos.076, %for.body.for.inc40_crit_edge ]
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.074, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx2
  br i1 %cmp, label %for.inc40.for.body_crit_edge, label %for.inc40.for.end41_crit_edge

for.inc40.for.end41_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end41

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end41:                                        ; preds = %for.inc40.for.end41_crit_edge, %entry.for.end41_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end41_crit_edge ], [ %pos.2, %for.inc40.for.end41_crit_edge ]
  %call43 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.0.lcssa) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #8
  ret i32 %call43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_sleep_level_override_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #8
  %debug_sleep_level_override = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %3 = ptrtoint ptr %debug_sleep_level_override to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_sleep_level_override, align 8
  %5 = xor i32 %4, -1
  %.lobit.not = lshr i32 %5, 31
  %spec.select = add i32 %.lobit.not, %4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull @.str.84, i32 noundef %spec.select) #8
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_sleep_level_override_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.else

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp sgt i32 %11, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end12

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp13.not = icmp eq i32 %11, -1
  br i1 %cmp13.not, label %if.end12.if.end17_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %sub = add nsw i32 %11, -1
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp15 = icmp ugt i32 %sub, 4
  br i1 %cmp15, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %13 = phi i32 [ %sub, %land.lhs.true.if.end17_crit_edge ], [ -1, %if.end12.if.end17_crit_edge ]
  %status.i.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %19 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status.i.i, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not.not = icmp eq i32 %21, 0
  br i1 %tobool19.not.not, label %if.end21, label %iwl_is_ready_rf.exit.cleanup_crit_edge

iwl_is_ready_rf.exit.cleanup_crit_edge:           ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %debug_sleep_level_override = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 2
  %22 = ptrtoint ptr %debug_sleep_level_override to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %13, ptr %debug_sleep_level_override, align 8
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call22 = call i32 @iwl_power_update_mode(ptr noundef %1, i1 noundef zeroext true) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %iwl_is_ready_rf.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end21 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -11, %iwl_is_ready_rf.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.end12.cleanup_crit_edge ], [ -11, %if.end17.cleanup_crit_edge ], [ -11, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_current_sleep_command_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 200)
  %power_data = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 60
  %3 = ptrtoint ptr %power_data to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %power_data, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.86, i32 noundef %conv) #8
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 200, %call
  %rx_data_timeout = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 0, i32 3
  %6 = ptrtoint ptr %rx_data_timeout to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %rx_data_timeout, align 1
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %tx_data_timeout = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 0, i32 4
  %9 = ptrtoint ptr %tx_data_timeout to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %tx_data_timeout, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.87, i32 noundef %8, i32 noundef %11) #8
  %add5 = add i32 %call4, %call
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %add5
  %sub9 = sub i32 200, %add5
  %arrayidx = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 0, i32 5, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %arrayidx, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %call10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.88, i32 noundef 0, i32 noundef %14) #8
  %add11 = add i32 %call10, %add5
  %add.ptr8.1 = getelementptr i8, ptr %buf, i32 %add11
  %sub9.1 = sub i32 200, %add11
  %arrayidx.1 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx.1, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %call10.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.1, i32 noundef %sub9.1, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef %17) #8
  %add11.1 = add i32 %call10.1, %add11
  %add.ptr8.2 = getelementptr i8, ptr %buf, i32 %add11.1
  %sub9.2 = sub i32 200, %add11.1
  %arrayidx.2 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx.2, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %call10.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.2, i32 noundef %sub9.2, ptr noundef nonnull @.str.88, i32 noundef 2, i32 noundef %20) #8
  %add11.2 = add i32 %call10.2, %add11.1
  %add.ptr8.3 = getelementptr i8, ptr %buf, i32 %add11.2
  %sub9.3 = sub i32 200, %add11.2
  %arrayidx.3 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx.3, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %call10.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.3, i32 noundef %sub9.3, ptr noundef nonnull @.str.88, i32 noundef 3, i32 noundef %23) #8
  %add11.3 = add i32 %call10.3, %add11.2
  %add.ptr8.4 = getelementptr i8, ptr %buf, i32 %add11.3
  %sub9.4 = sub i32 200, %add11.3
  %arrayidx.4 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 60, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx.4, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %call10.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.4, i32 noundef %sub9.4, ptr noundef nonnull @.str.88, i32 noundef 4, i32 noundef %26) #8
  %add11.4 = add i32 %call10.4, %add11.3
  %call13 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add11.4) #8
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #8
  ret i32 %call13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_thermal_throttling_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 61
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %advanced_tt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 61, i32 1
  %3 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %advanced_tt, align 4, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.91, ptr @.str.90
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.89, ptr noundef nonnull %cond) #8
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 100, %call
  %5 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thermal_throttle, align 4
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.92, i32 noundef %6) #8
  %add5 = add i32 %call4, %call
  %7 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %advanced_tt, align 4, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %restriction8 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 61, i32 5
  %9 = ptrtoint ptr %restriction8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %restriction8, align 4
  %11 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %thermal_throttle, align 4
  %add.ptr10 = getelementptr %struct.iwl_tt_restriction, ptr %10, i32 %12
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %add5
  %sub13 = sub i32 100, %add5
  %13 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr10, align 4
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.93, i32 noundef %14) #8
  %add15 = add i32 %call14, %add5
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add15
  %sub18 = sub i32 100, %add15
  %rx_stream = getelementptr %struct.iwl_tt_restriction, ptr %10, i32 %12, i32 1
  %15 = ptrtoint ptr %rx_stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_stream, align 4
  %call19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.94, i32 noundef %16) #8
  %add20 = add i32 %call19, %add15
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %add20
  %sub23 = sub i32 100, %add20
  %is_ht = getelementptr %struct.iwl_tt_restriction, ptr %10, i32 %12, i32 2
  %17 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_ht, align 4, !range !678
  %19 = zext i8 %18 to i32
  %call25 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.95, i32 noundef %19) #8
  %add26 = add i32 %call25, %add20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pos.0 = phi i32 [ %add26, %if.then ], [ %add5, %entry.if.end_crit_edge ]
  %call28 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.0) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #8
  ret i32 %call28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_disable_ht40_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %disable_ht40 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 121
  %3 = ptrtoint ptr %disable_ht40 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %disable_ht40, align 8, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.98, ptr @.str.97
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond) #8
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_disable_ht40_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %ht40 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht40) #8
  %2 = ptrtoint ptr %ht40 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ht40, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %ht40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 50
  %arrayidx2.i = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 51
  %cmp11.i = icmp ult ptr %contexts.i, %arrayidx2.i
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %if.end6.if.then9_crit_edge

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.body.lr.ph.i:                                 ; preds = %if.end6
  %valid_contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %valid_contexts.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid_contexts.i, align 4
  %conv.i = zext i8 %11 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctx.012.i = phi ptr [ %contexts.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %ctxid.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i, i32 0, i32 7
  %12 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctxid.i, align 4
  %shl.i = shl nuw i32 1, %13
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i21

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i21:                                      ; preds = %for.body.i
  %filter_flags.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i, i32 0, i32 14, i32 13
  %14 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %filter_flags.i.i, align 4
  %16 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %if.then.i21.for.inc.i_crit_edge, label %if.then.i21.cleanup_crit_edge

if.then.i21.cleanup_crit_edge:                    ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i21.for.inc.i_crit_edge:                  ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i21.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.012.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then9_crit_edge

for.inc.i.if.then9_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then9:                                         ; preds = %for.inc.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %17 = ptrtoint ptr %ht40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ht40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10 = icmp ne i32 %18, 0
  %disable_ht40 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 121
  %frombool = zext i1 %tobool10 to i8
  %19 = ptrtoint ptr %disable_ht40 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %disable_ht40, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then.i21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.then9 ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.then.i21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht40) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_temperature_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %temperature = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  %3 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temperature, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.84, i32 noundef %4) #8
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_power_save_status_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 60)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call = tail call i32 @iwl_read32(ptr noundef %4, i32 noundef 36) #8
  %and = and i32 %call, 50331648
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 60, ptr noundef nonnull @.str.99) #8
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %cond.false7 [
    i32 0, label %entry.cond.end10_crit_edge
    i32 16777216, label %cond.end10.fold.split
  ]

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end10

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and)
  %cmp8 = icmp eq i32 %and, 33554432
  %cond = select i1 %cmp8, ptr @.str.103, ptr @.str.104
  br label %cond.end10

cond.end10.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end10

cond.end10:                                       ; preds = %cond.end10.fold.split, %cond.false7, %entry.cond.end10_crit_edge
  %cond11 = phi ptr [ @.str.101, %entry.cond.end10_crit_edge ], [ %cond, %cond.false7 ], [ @.str.102, %cond.end10.fold.split ]
  %sub4 = sub i32 60, %call1
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call1
  %call12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond11) #8
  %add13 = add i32 %call12, %call1
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add13) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf) #8
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_clear_ucode_statistics_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %clear = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clear) #8
  %2 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clear, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %clear)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call7 = call i32 @iwl_send_statistics_request(ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clear) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_statistics_request(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_missed_beacon_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #8
  %missed_beacon_threshold = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 25
  %2 = call ptr @memset(ptr %buf, i32 255, i32 12)
  %3 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %missed_beacon_threshold, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 12, ptr noundef nonnull @.str.84, i32 noundef %4) #8
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_missed_beacon_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %missed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %missed) #8
  %2 = ptrtoint ptr %missed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %missed, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %missed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %missed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %missed, align 4
  %12 = add i32 %11, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %12)
  %13 = icmp ult i32 %12, -5
  %missed_beacon_threshold = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 25
  br i1 %13, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %missed_beacon_threshold, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %missed_beacon_threshold, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then9 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %missed) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_plcp_delta_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #8
  %plcp_delta_threshold = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 33
  %2 = call ptr @memset(ptr %buf, i32 255, i32 12)
  %3 = ptrtoint ptr %plcp_delta_threshold to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %plcp_delta_threshold, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 12, ptr noundef nonnull @.str.105, i32 noundef %conv) #8
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_plcp_delta_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %plcp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plcp) #8
  %2 = ptrtoint ptr %plcp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %plcp, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %plcp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %plcp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %plcp, align 4
  %12 = add i32 %11, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %12)
  %13 = icmp ult i32 %12, -255
  br i1 %13, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %plcp_delta_threshold = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %plcp_delta_threshold to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %plcp_delta_threshold, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %11 to i8
  %plcp_delta_threshold10 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %plcp_delta_threshold10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %plcp_delta_threshold10, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then9 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plcp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rf_reset_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [300 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 300)
  %rf_reset1 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 29
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 300, ptr noundef nonnull @.str.106) #8
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call
  %sub4 = sub i32 300, %call
  %3 = ptrtoint ptr %rf_reset1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rf_reset1, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.107, i32 noundef %4) #8
  %add6 = add i32 %call5, %call
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %add6
  %sub9 = sub i32 300, %add6
  %reset_success_count = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 29, i32 1
  %5 = ptrtoint ptr %reset_success_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reset_success_count, align 4
  %call10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.108, i32 noundef %6) #8
  %add11 = add i32 %call10, %add6
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %add11
  %sub14 = sub i32 300, %add11
  %reset_reject_count = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 29, i32 2
  %7 = ptrtoint ptr %reset_reject_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_reject_count, align 4
  %call15 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.109, i32 noundef %8) #8
  %add16 = add i32 %call15, %add11
  %call18 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add16) #8
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %buf) #8
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rf_reset_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @iwl_force_rf_reset(ptr noundef %1, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_force_rf_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ucode_rx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8560, i32 noundef 3520, i32 noundef 2) #11
  %tobool2.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %rx_ofdm = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3
  %rx_cck = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5
  %rx_non_phy = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2
  %rx_ofdm_ht = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4
  %rx_ofdm9 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2
  %rx_cck11 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4
  %rx_non_phy13 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1
  %rx_ofdm_ht15 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3
  %rx_ofdm16 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2
  %rx_cck18 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4
  %rx_non_phy20 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1
  %rx_ofdm_ht22 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3
  %rx_ofdm23 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2
  %rx_cck25 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4
  %rx_non_phy27 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1
  %rx_ofdm_ht29 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3
  %call30 = tail call fastcc i32 @iwl_statistics_flag(ptr noundef %1, ptr noundef nonnull %call1.i.i.i, i32 noundef 8560)
  %add.ptr = getelementptr i8, ptr %call1.i.i.i, i32 %call30
  %sub = sub i32 8560, %call30
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #8
  %add32 = add i32 %call31, %call30
  %add.ptr33 = getelementptr i8, ptr %call1.i.i.i, i32 %add32
  %sub34 = sub i32 8560, %add32
  %5 = ptrtoint ptr %rx_ofdm to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %rx_ofdm, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %rx_ofdm9 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %rx_ofdm9, align 1
  %10 = ptrtoint ptr %rx_ofdm16 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %rx_ofdm16, align 1
  %12 = ptrtoint ptr %rx_ofdm23 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %rx_ofdm23, align 1
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #8
  %add39 = add i32 %call38, %add32
  %add.ptr40 = getelementptr i8, ptr %call1.i.i.i, i32 %add39
  %sub41 = sub i32 8560, %add39
  %fina_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 1
  %14 = ptrtoint ptr %fina_cnt to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fina_cnt, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %fina_cnt42 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 1
  %17 = ptrtoint ptr %fina_cnt42 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %fina_cnt42, align 1
  %fina_cnt43 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 1
  %19 = ptrtoint ptr %fina_cnt43 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %fina_cnt43, align 1
  %fina_cnt44 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 1
  %21 = ptrtoint ptr %fina_cnt44 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %fina_cnt44, align 1
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.114, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #8
  %add46 = add i32 %call45, %add39
  %add.ptr47 = getelementptr i8, ptr %call1.i.i.i, i32 %add46
  %sub48 = sub i32 8560, %add46
  %plcp_err = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 2
  %23 = ptrtoint ptr %plcp_err to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %plcp_err, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %plcp_err49 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 2
  %26 = ptrtoint ptr %plcp_err49 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %plcp_err49, align 1
  %plcp_err50 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 2
  %28 = ptrtoint ptr %plcp_err50 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %plcp_err50, align 1
  %plcp_err51 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 2
  %30 = ptrtoint ptr %plcp_err51 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %plcp_err51, align 1
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.115, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #8
  %add53 = add i32 %call52, %add46
  %add.ptr54 = getelementptr i8, ptr %call1.i.i.i, i32 %add53
  %sub55 = sub i32 8560, %add53
  %crc32_err = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 3
  %32 = ptrtoint ptr %crc32_err to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %crc32_err, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %crc32_err56 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 3
  %35 = ptrtoint ptr %crc32_err56 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %crc32_err56, align 1
  %crc32_err57 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 3
  %37 = ptrtoint ptr %crc32_err57 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %crc32_err57, align 1
  %crc32_err58 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 3
  %39 = ptrtoint ptr %crc32_err58 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %crc32_err58, align 1
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.116, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #8
  %add60 = add i32 %call59, %add53
  %add.ptr61 = getelementptr i8, ptr %call1.i.i.i, i32 %add60
  %sub62 = sub i32 8560, %add60
  %overrun_err = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 4
  %41 = ptrtoint ptr %overrun_err to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %overrun_err, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %overrun_err63 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 4
  %44 = ptrtoint ptr %overrun_err63 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %overrun_err63, align 1
  %overrun_err64 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 4
  %46 = ptrtoint ptr %overrun_err64 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %overrun_err64, align 1
  %overrun_err65 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 4
  %48 = ptrtoint ptr %overrun_err65 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %overrun_err65, align 1
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.117, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #8
  %add67 = add i32 %call66, %add60
  %add.ptr68 = getelementptr i8, ptr %call1.i.i.i, i32 %add67
  %sub69 = sub i32 8560, %add67
  %early_overrun_err = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 5
  %50 = ptrtoint ptr %early_overrun_err to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %early_overrun_err, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %early_overrun_err70 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 5
  %53 = ptrtoint ptr %early_overrun_err70 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %early_overrun_err70, align 1
  %early_overrun_err71 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 5
  %55 = ptrtoint ptr %early_overrun_err71 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %early_overrun_err71, align 1
  %early_overrun_err72 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 5
  %57 = ptrtoint ptr %early_overrun_err72 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %early_overrun_err72, align 1
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.118, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58) #8
  %add74 = add i32 %call73, %add67
  %add.ptr75 = getelementptr i8, ptr %call1.i.i.i, i32 %add74
  %sub76 = sub i32 8560, %add74
  %crc32_good = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 6
  %59 = ptrtoint ptr %crc32_good to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %crc32_good, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %crc32_good77 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 6
  %62 = ptrtoint ptr %crc32_good77 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %crc32_good77, align 1
  %crc32_good78 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 6
  %64 = ptrtoint ptr %crc32_good78 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %crc32_good78, align 1
  %crc32_good79 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 6
  %66 = ptrtoint ptr %crc32_good79 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %crc32_good79, align 1
  %call80 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.119, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67) #8
  %add81 = add i32 %call80, %add74
  %add.ptr82 = getelementptr i8, ptr %call1.i.i.i, i32 %add81
  %sub83 = sub i32 8560, %add81
  %false_alarm_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 7
  %68 = ptrtoint ptr %false_alarm_cnt to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %false_alarm_cnt, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %false_alarm_cnt84 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 7
  %71 = ptrtoint ptr %false_alarm_cnt84 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %false_alarm_cnt84, align 1
  %false_alarm_cnt85 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 7
  %73 = ptrtoint ptr %false_alarm_cnt85 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %false_alarm_cnt85, align 1
  %false_alarm_cnt86 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 7
  %75 = ptrtoint ptr %false_alarm_cnt86 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %false_alarm_cnt86, align 1
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr82, i32 noundef %sub83, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.120, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76) #8
  %add88 = add i32 %call87, %add81
  %add.ptr89 = getelementptr i8, ptr %call1.i.i.i, i32 %add88
  %sub90 = sub i32 8560, %add88
  %fina_sync_err_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 8
  %77 = ptrtoint ptr %fina_sync_err_cnt to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %fina_sync_err_cnt, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %fina_sync_err_cnt91 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 8
  %80 = ptrtoint ptr %fina_sync_err_cnt91 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %fina_sync_err_cnt91, align 1
  %fina_sync_err_cnt92 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 8
  %82 = ptrtoint ptr %fina_sync_err_cnt92 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %fina_sync_err_cnt92, align 1
  %fina_sync_err_cnt93 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 8
  %84 = ptrtoint ptr %fina_sync_err_cnt93 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %fina_sync_err_cnt93, align 1
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.121, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85) #8
  %add95 = add i32 %call94, %add88
  %add.ptr96 = getelementptr i8, ptr %call1.i.i.i, i32 %add95
  %sub97 = sub i32 8560, %add95
  %sfd_timeout = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 9
  %86 = ptrtoint ptr %sfd_timeout to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %sfd_timeout, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %sfd_timeout98 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 9
  %89 = ptrtoint ptr %sfd_timeout98 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %sfd_timeout98, align 1
  %sfd_timeout99 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 9
  %91 = ptrtoint ptr %sfd_timeout99 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %sfd_timeout99, align 1
  %sfd_timeout100 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 9
  %93 = ptrtoint ptr %sfd_timeout100 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %sfd_timeout100, align 1
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.122, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94) #8
  %add102 = add i32 %call101, %add95
  %add.ptr103 = getelementptr i8, ptr %call1.i.i.i, i32 %add102
  %sub104 = sub i32 8560, %add102
  %fina_timeout = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 10
  %95 = ptrtoint ptr %fina_timeout to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %fina_timeout, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %fina_timeout105 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 10
  %98 = ptrtoint ptr %fina_timeout105 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %fina_timeout105, align 1
  %fina_timeout106 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 10
  %100 = ptrtoint ptr %fina_timeout106 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %fina_timeout106, align 1
  %fina_timeout107 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 10
  %102 = ptrtoint ptr %fina_timeout107 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %fina_timeout107, align 1
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr103, i32 noundef %sub104, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.123, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103) #8
  %add109 = add i32 %call108, %add102
  %add.ptr110 = getelementptr i8, ptr %call1.i.i.i, i32 %add109
  %sub111 = sub i32 8560, %add109
  %unresponded_rts = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 11
  %104 = ptrtoint ptr %unresponded_rts to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %unresponded_rts, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %unresponded_rts112 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 11
  %107 = ptrtoint ptr %unresponded_rts112 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %unresponded_rts112, align 1
  %unresponded_rts113 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 11
  %109 = ptrtoint ptr %unresponded_rts113 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %unresponded_rts113, align 1
  %unresponded_rts114 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 11
  %111 = ptrtoint ptr %unresponded_rts114 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %unresponded_rts114, align 1
  %call115 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr110, i32 noundef %sub111, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.124, i32 noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef %112) #8
  %add116 = add i32 %call115, %add109
  %add.ptr117 = getelementptr i8, ptr %call1.i.i.i, i32 %add116
  %sub118 = sub i32 8560, %add116
  %rxe_frame_limit_overrun = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 12
  %113 = ptrtoint ptr %rxe_frame_limit_overrun to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %rxe_frame_limit_overrun, align 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  %rxe_frame_limit_overrun119 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 12
  %116 = ptrtoint ptr %rxe_frame_limit_overrun119 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %rxe_frame_limit_overrun119, align 1
  %rxe_frame_limit_overrun120 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 12
  %118 = ptrtoint ptr %rxe_frame_limit_overrun120 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %rxe_frame_limit_overrun120, align 1
  %rxe_frame_limit_overrun121 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 12
  %120 = ptrtoint ptr %rxe_frame_limit_overrun121 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %rxe_frame_limit_overrun121, align 1
  %call122 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr117, i32 noundef %sub118, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.125, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121) #8
  %add123 = add i32 %call122, %add116
  %add.ptr124 = getelementptr i8, ptr %call1.i.i.i, i32 %add123
  %sub125 = sub i32 8560, %add123
  %sent_ack_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 13
  %122 = ptrtoint ptr %sent_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %sent_ack_cnt, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %sent_ack_cnt126 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 13
  %125 = ptrtoint ptr %sent_ack_cnt126 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %sent_ack_cnt126, align 1
  %sent_ack_cnt127 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 13
  %127 = ptrtoint ptr %sent_ack_cnt127 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %sent_ack_cnt127, align 1
  %sent_ack_cnt128 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 13
  %129 = ptrtoint ptr %sent_ack_cnt128 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %sent_ack_cnt128, align 1
  %call129 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr124, i32 noundef %sub125, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.126, i32 noundef %124, i32 noundef %126, i32 noundef %128, i32 noundef %130) #8
  %add130 = add i32 %call129, %add123
  %add.ptr131 = getelementptr i8, ptr %call1.i.i.i, i32 %add130
  %sub132 = sub i32 8560, %add130
  %sent_cts_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 14
  %131 = ptrtoint ptr %sent_cts_cnt to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %sent_cts_cnt, align 1
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  %sent_cts_cnt133 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 14
  %134 = ptrtoint ptr %sent_cts_cnt133 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %sent_cts_cnt133, align 1
  %sent_cts_cnt134 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 14
  %136 = ptrtoint ptr %sent_cts_cnt134 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %sent_cts_cnt134, align 1
  %sent_cts_cnt135 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 14
  %138 = ptrtoint ptr %sent_cts_cnt135 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %sent_cts_cnt135, align 1
  %call136 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr131, i32 noundef %sub132, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.127, i32 noundef %133, i32 noundef %135, i32 noundef %137, i32 noundef %139) #8
  %add137 = add i32 %call136, %add130
  %add.ptr138 = getelementptr i8, ptr %call1.i.i.i, i32 %add137
  %sub139 = sub i32 8560, %add137
  %sent_ba_rsp_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 15
  %140 = ptrtoint ptr %sent_ba_rsp_cnt to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %sent_ba_rsp_cnt, align 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %sent_ba_rsp_cnt140 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 15
  %143 = ptrtoint ptr %sent_ba_rsp_cnt140 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %sent_ba_rsp_cnt140, align 1
  %sent_ba_rsp_cnt141 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 15
  %145 = ptrtoint ptr %sent_ba_rsp_cnt141 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %sent_ba_rsp_cnt141, align 1
  %sent_ba_rsp_cnt142 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 15
  %147 = ptrtoint ptr %sent_ba_rsp_cnt142 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %sent_ba_rsp_cnt142, align 1
  %call143 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138, i32 noundef %sub139, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.128, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148) #8
  %add144 = add i32 %call143, %add137
  %add.ptr145 = getelementptr i8, ptr %call1.i.i.i, i32 %add144
  %sub146 = sub i32 8560, %add144
  %dsp_self_kill = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 16
  %149 = ptrtoint ptr %dsp_self_kill to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %dsp_self_kill, align 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %dsp_self_kill147 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 16
  %152 = ptrtoint ptr %dsp_self_kill147 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %dsp_self_kill147, align 1
  %dsp_self_kill148 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 16
  %154 = ptrtoint ptr %dsp_self_kill148 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %dsp_self_kill148, align 1
  %dsp_self_kill149 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 16
  %156 = ptrtoint ptr %dsp_self_kill149 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %dsp_self_kill149, align 1
  %call150 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr145, i32 noundef %sub146, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.129, i32 noundef %151, i32 noundef %153, i32 noundef %155, i32 noundef %157) #8
  %add151 = add i32 %call150, %add144
  %add.ptr152 = getelementptr i8, ptr %call1.i.i.i, i32 %add151
  %sub153 = sub i32 8560, %add151
  %mh_format_err = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 17
  %158 = ptrtoint ptr %mh_format_err to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %mh_format_err, align 1
  %160 = tail call i32 @llvm.bswap.i32(i32 %159)
  %mh_format_err154 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 17
  %161 = ptrtoint ptr %mh_format_err154 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %mh_format_err154, align 1
  %mh_format_err155 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 17
  %163 = ptrtoint ptr %mh_format_err155 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %mh_format_err155, align 1
  %mh_format_err156 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 17
  %165 = ptrtoint ptr %mh_format_err156 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %mh_format_err156, align 1
  %call157 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr152, i32 noundef %sub153, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.130, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %166) #8
  %add158 = add i32 %call157, %add151
  %add.ptr159 = getelementptr i8, ptr %call1.i.i.i, i32 %add158
  %sub160 = sub i32 8560, %add158
  %re_acq_main_rssi_sum = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 3, i32 18
  %167 = ptrtoint ptr %re_acq_main_rssi_sum to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %re_acq_main_rssi_sum, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  %re_acq_main_rssi_sum161 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 2, i32 18
  %170 = ptrtoint ptr %re_acq_main_rssi_sum161 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %re_acq_main_rssi_sum161, align 1
  %re_acq_main_rssi_sum162 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 2, i32 18
  %172 = ptrtoint ptr %re_acq_main_rssi_sum162 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %re_acq_main_rssi_sum162, align 1
  %re_acq_main_rssi_sum163 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 2, i32 18
  %174 = ptrtoint ptr %re_acq_main_rssi_sum163 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %re_acq_main_rssi_sum163, align 1
  %call164 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr159, i32 noundef %sub160, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.131, i32 noundef %169, i32 noundef %171, i32 noundef %173, i32 noundef %175) #8
  %add165 = add i32 %call164, %add158
  %add.ptr166 = getelementptr i8, ptr %call1.i.i.i, i32 %add165
  %sub167 = sub i32 8560, %add165
  %call168 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166, i32 noundef %sub167, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.132) #8
  %add169 = add i32 %add165, %call168
  %add.ptr170 = getelementptr i8, ptr %call1.i.i.i, i32 %add169
  %sub171 = sub i32 8560, %add169
  %176 = ptrtoint ptr %rx_cck to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %rx_cck, align 1
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  %179 = ptrtoint ptr %rx_cck11 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %rx_cck11, align 1
  %181 = ptrtoint ptr %rx_cck18 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %rx_cck18, align 1
  %183 = ptrtoint ptr %rx_cck25 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %rx_cck25, align 1
  %call176 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr170, i32 noundef %sub171, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %178, i32 noundef %180, i32 noundef %182, i32 noundef %184) #8
  %add177 = add i32 %call176, %add169
  %add.ptr178 = getelementptr i8, ptr %call1.i.i.i, i32 %add177
  %sub179 = sub i32 8560, %add177
  %fina_cnt180 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 1
  %185 = ptrtoint ptr %fina_cnt180 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %fina_cnt180, align 1
  %187 = tail call i32 @llvm.bswap.i32(i32 %186)
  %fina_cnt181 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 1
  %188 = ptrtoint ptr %fina_cnt181 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %fina_cnt181, align 1
  %fina_cnt182 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 1
  %190 = ptrtoint ptr %fina_cnt182 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %fina_cnt182, align 1
  %fina_cnt183 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 1
  %192 = ptrtoint ptr %fina_cnt183 to i32
  call void @__asan_loadN_noabort(i32 %192, i32 4)
  %193 = load i32, ptr %fina_cnt183, align 1
  %call184 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr178, i32 noundef %sub179, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.114, i32 noundef %187, i32 noundef %189, i32 noundef %191, i32 noundef %193) #8
  %add185 = add i32 %call184, %add177
  %add.ptr186 = getelementptr i8, ptr %call1.i.i.i, i32 %add185
  %sub187 = sub i32 8560, %add185
  %plcp_err188 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 2
  %194 = ptrtoint ptr %plcp_err188 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %plcp_err188, align 1
  %196 = tail call i32 @llvm.bswap.i32(i32 %195)
  %plcp_err189 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 2
  %197 = ptrtoint ptr %plcp_err189 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %plcp_err189, align 1
  %plcp_err190 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 2
  %199 = ptrtoint ptr %plcp_err190 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %plcp_err190, align 1
  %plcp_err191 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 2
  %201 = ptrtoint ptr %plcp_err191 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %plcp_err191, align 1
  %call192 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr186, i32 noundef %sub187, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.115, i32 noundef %196, i32 noundef %198, i32 noundef %200, i32 noundef %202) #8
  %add193 = add i32 %call192, %add185
  %add.ptr194 = getelementptr i8, ptr %call1.i.i.i, i32 %add193
  %sub195 = sub i32 8560, %add193
  %crc32_err196 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 3
  %203 = ptrtoint ptr %crc32_err196 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %crc32_err196, align 1
  %205 = tail call i32 @llvm.bswap.i32(i32 %204)
  %crc32_err197 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 3
  %206 = ptrtoint ptr %crc32_err197 to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %207 = load i32, ptr %crc32_err197, align 1
  %crc32_err198 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 3
  %208 = ptrtoint ptr %crc32_err198 to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %crc32_err198, align 1
  %crc32_err199 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 3
  %210 = ptrtoint ptr %crc32_err199 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %crc32_err199, align 1
  %call200 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr194, i32 noundef %sub195, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.116, i32 noundef %205, i32 noundef %207, i32 noundef %209, i32 noundef %211) #8
  %add201 = add i32 %call200, %add193
  %add.ptr202 = getelementptr i8, ptr %call1.i.i.i, i32 %add201
  %sub203 = sub i32 8560, %add201
  %overrun_err204 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 4
  %212 = ptrtoint ptr %overrun_err204 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %overrun_err204, align 1
  %214 = tail call i32 @llvm.bswap.i32(i32 %213)
  %overrun_err205 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 4
  %215 = ptrtoint ptr %overrun_err205 to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %overrun_err205, align 1
  %overrun_err206 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 4
  %217 = ptrtoint ptr %overrun_err206 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %overrun_err206, align 1
  %overrun_err207 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 4
  %219 = ptrtoint ptr %overrun_err207 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %overrun_err207, align 1
  %call208 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr202, i32 noundef %sub203, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.117, i32 noundef %214, i32 noundef %216, i32 noundef %218, i32 noundef %220) #8
  %add209 = add i32 %call208, %add201
  %add.ptr210 = getelementptr i8, ptr %call1.i.i.i, i32 %add209
  %sub211 = sub i32 8560, %add209
  %early_overrun_err212 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 5
  %221 = ptrtoint ptr %early_overrun_err212 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %early_overrun_err212, align 1
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  %early_overrun_err213 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 5
  %224 = ptrtoint ptr %early_overrun_err213 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %early_overrun_err213, align 1
  %early_overrun_err214 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 5
  %226 = ptrtoint ptr %early_overrun_err214 to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %227 = load i32, ptr %early_overrun_err214, align 1
  %early_overrun_err215 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 5
  %228 = ptrtoint ptr %early_overrun_err215 to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %early_overrun_err215, align 1
  %call216 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr210, i32 noundef %sub211, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.118, i32 noundef %223, i32 noundef %225, i32 noundef %227, i32 noundef %229) #8
  %add217 = add i32 %call216, %add209
  %add.ptr218 = getelementptr i8, ptr %call1.i.i.i, i32 %add217
  %sub219 = sub i32 8560, %add217
  %crc32_good220 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 6
  %230 = ptrtoint ptr %crc32_good220 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %crc32_good220, align 1
  %232 = tail call i32 @llvm.bswap.i32(i32 %231)
  %crc32_good221 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 6
  %233 = ptrtoint ptr %crc32_good221 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %crc32_good221, align 1
  %crc32_good222 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 6
  %235 = ptrtoint ptr %crc32_good222 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %crc32_good222, align 1
  %crc32_good223 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 6
  %237 = ptrtoint ptr %crc32_good223 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %crc32_good223, align 1
  %call224 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr218, i32 noundef %sub219, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.119, i32 noundef %232, i32 noundef %234, i32 noundef %236, i32 noundef %238) #8
  %add225 = add i32 %call224, %add217
  %add.ptr226 = getelementptr i8, ptr %call1.i.i.i, i32 %add225
  %sub227 = sub i32 8560, %add225
  %false_alarm_cnt228 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 7
  %239 = ptrtoint ptr %false_alarm_cnt228 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %false_alarm_cnt228, align 1
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  %false_alarm_cnt229 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 7
  %242 = ptrtoint ptr %false_alarm_cnt229 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %false_alarm_cnt229, align 1
  %false_alarm_cnt230 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 7
  %244 = ptrtoint ptr %false_alarm_cnt230 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %false_alarm_cnt230, align 1
  %false_alarm_cnt231 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 7
  %246 = ptrtoint ptr %false_alarm_cnt231 to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %false_alarm_cnt231, align 1
  %call232 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr226, i32 noundef %sub227, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.120, i32 noundef %241, i32 noundef %243, i32 noundef %245, i32 noundef %247) #8
  %add233 = add i32 %call232, %add225
  %add.ptr234 = getelementptr i8, ptr %call1.i.i.i, i32 %add233
  %sub235 = sub i32 8560, %add233
  %fina_sync_err_cnt236 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 8
  %248 = ptrtoint ptr %fina_sync_err_cnt236 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %fina_sync_err_cnt236, align 1
  %250 = tail call i32 @llvm.bswap.i32(i32 %249)
  %fina_sync_err_cnt237 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 8
  %251 = ptrtoint ptr %fina_sync_err_cnt237 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %fina_sync_err_cnt237, align 1
  %fina_sync_err_cnt238 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 8
  %253 = ptrtoint ptr %fina_sync_err_cnt238 to i32
  call void @__asan_loadN_noabort(i32 %253, i32 4)
  %254 = load i32, ptr %fina_sync_err_cnt238, align 1
  %fina_sync_err_cnt239 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 8
  %255 = ptrtoint ptr %fina_sync_err_cnt239 to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %256 = load i32, ptr %fina_sync_err_cnt239, align 1
  %call240 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr234, i32 noundef %sub235, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.121, i32 noundef %250, i32 noundef %252, i32 noundef %254, i32 noundef %256) #8
  %add241 = add i32 %call240, %add233
  %add.ptr242 = getelementptr i8, ptr %call1.i.i.i, i32 %add241
  %sub243 = sub i32 8560, %add241
  %sfd_timeout244 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 9
  %257 = ptrtoint ptr %sfd_timeout244 to i32
  call void @__asan_loadN_noabort(i32 %257, i32 4)
  %258 = load i32, ptr %sfd_timeout244, align 1
  %259 = tail call i32 @llvm.bswap.i32(i32 %258)
  %sfd_timeout245 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 9
  %260 = ptrtoint ptr %sfd_timeout245 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %261 = load i32, ptr %sfd_timeout245, align 1
  %sfd_timeout246 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 9
  %262 = ptrtoint ptr %sfd_timeout246 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %sfd_timeout246, align 1
  %sfd_timeout247 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 9
  %264 = ptrtoint ptr %sfd_timeout247 to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %265 = load i32, ptr %sfd_timeout247, align 1
  %call248 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr242, i32 noundef %sub243, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.122, i32 noundef %259, i32 noundef %261, i32 noundef %263, i32 noundef %265) #8
  %add249 = add i32 %call248, %add241
  %add.ptr250 = getelementptr i8, ptr %call1.i.i.i, i32 %add249
  %sub251 = sub i32 8560, %add249
  %fina_timeout252 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 10
  %266 = ptrtoint ptr %fina_timeout252 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load i32, ptr %fina_timeout252, align 1
  %268 = tail call i32 @llvm.bswap.i32(i32 %267)
  %fina_timeout253 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 10
  %269 = ptrtoint ptr %fina_timeout253 to i32
  call void @__asan_loadN_noabort(i32 %269, i32 4)
  %270 = load i32, ptr %fina_timeout253, align 1
  %fina_timeout254 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 10
  %271 = ptrtoint ptr %fina_timeout254 to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %272 = load i32, ptr %fina_timeout254, align 1
  %fina_timeout255 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 10
  %273 = ptrtoint ptr %fina_timeout255 to i32
  call void @__asan_loadN_noabort(i32 %273, i32 4)
  %274 = load i32, ptr %fina_timeout255, align 1
  %call256 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr250, i32 noundef %sub251, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.123, i32 noundef %268, i32 noundef %270, i32 noundef %272, i32 noundef %274) #8
  %add257 = add i32 %call256, %add249
  %add.ptr258 = getelementptr i8, ptr %call1.i.i.i, i32 %add257
  %sub259 = sub i32 8560, %add257
  %unresponded_rts260 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 11
  %275 = ptrtoint ptr %unresponded_rts260 to i32
  call void @__asan_loadN_noabort(i32 %275, i32 4)
  %276 = load i32, ptr %unresponded_rts260, align 1
  %277 = tail call i32 @llvm.bswap.i32(i32 %276)
  %unresponded_rts261 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 11
  %278 = ptrtoint ptr %unresponded_rts261 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %unresponded_rts261, align 1
  %unresponded_rts262 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 11
  %280 = ptrtoint ptr %unresponded_rts262 to i32
  call void @__asan_loadN_noabort(i32 %280, i32 4)
  %281 = load i32, ptr %unresponded_rts262, align 1
  %unresponded_rts263 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 11
  %282 = ptrtoint ptr %unresponded_rts263 to i32
  call void @__asan_loadN_noabort(i32 %282, i32 4)
  %283 = load i32, ptr %unresponded_rts263, align 1
  %call264 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr258, i32 noundef %sub259, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.124, i32 noundef %277, i32 noundef %279, i32 noundef %281, i32 noundef %283) #8
  %add265 = add i32 %call264, %add257
  %add.ptr266 = getelementptr i8, ptr %call1.i.i.i, i32 %add265
  %sub267 = sub i32 8560, %add265
  %rxe_frame_limit_overrun268 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 12
  %284 = ptrtoint ptr %rxe_frame_limit_overrun268 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %rxe_frame_limit_overrun268, align 1
  %286 = tail call i32 @llvm.bswap.i32(i32 %285)
  %rxe_frame_limit_overrun269 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 12
  %287 = ptrtoint ptr %rxe_frame_limit_overrun269 to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %288 = load i32, ptr %rxe_frame_limit_overrun269, align 1
  %rxe_frame_limit_overrun270 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 12
  %289 = ptrtoint ptr %rxe_frame_limit_overrun270 to i32
  call void @__asan_loadN_noabort(i32 %289, i32 4)
  %290 = load i32, ptr %rxe_frame_limit_overrun270, align 1
  %rxe_frame_limit_overrun271 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 12
  %291 = ptrtoint ptr %rxe_frame_limit_overrun271 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 4)
  %292 = load i32, ptr %rxe_frame_limit_overrun271, align 1
  %call272 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr266, i32 noundef %sub267, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.125, i32 noundef %286, i32 noundef %288, i32 noundef %290, i32 noundef %292) #8
  %add273 = add i32 %call272, %add265
  %add.ptr274 = getelementptr i8, ptr %call1.i.i.i, i32 %add273
  %sub275 = sub i32 8560, %add273
  %sent_ack_cnt276 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 13
  %293 = ptrtoint ptr %sent_ack_cnt276 to i32
  call void @__asan_loadN_noabort(i32 %293, i32 4)
  %294 = load i32, ptr %sent_ack_cnt276, align 1
  %295 = tail call i32 @llvm.bswap.i32(i32 %294)
  %sent_ack_cnt277 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 13
  %296 = ptrtoint ptr %sent_ack_cnt277 to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %sent_ack_cnt277, align 1
  %sent_ack_cnt278 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 13
  %298 = ptrtoint ptr %sent_ack_cnt278 to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %299 = load i32, ptr %sent_ack_cnt278, align 1
  %sent_ack_cnt279 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 13
  %300 = ptrtoint ptr %sent_ack_cnt279 to i32
  call void @__asan_loadN_noabort(i32 %300, i32 4)
  %301 = load i32, ptr %sent_ack_cnt279, align 1
  %call280 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr274, i32 noundef %sub275, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.126, i32 noundef %295, i32 noundef %297, i32 noundef %299, i32 noundef %301) #8
  %add281 = add i32 %call280, %add273
  %add.ptr282 = getelementptr i8, ptr %call1.i.i.i, i32 %add281
  %sub283 = sub i32 8560, %add281
  %sent_cts_cnt284 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 14
  %302 = ptrtoint ptr %sent_cts_cnt284 to i32
  call void @__asan_loadN_noabort(i32 %302, i32 4)
  %303 = load i32, ptr %sent_cts_cnt284, align 1
  %304 = tail call i32 @llvm.bswap.i32(i32 %303)
  %sent_cts_cnt285 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 14
  %305 = ptrtoint ptr %sent_cts_cnt285 to i32
  call void @__asan_loadN_noabort(i32 %305, i32 4)
  %306 = load i32, ptr %sent_cts_cnt285, align 1
  %sent_cts_cnt286 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 14
  %307 = ptrtoint ptr %sent_cts_cnt286 to i32
  call void @__asan_loadN_noabort(i32 %307, i32 4)
  %308 = load i32, ptr %sent_cts_cnt286, align 1
  %sent_cts_cnt287 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 14
  %309 = ptrtoint ptr %sent_cts_cnt287 to i32
  call void @__asan_loadN_noabort(i32 %309, i32 4)
  %310 = load i32, ptr %sent_cts_cnt287, align 1
  %call288 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr282, i32 noundef %sub283, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.127, i32 noundef %304, i32 noundef %306, i32 noundef %308, i32 noundef %310) #8
  %add289 = add i32 %call288, %add281
  %add.ptr290 = getelementptr i8, ptr %call1.i.i.i, i32 %add289
  %sub291 = sub i32 8560, %add289
  %sent_ba_rsp_cnt292 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 15
  %311 = ptrtoint ptr %sent_ba_rsp_cnt292 to i32
  call void @__asan_loadN_noabort(i32 %311, i32 4)
  %312 = load i32, ptr %sent_ba_rsp_cnt292, align 1
  %313 = tail call i32 @llvm.bswap.i32(i32 %312)
  %sent_ba_rsp_cnt293 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 15
  %314 = ptrtoint ptr %sent_ba_rsp_cnt293 to i32
  call void @__asan_loadN_noabort(i32 %314, i32 4)
  %315 = load i32, ptr %sent_ba_rsp_cnt293, align 1
  %sent_ba_rsp_cnt294 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 15
  %316 = ptrtoint ptr %sent_ba_rsp_cnt294 to i32
  call void @__asan_loadN_noabort(i32 %316, i32 4)
  %317 = load i32, ptr %sent_ba_rsp_cnt294, align 1
  %sent_ba_rsp_cnt295 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 15
  %318 = ptrtoint ptr %sent_ba_rsp_cnt295 to i32
  call void @__asan_loadN_noabort(i32 %318, i32 4)
  %319 = load i32, ptr %sent_ba_rsp_cnt295, align 1
  %call296 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr290, i32 noundef %sub291, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.128, i32 noundef %313, i32 noundef %315, i32 noundef %317, i32 noundef %319) #8
  %add297 = add i32 %call296, %add289
  %add.ptr298 = getelementptr i8, ptr %call1.i.i.i, i32 %add297
  %sub299 = sub i32 8560, %add297
  %dsp_self_kill300 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 16
  %320 = ptrtoint ptr %dsp_self_kill300 to i32
  call void @__asan_loadN_noabort(i32 %320, i32 4)
  %321 = load i32, ptr %dsp_self_kill300, align 1
  %322 = tail call i32 @llvm.bswap.i32(i32 %321)
  %dsp_self_kill301 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 16
  %323 = ptrtoint ptr %dsp_self_kill301 to i32
  call void @__asan_loadN_noabort(i32 %323, i32 4)
  %324 = load i32, ptr %dsp_self_kill301, align 1
  %dsp_self_kill302 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 16
  %325 = ptrtoint ptr %dsp_self_kill302 to i32
  call void @__asan_loadN_noabort(i32 %325, i32 4)
  %326 = load i32, ptr %dsp_self_kill302, align 1
  %dsp_self_kill303 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 16
  %327 = ptrtoint ptr %dsp_self_kill303 to i32
  call void @__asan_loadN_noabort(i32 %327, i32 4)
  %328 = load i32, ptr %dsp_self_kill303, align 1
  %call304 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr298, i32 noundef %sub299, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.129, i32 noundef %322, i32 noundef %324, i32 noundef %326, i32 noundef %328) #8
  %add305 = add i32 %call304, %add297
  %add.ptr306 = getelementptr i8, ptr %call1.i.i.i, i32 %add305
  %sub307 = sub i32 8560, %add305
  %mh_format_err308 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 17
  %329 = ptrtoint ptr %mh_format_err308 to i32
  call void @__asan_loadN_noabort(i32 %329, i32 4)
  %330 = load i32, ptr %mh_format_err308, align 1
  %331 = tail call i32 @llvm.bswap.i32(i32 %330)
  %mh_format_err309 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 17
  %332 = ptrtoint ptr %mh_format_err309 to i32
  call void @__asan_loadN_noabort(i32 %332, i32 4)
  %333 = load i32, ptr %mh_format_err309, align 1
  %mh_format_err310 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 17
  %334 = ptrtoint ptr %mh_format_err310 to i32
  call void @__asan_loadN_noabort(i32 %334, i32 4)
  %335 = load i32, ptr %mh_format_err310, align 1
  %mh_format_err311 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 17
  %336 = ptrtoint ptr %mh_format_err311 to i32
  call void @__asan_loadN_noabort(i32 %336, i32 4)
  %337 = load i32, ptr %mh_format_err311, align 1
  %call312 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr306, i32 noundef %sub307, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.130, i32 noundef %331, i32 noundef %333, i32 noundef %335, i32 noundef %337) #8
  %add313 = add i32 %call312, %add305
  %add.ptr314 = getelementptr i8, ptr %call1.i.i.i, i32 %add313
  %sub315 = sub i32 8560, %add313
  %re_acq_main_rssi_sum316 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 5, i32 18
  %338 = ptrtoint ptr %re_acq_main_rssi_sum316 to i32
  call void @__asan_loadN_noabort(i32 %338, i32 4)
  %339 = load i32, ptr %re_acq_main_rssi_sum316, align 1
  %340 = tail call i32 @llvm.bswap.i32(i32 %339)
  %re_acq_main_rssi_sum317 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 4, i32 18
  %341 = ptrtoint ptr %re_acq_main_rssi_sum317 to i32
  call void @__asan_loadN_noabort(i32 %341, i32 4)
  %342 = load i32, ptr %re_acq_main_rssi_sum317, align 1
  %re_acq_main_rssi_sum318 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 4, i32 18
  %343 = ptrtoint ptr %re_acq_main_rssi_sum318 to i32
  call void @__asan_loadN_noabort(i32 %343, i32 4)
  %344 = load i32, ptr %re_acq_main_rssi_sum318, align 1
  %re_acq_main_rssi_sum319 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 4, i32 18
  %345 = ptrtoint ptr %re_acq_main_rssi_sum319 to i32
  call void @__asan_loadN_noabort(i32 %345, i32 4)
  %346 = load i32, ptr %re_acq_main_rssi_sum319, align 1
  %call320 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr314, i32 noundef %sub315, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.131, i32 noundef %340, i32 noundef %342, i32 noundef %344, i32 noundef %346) #8
  %add321 = add i32 %call320, %add313
  %add.ptr322 = getelementptr i8, ptr %call1.i.i.i, i32 %add321
  %sub323 = sub i32 8560, %add321
  %call324 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr322, i32 noundef %sub323, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.133) #8
  %add325 = add i32 %add321, %call324
  %add.ptr326 = getelementptr i8, ptr %call1.i.i.i, i32 %add325
  %sub327 = sub i32 8560, %add325
  %347 = ptrtoint ptr %rx_non_phy to i32
  call void @__asan_loadN_noabort(i32 %347, i32 4)
  %348 = load i32, ptr %rx_non_phy, align 1
  %349 = tail call i32 @llvm.bswap.i32(i32 %348)
  %350 = ptrtoint ptr %rx_non_phy13 to i32
  call void @__asan_loadN_noabort(i32 %350, i32 4)
  %351 = load i32, ptr %rx_non_phy13, align 1
  %352 = ptrtoint ptr %rx_non_phy20 to i32
  call void @__asan_loadN_noabort(i32 %352, i32 4)
  %353 = load i32, ptr %rx_non_phy20, align 1
  %354 = ptrtoint ptr %rx_non_phy27 to i32
  call void @__asan_loadN_noabort(i32 %354, i32 4)
  %355 = load i32, ptr %rx_non_phy27, align 1
  %call331 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr326, i32 noundef %sub327, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.134, i32 noundef %349, i32 noundef %351, i32 noundef %353, i32 noundef %355) #8
  %add332 = add i32 %call331, %add325
  %add.ptr333 = getelementptr i8, ptr %call1.i.i.i, i32 %add332
  %sub334 = sub i32 8560, %add332
  %bogus_ack = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 1
  %356 = ptrtoint ptr %bogus_ack to i32
  call void @__asan_loadN_noabort(i32 %356, i32 4)
  %357 = load i32, ptr %bogus_ack, align 1
  %358 = tail call i32 @llvm.bswap.i32(i32 %357)
  %bogus_ack335 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 1
  %359 = ptrtoint ptr %bogus_ack335 to i32
  call void @__asan_loadN_noabort(i32 %359, i32 4)
  %360 = load i32, ptr %bogus_ack335, align 1
  %bogus_ack336 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 1
  %361 = ptrtoint ptr %bogus_ack336 to i32
  call void @__asan_loadN_noabort(i32 %361, i32 4)
  %362 = load i32, ptr %bogus_ack336, align 1
  %bogus_ack337 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 1
  %363 = ptrtoint ptr %bogus_ack337 to i32
  call void @__asan_loadN_noabort(i32 %363, i32 4)
  %364 = load i32, ptr %bogus_ack337, align 1
  %call338 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr333, i32 noundef %sub334, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.135, i32 noundef %358, i32 noundef %360, i32 noundef %362, i32 noundef %364) #8
  %add339 = add i32 %call338, %add332
  %add.ptr340 = getelementptr i8, ptr %call1.i.i.i, i32 %add339
  %sub341 = sub i32 8560, %add339
  %non_bssid_frames = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 2
  %365 = ptrtoint ptr %non_bssid_frames to i32
  call void @__asan_loadN_noabort(i32 %365, i32 4)
  %366 = load i32, ptr %non_bssid_frames, align 1
  %367 = tail call i32 @llvm.bswap.i32(i32 %366)
  %non_bssid_frames342 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 2
  %368 = ptrtoint ptr %non_bssid_frames342 to i32
  call void @__asan_loadN_noabort(i32 %368, i32 4)
  %369 = load i32, ptr %non_bssid_frames342, align 1
  %non_bssid_frames343 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 2
  %370 = ptrtoint ptr %non_bssid_frames343 to i32
  call void @__asan_loadN_noabort(i32 %370, i32 4)
  %371 = load i32, ptr %non_bssid_frames343, align 1
  %non_bssid_frames344 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 2
  %372 = ptrtoint ptr %non_bssid_frames344 to i32
  call void @__asan_loadN_noabort(i32 %372, i32 4)
  %373 = load i32, ptr %non_bssid_frames344, align 1
  %call345 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr340, i32 noundef %sub341, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.136, i32 noundef %367, i32 noundef %369, i32 noundef %371, i32 noundef %373) #8
  %add346 = add i32 %call345, %add339
  %add.ptr347 = getelementptr i8, ptr %call1.i.i.i, i32 %add346
  %sub348 = sub i32 8560, %add346
  %filtered_frames = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 3
  %374 = ptrtoint ptr %filtered_frames to i32
  call void @__asan_loadN_noabort(i32 %374, i32 4)
  %375 = load i32, ptr %filtered_frames, align 1
  %376 = tail call i32 @llvm.bswap.i32(i32 %375)
  %filtered_frames349 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 3
  %377 = ptrtoint ptr %filtered_frames349 to i32
  call void @__asan_loadN_noabort(i32 %377, i32 4)
  %378 = load i32, ptr %filtered_frames349, align 1
  %filtered_frames350 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 3
  %379 = ptrtoint ptr %filtered_frames350 to i32
  call void @__asan_loadN_noabort(i32 %379, i32 4)
  %380 = load i32, ptr %filtered_frames350, align 1
  %filtered_frames351 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 3
  %381 = ptrtoint ptr %filtered_frames351 to i32
  call void @__asan_loadN_noabort(i32 %381, i32 4)
  %382 = load i32, ptr %filtered_frames351, align 1
  %call352 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr347, i32 noundef %sub348, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.137, i32 noundef %376, i32 noundef %378, i32 noundef %380, i32 noundef %382) #8
  %add353 = add i32 %call352, %add346
  %add.ptr354 = getelementptr i8, ptr %call1.i.i.i, i32 %add353
  %sub355 = sub i32 8560, %add353
  %non_channel_beacons = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 4
  %383 = ptrtoint ptr %non_channel_beacons to i32
  call void @__asan_loadN_noabort(i32 %383, i32 4)
  %384 = load i32, ptr %non_channel_beacons, align 1
  %385 = tail call i32 @llvm.bswap.i32(i32 %384)
  %non_channel_beacons356 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 4
  %386 = ptrtoint ptr %non_channel_beacons356 to i32
  call void @__asan_loadN_noabort(i32 %386, i32 4)
  %387 = load i32, ptr %non_channel_beacons356, align 1
  %non_channel_beacons357 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 4
  %388 = ptrtoint ptr %non_channel_beacons357 to i32
  call void @__asan_loadN_noabort(i32 %388, i32 4)
  %389 = load i32, ptr %non_channel_beacons357, align 1
  %non_channel_beacons358 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 4
  %390 = ptrtoint ptr %non_channel_beacons358 to i32
  call void @__asan_loadN_noabort(i32 %390, i32 4)
  %391 = load i32, ptr %non_channel_beacons358, align 1
  %call359 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr354, i32 noundef %sub355, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.138, i32 noundef %385, i32 noundef %387, i32 noundef %389, i32 noundef %391) #8
  %add360 = add i32 %call359, %add353
  %add.ptr361 = getelementptr i8, ptr %call1.i.i.i, i32 %add360
  %sub362 = sub i32 8560, %add360
  %channel_beacons = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 5
  %392 = ptrtoint ptr %channel_beacons to i32
  call void @__asan_loadN_noabort(i32 %392, i32 4)
  %393 = load i32, ptr %channel_beacons, align 1
  %394 = tail call i32 @llvm.bswap.i32(i32 %393)
  %channel_beacons363 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 5
  %395 = ptrtoint ptr %channel_beacons363 to i32
  call void @__asan_loadN_noabort(i32 %395, i32 4)
  %396 = load i32, ptr %channel_beacons363, align 1
  %channel_beacons364 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 5
  %397 = ptrtoint ptr %channel_beacons364 to i32
  call void @__asan_loadN_noabort(i32 %397, i32 4)
  %398 = load i32, ptr %channel_beacons364, align 1
  %channel_beacons365 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 5
  %399 = ptrtoint ptr %channel_beacons365 to i32
  call void @__asan_loadN_noabort(i32 %399, i32 4)
  %400 = load i32, ptr %channel_beacons365, align 1
  %call366 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr361, i32 noundef %sub362, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.139, i32 noundef %394, i32 noundef %396, i32 noundef %398, i32 noundef %400) #8
  %add367 = add i32 %call366, %add360
  %add.ptr368 = getelementptr i8, ptr %call1.i.i.i, i32 %add367
  %sub369 = sub i32 8560, %add367
  %num_missed_bcon = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 6
  %401 = ptrtoint ptr %num_missed_bcon to i32
  call void @__asan_loadN_noabort(i32 %401, i32 4)
  %402 = load i32, ptr %num_missed_bcon, align 1
  %403 = tail call i32 @llvm.bswap.i32(i32 %402)
  %num_missed_bcon370 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 6
  %404 = ptrtoint ptr %num_missed_bcon370 to i32
  call void @__asan_loadN_noabort(i32 %404, i32 4)
  %405 = load i32, ptr %num_missed_bcon370, align 1
  %num_missed_bcon371 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 6
  %406 = ptrtoint ptr %num_missed_bcon371 to i32
  call void @__asan_loadN_noabort(i32 %406, i32 4)
  %407 = load i32, ptr %num_missed_bcon371, align 1
  %num_missed_bcon372 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 6
  %408 = ptrtoint ptr %num_missed_bcon372 to i32
  call void @__asan_loadN_noabort(i32 %408, i32 4)
  %409 = load i32, ptr %num_missed_bcon372, align 1
  %call373 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr368, i32 noundef %sub369, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.140, i32 noundef %403, i32 noundef %405, i32 noundef %407, i32 noundef %409) #8
  %add374 = add i32 %call373, %add367
  %add.ptr375 = getelementptr i8, ptr %call1.i.i.i, i32 %add374
  %sub376 = sub i32 8560, %add374
  %adc_rx_saturation_time = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 7
  %410 = ptrtoint ptr %adc_rx_saturation_time to i32
  call void @__asan_loadN_noabort(i32 %410, i32 4)
  %411 = load i32, ptr %adc_rx_saturation_time, align 1
  %412 = tail call i32 @llvm.bswap.i32(i32 %411)
  %adc_rx_saturation_time377 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 7
  %413 = ptrtoint ptr %adc_rx_saturation_time377 to i32
  call void @__asan_loadN_noabort(i32 %413, i32 4)
  %414 = load i32, ptr %adc_rx_saturation_time377, align 1
  %adc_rx_saturation_time378 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 7
  %415 = ptrtoint ptr %adc_rx_saturation_time378 to i32
  call void @__asan_loadN_noabort(i32 %415, i32 4)
  %416 = load i32, ptr %adc_rx_saturation_time378, align 1
  %adc_rx_saturation_time379 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 7
  %417 = ptrtoint ptr %adc_rx_saturation_time379 to i32
  call void @__asan_loadN_noabort(i32 %417, i32 4)
  %418 = load i32, ptr %adc_rx_saturation_time379, align 1
  %call380 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr375, i32 noundef %sub376, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.141, i32 noundef %412, i32 noundef %414, i32 noundef %416, i32 noundef %418) #8
  %add381 = add i32 %call380, %add374
  %add.ptr382 = getelementptr i8, ptr %call1.i.i.i, i32 %add381
  %sub383 = sub i32 8560, %add381
  %ina_detection_search_time = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 8
  %419 = ptrtoint ptr %ina_detection_search_time to i32
  call void @__asan_loadN_noabort(i32 %419, i32 4)
  %420 = load i32, ptr %ina_detection_search_time, align 1
  %421 = tail call i32 @llvm.bswap.i32(i32 %420)
  %ina_detection_search_time384 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 8
  %422 = ptrtoint ptr %ina_detection_search_time384 to i32
  call void @__asan_loadN_noabort(i32 %422, i32 4)
  %423 = load i32, ptr %ina_detection_search_time384, align 1
  %ina_detection_search_time385 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 8
  %424 = ptrtoint ptr %ina_detection_search_time385 to i32
  call void @__asan_loadN_noabort(i32 %424, i32 4)
  %425 = load i32, ptr %ina_detection_search_time385, align 1
  %ina_detection_search_time386 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 8
  %426 = ptrtoint ptr %ina_detection_search_time386 to i32
  call void @__asan_loadN_noabort(i32 %426, i32 4)
  %427 = load i32, ptr %ina_detection_search_time386, align 1
  %call387 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr382, i32 noundef %sub383, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.142, i32 noundef %421, i32 noundef %423, i32 noundef %425, i32 noundef %427) #8
  %add388 = add i32 %call387, %add381
  %add.ptr389 = getelementptr i8, ptr %call1.i.i.i, i32 %add388
  %sub390 = sub i32 8560, %add388
  %beacon_silence_rssi_a = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 9
  %428 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %428, i32 4)
  %429 = load i32, ptr %beacon_silence_rssi_a, align 1
  %430 = tail call i32 @llvm.bswap.i32(i32 %429)
  %beacon_silence_rssi_a391 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 9
  %431 = ptrtoint ptr %beacon_silence_rssi_a391 to i32
  call void @__asan_loadN_noabort(i32 %431, i32 4)
  %432 = load i32, ptr %beacon_silence_rssi_a391, align 1
  %beacon_silence_rssi_a392 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 9
  %433 = ptrtoint ptr %beacon_silence_rssi_a392 to i32
  call void @__asan_loadN_noabort(i32 %433, i32 4)
  %434 = load i32, ptr %beacon_silence_rssi_a392, align 1
  %beacon_silence_rssi_a393 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 9
  %435 = ptrtoint ptr %beacon_silence_rssi_a393 to i32
  call void @__asan_loadN_noabort(i32 %435, i32 4)
  %436 = load i32, ptr %beacon_silence_rssi_a393, align 1
  %call394 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr389, i32 noundef %sub390, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.143, i32 noundef %430, i32 noundef %432, i32 noundef %434, i32 noundef %436) #8
  %add395 = add i32 %call394, %add388
  %add.ptr396 = getelementptr i8, ptr %call1.i.i.i, i32 %add395
  %sub397 = sub i32 8560, %add395
  %beacon_silence_rssi_b = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 10
  %437 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %437, i32 4)
  %438 = load i32, ptr %beacon_silence_rssi_b, align 1
  %439 = tail call i32 @llvm.bswap.i32(i32 %438)
  %beacon_silence_rssi_b398 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 10
  %440 = ptrtoint ptr %beacon_silence_rssi_b398 to i32
  call void @__asan_loadN_noabort(i32 %440, i32 4)
  %441 = load i32, ptr %beacon_silence_rssi_b398, align 1
  %beacon_silence_rssi_b399 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 10
  %442 = ptrtoint ptr %beacon_silence_rssi_b399 to i32
  call void @__asan_loadN_noabort(i32 %442, i32 4)
  %443 = load i32, ptr %beacon_silence_rssi_b399, align 1
  %beacon_silence_rssi_b400 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 10
  %444 = ptrtoint ptr %beacon_silence_rssi_b400 to i32
  call void @__asan_loadN_noabort(i32 %444, i32 4)
  %445 = load i32, ptr %beacon_silence_rssi_b400, align 1
  %call401 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr396, i32 noundef %sub397, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.144, i32 noundef %439, i32 noundef %441, i32 noundef %443, i32 noundef %445) #8
  %add402 = add i32 %call401, %add395
  %add.ptr403 = getelementptr i8, ptr %call1.i.i.i, i32 %add402
  %sub404 = sub i32 8560, %add402
  %beacon_silence_rssi_c = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 11
  %446 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %446, i32 4)
  %447 = load i32, ptr %beacon_silence_rssi_c, align 1
  %448 = tail call i32 @llvm.bswap.i32(i32 %447)
  %beacon_silence_rssi_c405 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 11
  %449 = ptrtoint ptr %beacon_silence_rssi_c405 to i32
  call void @__asan_loadN_noabort(i32 %449, i32 4)
  %450 = load i32, ptr %beacon_silence_rssi_c405, align 1
  %beacon_silence_rssi_c406 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 11
  %451 = ptrtoint ptr %beacon_silence_rssi_c406 to i32
  call void @__asan_loadN_noabort(i32 %451, i32 4)
  %452 = load i32, ptr %beacon_silence_rssi_c406, align 1
  %beacon_silence_rssi_c407 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 11
  %453 = ptrtoint ptr %beacon_silence_rssi_c407 to i32
  call void @__asan_loadN_noabort(i32 %453, i32 4)
  %454 = load i32, ptr %beacon_silence_rssi_c407, align 1
  %call408 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr403, i32 noundef %sub404, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.145, i32 noundef %448, i32 noundef %450, i32 noundef %452, i32 noundef %454) #8
  %add409 = add i32 %call408, %add402
  %add.ptr410 = getelementptr i8, ptr %call1.i.i.i, i32 %add409
  %sub411 = sub i32 8560, %add409
  %interference_data_flag = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 12
  %455 = ptrtoint ptr %interference_data_flag to i32
  call void @__asan_loadN_noabort(i32 %455, i32 4)
  %456 = load i32, ptr %interference_data_flag, align 1
  %457 = tail call i32 @llvm.bswap.i32(i32 %456)
  %interference_data_flag412 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 12
  %458 = ptrtoint ptr %interference_data_flag412 to i32
  call void @__asan_loadN_noabort(i32 %458, i32 4)
  %459 = load i32, ptr %interference_data_flag412, align 1
  %interference_data_flag413 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 12
  %460 = ptrtoint ptr %interference_data_flag413 to i32
  call void @__asan_loadN_noabort(i32 %460, i32 4)
  %461 = load i32, ptr %interference_data_flag413, align 1
  %interference_data_flag414 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 12
  %462 = ptrtoint ptr %interference_data_flag414 to i32
  call void @__asan_loadN_noabort(i32 %462, i32 4)
  %463 = load i32, ptr %interference_data_flag414, align 1
  %call415 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr410, i32 noundef %sub411, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.146, i32 noundef %457, i32 noundef %459, i32 noundef %461, i32 noundef %463) #8
  %add416 = add i32 %call415, %add409
  %add.ptr417 = getelementptr i8, ptr %call1.i.i.i, i32 %add416
  %sub418 = sub i32 8560, %add416
  %channel_load = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 13
  %464 = ptrtoint ptr %channel_load to i32
  call void @__asan_loadN_noabort(i32 %464, i32 4)
  %465 = load i32, ptr %channel_load, align 1
  %466 = tail call i32 @llvm.bswap.i32(i32 %465)
  %channel_load419 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 13
  %467 = ptrtoint ptr %channel_load419 to i32
  call void @__asan_loadN_noabort(i32 %467, i32 4)
  %468 = load i32, ptr %channel_load419, align 1
  %channel_load420 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 13
  %469 = ptrtoint ptr %channel_load420 to i32
  call void @__asan_loadN_noabort(i32 %469, i32 4)
  %470 = load i32, ptr %channel_load420, align 1
  %channel_load421 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 13
  %471 = ptrtoint ptr %channel_load421 to i32
  call void @__asan_loadN_noabort(i32 %471, i32 4)
  %472 = load i32, ptr %channel_load421, align 1
  %call422 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr417, i32 noundef %sub418, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.147, i32 noundef %466, i32 noundef %468, i32 noundef %470, i32 noundef %472) #8
  %add423 = add i32 %call422, %add416
  %add.ptr424 = getelementptr i8, ptr %call1.i.i.i, i32 %add423
  %sub425 = sub i32 8560, %add423
  %dsp_false_alarms = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 14
  %473 = ptrtoint ptr %dsp_false_alarms to i32
  call void @__asan_loadN_noabort(i32 %473, i32 4)
  %474 = load i32, ptr %dsp_false_alarms, align 1
  %475 = tail call i32 @llvm.bswap.i32(i32 %474)
  %dsp_false_alarms426 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 14
  %476 = ptrtoint ptr %dsp_false_alarms426 to i32
  call void @__asan_loadN_noabort(i32 %476, i32 4)
  %477 = load i32, ptr %dsp_false_alarms426, align 1
  %dsp_false_alarms427 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 14
  %478 = ptrtoint ptr %dsp_false_alarms427 to i32
  call void @__asan_loadN_noabort(i32 %478, i32 4)
  %479 = load i32, ptr %dsp_false_alarms427, align 1
  %dsp_false_alarms428 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 14
  %480 = ptrtoint ptr %dsp_false_alarms428 to i32
  call void @__asan_loadN_noabort(i32 %480, i32 4)
  %481 = load i32, ptr %dsp_false_alarms428, align 1
  %call429 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr424, i32 noundef %sub425, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.148, i32 noundef %475, i32 noundef %477, i32 noundef %479, i32 noundef %481) #8
  %add430 = add i32 %call429, %add423
  %add.ptr431 = getelementptr i8, ptr %call1.i.i.i, i32 %add430
  %sub432 = sub i32 8560, %add430
  %beacon_rssi_a = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 15
  %482 = ptrtoint ptr %beacon_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %482, i32 4)
  %483 = load i32, ptr %beacon_rssi_a, align 1
  %484 = tail call i32 @llvm.bswap.i32(i32 %483)
  %beacon_rssi_a433 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 15
  %485 = ptrtoint ptr %beacon_rssi_a433 to i32
  call void @__asan_loadN_noabort(i32 %485, i32 4)
  %486 = load i32, ptr %beacon_rssi_a433, align 1
  %beacon_rssi_a434 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 15
  %487 = ptrtoint ptr %beacon_rssi_a434 to i32
  call void @__asan_loadN_noabort(i32 %487, i32 4)
  %488 = load i32, ptr %beacon_rssi_a434, align 1
  %beacon_rssi_a435 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 15
  %489 = ptrtoint ptr %beacon_rssi_a435 to i32
  call void @__asan_loadN_noabort(i32 %489, i32 4)
  %490 = load i32, ptr %beacon_rssi_a435, align 1
  %call436 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr431, i32 noundef %sub432, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.149, i32 noundef %484, i32 noundef %486, i32 noundef %488, i32 noundef %490) #8
  %add437 = add i32 %call436, %add430
  %add.ptr438 = getelementptr i8, ptr %call1.i.i.i, i32 %add437
  %sub439 = sub i32 8560, %add437
  %beacon_rssi_b = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 16
  %491 = ptrtoint ptr %beacon_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %491, i32 4)
  %492 = load i32, ptr %beacon_rssi_b, align 1
  %493 = tail call i32 @llvm.bswap.i32(i32 %492)
  %beacon_rssi_b440 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 16
  %494 = ptrtoint ptr %beacon_rssi_b440 to i32
  call void @__asan_loadN_noabort(i32 %494, i32 4)
  %495 = load i32, ptr %beacon_rssi_b440, align 1
  %beacon_rssi_b441 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 16
  %496 = ptrtoint ptr %beacon_rssi_b441 to i32
  call void @__asan_loadN_noabort(i32 %496, i32 4)
  %497 = load i32, ptr %beacon_rssi_b441, align 1
  %beacon_rssi_b442 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 16
  %498 = ptrtoint ptr %beacon_rssi_b442 to i32
  call void @__asan_loadN_noabort(i32 %498, i32 4)
  %499 = load i32, ptr %beacon_rssi_b442, align 1
  %call443 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr438, i32 noundef %sub439, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.150, i32 noundef %493, i32 noundef %495, i32 noundef %497, i32 noundef %499) #8
  %add444 = add i32 %call443, %add437
  %add.ptr445 = getelementptr i8, ptr %call1.i.i.i, i32 %add444
  %sub446 = sub i32 8560, %add444
  %beacon_rssi_c = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 17
  %500 = ptrtoint ptr %beacon_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %500, i32 4)
  %501 = load i32, ptr %beacon_rssi_c, align 1
  %502 = tail call i32 @llvm.bswap.i32(i32 %501)
  %beacon_rssi_c447 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 17
  %503 = ptrtoint ptr %beacon_rssi_c447 to i32
  call void @__asan_loadN_noabort(i32 %503, i32 4)
  %504 = load i32, ptr %beacon_rssi_c447, align 1
  %beacon_rssi_c448 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 17
  %505 = ptrtoint ptr %beacon_rssi_c448 to i32
  call void @__asan_loadN_noabort(i32 %505, i32 4)
  %506 = load i32, ptr %beacon_rssi_c448, align 1
  %beacon_rssi_c449 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 17
  %507 = ptrtoint ptr %beacon_rssi_c449 to i32
  call void @__asan_loadN_noabort(i32 %507, i32 4)
  %508 = load i32, ptr %beacon_rssi_c449, align 1
  %call450 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr445, i32 noundef %sub446, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.151, i32 noundef %502, i32 noundef %504, i32 noundef %506, i32 noundef %508) #8
  %add451 = add i32 %call450, %add444
  %add.ptr452 = getelementptr i8, ptr %call1.i.i.i, i32 %add451
  %sub453 = sub i32 8560, %add451
  %beacon_energy_a = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 18
  %509 = ptrtoint ptr %beacon_energy_a to i32
  call void @__asan_loadN_noabort(i32 %509, i32 4)
  %510 = load i32, ptr %beacon_energy_a, align 1
  %511 = tail call i32 @llvm.bswap.i32(i32 %510)
  %beacon_energy_a454 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 18
  %512 = ptrtoint ptr %beacon_energy_a454 to i32
  call void @__asan_loadN_noabort(i32 %512, i32 4)
  %513 = load i32, ptr %beacon_energy_a454, align 1
  %beacon_energy_a455 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 18
  %514 = ptrtoint ptr %beacon_energy_a455 to i32
  call void @__asan_loadN_noabort(i32 %514, i32 4)
  %515 = load i32, ptr %beacon_energy_a455, align 1
  %beacon_energy_a456 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 18
  %516 = ptrtoint ptr %beacon_energy_a456 to i32
  call void @__asan_loadN_noabort(i32 %516, i32 4)
  %517 = load i32, ptr %beacon_energy_a456, align 1
  %call457 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr452, i32 noundef %sub453, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.152, i32 noundef %511, i32 noundef %513, i32 noundef %515, i32 noundef %517) #8
  %add458 = add i32 %call457, %add451
  %add.ptr459 = getelementptr i8, ptr %call1.i.i.i, i32 %add458
  %sub460 = sub i32 8560, %add458
  %beacon_energy_b = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 19
  %518 = ptrtoint ptr %beacon_energy_b to i32
  call void @__asan_loadN_noabort(i32 %518, i32 4)
  %519 = load i32, ptr %beacon_energy_b, align 1
  %520 = tail call i32 @llvm.bswap.i32(i32 %519)
  %beacon_energy_b461 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 19
  %521 = ptrtoint ptr %beacon_energy_b461 to i32
  call void @__asan_loadN_noabort(i32 %521, i32 4)
  %522 = load i32, ptr %beacon_energy_b461, align 1
  %beacon_energy_b462 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 19
  %523 = ptrtoint ptr %beacon_energy_b462 to i32
  call void @__asan_loadN_noabort(i32 %523, i32 4)
  %524 = load i32, ptr %beacon_energy_b462, align 1
  %beacon_energy_b463 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 19
  %525 = ptrtoint ptr %beacon_energy_b463 to i32
  call void @__asan_loadN_noabort(i32 %525, i32 4)
  %526 = load i32, ptr %beacon_energy_b463, align 1
  %call464 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr459, i32 noundef %sub460, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.153, i32 noundef %520, i32 noundef %522, i32 noundef %524, i32 noundef %526) #8
  %add465 = add i32 %call464, %add458
  %add.ptr466 = getelementptr i8, ptr %call1.i.i.i, i32 %add465
  %sub467 = sub i32 8560, %add465
  %beacon_energy_c = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 2, i32 20
  %527 = ptrtoint ptr %beacon_energy_c to i32
  call void @__asan_loadN_noabort(i32 %527, i32 4)
  %528 = load i32, ptr %beacon_energy_c, align 1
  %529 = tail call i32 @llvm.bswap.i32(i32 %528)
  %beacon_energy_c468 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 1, i32 20
  %530 = ptrtoint ptr %beacon_energy_c468 to i32
  call void @__asan_loadN_noabort(i32 %530, i32 4)
  %531 = load i32, ptr %beacon_energy_c468, align 1
  %beacon_energy_c469 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 1, i32 20
  %532 = ptrtoint ptr %beacon_energy_c469 to i32
  call void @__asan_loadN_noabort(i32 %532, i32 4)
  %533 = load i32, ptr %beacon_energy_c469, align 1
  %beacon_energy_c470 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 1, i32 20
  %534 = ptrtoint ptr %beacon_energy_c470 to i32
  call void @__asan_loadN_noabort(i32 %534, i32 4)
  %535 = load i32, ptr %beacon_energy_c470, align 1
  %call471 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr466, i32 noundef %sub467, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.154, i32 noundef %529, i32 noundef %531, i32 noundef %533, i32 noundef %535) #8
  %add472 = add i32 %call471, %add465
  %add.ptr473 = getelementptr i8, ptr %call1.i.i.i, i32 %add472
  %sub474 = sub i32 8560, %add472
  %call475 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr473, i32 noundef %sub474, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.155) #8
  %add476 = add i32 %add472, %call475
  %add.ptr477 = getelementptr i8, ptr %call1.i.i.i, i32 %add476
  %sub478 = sub i32 8560, %add476
  %536 = ptrtoint ptr %rx_ofdm_ht to i32
  call void @__asan_loadN_noabort(i32 %536, i32 4)
  %537 = load i32, ptr %rx_ofdm_ht, align 1
  %538 = tail call i32 @llvm.bswap.i32(i32 %537)
  %539 = ptrtoint ptr %rx_ofdm_ht15 to i32
  call void @__asan_loadN_noabort(i32 %539, i32 4)
  %540 = load i32, ptr %rx_ofdm_ht15, align 1
  %541 = ptrtoint ptr %rx_ofdm_ht22 to i32
  call void @__asan_loadN_noabort(i32 %541, i32 4)
  %542 = load i32, ptr %rx_ofdm_ht22, align 1
  %543 = ptrtoint ptr %rx_ofdm_ht29 to i32
  call void @__asan_loadN_noabort(i32 %543, i32 4)
  %544 = load i32, ptr %rx_ofdm_ht29, align 1
  %call483 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr477, i32 noundef %sub478, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.115, i32 noundef %538, i32 noundef %540, i32 noundef %542, i32 noundef %544) #8
  %add484 = add i32 %call483, %add476
  %add.ptr485 = getelementptr i8, ptr %call1.i.i.i, i32 %add484
  %sub486 = sub i32 8560, %add484
  %overrun_err487 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 1
  %545 = ptrtoint ptr %overrun_err487 to i32
  call void @__asan_loadN_noabort(i32 %545, i32 4)
  %546 = load i32, ptr %overrun_err487, align 1
  %547 = tail call i32 @llvm.bswap.i32(i32 %546)
  %overrun_err488 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 1
  %548 = ptrtoint ptr %overrun_err488 to i32
  call void @__asan_loadN_noabort(i32 %548, i32 4)
  %549 = load i32, ptr %overrun_err488, align 1
  %overrun_err489 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 1
  %550 = ptrtoint ptr %overrun_err489 to i32
  call void @__asan_loadN_noabort(i32 %550, i32 4)
  %551 = load i32, ptr %overrun_err489, align 1
  %overrun_err490 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 1
  %552 = ptrtoint ptr %overrun_err490 to i32
  call void @__asan_loadN_noabort(i32 %552, i32 4)
  %553 = load i32, ptr %overrun_err490, align 1
  %call491 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr485, i32 noundef %sub486, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.117, i32 noundef %547, i32 noundef %549, i32 noundef %551, i32 noundef %553) #8
  %add492 = add i32 %call491, %add484
  %add.ptr493 = getelementptr i8, ptr %call1.i.i.i, i32 %add492
  %sub494 = sub i32 8560, %add492
  %early_overrun_err495 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 2
  %554 = ptrtoint ptr %early_overrun_err495 to i32
  call void @__asan_loadN_noabort(i32 %554, i32 4)
  %555 = load i32, ptr %early_overrun_err495, align 1
  %556 = tail call i32 @llvm.bswap.i32(i32 %555)
  %early_overrun_err496 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 2
  %557 = ptrtoint ptr %early_overrun_err496 to i32
  call void @__asan_loadN_noabort(i32 %557, i32 4)
  %558 = load i32, ptr %early_overrun_err496, align 1
  %early_overrun_err497 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 2
  %559 = ptrtoint ptr %early_overrun_err497 to i32
  call void @__asan_loadN_noabort(i32 %559, i32 4)
  %560 = load i32, ptr %early_overrun_err497, align 1
  %early_overrun_err498 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 2
  %561 = ptrtoint ptr %early_overrun_err498 to i32
  call void @__asan_loadN_noabort(i32 %561, i32 4)
  %562 = load i32, ptr %early_overrun_err498, align 1
  %call499 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr493, i32 noundef %sub494, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.118, i32 noundef %556, i32 noundef %558, i32 noundef %560, i32 noundef %562) #8
  %add500 = add i32 %call499, %add492
  %add.ptr501 = getelementptr i8, ptr %call1.i.i.i, i32 %add500
  %sub502 = sub i32 8560, %add500
  %crc32_good503 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 3
  %563 = ptrtoint ptr %crc32_good503 to i32
  call void @__asan_loadN_noabort(i32 %563, i32 4)
  %564 = load i32, ptr %crc32_good503, align 1
  %565 = tail call i32 @llvm.bswap.i32(i32 %564)
  %crc32_good504 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 3
  %566 = ptrtoint ptr %crc32_good504 to i32
  call void @__asan_loadN_noabort(i32 %566, i32 4)
  %567 = load i32, ptr %crc32_good504, align 1
  %crc32_good505 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 3
  %568 = ptrtoint ptr %crc32_good505 to i32
  call void @__asan_loadN_noabort(i32 %568, i32 4)
  %569 = load i32, ptr %crc32_good505, align 1
  %crc32_good506 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 3
  %570 = ptrtoint ptr %crc32_good506 to i32
  call void @__asan_loadN_noabort(i32 %570, i32 4)
  %571 = load i32, ptr %crc32_good506, align 1
  %call507 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr501, i32 noundef %sub502, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.119, i32 noundef %565, i32 noundef %567, i32 noundef %569, i32 noundef %571) #8
  %add508 = add i32 %call507, %add500
  %add.ptr509 = getelementptr i8, ptr %call1.i.i.i, i32 %add508
  %sub510 = sub i32 8560, %add508
  %crc32_err511 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 4
  %572 = ptrtoint ptr %crc32_err511 to i32
  call void @__asan_loadN_noabort(i32 %572, i32 4)
  %573 = load i32, ptr %crc32_err511, align 1
  %574 = tail call i32 @llvm.bswap.i32(i32 %573)
  %crc32_err512 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 4
  %575 = ptrtoint ptr %crc32_err512 to i32
  call void @__asan_loadN_noabort(i32 %575, i32 4)
  %576 = load i32, ptr %crc32_err512, align 1
  %crc32_err513 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 4
  %577 = ptrtoint ptr %crc32_err513 to i32
  call void @__asan_loadN_noabort(i32 %577, i32 4)
  %578 = load i32, ptr %crc32_err513, align 1
  %crc32_err514 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 4
  %579 = ptrtoint ptr %crc32_err514 to i32
  call void @__asan_loadN_noabort(i32 %579, i32 4)
  %580 = load i32, ptr %crc32_err514, align 1
  %call515 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr509, i32 noundef %sub510, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.116, i32 noundef %574, i32 noundef %576, i32 noundef %578, i32 noundef %580) #8
  %add516 = add i32 %call515, %add508
  %add.ptr517 = getelementptr i8, ptr %call1.i.i.i, i32 %add516
  %sub518 = sub i32 8560, %add516
  %mh_format_err519 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 5
  %581 = ptrtoint ptr %mh_format_err519 to i32
  call void @__asan_loadN_noabort(i32 %581, i32 4)
  %582 = load i32, ptr %mh_format_err519, align 1
  %583 = tail call i32 @llvm.bswap.i32(i32 %582)
  %mh_format_err520 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 5
  %584 = ptrtoint ptr %mh_format_err520 to i32
  call void @__asan_loadN_noabort(i32 %584, i32 4)
  %585 = load i32, ptr %mh_format_err520, align 1
  %mh_format_err521 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 5
  %586 = ptrtoint ptr %mh_format_err521 to i32
  call void @__asan_loadN_noabort(i32 %586, i32 4)
  %587 = load i32, ptr %mh_format_err521, align 1
  %mh_format_err522 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 5
  %588 = ptrtoint ptr %mh_format_err522 to i32
  call void @__asan_loadN_noabort(i32 %588, i32 4)
  %589 = load i32, ptr %mh_format_err522, align 1
  %call523 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr517, i32 noundef %sub518, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.130, i32 noundef %583, i32 noundef %585, i32 noundef %587, i32 noundef %589) #8
  %add524 = add i32 %call523, %add516
  %add.ptr525 = getelementptr i8, ptr %call1.i.i.i, i32 %add524
  %sub526 = sub i32 8560, %add524
  %agg_crc32_good = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 6
  %590 = ptrtoint ptr %agg_crc32_good to i32
  call void @__asan_loadN_noabort(i32 %590, i32 4)
  %591 = load i32, ptr %agg_crc32_good, align 1
  %592 = tail call i32 @llvm.bswap.i32(i32 %591)
  %agg_crc32_good527 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 6
  %593 = ptrtoint ptr %agg_crc32_good527 to i32
  call void @__asan_loadN_noabort(i32 %593, i32 4)
  %594 = load i32, ptr %agg_crc32_good527, align 1
  %agg_crc32_good528 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 6
  %595 = ptrtoint ptr %agg_crc32_good528 to i32
  call void @__asan_loadN_noabort(i32 %595, i32 4)
  %596 = load i32, ptr %agg_crc32_good528, align 1
  %agg_crc32_good529 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 6
  %597 = ptrtoint ptr %agg_crc32_good529 to i32
  call void @__asan_loadN_noabort(i32 %597, i32 4)
  %598 = load i32, ptr %agg_crc32_good529, align 1
  %call530 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr525, i32 noundef %sub526, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.156, i32 noundef %592, i32 noundef %594, i32 noundef %596, i32 noundef %598) #8
  %add531 = add i32 %call530, %add524
  %add.ptr532 = getelementptr i8, ptr %call1.i.i.i, i32 %add531
  %sub533 = sub i32 8560, %add531
  %agg_mpdu_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 7
  %599 = ptrtoint ptr %agg_mpdu_cnt to i32
  call void @__asan_loadN_noabort(i32 %599, i32 4)
  %600 = load i32, ptr %agg_mpdu_cnt, align 1
  %601 = tail call i32 @llvm.bswap.i32(i32 %600)
  %agg_mpdu_cnt534 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 7
  %602 = ptrtoint ptr %agg_mpdu_cnt534 to i32
  call void @__asan_loadN_noabort(i32 %602, i32 4)
  %603 = load i32, ptr %agg_mpdu_cnt534, align 1
  %agg_mpdu_cnt535 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 7
  %604 = ptrtoint ptr %agg_mpdu_cnt535 to i32
  call void @__asan_loadN_noabort(i32 %604, i32 4)
  %605 = load i32, ptr %agg_mpdu_cnt535, align 1
  %agg_mpdu_cnt536 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 7
  %606 = ptrtoint ptr %agg_mpdu_cnt536 to i32
  call void @__asan_loadN_noabort(i32 %606, i32 4)
  %607 = load i32, ptr %agg_mpdu_cnt536, align 1
  %call537 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr532, i32 noundef %sub533, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.157, i32 noundef %601, i32 noundef %603, i32 noundef %605, i32 noundef %607) #8
  %add538 = add i32 %call537, %add531
  %add.ptr539 = getelementptr i8, ptr %call1.i.i.i, i32 %add538
  %sub540 = sub i32 8560, %add538
  %agg_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 8
  %608 = ptrtoint ptr %agg_cnt to i32
  call void @__asan_loadN_noabort(i32 %608, i32 4)
  %609 = load i32, ptr %agg_cnt, align 1
  %610 = tail call i32 @llvm.bswap.i32(i32 %609)
  %agg_cnt541 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 8
  %611 = ptrtoint ptr %agg_cnt541 to i32
  call void @__asan_loadN_noabort(i32 %611, i32 4)
  %612 = load i32, ptr %agg_cnt541, align 1
  %agg_cnt542 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 8
  %613 = ptrtoint ptr %agg_cnt542 to i32
  call void @__asan_loadN_noabort(i32 %613, i32 4)
  %614 = load i32, ptr %agg_cnt542, align 1
  %agg_cnt543 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 8
  %615 = ptrtoint ptr %agg_cnt543 to i32
  call void @__asan_loadN_noabort(i32 %615, i32 4)
  %616 = load i32, ptr %agg_cnt543, align 1
  %call544 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr539, i32 noundef %sub540, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.158, i32 noundef %610, i32 noundef %612, i32 noundef %614, i32 noundef %616) #8
  %add545 = add i32 %call544, %add538
  %add.ptr546 = getelementptr i8, ptr %call1.i.i.i, i32 %add545
  %sub547 = sub i32 8560, %add545
  %unsupport_mcs = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 4, i32 9
  %617 = ptrtoint ptr %unsupport_mcs to i32
  call void @__asan_loadN_noabort(i32 %617, i32 4)
  %618 = load i32, ptr %unsupport_mcs, align 1
  %619 = tail call i32 @llvm.bswap.i32(i32 %618)
  %unsupport_mcs548 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 3, i32 9
  %620 = ptrtoint ptr %unsupport_mcs548 to i32
  call void @__asan_loadN_noabort(i32 %620, i32 4)
  %621 = load i32, ptr %unsupport_mcs548, align 1
  %unsupport_mcs549 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 3, i32 9
  %622 = ptrtoint ptr %unsupport_mcs549 to i32
  call void @__asan_loadN_noabort(i32 %622, i32 4)
  %623 = load i32, ptr %unsupport_mcs549, align 1
  %unsupport_mcs550 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 3, i32 9
  %624 = ptrtoint ptr %unsupport_mcs550 to i32
  call void @__asan_loadN_noabort(i32 %624, i32 4)
  %625 = load i32, ptr %unsupport_mcs550, align 1
  %call551 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr546, i32 noundef %sub547, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.159, i32 noundef %619, i32 noundef %621, i32 noundef %623, i32 noundef %625) #8
  %add552 = add i32 %call551, %add545
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %call555 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call1.i.i.i, i32 noundef %add552) #8
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call555, %if.end4 ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_statistics_flag(ptr noundef %priv, ptr noundef %buf, i32 noundef %bufsz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 10, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !685

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.160, i32 noundef 648, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %statistics24 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71
  %1 = ptrtoint ptr %statistics24 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %statistics24, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.161, i32 noundef %3) #8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end.if.end33_crit_edge, label %if.then28

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %call26
  %sub30 = sub i32 %bufsz, %call26
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.162) #8
  %add32 = add i32 %call31, %call26
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end.if.end33_crit_edge
  %p.0 = phi i32 [ %add32, %if.then28 ], [ %call26, %if.end.if.end33_crit_edge ]
  %add.ptr34 = getelementptr i8, ptr %buf, i32 %p.0
  %sub35 = sub i32 %bufsz, %p.0
  %and36 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond = select i1 %tobool37.not, ptr @.str.165, ptr @.str.164
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.163, ptr noundef nonnull %cond) #8
  %add39 = add i32 %call38, %p.0
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %add39
  %sub41 = sub i32 %bufsz, %add39
  %and42 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.168, ptr @.str.167
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.166, ptr noundef nonnull %cond44) #8
  %add46 = add i32 %add39, %call45
  ret i32 %add46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ucode_tx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 5242) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %tx6 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6
  %tx7 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5
  %tx8 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5
  %tx9 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5
  %call10 = tail call fastcc i32 @iwl_statistics_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 5242)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call10
  %sub = sub i32 5242, %call10
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.169) #8
  %add12 = add i32 %call11, %call10
  %add.ptr13 = getelementptr i8, ptr %call7.i.i, i32 %add12
  %sub14 = sub i32 5242, %add12
  %6 = ptrtoint ptr %tx6 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %tx6, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %tx7 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %tx7, align 1
  %11 = ptrtoint ptr %tx8 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %tx8, align 1
  %13 = ptrtoint ptr %tx9 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %tx9, align 1
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.170, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #8
  %add19 = add i32 %call18, %add12
  %add.ptr20 = getelementptr i8, ptr %call7.i.i, i32 %add19
  %sub21 = sub i32 5242, %add19
  %rx_detected_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 1
  %15 = ptrtoint ptr %rx_detected_cnt to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %rx_detected_cnt, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %rx_detected_cnt22 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 1
  %18 = ptrtoint ptr %rx_detected_cnt22 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %rx_detected_cnt22, align 1
  %rx_detected_cnt23 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 1
  %20 = ptrtoint ptr %rx_detected_cnt23 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %rx_detected_cnt23, align 1
  %rx_detected_cnt24 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 1
  %22 = ptrtoint ptr %rx_detected_cnt24 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %rx_detected_cnt24, align 1
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.171, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #8
  %add26 = add i32 %call25, %add19
  %add.ptr27 = getelementptr i8, ptr %call7.i.i, i32 %add26
  %sub28 = sub i32 5242, %add26
  %bt_prio_defer_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 2
  %24 = ptrtoint ptr %bt_prio_defer_cnt to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %bt_prio_defer_cnt, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %bt_prio_defer_cnt29 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 2
  %27 = ptrtoint ptr %bt_prio_defer_cnt29 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %bt_prio_defer_cnt29, align 1
  %bt_prio_defer_cnt30 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 2
  %29 = ptrtoint ptr %bt_prio_defer_cnt30 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %bt_prio_defer_cnt30, align 1
  %bt_prio_defer_cnt31 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 2
  %31 = ptrtoint ptr %bt_prio_defer_cnt31 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %bt_prio_defer_cnt31, align 1
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.172, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #8
  %add33 = add i32 %call32, %add26
  %add.ptr34 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub35 = sub i32 5242, %add33
  %bt_prio_kill_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 3
  %33 = ptrtoint ptr %bt_prio_kill_cnt to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %bt_prio_kill_cnt, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %bt_prio_kill_cnt36 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 3
  %36 = ptrtoint ptr %bt_prio_kill_cnt36 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %bt_prio_kill_cnt36, align 1
  %bt_prio_kill_cnt37 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 3
  %38 = ptrtoint ptr %bt_prio_kill_cnt37 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %bt_prio_kill_cnt37, align 1
  %bt_prio_kill_cnt38 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 3
  %40 = ptrtoint ptr %bt_prio_kill_cnt38 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %bt_prio_kill_cnt38, align 1
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.173, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #8
  %add40 = add i32 %call39, %add33
  %add.ptr41 = getelementptr i8, ptr %call7.i.i, i32 %add40
  %sub42 = sub i32 5242, %add40
  %few_bytes_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 4
  %42 = ptrtoint ptr %few_bytes_cnt to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %few_bytes_cnt, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %few_bytes_cnt43 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 4
  %45 = ptrtoint ptr %few_bytes_cnt43 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %few_bytes_cnt43, align 1
  %few_bytes_cnt44 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 4
  %47 = ptrtoint ptr %few_bytes_cnt44 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %few_bytes_cnt44, align 1
  %few_bytes_cnt45 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 4
  %49 = ptrtoint ptr %few_bytes_cnt45 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %few_bytes_cnt45, align 1
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.174, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50) #8
  %add47 = add i32 %call46, %add40
  %add.ptr48 = getelementptr i8, ptr %call7.i.i, i32 %add47
  %sub49 = sub i32 5242, %add47
  %cts_timeout = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 5
  %51 = ptrtoint ptr %cts_timeout to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %cts_timeout, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %cts_timeout50 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 5
  %54 = ptrtoint ptr %cts_timeout50 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %cts_timeout50, align 1
  %cts_timeout51 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 5
  %56 = ptrtoint ptr %cts_timeout51 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %cts_timeout51, align 1
  %cts_timeout52 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 5
  %58 = ptrtoint ptr %cts_timeout52 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %cts_timeout52, align 1
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr48, i32 noundef %sub49, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.175, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #8
  %add54 = add i32 %call53, %add47
  %add.ptr55 = getelementptr i8, ptr %call7.i.i, i32 %add54
  %sub56 = sub i32 5242, %add54
  %ack_timeout = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 6
  %60 = ptrtoint ptr %ack_timeout to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %ack_timeout, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %ack_timeout57 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 6
  %63 = ptrtoint ptr %ack_timeout57 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %ack_timeout57, align 1
  %ack_timeout58 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 6
  %65 = ptrtoint ptr %ack_timeout58 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %ack_timeout58, align 1
  %ack_timeout59 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 6
  %67 = ptrtoint ptr %ack_timeout59 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %ack_timeout59, align 1
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.176, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #8
  %add61 = add i32 %call60, %add54
  %add.ptr62 = getelementptr i8, ptr %call7.i.i, i32 %add61
  %sub63 = sub i32 5242, %add61
  %expected_ack_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 7
  %69 = ptrtoint ptr %expected_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %expected_ack_cnt, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %expected_ack_cnt64 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 7
  %72 = ptrtoint ptr %expected_ack_cnt64 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %expected_ack_cnt64, align 1
  %expected_ack_cnt65 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 7
  %74 = ptrtoint ptr %expected_ack_cnt65 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %expected_ack_cnt65, align 1
  %expected_ack_cnt66 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 7
  %76 = ptrtoint ptr %expected_ack_cnt66 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %expected_ack_cnt66, align 1
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.177, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #8
  %add68 = add i32 %call67, %add61
  %add.ptr69 = getelementptr i8, ptr %call7.i.i, i32 %add68
  %sub70 = sub i32 5242, %add68
  %actual_ack_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 8
  %78 = ptrtoint ptr %actual_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %actual_ack_cnt, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %actual_ack_cnt71 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 8
  %81 = ptrtoint ptr %actual_ack_cnt71 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %actual_ack_cnt71, align 1
  %actual_ack_cnt72 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 8
  %83 = ptrtoint ptr %actual_ack_cnt72 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %actual_ack_cnt72, align 1
  %actual_ack_cnt73 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 8
  %85 = ptrtoint ptr %actual_ack_cnt73 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %actual_ack_cnt73, align 1
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.178, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86) #8
  %add75 = add i32 %call74, %add68
  %add.ptr76 = getelementptr i8, ptr %call7.i.i, i32 %add75
  %sub77 = sub i32 5242, %add75
  %dump_msdu_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 9
  %87 = ptrtoint ptr %dump_msdu_cnt to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %dump_msdu_cnt, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %dump_msdu_cnt78 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 9
  %90 = ptrtoint ptr %dump_msdu_cnt78 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %dump_msdu_cnt78, align 1
  %dump_msdu_cnt79 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 9
  %92 = ptrtoint ptr %dump_msdu_cnt79 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %dump_msdu_cnt79, align 1
  %dump_msdu_cnt80 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 9
  %94 = ptrtoint ptr %dump_msdu_cnt80 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %dump_msdu_cnt80, align 1
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.179, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95) #8
  %add82 = add i32 %call81, %add75
  %add.ptr83 = getelementptr i8, ptr %call7.i.i, i32 %add82
  %sub84 = sub i32 5242, %add82
  %burst_abort_next_frame_mismatch_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 10
  %96 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %burst_abort_next_frame_mismatch_cnt, align 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %burst_abort_next_frame_mismatch_cnt85 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 10
  %99 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt85 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %burst_abort_next_frame_mismatch_cnt85, align 1
  %burst_abort_next_frame_mismatch_cnt86 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 10
  %101 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt86 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %burst_abort_next_frame_mismatch_cnt86, align 1
  %burst_abort_next_frame_mismatch_cnt87 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 10
  %103 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt87 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %burst_abort_next_frame_mismatch_cnt87, align 1
  %call88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83, i32 noundef %sub84, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.180, i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %104) #8
  %add89 = add i32 %call88, %add82
  %add.ptr90 = getelementptr i8, ptr %call7.i.i, i32 %add89
  %sub91 = sub i32 5242, %add89
  %burst_abort_missing_next_frame_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 11
  %105 = ptrtoint ptr %burst_abort_missing_next_frame_cnt to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %burst_abort_missing_next_frame_cnt, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %burst_abort_missing_next_frame_cnt92 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 11
  %108 = ptrtoint ptr %burst_abort_missing_next_frame_cnt92 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %burst_abort_missing_next_frame_cnt92, align 1
  %burst_abort_missing_next_frame_cnt93 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 11
  %110 = ptrtoint ptr %burst_abort_missing_next_frame_cnt93 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %burst_abort_missing_next_frame_cnt93, align 1
  %burst_abort_missing_next_frame_cnt94 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 11
  %112 = ptrtoint ptr %burst_abort_missing_next_frame_cnt94 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %burst_abort_missing_next_frame_cnt94, align 1
  %call95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr90, i32 noundef %sub91, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.181, i32 noundef %107, i32 noundef %109, i32 noundef %111, i32 noundef %113) #8
  %add96 = add i32 %call95, %add89
  %add.ptr97 = getelementptr i8, ptr %call7.i.i, i32 %add96
  %sub98 = sub i32 5242, %add96
  %cts_timeout_collision = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 12
  %114 = ptrtoint ptr %cts_timeout_collision to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %cts_timeout_collision, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %cts_timeout_collision99 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 12
  %117 = ptrtoint ptr %cts_timeout_collision99 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %cts_timeout_collision99, align 1
  %cts_timeout_collision100 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 12
  %119 = ptrtoint ptr %cts_timeout_collision100 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %cts_timeout_collision100, align 1
  %cts_timeout_collision101 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 12
  %121 = ptrtoint ptr %cts_timeout_collision101 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %cts_timeout_collision101, align 1
  %call102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97, i32 noundef %sub98, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.182, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122) #8
  %add103 = add i32 %call102, %add96
  %add.ptr104 = getelementptr i8, ptr %call7.i.i, i32 %add103
  %sub105 = sub i32 5242, %add103
  %ack_or_ba_timeout_collision = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 13
  %123 = ptrtoint ptr %ack_or_ba_timeout_collision to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %ack_or_ba_timeout_collision, align 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  %ack_or_ba_timeout_collision106 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 13
  %126 = ptrtoint ptr %ack_or_ba_timeout_collision106 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %ack_or_ba_timeout_collision106, align 1
  %ack_or_ba_timeout_collision107 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 13
  %128 = ptrtoint ptr %ack_or_ba_timeout_collision107 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %ack_or_ba_timeout_collision107, align 1
  %ack_or_ba_timeout_collision108 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 13
  %130 = ptrtoint ptr %ack_or_ba_timeout_collision108 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %ack_or_ba_timeout_collision108, align 1
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr104, i32 noundef %sub105, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.183, i32 noundef %125, i32 noundef %127, i32 noundef %129, i32 noundef %131) #8
  %add110 = add i32 %call109, %add103
  %add.ptr111 = getelementptr i8, ptr %call7.i.i, i32 %add110
  %sub112 = sub i32 5242, %add110
  %agg = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14
  %132 = ptrtoint ptr %agg to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %agg, align 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %agg113 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14
  %135 = ptrtoint ptr %agg113 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %agg113, align 1
  %agg115 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14
  %137 = ptrtoint ptr %agg115 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %agg115, align 1
  %agg117 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14
  %139 = ptrtoint ptr %agg117 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %agg117, align 1
  %call119 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.184, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %140) #8
  %add120 = add i32 %call119, %add110
  %add.ptr121 = getelementptr i8, ptr %call7.i.i, i32 %add120
  %sub122 = sub i32 5242, %add120
  %ba_reschedule_frames = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 1
  %141 = ptrtoint ptr %ba_reschedule_frames to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %ba_reschedule_frames, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  %ba_reschedule_frames125 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 1
  %144 = ptrtoint ptr %ba_reschedule_frames125 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %ba_reschedule_frames125, align 1
  %ba_reschedule_frames127 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 1
  %146 = ptrtoint ptr %ba_reschedule_frames127 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %ba_reschedule_frames127, align 1
  %ba_reschedule_frames129 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 1
  %148 = ptrtoint ptr %ba_reschedule_frames129 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %ba_reschedule_frames129, align 1
  %call130 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.185, i32 noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %149) #8
  %add131 = add i32 %call130, %add120
  %add.ptr132 = getelementptr i8, ptr %call7.i.i, i32 %add131
  %sub133 = sub i32 5242, %add131
  %scd_query_agg_frame_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 2
  %150 = ptrtoint ptr %scd_query_agg_frame_cnt to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %scd_query_agg_frame_cnt, align 1
  %152 = tail call i32 @llvm.bswap.i32(i32 %151)
  %scd_query_agg_frame_cnt136 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 2
  %153 = ptrtoint ptr %scd_query_agg_frame_cnt136 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %scd_query_agg_frame_cnt136, align 1
  %scd_query_agg_frame_cnt138 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 2
  %155 = ptrtoint ptr %scd_query_agg_frame_cnt138 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %scd_query_agg_frame_cnt138, align 1
  %scd_query_agg_frame_cnt140 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 2
  %157 = ptrtoint ptr %scd_query_agg_frame_cnt140 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %scd_query_agg_frame_cnt140, align 1
  %call141 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr132, i32 noundef %sub133, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.186, i32 noundef %152, i32 noundef %154, i32 noundef %156, i32 noundef %158) #8
  %add142 = add i32 %call141, %add131
  %add.ptr143 = getelementptr i8, ptr %call7.i.i, i32 %add142
  %sub144 = sub i32 5242, %add142
  %scd_query_no_agg = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 3
  %159 = ptrtoint ptr %scd_query_no_agg to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %scd_query_no_agg, align 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %scd_query_no_agg147 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 3
  %162 = ptrtoint ptr %scd_query_no_agg147 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %scd_query_no_agg147, align 1
  %scd_query_no_agg149 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 3
  %164 = ptrtoint ptr %scd_query_no_agg149 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %scd_query_no_agg149, align 1
  %scd_query_no_agg151 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 3
  %166 = ptrtoint ptr %scd_query_no_agg151 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %scd_query_no_agg151, align 1
  %call152 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr143, i32 noundef %sub144, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.187, i32 noundef %161, i32 noundef %163, i32 noundef %165, i32 noundef %167) #8
  %add153 = add i32 %call152, %add142
  %add.ptr154 = getelementptr i8, ptr %call7.i.i, i32 %add153
  %sub155 = sub i32 5242, %add153
  %scd_query_agg = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 4
  %168 = ptrtoint ptr %scd_query_agg to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %scd_query_agg, align 1
  %170 = tail call i32 @llvm.bswap.i32(i32 %169)
  %scd_query_agg158 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 4
  %171 = ptrtoint ptr %scd_query_agg158 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %scd_query_agg158, align 1
  %scd_query_agg160 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 4
  %173 = ptrtoint ptr %scd_query_agg160 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %scd_query_agg160, align 1
  %scd_query_agg162 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 4
  %175 = ptrtoint ptr %scd_query_agg162 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %scd_query_agg162, align 1
  %call163 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr154, i32 noundef %sub155, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.188, i32 noundef %170, i32 noundef %172, i32 noundef %174, i32 noundef %176) #8
  %add164 = add i32 %call163, %add153
  %add.ptr165 = getelementptr i8, ptr %call7.i.i, i32 %add164
  %sub166 = sub i32 5242, %add164
  %scd_query_mismatch = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 5
  %177 = ptrtoint ptr %scd_query_mismatch to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %scd_query_mismatch, align 1
  %179 = tail call i32 @llvm.bswap.i32(i32 %178)
  %scd_query_mismatch169 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 5
  %180 = ptrtoint ptr %scd_query_mismatch169 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %scd_query_mismatch169, align 1
  %scd_query_mismatch171 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 5
  %182 = ptrtoint ptr %scd_query_mismatch171 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %scd_query_mismatch171, align 1
  %scd_query_mismatch173 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 5
  %184 = ptrtoint ptr %scd_query_mismatch173 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %scd_query_mismatch173, align 1
  %call174 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165, i32 noundef %sub166, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.189, i32 noundef %179, i32 noundef %181, i32 noundef %183, i32 noundef %185) #8
  %add175 = add i32 %call174, %add164
  %add.ptr176 = getelementptr i8, ptr %call7.i.i, i32 %add175
  %sub177 = sub i32 5242, %add175
  %frame_not_ready = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 6
  %186 = ptrtoint ptr %frame_not_ready to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %frame_not_ready, align 1
  %188 = tail call i32 @llvm.bswap.i32(i32 %187)
  %frame_not_ready180 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 6
  %189 = ptrtoint ptr %frame_not_ready180 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %frame_not_ready180, align 1
  %frame_not_ready182 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 6
  %191 = ptrtoint ptr %frame_not_ready182 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %frame_not_ready182, align 1
  %frame_not_ready184 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 6
  %193 = ptrtoint ptr %frame_not_ready184 to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %frame_not_ready184, align 1
  %call185 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr176, i32 noundef %sub177, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.190, i32 noundef %188, i32 noundef %190, i32 noundef %192, i32 noundef %194) #8
  %add186 = add i32 %call185, %add175
  %add.ptr187 = getelementptr i8, ptr %call7.i.i, i32 %add186
  %sub188 = sub i32 5242, %add186
  %underrun = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 7
  %195 = ptrtoint ptr %underrun to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %underrun, align 1
  %197 = tail call i32 @llvm.bswap.i32(i32 %196)
  %underrun191 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 7
  %198 = ptrtoint ptr %underrun191 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %underrun191, align 1
  %underrun193 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 7
  %200 = ptrtoint ptr %underrun193 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %underrun193, align 1
  %underrun195 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 7
  %202 = ptrtoint ptr %underrun195 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %underrun195, align 1
  %call196 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr187, i32 noundef %sub188, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.191, i32 noundef %197, i32 noundef %199, i32 noundef %201, i32 noundef %203) #8
  %add197 = add i32 %call196, %add186
  %add.ptr198 = getelementptr i8, ptr %call7.i.i, i32 %add197
  %sub199 = sub i32 5242, %add197
  %bt_prio_kill = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 8
  %204 = ptrtoint ptr %bt_prio_kill to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %bt_prio_kill, align 1
  %206 = tail call i32 @llvm.bswap.i32(i32 %205)
  %bt_prio_kill202 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 8
  %207 = ptrtoint ptr %bt_prio_kill202 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %bt_prio_kill202, align 1
  %bt_prio_kill204 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 8
  %209 = ptrtoint ptr %bt_prio_kill204 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %bt_prio_kill204, align 1
  %bt_prio_kill206 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 8
  %211 = ptrtoint ptr %bt_prio_kill206 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %bt_prio_kill206, align 1
  %call207 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr198, i32 noundef %sub199, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.192, i32 noundef %206, i32 noundef %208, i32 noundef %210, i32 noundef %212) #8
  %add208 = add i32 %call207, %add197
  %add.ptr209 = getelementptr i8, ptr %call7.i.i, i32 %add208
  %sub210 = sub i32 5242, %add208
  %rx_ba_rsp_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 14, i32 9
  %213 = ptrtoint ptr %rx_ba_rsp_cnt to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %rx_ba_rsp_cnt, align 1
  %215 = tail call i32 @llvm.bswap.i32(i32 %214)
  %rx_ba_rsp_cnt213 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 5, i32 14, i32 9
  %216 = ptrtoint ptr %rx_ba_rsp_cnt213 to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %217 = load i32, ptr %rx_ba_rsp_cnt213, align 1
  %rx_ba_rsp_cnt215 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 5, i32 14, i32 9
  %218 = ptrtoint ptr %rx_ba_rsp_cnt215 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %rx_ba_rsp_cnt215, align 1
  %rx_ba_rsp_cnt217 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 5, i32 14, i32 9
  %220 = ptrtoint ptr %rx_ba_rsp_cnt217 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %rx_ba_rsp_cnt217, align 1
  %call218 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr209, i32 noundef %sub210, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.193, i32 noundef %215, i32 noundef %217, i32 noundef %219, i32 noundef %221) #8
  %add219 = add i32 %call218, %add208
  %tx_power = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 15
  %222 = ptrtoint ptr %tx_power to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %tx_power, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool220.not = icmp eq i8 %223, 0
  br i1 %tobool220.not, label %lor.lhs.false, label %if.end4.if.then228_crit_edge

if.end4.if.then228_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then228

lor.lhs.false:                                    ; preds = %if.end4
  %ant_b = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 15, i32 1
  %224 = ptrtoint ptr %ant_b to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %ant_b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool223.not = icmp eq i8 %225, 0
  br i1 %tobool223.not, label %lor.lhs.false224, label %lor.lhs.false.if.then228_crit_edge

lor.lhs.false.if.then228_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then228

lor.lhs.false224:                                 ; preds = %lor.lhs.false
  %ant_c = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 15, i32 2
  %226 = ptrtoint ptr %ant_c to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %ant_c, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool227.not = icmp eq i8 %227, 0
  br i1 %tobool227.not, label %lor.lhs.false224.if.end286_crit_edge, label %lor.lhs.false224.if.then228_crit_edge

lor.lhs.false224.if.then228_crit_edge:            ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then228

lor.lhs.false224.if.end286_crit_edge:             ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end286

if.then228:                                       ; preds = %lor.lhs.false224.if.then228_crit_edge, %lor.lhs.false.if.then228_crit_edge, %if.end4.if.then228_crit_edge
  %add.ptr229 = getelementptr i8, ptr %call7.i.i, i32 %add219
  %sub230 = sub i32 5242, %add219
  %call231 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr229, i32 noundef %sub230, ptr noundef nonnull @.str.194) #8
  %add232 = add i32 %call231, %add219
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 123
  %228 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %229, i32 0, i32 20
  %230 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %valid_tx_ant, align 1
  %232 = and i8 %231, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool234.not = icmp eq i8 %232, 0
  br i1 %tobool234.not, label %if.then228.if.end247_crit_edge, label %land.lhs.true

if.then228.if.end247_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

land.lhs.true:                                    ; preds = %if.then228
  %233 = ptrtoint ptr %tx_power to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %tx_power, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool238.not = icmp eq i8 %234, 0
  br i1 %tobool238.not, label %land.lhs.true.if.end247_crit_edge, label %if.then239

land.lhs.true.if.end247_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

if.then239:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv237 = zext i8 %234 to i32
  %add.ptr240 = getelementptr i8, ptr %call7.i.i, i32 %add232
  %sub241 = sub i32 5242, %add232
  %call245 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr240, i32 noundef %sub241, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef %conv237) #8
  %add246 = add i32 %call245, %add232
  br label %if.end247

if.end247:                                        ; preds = %if.then239, %land.lhs.true.if.end247_crit_edge, %if.then228.if.end247_crit_edge
  %pos.0 = phi i32 [ %add246, %if.then239 ], [ %add232, %land.lhs.true.if.end247_crit_edge ], [ %add232, %if.then228.if.end247_crit_edge ]
  %235 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant249 = getelementptr inbounds %struct.iwl_nvm_data, ptr %236, i32 0, i32 20
  %237 = ptrtoint ptr %valid_tx_ant249 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %valid_tx_ant249, align 1
  %239 = and i8 %238, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool252.not = icmp eq i8 %239, 0
  br i1 %tobool252.not, label %if.end247.if.end266_crit_edge, label %land.lhs.true253

if.end247.if.end266_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

land.lhs.true253:                                 ; preds = %if.end247
  %ant_b255 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 15, i32 1
  %240 = ptrtoint ptr %ant_b255 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %ant_b255, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool257.not = icmp eq i8 %241, 0
  br i1 %tobool257.not, label %land.lhs.true253.if.end266_crit_edge, label %if.then258

land.lhs.true253.if.end266_crit_edge:             ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266

if.then258:                                       ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #10
  %conv256 = zext i8 %241 to i32
  %add.ptr259 = getelementptr i8, ptr %call7.i.i, i32 %pos.0
  %sub260 = sub i32 5242, %pos.0
  %call264 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr259, i32 noundef %sub260, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.197, i32 noundef %conv256) #8
  %add265 = add i32 %call264, %pos.0
  br label %if.end266

if.end266:                                        ; preds = %if.then258, %land.lhs.true253.if.end266_crit_edge, %if.end247.if.end266_crit_edge
  %pos.1 = phi i32 [ %add265, %if.then258 ], [ %pos.0, %land.lhs.true253.if.end266_crit_edge ], [ %pos.0, %if.end247.if.end266_crit_edge ]
  %242 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant268 = getelementptr inbounds %struct.iwl_nvm_data, ptr %243, i32 0, i32 20
  %244 = ptrtoint ptr %valid_tx_ant268 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %valid_tx_ant268, align 1
  %246 = and i8 %245, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool271.not = icmp eq i8 %246, 0
  br i1 %tobool271.not, label %if.end266.if.end286_crit_edge, label %land.lhs.true272

if.end266.if.end286_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end286

land.lhs.true272:                                 ; preds = %if.end266
  %ant_c274 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 6, i32 15, i32 2
  %247 = ptrtoint ptr %ant_c274 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %ant_c274, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool276.not = icmp eq i8 %248, 0
  br i1 %tobool276.not, label %land.lhs.true272.if.end286_crit_edge, label %if.then277

land.lhs.true272.if.end286_crit_edge:             ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end286

if.then277:                                       ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #10
  %conv275 = zext i8 %248 to i32
  %add.ptr278 = getelementptr i8, ptr %call7.i.i, i32 %pos.1
  %sub279 = sub i32 5242, %pos.1
  %call283 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr278, i32 noundef %sub279, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.198, i32 noundef %conv275) #8
  %add284 = add i32 %call283, %pos.1
  br label %if.end286

if.end286:                                        ; preds = %if.then277, %land.lhs.true272.if.end286_crit_edge, %if.end266.if.end286_crit_edge, %lor.lhs.false224.if.end286_crit_edge
  %pos.2 = phi i32 [ %add284, %if.then277 ], [ %pos.1, %land.lhs.true272.if.end286_crit_edge ], [ %pos.1, %if.end266.if.end286_crit_edge ], [ %add219, %lor.lhs.false224.if.end286_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %call289 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %pos.2) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end286, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call289, %if.end286 ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ucode_general_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1180) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %common = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1
  %dbg8 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 2
  %div11 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 7
  %dbg15 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 2
  %div18 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 7
  %dbg23 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 2
  %dbg26 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 2
  %div29 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 7
  %div32 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 7
  %call33 = tail call fastcc i32 @iwl_statistics_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 1180)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call33
  %sub = sub i32 1180, %call33
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.199) #8
  %add35 = add i32 %call34, %call33
  %add.ptr36 = getelementptr i8, ptr %call7.i.i, i32 %add35
  %sub37 = sub i32 1180, %add35
  %6 = ptrtoint ptr %common to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %common, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef %8) #8
  %add39 = add i32 %call38, %add35
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub41 = sub i32 1180, %add39
  %temperature_m = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 1
  %9 = ptrtoint ptr %temperature_m to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %temperature_m, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.202, i32 noundef %11) #8
  %add43 = add i32 %call42, %add39
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %add43
  %sub45 = sub i32 1180, %add43
  %ttl_timestamp = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 6
  %12 = ptrtoint ptr %ttl_timestamp to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ttl_timestamp, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.203, i32 noundef %14) #8
  %add47 = add i32 %call46, %add43
  %add.ptr48 = getelementptr i8, ptr %call7.i.i, i32 %add47
  %sub49 = sub i32 1180, %add47
  %15 = ptrtoint ptr %dbg8 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %dbg8, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %dbg15 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %dbg15, align 1
  %20 = ptrtoint ptr %dbg23 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %dbg23, align 1
  %22 = ptrtoint ptr %dbg26 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %dbg26, align 1
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr48, i32 noundef %sub49, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.204, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #8
  %add54 = add i32 %call53, %add47
  %add.ptr55 = getelementptr i8, ptr %call7.i.i, i32 %add54
  %sub56 = sub i32 1180, %add54
  %burst_count = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 2, i32 1
  %24 = ptrtoint ptr %burst_count to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %burst_count, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %burst_count57 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %burst_count57 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %burst_count57, align 1
  %burst_count58 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %burst_count58 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %burst_count58, align 1
  %burst_count59 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %burst_count59 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %burst_count59, align 1
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.205, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #8
  %add61 = add i32 %call60, %add54
  %add.ptr62 = getelementptr i8, ptr %call7.i.i, i32 %add61
  %sub63 = sub i32 1180, %add61
  %wait_for_silence_timeout_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 2, i32 2
  %33 = ptrtoint ptr %wait_for_silence_timeout_cnt to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %wait_for_silence_timeout_cnt, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %wait_for_silence_timeout_cnt64 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %wait_for_silence_timeout_cnt64 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %wait_for_silence_timeout_cnt64, align 1
  %wait_for_silence_timeout_cnt65 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %wait_for_silence_timeout_cnt65 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %wait_for_silence_timeout_cnt65, align 1
  %wait_for_silence_timeout_cnt66 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %wait_for_silence_timeout_cnt66 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %wait_for_silence_timeout_cnt66, align 1
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.206, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #8
  %add68 = add i32 %call67, %add61
  %add.ptr69 = getelementptr i8, ptr %call7.i.i, i32 %add68
  %sub70 = sub i32 1180, %add68
  %sleep_time = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 3
  %42 = ptrtoint ptr %sleep_time to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %sleep_time, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %sleep_time71 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 3
  %45 = ptrtoint ptr %sleep_time71 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %sleep_time71, align 1
  %sleep_time72 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 3
  %47 = ptrtoint ptr %sleep_time72 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %sleep_time72, align 1
  %sleep_time73 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 3
  %49 = ptrtoint ptr %sleep_time73 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %sleep_time73, align 1
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.207, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50) #8
  %add75 = add i32 %call74, %add68
  %add.ptr76 = getelementptr i8, ptr %call7.i.i, i32 %add75
  %sub77 = sub i32 1180, %add75
  %slots_out = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 4
  %51 = ptrtoint ptr %slots_out to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %slots_out, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %slots_out78 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 4
  %54 = ptrtoint ptr %slots_out78 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %slots_out78, align 1
  %slots_out79 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 4
  %56 = ptrtoint ptr %slots_out79 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %slots_out79, align 1
  %slots_out80 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 4
  %58 = ptrtoint ptr %slots_out80 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %slots_out80, align 1
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.208, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #8
  %add82 = add i32 %call81, %add75
  %add.ptr83 = getelementptr i8, ptr %call7.i.i, i32 %add82
  %sub84 = sub i32 1180, %add82
  %slots_idle = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 5
  %60 = ptrtoint ptr %slots_idle to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %slots_idle, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %slots_idle85 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 5
  %63 = ptrtoint ptr %slots_idle85 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %slots_idle85, align 1
  %slots_idle86 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 5
  %65 = ptrtoint ptr %slots_idle86 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %slots_idle86, align 1
  %slots_idle87 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 5
  %67 = ptrtoint ptr %slots_idle87 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %slots_idle87, align 1
  %call88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83, i32 noundef %sub84, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.209, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #8
  %add89 = add i32 %call88, %add82
  %add.ptr90 = getelementptr i8, ptr %call7.i.i, i32 %add89
  %sub91 = sub i32 1180, %add89
  %69 = ptrtoint ptr %div11 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %div11, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %div18 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %div18, align 1
  %74 = ptrtoint ptr %div29 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %div29, align 1
  %76 = ptrtoint ptr %div32 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %div32, align 1
  %call95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr90, i32 noundef %sub91, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.210, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #8
  %add96 = add i32 %call95, %add89
  %add.ptr97 = getelementptr i8, ptr %call7.i.i, i32 %add96
  %sub98 = sub i32 1180, %add96
  %tx_on_b = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 7, i32 1
  %78 = ptrtoint ptr %tx_on_b to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %tx_on_b, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %tx_on_b99 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 7, i32 1
  %81 = ptrtoint ptr %tx_on_b99 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %tx_on_b99, align 1
  %tx_on_b100 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 7, i32 1
  %83 = ptrtoint ptr %tx_on_b100 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %tx_on_b100, align 1
  %tx_on_b101 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 7, i32 1
  %85 = ptrtoint ptr %tx_on_b101 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %tx_on_b101, align 1
  %call102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97, i32 noundef %sub98, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.211, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86) #8
  %add103 = add i32 %call102, %add96
  %add.ptr104 = getelementptr i8, ptr %call7.i.i, i32 %add103
  %sub105 = sub i32 1180, %add103
  %exec_time = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 7, i32 2
  %87 = ptrtoint ptr %exec_time to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %exec_time, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %exec_time106 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 7, i32 2
  %90 = ptrtoint ptr %exec_time106 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %exec_time106, align 1
  %exec_time107 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 7, i32 2
  %92 = ptrtoint ptr %exec_time107 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %exec_time107, align 1
  %exec_time108 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 7, i32 2
  %94 = ptrtoint ptr %exec_time108 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %exec_time108, align 1
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr104, i32 noundef %sub105, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.212, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95) #8
  %add110 = add i32 %call109, %add103
  %add.ptr111 = getelementptr i8, ptr %call7.i.i, i32 %add110
  %sub112 = sub i32 1180, %add110
  %probe_time = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 7, i32 3
  %96 = ptrtoint ptr %probe_time to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %probe_time, align 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %probe_time113 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 7, i32 3
  %99 = ptrtoint ptr %probe_time113 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %probe_time113, align 1
  %probe_time114 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 7, i32 3
  %101 = ptrtoint ptr %probe_time114 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %probe_time114, align 1
  %probe_time115 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 7, i32 3
  %103 = ptrtoint ptr %probe_time115 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %probe_time115, align 1
  %call116 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.213, i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %104) #8
  %add117 = add i32 %call116, %add110
  %add.ptr118 = getelementptr i8, ptr %call7.i.i, i32 %add117
  %sub119 = sub i32 1180, %add117
  %rx_enable_counter = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 8
  %105 = ptrtoint ptr %rx_enable_counter to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %rx_enable_counter, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %rx_enable_counter120 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 8
  %108 = ptrtoint ptr %rx_enable_counter120 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %rx_enable_counter120, align 1
  %rx_enable_counter121 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 8
  %110 = ptrtoint ptr %rx_enable_counter121 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %rx_enable_counter121, align 1
  %rx_enable_counter122 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 8
  %112 = ptrtoint ptr %rx_enable_counter122 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %rx_enable_counter122, align 1
  %call123 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr118, i32 noundef %sub119, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.214, i32 noundef %107, i32 noundef %109, i32 noundef %111, i32 noundef %113) #8
  %add124 = add i32 %call123, %add117
  %add.ptr125 = getelementptr i8, ptr %call7.i.i, i32 %add124
  %sub126 = sub i32 1180, %add124
  %num_of_sos_states = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 1, i32 9
  %114 = ptrtoint ptr %num_of_sos_states to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %num_of_sos_states, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %num_of_sos_states127 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 0, i32 9
  %117 = ptrtoint ptr %num_of_sos_states127 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %num_of_sos_states127, align 1
  %num_of_sos_states128 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 73, i32 0, i32 9
  %119 = ptrtoint ptr %num_of_sos_states128 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %num_of_sos_states128, align 1
  %num_of_sos_states129 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 74, i32 0, i32 9
  %121 = ptrtoint ptr %num_of_sos_states129 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %num_of_sos_states129, align 1
  %call130 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr125, i32 noundef %sub126, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.215, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122) #8
  %add131 = add i32 %call130, %add124
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %call134 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add131) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call134, %if.end4 ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_txfifo_flush_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %flush = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flush) #8
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flush, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %flush)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool8.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @iwlagn_dev_txfifo_flush(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flush) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_dev_txfifo_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_protection_mode_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 40)
  %cfg = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %ht_params = getelementptr inbounds %struct.iwl_cfg, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ht_params, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %use_rts_for_aggregation = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 17, i32 2
  %7 = ptrtoint ptr %use_rts_for_aggregation to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_rts_for_aggregation, align 2, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool1.not, ptr @.str.218, ptr @.str.217
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 40, ptr noundef nonnull @.str.216, ptr noundef nonnull %cond) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 40, ptr noundef nonnull @.str.219) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pos.0 = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  %call8 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.0) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #8
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_protection_mode_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %rts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rts) #8
  %2 = ptrtoint ptr %rts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rts, align 4, !annotation !679
  %cfg = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %ht_params = getelementptr inbounds %struct.iwl_cfg, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ht_params, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %buf, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %8, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %8, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %8) #8
  %10 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %8, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %8, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %8, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %rts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 1
  br i1 %cmp7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %14 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  %use_rts_for_aggregation13 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 17, i32 2
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %use_rts_for_aggregation13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %use_rts_for_aggregation13, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %use_rts_for_aggregation13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %use_rts_for_aggregation13, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end4.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then11 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rts) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_sensitivity_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 676) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensitivity_data = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53
  %3 = ptrtoint ptr %sensitivity_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensitivity_data, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 676, ptr noundef nonnull @.str.220, i32 noundef %4) #8
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %call1
  %sub3 = sub i32 676, %call1
  %auto_corr_ofdm_mrc = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 1
  %5 = ptrtoint ptr %auto_corr_ofdm_mrc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auto_corr_ofdm_mrc, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.221, i32 noundef %6) #8
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %add5
  %sub7 = sub i32 676, %add5
  %auto_corr_ofdm_x1 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 2
  %7 = ptrtoint ptr %auto_corr_ofdm_x1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %auto_corr_ofdm_x1, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.222, i32 noundef %8) #8
  %add9 = add i32 %call8, %add5
  %add.ptr10 = getelementptr i8, ptr %call7.i.i, i32 %add9
  %sub11 = sub i32 676, %add9
  %auto_corr_ofdm_mrc_x1 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 3
  %9 = ptrtoint ptr %auto_corr_ofdm_mrc_x1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %auto_corr_ofdm_mrc_x1, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.223, i32 noundef %10) #8
  %add13 = add i32 %call12, %add9
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %add13
  %sub15 = sub i32 676, %add13
  %auto_corr_cck = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 4
  %11 = ptrtoint ptr %auto_corr_cck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %auto_corr_cck, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.224, i32 noundef %12) #8
  %add17 = add i32 %call16, %add13
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add17
  %sub19 = sub i32 676, %add17
  %auto_corr_cck_mrc = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 5
  %13 = ptrtoint ptr %auto_corr_cck_mrc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %auto_corr_cck_mrc, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.225, i32 noundef %14) #8
  %add21 = add i32 %call20, %add17
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %add21
  %sub23 = sub i32 676, %add21
  %last_bad_plcp_cnt_ofdm = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 6
  %15 = ptrtoint ptr %last_bad_plcp_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_bad_plcp_cnt_ofdm, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.226, i32 noundef %16) #8
  %add25 = add i32 %call24, %add21
  %add.ptr26 = getelementptr i8, ptr %call7.i.i, i32 %add25
  %sub27 = sub i32 676, %add25
  %last_fa_cnt_ofdm = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 7
  %17 = ptrtoint ptr %last_fa_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_fa_cnt_ofdm, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.227, i32 noundef %18) #8
  %add29 = add i32 %call28, %add25
  %add.ptr30 = getelementptr i8, ptr %call7.i.i, i32 %add29
  %sub31 = sub i32 676, %add29
  %last_bad_plcp_cnt_cck = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 8
  %19 = ptrtoint ptr %last_bad_plcp_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_bad_plcp_cnt_cck, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.228, i32 noundef %20) #8
  %add33 = add i32 %call32, %add29
  %add.ptr34 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub35 = sub i32 676, %add33
  %last_fa_cnt_cck = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 9
  %21 = ptrtoint ptr %last_fa_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_fa_cnt_cck, align 4
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.229, i32 noundef %22) #8
  %add37 = add i32 %call36, %add33
  %add.ptr38 = getelementptr i8, ptr %call7.i.i, i32 %add37
  %sub39 = sub i32 676, %add37
  %nrg_curr_state = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 10
  %23 = ptrtoint ptr %nrg_curr_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nrg_curr_state, align 4
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.230, i32 noundef %24) #8
  %add41 = add i32 %call40, %add37
  %add.ptr42 = getelementptr i8, ptr %call7.i.i, i32 %add41
  %sub43 = sub i32 676, %add41
  %nrg_prev_state = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 11
  %25 = ptrtoint ptr %nrg_prev_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nrg_prev_state, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.231, i32 noundef %26) #8
  %add45 = add i32 %call44, %add41
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 %add45
  %sub47 = sub i32 676, %add45
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.232) #8
  %add49 = add i32 %add45, %call48
  %add.ptr50 = getelementptr i8, ptr %call7.i.i, i32 %add49
  %sub51 = sub i32 676, %add49
  %arrayidx = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 0
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.233, i32 noundef %28) #8
  %add53 = add i32 %call52, %add49
  %add.ptr50.1 = getelementptr i8, ptr %call7.i.i, i32 %add53
  %sub51.1 = sub i32 676, %add53
  %arrayidx.1 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1, align 4
  %call52.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.1, i32 noundef %sub51.1, ptr noundef nonnull @.str.233, i32 noundef %30) #8
  %add53.1 = add i32 %call52.1, %add53
  %add.ptr50.2 = getelementptr i8, ptr %call7.i.i, i32 %add53.1
  %sub51.2 = sub i32 676, %add53.1
  %arrayidx.2 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.2, align 4
  %call52.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.2, i32 noundef %sub51.2, ptr noundef nonnull @.str.233, i32 noundef %32) #8
  %add53.2 = add i32 %call52.2, %add53.1
  %add.ptr50.3 = getelementptr i8, ptr %call7.i.i, i32 %add53.2
  %sub51.3 = sub i32 676, %add53.2
  %arrayidx.3 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.3, align 4
  %call52.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.3, i32 noundef %sub51.3, ptr noundef nonnull @.str.233, i32 noundef %34) #8
  %add53.3 = add i32 %call52.3, %add53.2
  %add.ptr50.4 = getelementptr i8, ptr %call7.i.i, i32 %add53.3
  %sub51.4 = sub i32 676, %add53.3
  %arrayidx.4 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.4, align 4
  %call52.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.4, i32 noundef %sub51.4, ptr noundef nonnull @.str.233, i32 noundef %36) #8
  %add53.4 = add i32 %call52.4, %add53.3
  %add.ptr50.5 = getelementptr i8, ptr %call7.i.i, i32 %add53.4
  %sub51.5 = sub i32 676, %add53.4
  %arrayidx.5 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 5
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.5, align 4
  %call52.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.5, i32 noundef %sub51.5, ptr noundef nonnull @.str.233, i32 noundef %38) #8
  %add53.5 = add i32 %call52.5, %add53.4
  %add.ptr50.6 = getelementptr i8, ptr %call7.i.i, i32 %add53.5
  %sub51.6 = sub i32 676, %add53.5
  %arrayidx.6 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 6
  %39 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.6, align 4
  %call52.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.6, i32 noundef %sub51.6, ptr noundef nonnull @.str.233, i32 noundef %40) #8
  %add53.6 = add i32 %call52.6, %add53.5
  %add.ptr50.7 = getelementptr i8, ptr %call7.i.i, i32 %add53.6
  %sub51.7 = sub i32 676, %add53.6
  %arrayidx.7 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 7
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.7, align 4
  %call52.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.7, i32 noundef %sub51.7, ptr noundef nonnull @.str.233, i32 noundef %42) #8
  %add53.7 = add i32 %call52.7, %add53.6
  %add.ptr50.8 = getelementptr i8, ptr %call7.i.i, i32 %add53.7
  %sub51.8 = sub i32 676, %add53.7
  %arrayidx.8 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 8
  %43 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.8, align 4
  %call52.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.8, i32 noundef %sub51.8, ptr noundef nonnull @.str.233, i32 noundef %44) #8
  %add53.8 = add i32 %call52.8, %add53.7
  %add.ptr50.9 = getelementptr i8, ptr %call7.i.i, i32 %add53.8
  %sub51.9 = sub i32 676, %add53.8
  %arrayidx.9 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 12, i32 9
  %45 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.9, align 4
  %call52.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.9, i32 noundef %sub51.9, ptr noundef nonnull @.str.233, i32 noundef %46) #8
  %add53.9 = add i32 %call52.9, %add53.8
  %add.ptr54 = getelementptr i8, ptr %call7.i.i, i32 %add53.9
  %sub55 = sub i32 676, %add53.9
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.47) #8
  %add57 = add i32 %call56, %add53.9
  %add.ptr58 = getelementptr i8, ptr %call7.i.i, i32 %add57
  %sub59 = sub i32 676, %add57
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.234) #8
  %add61 = add i32 %add57, %call60
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %if.end
  %cnt.1267 = phi i32 [ 0, %if.end ], [ %inc71, %for.body64.for.body64_crit_edge ]
  %pos.1266 = phi i32 [ %add61, %if.end ], [ %add69, %for.body64.for.body64_crit_edge ]
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 %pos.1266
  %sub66 = sub i32 676, %pos.1266
  %arrayidx67 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 13, i32 %cnt.1267
  %47 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx67, align 1
  %conv = zext i8 %48 to i32
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.233, i32 noundef %conv) #8
  %add69 = add i32 %call68, %pos.1266
  %inc71 = add nuw nsw i32 %cnt.1267, 1
  %exitcond.not = icmp eq i32 %inc71, 20
  br i1 %exitcond.not, label %for.end72, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body64

for.end72:                                        ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr73 = getelementptr i8, ptr %call7.i.i, i32 %add69
  %sub74 = sub i32 676, %add69
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr73, i32 noundef %sub74, ptr noundef nonnull @.str.47) #8
  %add76 = add i32 %call75, %add69
  %add.ptr77 = getelementptr i8, ptr %call7.i.i, i32 %add76
  %sub78 = sub i32 676, %add76
  %nrg_silence_ref = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 14
  %49 = ptrtoint ptr %nrg_silence_ref to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nrg_silence_ref, align 4
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.235, i32 noundef %50) #8
  %add80 = add i32 %call79, %add76
  %add.ptr81 = getelementptr i8, ptr %call7.i.i, i32 %add80
  %sub82 = sub i32 676, %add80
  %nrg_energy_idx = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 15
  %51 = ptrtoint ptr %nrg_energy_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nrg_energy_idx, align 4
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.236, i32 noundef %52) #8
  %add84 = add i32 %call83, %add80
  %add.ptr85 = getelementptr i8, ptr %call7.i.i, i32 %add84
  %sub86 = sub i32 676, %add84
  %nrg_silence_idx = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 16
  %53 = ptrtoint ptr %nrg_silence_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nrg_silence_idx, align 4
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.237, i32 noundef %54) #8
  %add88 = add i32 %call87, %add84
  %add.ptr89 = getelementptr i8, ptr %call7.i.i, i32 %add88
  %sub90 = sub i32 676, %add88
  %nrg_th_cck = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 17
  %55 = ptrtoint ptr %nrg_th_cck to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nrg_th_cck, align 4
  %call91 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.238, i32 noundef %56) #8
  %add92 = add i32 %call91, %add88
  %add.ptr93 = getelementptr i8, ptr %call7.i.i, i32 %add92
  %sub94 = sub i32 676, %add92
  %nrg_auto_corr_silence_diff = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 18
  %57 = ptrtoint ptr %nrg_auto_corr_silence_diff to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nrg_auto_corr_silence_diff, align 4
  %call95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.239, i32 noundef %58) #8
  %add96 = add i32 %call95, %add92
  %add.ptr97 = getelementptr i8, ptr %call7.i.i, i32 %add96
  %sub98 = sub i32 676, %add96
  %num_in_cck_no_fa = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 19
  %59 = ptrtoint ptr %num_in_cck_no_fa to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_in_cck_no_fa, align 4
  %call99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97, i32 noundef %sub98, ptr noundef nonnull @.str.240, i32 noundef %60) #8
  %add100 = add i32 %call99, %add96
  %add.ptr101 = getelementptr i8, ptr %call7.i.i, i32 %add100
  %sub102 = sub i32 676, %add100
  %nrg_th_ofdm = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 53, i32 20
  %61 = ptrtoint ptr %nrg_th_ofdm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nrg_th_ofdm, align 4
  %call103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr101, i32 noundef %sub102, ptr noundef nonnull @.str.241, i32 noundef %62) #8
  %add104 = add i32 %call103, %add100
  %call105 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add104) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call105, %for.end72 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_chain_noise_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 260) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chain_noise_data = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54
  %3 = ptrtoint ptr %chain_noise_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chain_noise_data, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 260, ptr noundef nonnull @.str.242, i32 noundef %4) #8
  %add.ptr2 = getelementptr i8, ptr %call7.i.i, i32 %call1
  %sub3 = sub i32 260, %call1
  %chain_noise_a = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 1
  %5 = ptrtoint ptr %chain_noise_a to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chain_noise_a, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.243, i32 noundef %6) #8
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %add5
  %sub7 = sub i32 260, %add5
  %chain_noise_b = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 2
  %7 = ptrtoint ptr %chain_noise_b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chain_noise_b, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.244, i32 noundef %8) #8
  %add9 = add i32 %call8, %add5
  %add.ptr10 = getelementptr i8, ptr %call7.i.i, i32 %add9
  %sub11 = sub i32 260, %add9
  %chain_noise_c = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 3
  %9 = ptrtoint ptr %chain_noise_c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chain_noise_c, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.245, i32 noundef %10) #8
  %add13 = add i32 %call12, %add9
  %add.ptr14 = getelementptr i8, ptr %call7.i.i, i32 %add13
  %sub15 = sub i32 260, %add13
  %chain_signal_a = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 4
  %11 = ptrtoint ptr %chain_signal_a to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chain_signal_a, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.246, i32 noundef %12) #8
  %add17 = add i32 %call16, %add13
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add17
  %sub19 = sub i32 260, %add17
  %chain_signal_b = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 5
  %13 = ptrtoint ptr %chain_signal_b to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chain_signal_b, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.247, i32 noundef %14) #8
  %add21 = add i32 %call20, %add17
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %add21
  %sub23 = sub i32 260, %add21
  %chain_signal_c = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 6
  %15 = ptrtoint ptr %chain_signal_c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chain_signal_c, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.248, i32 noundef %16) #8
  %add25 = add i32 %call24, %add21
  %add.ptr26 = getelementptr i8, ptr %call7.i.i, i32 %add25
  %sub27 = sub i32 260, %add25
  %beacon_count = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 7
  %17 = ptrtoint ptr %beacon_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %beacon_count, align 4
  %conv = zext i16 %18 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.249, i32 noundef %conv) #8
  %add29 = add i32 %call28, %add25
  %add.ptr30 = getelementptr i8, ptr %call7.i.i, i32 %add29
  %sub31 = sub i32 260, %add29
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.250) #8
  %add33 = add i32 %add29, %call32
  %add.ptr35 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub36 = sub i32 260, %add33
  %arrayidx = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 8, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv37 = zext i8 %20 to i32
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.233, i32 noundef %conv37) #8
  %add39 = add i32 %call38, %add33
  %add.ptr35.1 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub36.1 = sub i32 260, %add39
  %arrayidx.1 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 8, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %conv37.1 = zext i8 %22 to i32
  %call38.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35.1, i32 noundef %sub36.1, ptr noundef nonnull @.str.233, i32 noundef %conv37.1) #8
  %add39.1 = add i32 %call38.1, %add39
  %add.ptr35.2 = getelementptr i8, ptr %call7.i.i, i32 %add39.1
  %sub36.2 = sub i32 260, %add39.1
  %arrayidx.2 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 8, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2, align 1
  %conv37.2 = zext i8 %24 to i32
  %call38.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35.2, i32 noundef %sub36.2, ptr noundef nonnull @.str.233, i32 noundef %conv37.2) #8
  %add39.2 = add i32 %call38.2, %add39.1
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add39.2
  %sub41 = sub i32 260, %add39.2
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.47) #8
  %add43 = add i32 %call42, %add39.2
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %add43
  %sub45 = sub i32 260, %add43
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.251) #8
  %add47 = add i32 %add43, %call46
  %add.ptr52 = getelementptr i8, ptr %call7.i.i, i32 %add47
  %sub53 = sub i32 260, %add47
  %arrayidx54 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 9, i32 0
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %26 to i32
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.233, i32 noundef %conv55) #8
  %add57 = add i32 %call56, %add47
  %add.ptr52.1 = getelementptr i8, ptr %call7.i.i, i32 %add57
  %sub53.1 = sub i32 260, %add57
  %arrayidx54.1 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 9, i32 1
  %27 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx54.1, align 1
  %conv55.1 = zext i8 %28 to i32
  %call56.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52.1, i32 noundef %sub53.1, ptr noundef nonnull @.str.233, i32 noundef %conv55.1) #8
  %add57.1 = add i32 %call56.1, %add57
  %add.ptr52.2 = getelementptr i8, ptr %call7.i.i, i32 %add57.1
  %sub53.2 = sub i32 260, %add57.1
  %arrayidx54.2 = getelementptr %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 9, i32 2
  %29 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx54.2, align 1
  %conv55.2 = zext i8 %30 to i32
  %call56.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52.2, i32 noundef %sub53.2, ptr noundef nonnull @.str.233, i32 noundef %conv55.2) #8
  %add57.2 = add i32 %call56.2, %add57.1
  %add.ptr61 = getelementptr i8, ptr %call7.i.i, i32 %add57.2
  %sub62 = sub i32 260, %add57.2
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.47) #8
  %add64 = add i32 %call63, %add57.2
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 %add64
  %sub66 = sub i32 260, %add64
  %radio_write = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 10
  %31 = ptrtoint ptr %radio_write to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %radio_write, align 4
  %conv67 = zext i8 %32 to i32
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.252, i32 noundef %conv67) #8
  %add69 = add i32 %call68, %add64
  %add.ptr70 = getelementptr i8, ptr %call7.i.i, i32 %add69
  %sub71 = sub i32 260, %add69
  %state = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 54, i32 11
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %state, align 1
  %conv72 = zext i8 %34 to i32
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr70, i32 noundef %sub71, ptr noundef nonnull @.str.253, i32 noundef %conv72) #8
  %add74 = add i32 %call73, %add69
  %call75 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add74) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call75, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ucode_tracing_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %event_log = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 131
  %3 = ptrtoint ptr %event_log to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %event_log, align 8, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.256, ptr @.str.255
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.254, ptr noundef nonnull %cond) #8
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 128, %call
  %non_wraps_count = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 131, i32 3
  %5 = ptrtoint ptr %non_wraps_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %non_wraps_count, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.257, i32 noundef %6) #8
  %add6 = add i32 %call5, %call
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %add6
  %sub9 = sub i32 128, %add6
  %wraps_once_count = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 131, i32 4
  %7 = ptrtoint ptr %wraps_once_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wraps_once_count, align 8
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.258, i32 noundef %8) #8
  %add12 = add i32 %call11, %add6
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add12
  %sub15 = sub i32 128, %add12
  %wraps_more_count = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 131, i32 5
  %9 = ptrtoint ptr %wraps_more_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wraps_more_count, align 4
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.259, i32 noundef %10) #8
  %add18 = add i32 %call17, %add12
  %call20 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add18) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #8
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ucode_tracing_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %trace = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trace) #8
  %2 = ptrtoint ptr %trace to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %trace, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %trace)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %trace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  %event_log15 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 131
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %event_log15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %event_log15, align 8
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %if.then11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %ucode_trace12 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %call13 = call i32 @mod_timer(ptr noundef %ucode_trace12, i32 noundef %16) #8
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %event_log15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %event_log15, align 8
  %ucode_trace17 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 130
  %call18 = call i32 @del_timer_sync(ptr noundef %ucode_trace17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.end.cleanup_crit_edge ], [ %count, %if.then8.cleanup_crit_edge ], [ %count, %if.then11 ], [ %count, %if.else ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trace) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_ucode_bt_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bt_enable_flag = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 83
  %5 = ptrtoint ptr %bt_enable_flag to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bt_enable_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call4 = tail call i32 @iwl_send_statistics_request(ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 968) #13
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %bt_activity = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7
  %bt_activity14 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6
  %call15 = tail call fastcc i32 @iwl_statistics_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 968)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call15
  %sub = sub i32 968, %call15
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.260) #8
  %add17 = add i32 %call16, %call15
  %add.ptr18 = getelementptr i8, ptr %call7.i.i, i32 %add17
  %sub19 = sub i32 968, %add17
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.261) #8
  %add21 = add i32 %add17, %call20
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %add21
  %sub23 = sub i32 968, %add21
  %8 = ptrtoint ptr %bt_activity to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %bt_activity, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %bt_activity14 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %bt_activity14, align 1
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.262, i32 noundef %10, i32 noundef %12) #8
  %add26 = add i32 %call25, %add21
  %add.ptr27 = getelementptr i8, ptr %call7.i.i, i32 %add26
  %sub28 = sub i32 968, %add26
  %hi_priority_tx_denied_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7, i32 1
  %13 = ptrtoint ptr %hi_priority_tx_denied_cnt to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %hi_priority_tx_denied_cnt, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %hi_priority_tx_denied_cnt29 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6, i32 1
  %16 = ptrtoint ptr %hi_priority_tx_denied_cnt29 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %hi_priority_tx_denied_cnt29, align 1
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.263, i32 noundef %15, i32 noundef %17) #8
  %add31 = add i32 %call30, %add26
  %add.ptr32 = getelementptr i8, ptr %call7.i.i, i32 %add31
  %sub33 = sub i32 968, %add31
  %lo_priority_tx_req_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7, i32 2
  %18 = ptrtoint ptr %lo_priority_tx_req_cnt to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %lo_priority_tx_req_cnt, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %lo_priority_tx_req_cnt34 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6, i32 2
  %21 = ptrtoint ptr %lo_priority_tx_req_cnt34 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %lo_priority_tx_req_cnt34, align 1
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.264, i32 noundef %20, i32 noundef %22) #8
  %add36 = add i32 %call35, %add31
  %add.ptr37 = getelementptr i8, ptr %call7.i.i, i32 %add36
  %sub38 = sub i32 968, %add36
  %lo_priority_tx_denied_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7, i32 3
  %23 = ptrtoint ptr %lo_priority_tx_denied_cnt to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %lo_priority_tx_denied_cnt, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %lo_priority_tx_denied_cnt39 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6, i32 3
  %26 = ptrtoint ptr %lo_priority_tx_denied_cnt39 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %lo_priority_tx_denied_cnt39, align 1
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.265, i32 noundef %25, i32 noundef %27) #8
  %add41 = add i32 %call40, %add36
  %add.ptr42 = getelementptr i8, ptr %call7.i.i, i32 %add41
  %sub43 = sub i32 968, %add41
  %hi_priority_rx_req_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7, i32 4
  %28 = ptrtoint ptr %hi_priority_rx_req_cnt to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %hi_priority_rx_req_cnt, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %hi_priority_rx_req_cnt44 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6, i32 4
  %31 = ptrtoint ptr %hi_priority_rx_req_cnt44 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %hi_priority_rx_req_cnt44, align 1
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.266, i32 noundef %30, i32 noundef %32) #8
  %add46 = add i32 %call45, %add41
  %add.ptr47 = getelementptr i8, ptr %call7.i.i, i32 %add46
  %sub48 = sub i32 968, %add46
  %hi_priority_rx_denied_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7, i32 5
  %33 = ptrtoint ptr %hi_priority_rx_denied_cnt to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %hi_priority_rx_denied_cnt, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %hi_priority_rx_denied_cnt49 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6, i32 5
  %36 = ptrtoint ptr %hi_priority_rx_denied_cnt49 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %hi_priority_rx_denied_cnt49, align 1
  %call50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.267, i32 noundef %35, i32 noundef %37) #8
  %add51 = add i32 %call50, %add46
  %add.ptr52 = getelementptr i8, ptr %call7.i.i, i32 %add51
  %sub53 = sub i32 968, %add51
  %lo_priority_rx_req_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7, i32 6
  %38 = ptrtoint ptr %lo_priority_rx_req_cnt to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %lo_priority_rx_req_cnt, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %lo_priority_rx_req_cnt54 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6, i32 6
  %41 = ptrtoint ptr %lo_priority_rx_req_cnt54 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %lo_priority_rx_req_cnt54, align 1
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull @.str.268, i32 noundef %40, i32 noundef %42) #8
  %add56 = add i32 %call55, %add51
  %add.ptr57 = getelementptr i8, ptr %call7.i.i, i32 %add56
  %sub58 = sub i32 968, %add56
  %lo_priority_rx_denied_cnt = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 7, i32 7
  %43 = ptrtoint ptr %lo_priority_rx_denied_cnt to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %lo_priority_rx_denied_cnt, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %lo_priority_rx_denied_cnt59 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 72, i32 6, i32 7
  %46 = ptrtoint ptr %lo_priority_rx_denied_cnt59 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %lo_priority_rx_denied_cnt59, align 1
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.269, i32 noundef %45, i32 noundef %47) #8
  %add61 = add i32 %call60, %add56
  %add.ptr62 = getelementptr i8, ptr %call7.i.i, i32 %add61
  %sub63 = sub i32 968, %add61
  %num_bt_kills = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 8
  %48 = ptrtoint ptr %num_bt_kills to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_bt_kills, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %accum_num_bt_kills = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 71, i32 9
  %51 = ptrtoint ptr %accum_num_bt_kills to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %accum_num_bt_kills, align 4
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.270, i32 noundef %50, i32 noundef %52) #8
  %add67 = add i32 %call66, %add61
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %call70 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add67) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %if.end12 ], [ -11, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -11, %if.end3.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_reply_tx_error_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3656) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 3656, ptr noundef nonnull @.str.271) #8
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %call5
  %sub7 = sub i32 3656, %call5
  %call8 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 64) #8
  %reply_tx_stats = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81
  %6 = ptrtoint ptr %reply_tx_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reply_tx_stats, align 8
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.272, ptr noundef %call8, i32 noundef %7) #8
  %add10 = add i32 %call9, %call5
  %add.ptr11 = getelementptr i8, ptr %call7.i.i, i32 %add10
  %sub12 = sub i32 3656, %add10
  %call13 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 65) #8
  %pp_few_bytes = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 1
  %8 = ptrtoint ptr %pp_few_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pp_few_bytes, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.273, ptr noundef %call13, i32 noundef %9) #8
  %add16 = add i32 %call15, %add10
  %add.ptr17 = getelementptr i8, ptr %call7.i.i, i32 %add16
  %sub18 = sub i32 3656, %add16
  %call19 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 66) #8
  %pp_bt_prio = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 2
  %10 = ptrtoint ptr %pp_bt_prio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pp_bt_prio, align 8
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.273, ptr noundef %call19, i32 noundef %11) #8
  %add22 = add i32 %call21, %add16
  %add.ptr23 = getelementptr i8, ptr %call7.i.i, i32 %add22
  %sub24 = sub i32 3656, %add22
  %call25 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 67) #8
  %pp_quiet_period = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 3
  %12 = ptrtoint ptr %pp_quiet_period to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pp_quiet_period, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.273, ptr noundef %call25, i32 noundef %13) #8
  %add28 = add i32 %call27, %add22
  %add.ptr29 = getelementptr i8, ptr %call7.i.i, i32 %add28
  %sub30 = sub i32 3656, %add28
  %call31 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 68) #8
  %pp_calc_ttak = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 4
  %14 = ptrtoint ptr %pp_calc_ttak to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pp_calc_ttak, align 8
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.273, ptr noundef %call31, i32 noundef %15) #8
  %add34 = add i32 %call33, %add28
  %add.ptr35 = getelementptr i8, ptr %call7.i.i, i32 %add34
  %sub36 = sub i32 3656, %add34
  %call37 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 129) #8
  %int_crossed_retry = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 5
  %16 = ptrtoint ptr %int_crossed_retry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %int_crossed_retry, align 4
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.274, ptr noundef %call37, i32 noundef %17) #8
  %add40 = add i32 %call39, %add34
  %add.ptr41 = getelementptr i8, ptr %call7.i.i, i32 %add40
  %sub42 = sub i32 3656, %add40
  %call43 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 130) #8
  %short_limit = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 6
  %18 = ptrtoint ptr %short_limit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %short_limit, align 8
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.273, ptr noundef %call43, i32 noundef %19) #8
  %add46 = add i32 %call45, %add40
  %add.ptr47 = getelementptr i8, ptr %call7.i.i, i32 %add46
  %sub48 = sub i32 3656, %add46
  %call49 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 131) #8
  %long_limit = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 7
  %20 = ptrtoint ptr %long_limit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %long_limit, align 4
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.273, ptr noundef %call49, i32 noundef %21) #8
  %add52 = add i32 %call51, %add46
  %add.ptr53 = getelementptr i8, ptr %call7.i.i, i32 %add52
  %sub54 = sub i32 3656, %add52
  %call55 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 132) #8
  %fifo_underrun = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 8
  %22 = ptrtoint ptr %fifo_underrun to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_underrun, align 8
  %call57 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.273, ptr noundef %call55, i32 noundef %23) #8
  %add58 = add i32 %call57, %add52
  %add.ptr59 = getelementptr i8, ptr %call7.i.i, i32 %add58
  %sub60 = sub i32 3656, %add58
  %call61 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 133) #8
  %drain_flow = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 9
  %24 = ptrtoint ptr %drain_flow to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %drain_flow, align 4
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.273, ptr noundef %call61, i32 noundef %25) #8
  %add64 = add i32 %call63, %add58
  %add.ptr65 = getelementptr i8, ptr %call7.i.i, i32 %add64
  %sub66 = sub i32 3656, %add64
  %call67 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 134) #8
  %rfkill_flush = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 10
  %26 = ptrtoint ptr %rfkill_flush to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rfkill_flush, align 8
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.273, ptr noundef %call67, i32 noundef %27) #8
  %add70 = add i32 %call69, %add64
  %add.ptr71 = getelementptr i8, ptr %call7.i.i, i32 %add70
  %sub72 = sub i32 3656, %add70
  %call73 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 135) #8
  %life_expire = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 11
  %28 = ptrtoint ptr %life_expire to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %life_expire, align 4
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.273, ptr noundef %call73, i32 noundef %29) #8
  %add76 = add i32 %call75, %add70
  %add.ptr77 = getelementptr i8, ptr %call7.i.i, i32 %add76
  %sub78 = sub i32 3656, %add76
  %call79 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 136) #8
  %dest_ps = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 12
  %30 = ptrtoint ptr %dest_ps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dest_ps, align 8
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.273, ptr noundef %call79, i32 noundef %31) #8
  %add82 = add i32 %call81, %add76
  %add.ptr83 = getelementptr i8, ptr %call7.i.i, i32 %add82
  %sub84 = sub i32 3656, %add82
  %call85 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 137) #8
  %host_abort = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 13
  %32 = ptrtoint ptr %host_abort to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_abort, align 4
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83, i32 noundef %sub84, ptr noundef nonnull @.str.273, ptr noundef %call85, i32 noundef %33) #8
  %add88 = add i32 %call87, %add82
  %add.ptr89 = getelementptr i8, ptr %call7.i.i, i32 %add88
  %sub90 = sub i32 3656, %add88
  %call91 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 138) #8
  %34 = ptrtoint ptr %reply_tx_stats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reply_tx_stats, align 8
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.273, ptr noundef %call91, i32 noundef %35) #8
  %add95 = add i32 %call94, %add88
  %add.ptr96 = getelementptr i8, ptr %call7.i.i, i32 %add95
  %sub97 = sub i32 3656, %add95
  %call98 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 139) #8
  %sta_invalid = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 15
  %36 = ptrtoint ptr %sta_invalid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sta_invalid, align 4
  %call100 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.273, ptr noundef %call98, i32 noundef %37) #8
  %add101 = add i32 %call100, %add95
  %add.ptr102 = getelementptr i8, ptr %call7.i.i, i32 %add101
  %sub103 = sub i32 3656, %add101
  %call104 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 140) #8
  %frag_drop = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 16
  %38 = ptrtoint ptr %frag_drop to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frag_drop, align 8
  %call106 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.273, ptr noundef %call104, i32 noundef %39) #8
  %add107 = add i32 %call106, %add101
  %add.ptr108 = getelementptr i8, ptr %call7.i.i, i32 %add107
  %sub109 = sub i32 3656, %add107
  %call110 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 141) #8
  %tid_disable = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 17
  %40 = ptrtoint ptr %tid_disable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tid_disable, align 4
  %call112 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr108, i32 noundef %sub109, ptr noundef nonnull @.str.273, ptr noundef %call110, i32 noundef %41) #8
  %add113 = add i32 %call112, %add107
  %add.ptr114 = getelementptr i8, ptr %call7.i.i, i32 %add113
  %sub115 = sub i32 3656, %add113
  %call116 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 142) #8
  %fifo_flush = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 18
  %42 = ptrtoint ptr %fifo_flush to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fifo_flush, align 8
  %call118 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i32 noundef %sub115, ptr noundef nonnull @.str.273, ptr noundef %call116, i32 noundef %43) #8
  %add119 = add i32 %call118, %add113
  %add.ptr120 = getelementptr i8, ptr %call7.i.i, i32 %add119
  %sub121 = sub i32 3656, %add119
  %call122 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 143) #8
  %insuff_cf_poll = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 19
  %44 = ptrtoint ptr %insuff_cf_poll to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %insuff_cf_poll, align 4
  %call124 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.274, ptr noundef %call122, i32 noundef %45) #8
  %add125 = add i32 %call124, %add119
  %add.ptr126 = getelementptr i8, ptr %call7.i.i, i32 %add125
  %sub127 = sub i32 3656, %add125
  %call128 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 144) #8
  %fail_hw_drop = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 20
  %46 = ptrtoint ptr %fail_hw_drop to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fail_hw_drop, align 8
  %call130 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr126, i32 noundef %sub127, ptr noundef nonnull @.str.273, ptr noundef %call128, i32 noundef %47) #8
  %add131 = add i32 %call130, %add125
  %add.ptr132 = getelementptr i8, ptr %call7.i.i, i32 %add131
  %sub133 = sub i32 3656, %add131
  %call134 = tail call ptr @iwl_get_tx_fail_reason(i32 noundef 145) #8
  %sta_color_mismatch = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 21
  %48 = ptrtoint ptr %sta_color_mismatch to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sta_color_mismatch, align 4
  %call136 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr132, i32 noundef %sub133, ptr noundef nonnull @.str.274, ptr noundef %call134, i32 noundef %49) #8
  %add137 = add i32 %call136, %add131
  %add.ptr138 = getelementptr i8, ptr %call7.i.i, i32 %add137
  %sub139 = sub i32 3656, %add137
  %unknown = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 81, i32 22
  %50 = ptrtoint ptr %unknown to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %unknown, align 8
  %call141 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138, i32 noundef %sub139, ptr noundef nonnull @.str.275, i32 noundef %51) #8
  %add142 = add i32 %call141, %add137
  %add.ptr143 = getelementptr i8, ptr %call7.i.i, i32 %add142
  %sub144 = sub i32 3656, %add142
  %call145 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr143, i32 noundef %sub144, ptr noundef nonnull @.str.276) #8
  %add146 = add i32 %add142, %call145
  %add.ptr147 = getelementptr i8, ptr %call7.i.i, i32 %add146
  %sub148 = sub i32 3656, %add146
  %call149 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 1) #8
  %reply_agg_tx_stats = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82
  %52 = ptrtoint ptr %reply_agg_tx_stats to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reply_agg_tx_stats, align 4
  %call150 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr147, i32 noundef %sub148, ptr noundef nonnull @.str.273, ptr noundef %call149, i32 noundef %53) #8
  %add151 = add i32 %call150, %add146
  %add.ptr152 = getelementptr i8, ptr %call7.i.i, i32 %add151
  %sub153 = sub i32 3656, %add151
  %call154 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 2) #8
  %bt_prio = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 1
  %54 = ptrtoint ptr %bt_prio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bt_prio, align 4
  %call156 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr152, i32 noundef %sub153, ptr noundef nonnull @.str.273, ptr noundef %call154, i32 noundef %55) #8
  %add157 = add i32 %call156, %add151
  %add.ptr158 = getelementptr i8, ptr %call7.i.i, i32 %add157
  %sub159 = sub i32 3656, %add157
  %call160 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 4) #8
  %few_bytes = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 2
  %56 = ptrtoint ptr %few_bytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %few_bytes, align 4
  %call162 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr158, i32 noundef %sub159, ptr noundef nonnull @.str.273, ptr noundef %call160, i32 noundef %57) #8
  %add163 = add i32 %call162, %add157
  %add.ptr164 = getelementptr i8, ptr %call7.i.i, i32 %add163
  %sub165 = sub i32 3656, %add163
  %call166 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 8) #8
  %abort = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 3
  %58 = ptrtoint ptr %abort to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %abort, align 4
  %call168 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr164, i32 noundef %sub165, ptr noundef nonnull @.str.273, ptr noundef %call166, i32 noundef %59) #8
  %add169 = add i32 %call168, %add163
  %add.ptr170 = getelementptr i8, ptr %call7.i.i, i32 %add169
  %sub171 = sub i32 3656, %add169
  %call172 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 16) #8
  %last_sent_ttl = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 4
  %60 = ptrtoint ptr %last_sent_ttl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_sent_ttl, align 4
  %call174 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr170, i32 noundef %sub171, ptr noundef nonnull @.str.274, ptr noundef %call172, i32 noundef %61) #8
  %add175 = add i32 %call174, %add169
  %add.ptr176 = getelementptr i8, ptr %call7.i.i, i32 %add175
  %sub177 = sub i32 3656, %add175
  %call178 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 32) #8
  %last_sent_try = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 5
  %62 = ptrtoint ptr %last_sent_try to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %last_sent_try, align 4
  %call180 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr176, i32 noundef %sub177, ptr noundef nonnull @.str.274, ptr noundef %call178, i32 noundef %63) #8
  %add181 = add i32 %call180, %add175
  %add.ptr182 = getelementptr i8, ptr %call7.i.i, i32 %add181
  %sub183 = sub i32 3656, %add181
  %call184 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 64) #8
  %last_sent_bt_kill = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 6
  %64 = ptrtoint ptr %last_sent_bt_kill to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %last_sent_bt_kill, align 4
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182, i32 noundef %sub183, ptr noundef nonnull @.str.274, ptr noundef %call184, i32 noundef %65) #8
  %add187 = add i32 %call186, %add181
  %add.ptr188 = getelementptr i8, ptr %call7.i.i, i32 %add187
  %sub189 = sub i32 3656, %add187
  %call190 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 128) #8
  %scd_query = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 7
  %66 = ptrtoint ptr %scd_query to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scd_query, align 4
  %call192 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr188, i32 noundef %sub189, ptr noundef nonnull @.str.273, ptr noundef %call190, i32 noundef %67) #8
  %add193 = add i32 %call192, %add187
  %add.ptr194 = getelementptr i8, ptr %call7.i.i, i32 %add193
  %sub195 = sub i32 3656, %add193
  %call196 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 256) #8
  %bad_crc32 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 8
  %68 = ptrtoint ptr %bad_crc32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bad_crc32, align 4
  %call198 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr194, i32 noundef %sub195, ptr noundef nonnull @.str.274, ptr noundef %call196, i32 noundef %69) #8
  %add199 = add i32 %call198, %add193
  %add.ptr200 = getelementptr i8, ptr %call7.i.i, i32 %add199
  %sub201 = sub i32 3656, %add199
  %call202 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 511) #8
  %response = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 9
  %70 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %response, align 4
  %call204 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr200, i32 noundef %sub201, ptr noundef nonnull @.str.273, ptr noundef %call202, i32 noundef %71) #8
  %add205 = add i32 %call204, %add199
  %add.ptr206 = getelementptr i8, ptr %call7.i.i, i32 %add205
  %sub207 = sub i32 3656, %add205
  %call208 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 512) #8
  %dump_tx = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 10
  %72 = ptrtoint ptr %dump_tx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dump_tx, align 4
  %call210 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr206, i32 noundef %sub207, ptr noundef nonnull @.str.273, ptr noundef %call208, i32 noundef %73) #8
  %add211 = add i32 %call210, %add205
  %add.ptr212 = getelementptr i8, ptr %call7.i.i, i32 %add211
  %sub213 = sub i32 3656, %add211
  %call214 = tail call ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext 1024) #8
  %delay_tx = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 11
  %74 = ptrtoint ptr %delay_tx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay_tx, align 4
  %call216 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr212, i32 noundef %sub213, ptr noundef nonnull @.str.273, ptr noundef %call214, i32 noundef %75) #8
  %add217 = add i32 %call216, %add211
  %add.ptr218 = getelementptr i8, ptr %call7.i.i, i32 %add217
  %sub219 = sub i32 3656, %add217
  %unknown221 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 82, i32 12
  %76 = ptrtoint ptr %unknown221 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %unknown221, align 4
  %call222 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr218, i32 noundef %sub219, ptr noundef nonnull @.str.275, i32 noundef %77) #8
  %add223 = add i32 %call222, %add217
  %call224 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add223) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call224, %if.end4 ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_tx_fail_reason(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rxon_flags_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #8
  %flags = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 50, i32 0, i32 14, i32 12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.277, i32 noundef %5)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rxon_filter_flags_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #8
  %filter_flags = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 50, i32 0, i32 14, i32 13
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %filter_flags, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.277, i32 noundef %5)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_echo_test_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buf, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #8
  %5 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #8
  %9 = call ptr @memset(ptr %cmd.i, i32 0, i32 36)
  %10 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %10, align 4
  %call.i = call i32 @iwl_dvm_send_cmd(ptr noundef %1, ptr noundef nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %dev8.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8.i, align 4
  br i1 %tobool.not.i, label %do.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.278, i32 noundef %call.i) #8
  br label %iwl_cmd_echo_test.exit

do.end7.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_cmd_echo_test, ptr noundef nonnull @.str.279) #8
  br label %iwl_cmd_echo_test.exit

iwl_cmd_echo_test.exit:                           ; preds = %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_cmd_echo_test.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %iwl_cmd_echo_test.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_fw_restart_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3) to i32))
  %2 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3), align 4, !range !678
  store i8 1, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3), align 4
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %1, i8 noundef zeroext 2, i32 noundef 0, i16 noundef zeroext 0, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__asan_store1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3) to i32))
  store i8 %2, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3), align 4
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_log_event_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buf, align 4
  %call = call i32 @iwl_dump_nic_event_log(ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %call1 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %4, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_log_event_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %event_log_flag = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event_log_flag) #8
  %2 = ptrtoint ptr %event_log_flag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %event_log_flag, align 4, !annotation !679
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %iwl_is_ready.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

iwl_is_ready.exit:                                ; preds = %entry
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.not = icmp eq i32 %8, 0
  br i1 %tobool.not.not, label %if.end, label %iwl_is_ready.exit.cleanup_crit_edge

iwl_is_ready.exit.cleanup_crit_edge:              ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %iwl_is_ready.exit
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %buf, align 8
  %10 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %10, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %10, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %10) #8
  %12 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %10) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %10, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %10, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %10, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %call7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.280, ptr noundef nonnull %event_log_flag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 1
  br i1 %cmp8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %event_log_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_log_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp11 = icmp eq i32 %17, 1
  br i1 %cmp11, label %if.then12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 @iwl_dump_nic_event_log(ptr noundef %1, i1 noundef zeroext true, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %iwl_is_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %iwl_is_ready.exit.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ %count, %if.then12 ], [ %count, %if.end10.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event_log_flag) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dump_nic_event_log(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_bt_traffic_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 200)
  %bt_enable_flag = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 83
  %3 = ptrtoint ptr %bt_enable_flag to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bt_enable_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.281) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %4 to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.282, i32 noundef %conv) #8
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %call7
  %sub11 = sub i32 200, %call7
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 88
  %5 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bt_full_concurrent, align 1, !range !678
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool12.not, ptr @.str.285, ptr @.str.284
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.283, ptr noundef nonnull %cond) #8
  %add15 = add i32 %call14, %call7
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add15
  %sub18 = sub i32 200, %add15
  %bt_status = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 84
  %7 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bt_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool20.not = icmp eq i8 %8, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.256, ptr @.str.255
  %last_bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %last_bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %last_bt_traffic_load, align 1
  %conv22 = zext i8 %10 to i32
  %call23 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.286, ptr noundef nonnull %cond21, i32 noundef %conv22) #8
  %add24 = add i32 %call23, %add15
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %add24
  %sub27 = sub i32 200, %add24
  %bt_ch_announce = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 87
  %11 = ptrtoint ptr %bt_ch_announce to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bt_ch_announce, align 4, !range !678
  %13 = zext i8 %12 to i32
  %kill_ack_mask = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 89
  %14 = ptrtoint ptr %kill_ack_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %kill_ack_mask, align 8
  %kill_cts_mask = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 90
  %16 = ptrtoint ptr %kill_cts_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kill_cts_mask, align 4
  %call30 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.287, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  %add31 = add i32 %call30, %add24
  %add.ptr33 = getelementptr i8, ptr %buf, i32 %add31
  %sub34 = sub i32 200, %add31
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.288) #8
  %add36 = add i32 %add31, %call35
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 85
  %18 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bt_traffic_load, align 2
  %switch.tableidx = add i8 %19, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %20 = icmp ult i8 %switch.tableidx, 3
  br i1 %20, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.iwl_dbgfs_bt_traffic_read, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.str.292.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.292, %if.end.sw.epilog_crit_edge ]
  %add.ptr57 = getelementptr i8, ptr %buf, i32 %add36
  %sub58 = sub i32 200, %add36
  %call59 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull %.str.292.sink) #8
  %pos.0 = add i32 %call59, %add36
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %pos.0.sink = phi i32 [ %pos.0, %sw.epilog ], [ %call, %if.then ]
  %call62 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %pos.0.sink) #8
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #8
  ret i32 %call62
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_calib_disabled_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [120 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 120)
  %calib_disabled = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 127
  %3 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %calib_disabled, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.295, ptr @.str.294
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 120, ptr noundef nonnull @.str.293, ptr noundef nonnull %cond) #8
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 120, %call
  %5 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %calib_disabled, align 8
  %and5 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.295, ptr @.str.294
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.296, ptr noundef nonnull %cond7) #8
  %add9 = add i32 %call8, %call
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %add9
  %sub12 = sub i32 120, %add9
  %7 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %calib_disabled, align 8
  %and14 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.295, ptr @.str.294
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.297, ptr noundef nonnull %cond16) #8
  %add18 = add i32 %call17, %add9
  %call20 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %add18) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %buf) #8
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_calib_disabled_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %calib_disabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calib_disabled) #8
  %2 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %calib_disabled, align 4, !annotation !679
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 7)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #12, !srcloc !681
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !680

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #8
  %6 = call i32 @llvm.read_register.i32(metadata !668) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !682
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !683
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !684
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !680

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.52, ptr noundef nonnull %calib_disabled)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %calib_disabled, align 4
  %calib_disabled7 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 127
  %12 = ptrtoint ptr %calib_disabled7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %calib_disabled7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calib_disabled) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 332)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 332)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666}
!llvm.named.register.sp = !{!668}
!llvm.module.flags = !{!669, !670, !671, !672, !673, !674, !675, !676}
!llvm.ident = !{!677}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2317, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2318, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2319, i32 33}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2321, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2322, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2323, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2324, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2325, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2326, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2327, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2328, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2329, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2330, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2331, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2332, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2333, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2335, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2336, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2337, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2338, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2339, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2340, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2341, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2342, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2343, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2344, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2345, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2346, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2347, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2348, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2349, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2350, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2351, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2352, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2353, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2355, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2359, i32 3}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2362, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2377, i32 22}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2379, i32 26}
!80 = !{ptr @iwl_dbgfs_nvm_ops, !81, !"iwl_dbgfs_nvm_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 626, i32 1}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 267, i32 5}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 269, i32 47}
!86 = !{ptr @iwl_dbgfs_sram_ops, !87, !"iwl_dbgfs_sram_ops", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 624, i32 1}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 91, i32 43}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 93, i32 43}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 107, i32 5}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 111, i32 5}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 114, i32 5}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 126, i32 45}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 128, i32 45}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 130, i32 45}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1375, i32 6}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 155, i32 18}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 158, i32 25}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!112 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!117 = !{ptr @iwl_dbgfs_wowlan_sram_ops, !118, !"iwl_dbgfs_wowlan_sram_ops", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 625, i32 1}
!119 = !{ptr @iwl_dbgfs_stations_ops, !120, !"iwl_dbgfs_stations_ops", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 627, i32 1}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 199, i32 43}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 207, i32 6}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 211, i32 5}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 217, i32 5}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 227, i32 8}
!131 = !{ptr @iwl_dbgfs_channels_ops, !132, !"iwl_dbgfs_channels_ops", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 628, i32 1}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 297, i32 5}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 302, i32 6}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 306, i32 6}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 306, i32 35}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 310, i32 6}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 313, i32 6}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 313, i32 23}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 320, i32 5}
!149 = !{ptr @iwl_dbgfs_status_ops, !150, !"iwl_dbgfs_status_ops", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 629, i32 1}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 352, i32 43}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 354, i32 43}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 356, i32 43}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 358, i32 43}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 360, i32 43}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 362, i32 43}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 364, i32 43}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 366, i32 43}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 368, i32 43}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 370, i32 43}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 372, i32 43}
!173 = !{ptr @iwl_dbgfs_rx_handlers_ops, !174, !"iwl_dbgfs_rx_handlers_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 630, i32 1}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 396, i32 5}
!177 = !{ptr @iwl_dbgfs_qos_ops, !178, !"iwl_dbgfs_qos_ops", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 631, i32 1}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 439, i32 44}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 443, i32 5}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 445, i32 5}
!185 = !{ptr @iwl_dbgfs_sleep_level_override_ops, !186, !"iwl_dbgfs_sleep_level_override_ops", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 635, i32 1}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 596, i32 30}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 554, i32 18}
!191 = !{ptr @iwl_dbgfs_current_sleep_command_ops, !192, !"iwl_dbgfs_current_sleep_command_ops", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 636, i32 1}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 611, i32 5}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 613, i32 5}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 618, i32 6}
!199 = !{ptr @iwl_dbgfs_thermal_throttling_ops, !200, !"iwl_dbgfs_thermal_throttling_ops", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 632, i32 1}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 468, i32 4}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 469, i32 22}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 469, i32 34}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 471, i32 4}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 476, i32 5}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 479, i32 5}
!213 = !{ptr @.str.95, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 482, i32 5}
!215 = !{ptr @iwl_dbgfs_disable_ht40_ops, !216, !"iwl_dbgfs_disable_ht40_ops", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 633, i32 1}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 521, i32 4}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 522, i32 25}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 522, i32 38}
!223 = !{ptr @iwl_dbgfs_temperature_ops, !224, !"iwl_dbgfs_temperature_ops", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 634, i32 1}
!225 = !{ptr @iwl_dbgfs_power_save_status_ops, !226, !"iwl_dbgfs_power_save_status_ops", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2287, i32 1}
!227 = !{ptr @.str.99, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1794, i32 43}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1795, i32 43}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1796, i32 50}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1797, i32 51}
!235 = !{ptr @.str.103, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1798, i32 51}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1799, i32 3}
!239 = !{ptr @iwl_dbgfs_clear_ucode_statistics_ops, !240, !"iwl_dbgfs_clear_ucode_statistics_ops", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2288, i32 1}
!241 = !{ptr @iwl_dbgfs_missed_beacon_ops, !242, !"iwl_dbgfs_missed_beacon_ops", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2290, i32 1}
!243 = !{ptr @iwl_dbgfs_plcp_delta_ops, !244, !"iwl_dbgfs_plcp_delta_ops", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2291, i32 1}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1955, i32 43}
!247 = !{ptr @iwl_dbgfs_rf_reset_ops, !248, !"iwl_dbgfs_rf_reset_ops", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2292, i32 1}
!249 = !{ptr @.str.106, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1996, i32 4}
!251 = !{ptr @.str.107, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1998, i32 4}
!253 = !{ptr @.str.108, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2001, i32 4}
!255 = !{ptr @.str.109, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2004, i32 4}
!257 = !{ptr @iwl_dbgfs_ucode_rx_stats_ops, !258, !"iwl_dbgfs_ucode_rx_stats_ops", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2282, i32 1}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 715, i32 5}
!261 = !{ptr @.str.111, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 715, i32 17}
!263 = !{ptr @.str.112, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 717, i32 5}
!265 = !{ptr @.str.113, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 717, i32 16}
!267 = !{ptr @.str.114, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 722, i32 16}
!269 = !{ptr @.str.115, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 726, i32 16}
!271 = !{ptr @.str.116, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 730, i32 16}
!273 = !{ptr @.str.117, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 734, i32 16}
!275 = !{ptr @.str.118, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 739, i32 16}
!277 = !{ptr @.str.119, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 745, i32 16}
!279 = !{ptr @.str.120, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 750, i32 16}
!281 = !{ptr @.str.121, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 756, i32 16}
!283 = !{ptr @.str.122, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 762, i32 16}
!285 = !{ptr @.str.123, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 767, i32 16}
!287 = !{ptr @.str.124, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 772, i32 16}
!289 = !{ptr @.str.125, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 778, i32 16}
!291 = !{ptr @.str.126, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 784, i32 16}
!293 = !{ptr @.str.127, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 789, i32 16}
!295 = !{ptr @.str.128, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 794, i32 16}
!297 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 800, i32 16}
!299 = !{ptr @.str.130, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 806, i32 16}
!301 = !{ptr @.str.131, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 812, i32 16}
!303 = !{ptr @.str.132, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 819, i32 17}
!305 = !{ptr @.str.133, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 917, i32 17}
!307 = !{ptr @.str.134, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 919, i32 16}
!309 = !{ptr @.str.135, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 924, i32 16}
!311 = !{ptr @.str.136, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 929, i32 16}
!313 = !{ptr @.str.137, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 935, i32 16}
!315 = !{ptr @.str.138, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 941, i32 16}
!317 = !{ptr @.str.139, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 947, i32 16}
!319 = !{ptr @.str.140, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 953, i32 16}
!321 = !{ptr @.str.141, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 959, i32 16}
!323 = !{ptr @.str.142, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 965, i32 16}
!325 = !{ptr @.str.143, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 971, i32 16}
!327 = !{ptr @.str.144, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 977, i32 16}
!329 = !{ptr @.str.145, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 983, i32 16}
!331 = !{ptr @.str.146, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 989, i32 16}
!333 = !{ptr @.str.147, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 995, i32 16}
!335 = !{ptr @.str.148, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1001, i32 16}
!337 = !{ptr @.str.149, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1007, i32 16}
!339 = !{ptr @.str.150, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1013, i32 16}
!341 = !{ptr @.str.151, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1019, i32 16}
!343 = !{ptr @.str.152, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1025, i32 16}
!345 = !{ptr @.str.153, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1031, i32 16}
!347 = !{ptr @.str.154, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1037, i32 16}
!349 = !{ptr @.str.155, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1044, i32 17}
!351 = !{ptr @.str.156, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1073, i32 16}
!353 = !{ptr @.str.157, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1078, i32 16}
!355 = !{ptr @.str.158, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1083, i32 16}
!357 = !{ptr @.str.159, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1087, i32 16}
!359 = !{ptr @.str.160, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 648, i32 2}
!361 = !{ptr @.str.161, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 652, i32 37}
!363 = !{ptr @.str.162, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 655, i32 3}
!365 = !{ptr @.str.163, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 656, i32 37}
!367 = !{ptr @.str.164, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 658, i32 5}
!369 = !{ptr @.str.165, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 658, i32 17}
!371 = !{ptr @.str.166, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 659, i32 37}
!373 = !{ptr @.str.167, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 661, i32 6}
!375 = !{ptr @.str.168, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 661, i32 18}
!377 = !{ptr @iwl_dbgfs_ucode_tx_stats_ops, !378, !"iwl_dbgfs_ucode_tx_stats_ops", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2283, i32 1}
!379 = !{ptr @.str.169, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1130, i32 17}
!381 = !{ptr @.str.170, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1132, i32 16}
!383 = !{ptr @.str.171, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1137, i32 16}
!385 = !{ptr @.str.172, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1142, i32 16}
!387 = !{ptr @.str.173, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1148, i32 16}
!389 = !{ptr @.str.174, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1154, i32 16}
!391 = !{ptr @.str.175, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1159, i32 16}
!393 = !{ptr @.str.176, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1163, i32 16}
!395 = !{ptr @.str.177, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1168, i32 16}
!397 = !{ptr @.str.178, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1174, i32 16}
!399 = !{ptr @.str.179, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1180, i32 16}
!401 = !{ptr @.str.180, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1186, i32 16}
!403 = !{ptr @.str.181, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1192, i32 16}
!405 = !{ptr @.str.182, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1198, i32 16}
!407 = !{ptr @.str.183, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1204, i32 16}
!409 = !{ptr @.str.184, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1210, i32 16}
!411 = !{ptr @.str.185, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1216, i32 16}
!413 = !{ptr @.str.186, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1222, i32 16}
!415 = !{ptr @.str.187, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1228, i32 16}
!417 = !{ptr @.str.188, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1234, i32 16}
!419 = !{ptr @.str.189, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1240, i32 16}
!421 = !{ptr @.str.190, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1246, i32 16}
!423 = !{ptr @.str.191, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1252, i32 16}
!425 = !{ptr @.str.192, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1257, i32 16}
!427 = !{ptr @.str.193, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1263, i32 16}
!429 = !{ptr @.str.194, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1271, i32 4}
!431 = !{ptr @.str.195, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1275, i32 6}
!433 = !{ptr @.str.196, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1275, i32 15}
!435 = !{ptr @.str.197, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1280, i32 15}
!437 = !{ptr @.str.198, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1285, i32 15}
!439 = !{ptr @iwl_dbgfs_ucode_general_stats_ops, !440, !"iwl_dbgfs_ucode_general_stats_ops", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2284, i32 1}
!441 = !{ptr @.str.199, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1339, i32 17}
!443 = !{ptr @.str.200, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1341, i32 5}
!445 = !{ptr @.str.201, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1341, i32 16}
!447 = !{ptr @.str.202, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1344, i32 16}
!449 = !{ptr @.str.203, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1347, i32 16}
!451 = !{ptr @.str.204, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1350, i32 16}
!453 = !{ptr @.str.205, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1355, i32 16}
!455 = !{ptr @.str.206, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1360, i32 16}
!457 = !{ptr @.str.207, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1366, i32 16}
!459 = !{ptr @.str.208, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1371, i32 16}
!461 = !{ptr @.str.209, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1376, i32 16}
!463 = !{ptr @.str.210, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1381, i32 16}
!465 = !{ptr @.str.211, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1385, i32 16}
!467 = !{ptr @.str.212, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1389, i32 16}
!469 = !{ptr @.str.213, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1393, i32 16}
!471 = !{ptr @.str.214, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1397, i32 16}
!473 = !{ptr @.str.215, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1403, i32 16}
!475 = !{ptr @iwl_dbgfs_txfifo_flush_ops, !476, !"iwl_dbgfs_txfifo_flush_ops", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2295, i32 1}
!477 = !{ptr @iwl_dbgfs_protection_mode_ops, !478, !"iwl_dbgfs_protection_mode_ops", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2298, i32 1}
!479 = !{ptr @.str.216, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2102, i32 5}
!481 = !{ptr @.str.217, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2104, i32 5}
!483 = !{ptr @.str.218, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2104, i32 17}
!485 = !{ptr @.str.219, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2106, i32 44}
!487 = !{ptr @iwl_dbgfs_sensitivity_ops, !488, !"iwl_dbgfs_sensitivity_ops", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2285, i32 1}
!489 = !{ptr @.str.220, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1663, i32 43}
!491 = !{ptr @.str.221, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1666, i32 4}
!493 = !{ptr @.str.222, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1668, i32 43}
!495 = !{ptr @.str.223, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1671, i32 4}
!497 = !{ptr @.str.224, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1673, i32 43}
!499 = !{ptr @.str.225, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1675, i32 43}
!501 = !{ptr @.str.226, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1678, i32 4}
!503 = !{ptr @.str.227, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1680, i32 43}
!505 = !{ptr @.str.228, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1683, i32 4}
!507 = !{ptr @.str.229, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1685, i32 43}
!509 = !{ptr @.str.230, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1687, i32 43}
!511 = !{ptr @.str.231, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1689, i32 43}
!513 = !{ptr @.str.232, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1691, i32 43}
!515 = !{ptr @.str.233, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1693, i32 44}
!517 = !{ptr @.str.234, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1697, i32 43}
!519 = !{ptr @.str.235, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1703, i32 43}
!521 = !{ptr @.str.236, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1705, i32 43}
!523 = !{ptr @.str.237, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1707, i32 43}
!525 = !{ptr @.str.238, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1709, i32 43}
!527 = !{ptr @.str.239, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1712, i32 4}
!529 = !{ptr @.str.240, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1714, i32 43}
!531 = !{ptr @.str.241, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1716, i32 43}
!533 = !{ptr @iwl_dbgfs_chain_noise_ops, !534, !"iwl_dbgfs_chain_noise_ops", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2286, i32 1}
!535 = !{ptr @.str.242, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1742, i32 43}
!537 = !{ptr @.str.243, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1744, i32 43}
!539 = !{ptr @.str.244, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1746, i32 43}
!541 = !{ptr @.str.245, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1748, i32 43}
!543 = !{ptr @.str.246, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1750, i32 43}
!545 = !{ptr @.str.247, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1752, i32 43}
!547 = !{ptr @.str.248, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1754, i32 43}
!549 = !{ptr @.str.249, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1756, i32 43}
!551 = !{ptr @.str.250, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1759, i32 43}
!553 = !{ptr @.str.251, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1765, i32 43}
!555 = !{ptr @.str.252, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1771, i32 43}
!557 = !{ptr @.str.253, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1773, i32 43}
!559 = !{ptr @iwl_dbgfs_ucode_tracing_ops, !560, !"iwl_dbgfs_ucode_tracing_ops", i1 false, i1 false}
!560 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2289, i32 1}
!561 = !{ptr @.str.254, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1837, i32 43}
!563 = !{ptr @.str.255, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1838, i32 34}
!565 = !{ptr @.str.256, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1838, i32 41}
!567 = !{ptr @.str.257, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1839, i32 43}
!569 = !{ptr @.str.258, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1841, i32 43}
!571 = !{ptr @.str.259, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1843, i32 43}
!573 = !{ptr @iwl_dbgfs_ucode_bt_stats_ops, !574, !"iwl_dbgfs_ucode_bt_stats_ops", i1 false, i1 false}
!574 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2296, i32 1}
!575 = !{ptr @.str.260, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1456, i32 43}
!577 = !{ptr @.str.261, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1458, i32 4}
!579 = !{ptr @.str.262, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1460, i32 5}
!581 = !{ptr @.str.263, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1464, i32 5}
!583 = !{ptr @.str.264, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1468, i32 5}
!585 = !{ptr @.str.265, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1472, i32 5}
!587 = !{ptr @.str.266, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1476, i32 5}
!589 = !{ptr @.str.267, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1480, i32 5}
!591 = !{ptr @.str.268, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1484, i32 5}
!593 = !{ptr @.str.269, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1488, i32 5}
!595 = !{ptr @.str.270, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1493, i32 5}
!597 = !{ptr @iwl_dbgfs_reply_tx_error_ops, !598, !"iwl_dbgfs_reply_tx_error_ops", i1 false, i1 false}
!598 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2299, i32 1}
!599 = !{ptr @.str.271, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1522, i32 43}
!601 = !{ptr @.str.272, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1523, i32 43}
!603 = !{ptr @.str.273, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1526, i32 43}
!605 = !{ptr @.str.274, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1538, i32 43}
!607 = !{ptr @.str.275, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1592, i32 43}
!609 = !{ptr @.str.276, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1596, i32 5}
!611 = !{ptr @iwl_dbgfs_rxon_flags_ops, !612, !"iwl_dbgfs_rxon_flags_ops", i1 false, i1 false}
!612 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2293, i32 1}
!613 = !{ptr @.str.277, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 1887, i32 21}
!615 = !{ptr @iwl_dbgfs_rxon_filter_flags_ops, !616, !"iwl_dbgfs_rxon_filter_flags_ops", i1 false, i1 false}
!616 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2294, i32 1}
!617 = !{ptr @iwl_dbgfs_echo_test_ops, !618, !"iwl_dbgfs_echo_test_ops", i1 false, i1 false}
!618 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2300, i32 1}
!619 = !{ptr @.str.278, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2146, i32 3}
!621 = !{ptr @__func__.iwl_cmd_echo_test, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2148, i32 3}
!623 = !{ptr @.str.279, !622, !"<string literal>", i1 false, i1 false}
!624 = !{ptr @iwl_dbgfs_fw_restart_ops, !625, !"iwl_dbgfs_fw_restart_ops", i1 false, i1 false}
!625 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2301, i32 1}
!626 = !{ptr @iwl_dbgfs_log_event_ops, !627, !"iwl_dbgfs_log_event_ops", i1 false, i1 false}
!627 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2303, i32 1}
!628 = !{ptr @.str.280, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2202, i32 18}
!630 = !{ptr @iwl_dbgfs_bt_traffic_ops, !631, !"iwl_dbgfs_bt_traffic_ops", i1 false, i1 false}
!631 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2297, i32 1}
!632 = !{ptr @.str.281, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2055, i32 44}
!634 = !{ptr @.str.282, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2058, i32 43}
!636 = !{ptr @.str.283, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2060, i32 43}
!638 = !{ptr @.str.284, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2061, i32 30}
!640 = !{ptr @.str.285, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2061, i32 51}
!642 = !{ptr @.str.286, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2062, i32 43}
!644 = !{ptr @.str.287, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2065, i32 43}
!646 = !{ptr @.str.288, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2070, i32 43}
!648 = !{ptr @.str.289, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2073, i32 44}
!650 = !{ptr @.str.290, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2076, i32 44}
!652 = !{ptr @.str.291, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2079, i32 44}
!654 = !{ptr @.str.292, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2083, i32 44}
!656 = !{ptr @iwl_dbgfs_calib_disabled_ops, !657, !"iwl_dbgfs_calib_disabled_ops", i1 false, i1 false}
!657 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2305, i32 1}
!658 = !{ptr @.str.293, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2221, i32 5}
!660 = !{ptr @.str.294, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2224, i32 5}
!662 = !{ptr @.str.295, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2224, i32 18}
!664 = !{ptr @.str.296, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2226, i32 5}
!666 = !{ptr @.str.297, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/debugfs.c", i32 2231, i32 5}
!668 = !{!"sp"}
!669 = !{i32 1, !"wchar_size", i32 2}
!670 = !{i32 1, !"min_enum_size", i32 4}
!671 = !{i32 8, !"branch-target-enforcement", i32 0}
!672 = !{i32 8, !"sign-return-address", i32 0}
!673 = !{i32 8, !"sign-return-address-all", i32 0}
!674 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!675 = !{i32 7, !"uwtable", i32 1}
!676 = !{i32 7, !"frame-pointer", i32 2}
!677 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!678 = !{i8 0, i8 2}
!679 = !{!"auto-init"}
!680 = !{!"branch_weights", i32 2000, i32 1}
!681 = !{i64 2152897276, i64 2152897301}
!682 = !{i64 5392831}
!683 = !{i64 5393028}
!684 = !{i64 2152878261}
!685 = !{!"branch_weights", i32 1, i32 2000}
