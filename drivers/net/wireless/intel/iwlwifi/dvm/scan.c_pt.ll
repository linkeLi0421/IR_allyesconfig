; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
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
%struct.iwl_event_log = type { i8, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.138 = type { i32, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_scanresults_notification = type { i8, i8, i8, i8, i32, i32, [1 x i32] }
%struct.iwl_scancomplete_notification = type { i8, i8, i8, i8, i32, i32 }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_scan_cmd = type { i16, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, %struct.iwl_tx_cmd, [20 x %struct.iwl_ssid_ie], [0 x i8] }
%struct.iwl_tx_cmd = type { i16, i16, i32, %struct.iwl_dram_scratch, i32, i8, i8, i8, i8, [16 x i8], i16, i16, %union.anon.143, i32, i8, i8, i8, i8, %union.anon.144, i16, %union.anon.145 }
%struct.iwl_dram_scratch = type { i8, i8, i16 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%union.anon.145 = type { %struct.anon.148 }
%struct.anon.148 = type { %struct.anon.149, [0 x %struct.ieee80211_hdr] }
%struct.anon.149 = type {}
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.iwl_ssid_ie = type { i8, i8, [32 x i8] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.150 }
%union.anon.150 = type { %struct.anon.156, [16 x i8] }
%struct.anon.156 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
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
%struct.iwl_scan_channel = type { i32, i16, i8, i8, i16, i16 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/scan.c\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_force_scan_end = private unnamed_addr constant [19 x i8] c"iwl_force_scan_end\00", align 1
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Forcing scan end while not scanning\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Forcing scan end\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_scan_cancel = private unnamed_addr constant [16 x i8] c"iwl_scan_cancel\00", align 1
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Queuing abort scan\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.iwl_scan_cancel_timeout = private unnamed_addr constant [24 x i8] c"iwl_scan_cancel_timeout\00", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Scan cancel timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Request scan called when driver not ready.\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_scan_initiate = private unnamed_addr constant [18 x i8] c"iwl_scan_initiate\00", align 1
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Multiple concurrent scan requests in parallel.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Scan request while abort pending.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Starting %sscan...\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"internal short \00", [16 x i8] zeroinitializer }, align 32
@iwl_setup_scan_deferred_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&priv->scan_completed)\00", [55 x i8] zeroinitializer }, align 32
@iwl_setup_scan_deferred_work.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->abort_scan)\00", [59 x i8] zeroinitializer }, align 32
@iwl_setup_scan_deferred_work.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&priv->start_internal_scan)\00", [50 x i8] zeroinitializer }, align 32
@iwl_setup_scan_deferred_work.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&priv->scan_check)->work)\00", [50 x i8] zeroinitializer }, align 32
@iwl_setup_scan_deferred_work.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&priv->scan_check)->timer\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_complete_scan = private unnamed_addr constant [18 x i8] c"iwl_complete_scan\00", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Complete scan in mac80211\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_do_scan_abort = private unnamed_addr constant [18 x i8] c"iwl_do_scan_abort\00", align 1
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Not performing scan to abort\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Scan abort in progress\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Send scan abort failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Successfully send scan abort\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.iwl_send_scan_abort = private unnamed_addr constant [20 x i8] c"iwl_send_scan_abort\00", align 1
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SCAN_ABORT ret %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.iwl_process_scan_complete = private unnamed_addr constant [26 x i8] c"iwl_process_scan_complete\00", align 1
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Completed scan.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Aborted scan completed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scan already completed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initiate pending scan: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_rx_reply_scan = private unnamed_addr constant [18 x i8] c"iwl_rx_reply_scan\00", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Scan request status = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_rx_scan_start_notif = private unnamed_addr constant [24 x i8] c"iwl_rx_scan_start_notif\00", align 1
@.str.31 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Scan start: %d [802.11%s] (TSF: 0x%08X:%08X) - %d (beacon timer %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bg\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@__func__.iwl_rx_scan_results_notif = private unnamed_addr constant [26 x i8] c"iwl_rx_scan_results_notif\00", align 1
@.str.34 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Scan ch.res: %d [802.11%s] probe status: %u:%u (TSF: 0x%08X:%08X) - %d elapsed=%lu usec\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_rx_scan_complete_notif = private unnamed_addr constant [27 x i8] c"iwl_rx_scan_complete_notif\00", align 1
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Scan complete: %d channels (TSF 0x%08X:%08X) - %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scan on %sGHz took %dms\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.4\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5.2\00", [28 x i8] zeroinitializer }, align 32
@__func__.iwlagn_request_scan = private unnamed_addr constant [20 x i8] c"iwlagn_request_scan\00", align 1
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail to allocate memory for scan\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Scanning while associated...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"suspend_time 0x%X beacon interval %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Start internal passive scan.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Kicking off active scan\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Start passive scan.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid scan band\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"chain_noise_data.active_chains: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_bcast_addr = external dso_local local_unnamed_addr constant [6 x i8], align 1
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"channel count %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid band\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no valid channel found\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.iwl_get_channels_for_scan = private unnamed_addr constant [26 x i8] c"iwl_get_channels_for_scan\00", align 1
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Scanning ch=%d prob=0x%X [%s %d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PASSIVE\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"total channels to scan %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iwl_limit_dwell.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_bg_abort_scan = private unnamed_addr constant [18 x i8] c"iwl_bg_abort_scan\00", align 1
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Abort scan work\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwl_bg_start_internal_scan = private unnamed_addr constant [27 x i8] c"iwl_bg_start_internal_scan\00", align 1
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Start internal scan\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Internal scan already in progress\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Scan already in progress.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to start internal short scan\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_bg_scan_check = private unnamed_addr constant [18 x i8] c"iwl_bg_scan_check\00", align 1
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Scan check work\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 146, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 149, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 153, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 190, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 205, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 927, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 932, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 938, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 942, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1039, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1040, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1041, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1042, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 82, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 168, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 173, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 179, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 182, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 65, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 100, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 106, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 109, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 124, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 239, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 251, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 269, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 291, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 296, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 648, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 665, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 684, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 690, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 701, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 725, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 759, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 818, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 878, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 463, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 484, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 543, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 554, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1018, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 979, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 984, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 989, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 994, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1004, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @iwl_setup_scan_deferred_work.__key, ptr @.str.11, ptr @iwl_setup_scan_deferred_work.__key.12, ptr @.str.13, ptr @iwl_setup_scan_deferred_work.__key.14, ptr @.str.15, ptr @iwl_setup_scan_deferred_work.__key.16, ptr @.str.17, ptr @iwl_setup_scan_deferred_work.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_scan_deferred_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_scan_deferred_work.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_scan_deferred_work.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_scan_deferred_work.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_scan_deferred_work.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_force_scan_end(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
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
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !136

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status, align 4
  %3 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br i1 %tobool25.not, label %do.end30, label %do.end37

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_force_scan_end, ptr noundef nonnull @.str.1) #7
  br label %return

do.end37:                                         ; preds = %if.end
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_force_scan_end, ptr noundef nonnull @.str.2) #7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %status) #7
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %status) #7
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %status) #7
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %status) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #7
  %6 = getelementptr inbounds i8, ptr %info.i, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -65025, ptr %6, align 8
  %8 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %scan_request.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %9 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_request.i, align 8
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %do.end37.iwl_complete_scan.exit_crit_edge, label %do.end.i

do.end37.iwl_complete_scan.exit_crit_edge:        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_complete_scan.exit

do.end.i:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_complete_scan, ptr noundef nonnull @.str.20) #7
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_scan_completed(ptr noundef %14, ptr noundef nonnull %info.i) #7
  br label %iwl_complete_scan.exit

iwl_complete_scan.exit:                           ; preds = %do.end.i, %do.end37.iwl_complete_scan.exit_crit_edge
  %scan_type.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 43
  %15 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %scan_type.i, align 8
  %scan_vif.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 42
  %16 = ptrtoint ptr %scan_vif.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %scan_vif.i, align 4
  %17 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %scan_request.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #7
  br label %return

return:                                           ; preds = %iwl_complete_scan.exit, %do.end30
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_scan_cancel(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_scan_cancel, ptr noundef nonnull @.str.3) #7
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  %abort_scan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 103
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %abort_scan) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_scan_cancel_timeout(ptr noundef %priv, i32 noundef %ms) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %ms) #7
  %add = add i32 %call2.i, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !136

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 203, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_scan_cancel_timeout, ptr noundef nonnull @.str.4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.if.end.i41_crit_edge, label %land.rhs.i

if.end.if.end.i41_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i41

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i41_crit_edge, !prof !136

land.rhs.i.if.end.i41_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i41

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i41

if.end.i41:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i41_crit_edge, %if.end.if.end.i41_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool25.not.i = icmp eq i32 %7, 0
  br i1 %tobool25.not.i, label %do.end30.i, label %if.end33.i

do.end30.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_do_scan_abort, ptr noundef nonnull @.str.21) #7
  br label %iwl_do_scan_abort.exit

if.end33.i:                                       ; preds = %if.end.i41
  %call35.i = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end45.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_do_scan_abort, ptr noundef nonnull @.str.22) #7
  br label %iwl_do_scan_abort.exit

if.end45.i:                                       ; preds = %if.end33.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i) #7
  %12 = call ptr @memset(ptr %cmd.i.i, i32 0, i32 36)
  %13 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %13, align 4
  %15 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 129, ptr %15, align 4
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %status.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end45.i.iwl_send_scan_abort.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end45.i.iwl_send_scan_abort.exit.thread.i_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_send_scan_abort.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end45.i
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %status.i, align 4
  %22 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge, label %lor.lhs.false5.i.i

lor.lhs.false.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_send_scan_abort.exit.thread.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status.i, align 4
  %25 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i, label %lor.lhs.false5.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge

lor.lhs.false5.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge: ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_send_scan_abort.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false5.i.i
  %call9.i.i = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge

if.end.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_send_scan_abort.exit.thread.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %resp_pkt.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %resp_pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resp_pkt.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %29)
  %cmp.not.i.i = icmp eq i32 %29, 16777216
  br i1 %cmp.not.i.i, label %do.end59.i, label %iwl_send_scan_abort.exit.i

iwl_send_scan_abort.exit.thread.i:                ; preds = %if.end.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge, %lor.lhs.false5.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge, %lor.lhs.false.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge, %if.end45.i.iwl_send_scan_abort.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call9.i.i, %if.end.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge ], [ -5, %if.end45.i.iwl_send_scan_abort.exit.thread.i_crit_edge ], [ -5, %lor.lhs.false.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge ], [ -5, %lor.lhs.false5.i.i.iwl_send_scan_abort.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #7
  br label %do.end52.i

iwl_send_scan_abort.exit.i:                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %29) #7
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_scan_abort, ptr noundef nonnull @.str.25, i32 noundef %32) #7
  %_rx_page_addr.i.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %_rx_page_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %_rx_page_addr.i.i.i, align 4
  %_rx_page_order.i.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %_rx_page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %_rx_page_order.i.i.i, align 4
  call void @free_pages(i32 noundef %34, i32 noundef %36) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #7
  br label %do.end52.i

do.end52.i:                                       ; preds = %iwl_send_scan_abort.exit.i, %iwl_send_scan_abort.exit.thread.i
  %retval.0.i76.i = phi i32 [ %retval.0.i.ph.i, %iwl_send_scan_abort.exit.thread.i ], [ -5, %iwl_send_scan_abort.exit.i ]
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_do_scan_abort, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i76.i) #7
  call void @iwl_force_scan_end(ptr noundef %priv) #7
  br label %iwl_do_scan_abort.exit

do.end59.i:                                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %_rx_page_addr.i.i79.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %_rx_page_addr.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %_rx_page_addr.i.i79.i, align 4
  %_rx_page_order.i.i80.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %_rx_page_order.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %_rx_page_order.i.i80.i, align 4
  call void @free_pages(i32 noundef %40, i32 noundef %42) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #7
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %44, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_do_scan_abort, ptr noundef nonnull @.str.24) #7
  br label %iwl_do_scan_abort.exit

iwl_do_scan_abort.exit:                           ; preds = %do.end59.i, %do.end52.i, %do.end41.i, %do.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub43 = sub i32 %add, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub43)
  %cmp3144 = icmp sgt i32 %sub43, -1
  br i1 %cmp3144, label %iwl_do_scan_abort.exit.while.body_crit_edge, label %iwl_do_scan_abort.exit.cleanup_crit_edge

iwl_do_scan_abort.exit.cleanup_crit_edge:         ; preds = %iwl_do_scan_abort.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

iwl_do_scan_abort.exit.while.body_crit_edge:      ; preds = %iwl_do_scan_abort.exit
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %iwl_do_scan_abort.exit.while.body_crit_edge
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %status.i, align 4
  %48 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool33.not = icmp eq i32 %48, 0
  br i1 %tobool33.not, label %finished, label %if.end35

if.end35:                                         ; preds = %while.body
  call void @msleep(i32 noundef 20) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %49
  %cmp31 = icmp sgt i32 %sub, -1
  br i1 %cmp31, label %if.end35.while.body_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

finished:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @iwl_process_scan_complete(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %finished, %if.end35.cleanup_crit_edge, %iwl_do_scan_abort.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_process_scan_complete(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
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
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !136

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %call24 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end.cleanup84_crit_edge, label %do.end31

if.end.cleanup84_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

do.end31:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %2, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_process_scan_complete, ptr noundef nonnull @.str.26) #7
  %scan_check = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115
  %call34 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_check) #7
  %call36 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %do.end43, label %do.end31.if.end47_crit_edge

do.end31.if.end47_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end43:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_process_scan_complete, ptr noundef nonnull @.str.27) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %do.end31.if.end47_crit_edge
  %call49 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end55, label %if.end59

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_process_scan_complete, ptr noundef nonnull @.str.28) #7
  br label %out_settings

if.end59:                                         ; preds = %if.end47
  %scan_type = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 43
  %7 = ptrtoint ptr %scan_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp60.not = icmp eq i32 %8, 0
  %brmerge = select i1 %cmp60.not, i1 true, i1 %tobool37
  br i1 %brmerge, label %if.end59.out_complete_crit_edge, label %if.then62

if.end59.out_complete_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_complete

if.then62:                                        ; preds = %if.end59
  %scan_request = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %9 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_request, align 8
  %cmp63 = icmp eq ptr %10, null
  br i1 %cmp63, label %if.then62.out_complete_crit_edge, label %if.end65

if.then62.out_complete_crit_edge:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_complete

if.end65:                                         ; preds = %if.then62
  %scan_vif = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 42
  %11 = ptrtoint ptr %scan_vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scan_vif, align 4
  %channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %call67 = tail call i32 @iwl_scan_initiate(ptr noundef %priv, ptr noundef %12, i32 noundef 0, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end65.cleanup84_crit_edge, label %do.end73

if.end65.cleanup84_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_process_scan_complete, ptr noundef nonnull @.str.29, i32 noundef %call67) #7
  br label %out_complete

out_complete:                                     ; preds = %do.end73, %if.then62.out_complete_crit_edge, %if.end59.out_complete_crit_edge
  %aborted.1.off0 = phi i1 [ %tobool37, %if.end59.out_complete_crit_edge ], [ false, %if.then62.out_complete_crit_edge ], [ true, %do.end73 ]
  %frombool.i = zext i1 %aborted.1.off0 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #7
  %19 = getelementptr inbounds i8, ptr %info.i, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %19, align 8
  %aborted1.i = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info.i, i32 0, i32 2
  %21 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %22 = ptrtoint ptr %aborted1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool.i, ptr %aborted1.i, align 2
  %scan_request.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %23 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scan_request.i, align 8
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %out_complete.iwl_complete_scan.exit_crit_edge, label %do.end.i

out_complete.iwl_complete_scan.exit_crit_edge:    ; preds = %out_complete
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_complete_scan.exit

do.end.i:                                         ; preds = %out_complete
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_complete_scan, ptr noundef nonnull @.str.20) #7
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_scan_completed(ptr noundef %28, ptr noundef nonnull %info.i) #7
  br label %iwl_complete_scan.exit

iwl_complete_scan.exit:                           ; preds = %do.end.i, %out_complete.iwl_complete_scan.exit_crit_edge
  %29 = ptrtoint ptr %scan_type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %scan_type, align 8
  %scan_vif.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 42
  %30 = ptrtoint ptr %scan_vif.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %scan_vif.i, align 4
  %31 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %scan_request.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #7
  br label %out_settings

out_settings:                                     ; preds = %iwl_complete_scan.exit, %do.end55
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %status, align 4
  %and1.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %out_settings.cleanup84_crit_edge

out_settings.cleanup84_crit_edge:                 ; preds = %out_settings
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

if.end.i:                                         ; preds = %out_settings
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %status, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup84_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.cleanup84_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %status, align 4
  %39 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool81.not.not = icmp eq i32 %39, 0
  br i1 %tobool81.not.not, label %if.end83, label %iwl_is_ready_rf.exit.cleanup84_crit_edge

iwl_is_ready_rf.exit.cleanup84_crit_edge:         ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

if.end83:                                         ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @iwlagn_post_scan(ptr noundef %priv) #7
  br label %cleanup84

cleanup84:                                        ; preds = %if.end83, %iwl_is_ready_rf.exit.cleanup84_crit_edge, %if.end.i.cleanup84_crit_edge, %out_settings.cleanup84_crit_edge, %if.end65.cleanup84_crit_edge, %if.end.cleanup84_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iwl_setup_rx_scan_handlers(ptr nocapture noundef writeonly %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 128
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iwl_rx_reply_scan, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 130
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @iwl_rx_scan_start_notif, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 131
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @iwl_rx_scan_results_notif, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 132
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iwl_rx_scan_complete_notif, ptr %arrayidx6, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_rx_reply_scan(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
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
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_reply_scan, ptr noundef nonnull @.str.30, i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_rx_scan_start_notif(ptr nocapture noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
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
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %scan_start_tsf = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 38
  %9 = ptrtoint ptr %scan_start_tsf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %scan_start_tsf, align 4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel, align 1
  %conv = zext i8 %13 to i32
  %band = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1, i32 1
  %14 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.32
  %tsf_high = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %16 = ptrtoint ptr %tsf_high to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %tsf_high, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %data, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %status = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %22 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %status, align 1
  %beacon_timer = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %24 = ptrtoint ptr %beacon_timer to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %beacon_timer, align 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_scan_start_notif, ptr noundef nonnull @.str.31, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %18, i32 noundef %21, i32 noundef %23, i32 noundef %25) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_rx_scan_results_notif(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
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
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %conv = zext i8 %9 to i32
  %band = getelementptr inbounds %struct.iwl_scanresults_notification, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.32
  %probe_status = getelementptr inbounds %struct.iwl_scanresults_notification, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %probe_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %probe_status, align 1
  %conv3 = zext i8 %13 to i32
  %num_probe_not_sent = getelementptr inbounds %struct.iwl_scanresults_notification, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %num_probe_not_sent to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_probe_not_sent, align 1
  %conv4 = zext i8 %15 to i32
  %tsf_high = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %16 = ptrtoint ptr %tsf_high to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %tsf_high, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %tsf_low = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %19 = ptrtoint ptr %tsf_low to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %tsf_low, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %statistics = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %22 = ptrtoint ptr %statistics to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %statistics, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %scan_start_tsf = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 38
  %25 = ptrtoint ptr %scan_start_tsf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_start_tsf, align 4
  %sub = sub i32 %21, %26
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_scan_results_notif, ptr noundef nonnull @.str.34, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %sub) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_rx_scan_complete_notif(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
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
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %conv = zext i8 %9 to i32
  %tsf_low = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %10 = ptrtoint ptr %tsf_low to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %tsf_low, align 1
  %tsf_high = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %12 = ptrtoint ptr %tsf_high to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %tsf_high, align 1
  %status = getelementptr inbounds %struct.iwl_scancomplete_notification, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 1
  %conv2 = zext i8 %15 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_scan_complete_notif, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %11, i32 noundef %13, i32 noundef %conv2) #7
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %scan_band = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 40
  %18 = ptrtoint ptr %scan_band to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  %cond = select i1 %cmp, ptr @.str.37, ptr @.str.38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %scan_start = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 37
  %21 = ptrtoint ptr %scan_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_start, align 8
  %sub = sub i32 %20, %22
  %call11 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #7
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_scan_complete_notif, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond, i32 noundef %call11) #7
  %status14 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %status14) #7
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %status14) #7
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %23 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %workqueue, align 4
  %scan_completed = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 102
  %call.i60 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %scan_completed) #7
  %iw_mode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 69
  %25 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp17.not = icmp eq i32 %26, 1
  br i1 %cmp17.not, label %entry.if.end37_crit_edge, label %land.lhs.true

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true:                                    ; preds = %entry
  %lib.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %27 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lib.i, align 8
  %bt_params.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %bt_params.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bt_params.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end37_crit_edge, label %iwl_advanced_bt_coexist.exit

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

iwl_advanced_bt_coexist.exit:                     ; preds = %land.lhs.true
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool3.i.not = icmp eq i8 %32, 0
  br i1 %tobool3.i.not, label %iwl_advanced_bt_coexist.exit.if.end37_crit_edge, label %land.lhs.true21

iwl_advanced_bt_coexist.exit.if.end37_crit_edge:  ; preds = %iwl_advanced_bt_coexist.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true21:                                  ; preds = %iwl_advanced_bt_coexist.exit
  %bt_status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 84
  %33 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bt_status, align 1
  %bt_status23 = getelementptr inbounds %struct.iwl_scancomplete_notification, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %bt_status23 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bt_status23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp25.not = icmp eq i8 %34, %36
  br i1 %cmp25.not, label %land.lhs.true21.if.end37_crit_edge, label %if.then

land.lhs.true21.if.end37_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then:                                          ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.then.if.end32.sink.split_crit_edge, label %if.then28

if.then.if.end32.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.sink.split

if.then28:                                        ; preds = %if.then
  %bt_ch_announce = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 87
  %37 = ptrtoint ptr %bt_ch_announce to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bt_ch_announce, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool29.not = icmp eq i8 %38, 0
  br i1 %tobool29.not, label %if.then28.if.end32.sink.split_crit_edge, label %if.then28.if.end32_crit_edge

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28.if.end32.sink.split_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.then28.if.end32.sink.split_crit_edge, %if.then.if.end32.sink.split_crit_edge
  %.sink = phi i8 [ 2, %if.then28.if.end32.sink.split_crit_edge ], [ 0, %if.then.if.end32.sink.split_crit_edge ]
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %39 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %bt_traffic_load, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.then28.if.end32_crit_edge
  %40 = ptrtoint ptr %bt_status23 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bt_status23, align 1
  %42 = ptrtoint ptr %bt_status to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %bt_status, align 1
  %43 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %workqueue, align 4
  %bt_traffic_change_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97
  %call.i61 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %bt_traffic_change_work) #7
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %land.lhs.true21.if.end37_crit_edge, %iwl_advanced_bt_coexist.exit.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_init_scan_params(ptr nocapture noundef %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid_tx_ant, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %4 = tail call i8 @llvm.ctlz.i8(i8 %3, i1 true), !range !138
  %.op = xor i8 %4, 7
  %conv1 = select i1 %tobool.not.i, i8 -1, i8 %.op
  %scan_tx_ant = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 44
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 44, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %scan_tx_ant to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scan_tx_ant, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %scan_tx_ant to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1, ptr %scan_tx_ant, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_scan_initiate(ptr noundef %priv, ptr noundef readonly %vif, i32 noundef %scan_type, i32 noundef %band) local_unnamed_addr #0 align 64 {
entry:
  %limits.i.i.i.i = alloca [2 x i32], align 8
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
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
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !136

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 922, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %scan_check = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115
  %call24 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_check) #7
  %status.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %1 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end31_crit_edge

if.end.do.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.end31_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.do.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool26.not.not = icmp eq i32 %8, 0
  br i1 %tobool26.not.not, label %if.end34, label %iwl_is_ready_rf.exit.do.end31_crit_edge

iwl_is_ready_rf.exit.do.end31_crit_edge:          ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end31:                                         ; preds = %iwl_is_ready_rf.exit.do.end31_crit_edge, %if.end.i.do.end31_crit_edge, %if.end.do.end31_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %10, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end34:                                         ; preds = %iwl_is_ready_rf.exit
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool36.not = icmp eq i32 %13, 0
  br i1 %tobool36.not, label %if.end45, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev42, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_scan_initiate, ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool48.not = icmp eq i32 %18, 0
  %dev62 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev62, align 4
  br i1 %tobool48.not, label %do.end61, label %do.end53

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_scan_initiate, ptr noundef nonnull @.str.7) #7
  br label %cleanup

do.end61:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scan_type)
  %cmp63 = icmp eq i32 %scan_type, 0
  %cond = select i1 %cmp63, ptr @.str.9, ptr @.str.10
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_scan_initiate, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond) #7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %status.i.i) #7
  %scan_type67 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 43
  %21 = ptrtoint ptr %scan_type67 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %scan_type, ptr %scan_type67, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %scan_start = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 37
  %23 = ptrtoint ptr %scan_start to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %scan_start, align 8
  %scan_band = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 40
  %24 = ptrtoint ptr %scan_band to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %band, ptr %scan_band, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #7
  %25 = call ptr @memset(ptr %cmd.i, i32 0, i32 36)
  %26 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 128, ptr %26, align 4
  %28 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i, i32 0, i32 6
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 764, ptr %28, align 4
  %contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %nvm_data.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %30 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nvm_data.i, align 8
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %valid_rx_ant.i, align 2
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %31, i32 0, i32 20
  %34 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %valid_tx_ant.i, align 1
  %fw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %36 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw.i, align 4
  %ucode_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ucode_capa.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ucode_capa.i, align 4
  %add.i = add i32 %39, 1364
  br i1 %cmp63, label %land.rhs.i, label %do.end61.do.body26.i_crit_edge

do.end61.do.body26.i_crit_edge:                   ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i

land.rhs.i:                                       ; preds = %do.end61
  %scan_request.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %40 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %scan_request.i, align 8
  %tobool.not.i98 = icmp eq ptr %41, null
  br i1 %tobool.not.i98, label %land.rhs.i.do.end.i_crit_edge, label %lor.rhs.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %n_channels.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %43)
  %cmp3.i = icmp ugt i32 %43, 50
  br i1 %cmp3.i, label %lor.rhs.i.do.end.i_crit_edge, label %lor.rhs.i.do.body26.i_crit_edge, !prof !136

lor.rhs.i.do.body26.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 637, i32 noundef 9, ptr noundef null) #7
  br label %if.then70

do.body26.i:                                      ; preds = %lor.rhs.i.do.body26.i_crit_edge, %do.end61.do.body26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool28.not.i = icmp eq i32 %44, 0
  br i1 %tobool28.not.i, label %do.body26.i.if.end55.i_crit_edge, label %land.rhs29.i

do.body26.i.if.end55.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

land.rhs29.i:                                     ; preds = %do.body26.i
  %dep_map.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp30.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp30.not.i, label %do.end49.i, label %land.rhs29.i.if.end55.i_crit_edge, !prof !136

land.rhs29.i.if.end55.i_crit_edge:                ; preds = %land.rhs29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

do.end49.i:                                       ; preds = %land.rhs29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 640, i32 noundef 9, ptr noundef null) #7
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %land.rhs29.i.if.end55.i_crit_edge, %do.body26.i.if.end55.i_crit_edge
  %tobool65.not.i = icmp eq ptr %vif, null
  br i1 %tobool65.not.i, label %if.end55.i.if.end68.i_crit_edge, label %if.then66.i

if.end55.i.if.end68.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %45 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drv_priv.i.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.end55.i.if.end68.i_crit_edge
  %ctx.0.i = phi ptr [ %46, %if.then66.i ], [ %contexts.i, %if.end55.i.if.end68.i_crit_edge ]
  %scan_cmd.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 39
  %47 = ptrtoint ptr %scan_cmd.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %scan_cmd.i, align 8
  %tobool69.not.i = icmp eq ptr %48, null
  br i1 %tobool69.not.i, label %if.end8.i.i, label %if.end68.i.if.end83.i_crit_edge

if.end68.i.if.end83.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.end8.i.i:                                      ; preds = %if.end68.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #10
  %49 = ptrtoint ptr %scan_cmd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i.i, ptr %scan_cmd.i, align 8
  %tobool74.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool74.not.i, label %do.end79.i, label %if.end8.i.i.if.end83.i_crit_edge

if.end8.i.i.if.end83.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

do.end79.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.39) #7
  br label %if.then70

if.end83.i:                                       ; preds = %if.end8.i.i.if.end83.i_crit_edge, %if.end68.i.if.end83.i_crit_edge
  %52 = ptrtoint ptr %scan_cmd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %scan_cmd.i, align 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 %add.i)
  %quiet_plcp_th.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 4
  %55 = ptrtoint ptr %quiet_plcp_th.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 256, ptr %quiet_plcp_th.i, align 1
  %quiet_time.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %quiet_time.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 2560, ptr %quiet_time.i, align 1
  %arrayidx2.i.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp11.i.i = icmp ult ptr %contexts.i, %arrayidx2.i.i
  br i1 %cmp11.i.i, label %for.body.lr.ph.i.i, label %if.end83.i.if.end112.i_crit_edge

if.end83.i.if.end112.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.i

for.body.lr.ph.i.i:                               ; preds = %if.end83.i
  %valid_contexts.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %57 = ptrtoint ptr %valid_contexts.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %valid_contexts.i.i, align 4
  %conv.i.i = zext i8 %58 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ctx.012.i.i = phi ptr [ %contexts.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ctxid.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %ctxid.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctxid.i.i, align 4
  %shl.i.i = shl nuw i32 1, %60
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i99 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i99, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i563.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i563.i:                                   ; preds = %for.body.i.i
  %filter_flags.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 0, i32 14, i32 13
  %61 = ptrtoint ptr %filter_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %filter_flags.i.i.i, align 4
  %63 = and i32 %62, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool3.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool3.not.i.i, label %if.then.i563.i.for.inc.i.i_crit_edge, label %if.then87.i

if.then.i563.i.for.inc.i.i_crit_edge:             ; preds = %if.then.i563.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i563.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 1
  %cmp.i564.i = icmp ult ptr %incdec.ptr.i.i, %arrayidx2.i.i
  br i1 %cmp.i564.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end112.i_crit_edge

for.inc.i.i.if.end112.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.then87.i:                                      ; preds = %if.then.i563.i
  %64 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.40) #7
  %66 = ptrtoint ptr %scan_type67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scan_type67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cond.i = icmp eq i32 %67, 0
  br i1 %cond.i, label %sw.epilog.i, label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  %suspend_time97647.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 8
  %68 = ptrtoint ptr %suspend_time97647.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 0, ptr %suspend_time97647.i, align 1
  %max_out_time648.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 7
  %69 = ptrtoint ptr %max_out_time648.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 2097920, ptr %max_out_time648.i, align 1
  br label %74

sw.epilog.i:                                      ; preds = %if.then87.i
  %beacon_int.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %70 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %beacon_int.i, align 2
  %suspend_time97.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 8
  %72 = ptrtoint ptr %suspend_time97.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 0, ptr %suspend_time97.i, align 1
  %max_out_time.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 7
  %73 = ptrtoint ptr %max_out_time.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 2097920, ptr %max_out_time.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool98.not.i = icmp eq i16 %71, 0
  br i1 %tobool98.not.i, label %sw.epilog.i._crit_edge, label %sw.epilog.i._crit_edge113

sw.epilog.i._crit_edge113:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %75

sw.epilog.i._crit_edge:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %74

74:                                               ; preds = %sw.epilog.i._crit_edge, %sw.epilog.thread.i
  %suspend_time97651.i = phi ptr [ %suspend_time97647.i, %sw.epilog.thread.i ], [ %suspend_time97.i, %sw.epilog.i._crit_edge ]
  br label %75

75:                                               ; preds = %74, %sw.epilog.i._crit_edge113
  %suspend_time97650.i = phi ptr [ %suspend_time97651.i, %74 ], [ %suspend_time97.i, %sw.epilog.i._crit_edge113 ]
  %76 = phi i16 [ 100, %74 ], [ %71, %sw.epilog.i._crit_edge113 ]
  %conv101.i = zext i16 %76 to i32
  %.frozen = freeze i16 %76
  %div652.i = udiv i16 100, %.frozen
  %div.zext.i = zext i16 %div652.i to i32
  %shl.i = shl nuw nsw i32 %div.zext.i, 22
  %77 = mul i16 %div652.i, %.frozen
  %rem653.i.decomposed = sub i16 100, %77
  %rem.zext.i = zext i16 %rem653.i.decomposed to i32
  %mul.i = shl nuw nsw i32 %rem.zext.i, 10
  %or.i = or i32 %mul.i, %shl.i
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %79 = ptrtoint ptr %suspend_time97650.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %suspend_time97650.i, align 1
  %80 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %81, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.41, i32 noundef %or.i, i32 noundef %conv101.i) #7
  br label %if.end112.i

if.end112.i:                                      ; preds = %75, %for.inc.i.i.if.end112.i_crit_edge, %if.end83.i.if.end112.i_crit_edge
  %82 = ptrtoint ptr %scan_type67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %scan_type67, align 8
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %83, label %if.end112.i.sw.epilog175.i_crit_edge [
    i32 1, label %do.end118.i
    i32 0, label %sw.bb123.i
  ]

if.end112.i.sw.epilog175.i_crit_edge:             ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i

do.end118.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %86, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.42) #7
  %87 = ptrtoint ptr %quiet_time.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 1280, ptr %quiet_time.i, align 1
  br label %sw.epilog175.i

sw.bb123.i:                                       ; preds = %if.end112.i
  %scan_request124.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %88 = ptrtoint ptr %scan_request124.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scan_request124.i, align 8
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_ssids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool125.not.i = icmp eq i32 %91, 0
  %92 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev62, align 4
  br i1 %tobool125.not.i, label %do.end170.i, label %if.then126.i

if.then126.i:                                     ; preds = %sw.bb123.i
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %93, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.43) #7
  %94 = ptrtoint ptr %scan_request124.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %scan_request124.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %ssid_len136.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %ssid_len136.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ssid_len136.i, align 1
  %n_ssids142.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %n_ssids142.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_ssids142.i, align 4
  %i.0655.i = add i32 %101, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0655.i)
  %cmp143656.i = icmp sgt i32 %i.0655.i, 0
  br i1 %cmp143656.i, label %if.then126.i.for.body.i_crit_edge, label %if.then126.i.sw.epilog175.i_crit_edge

if.then126.i.sw.epilog175.i_crit_edge:            ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i

if.then126.i.for.body.i_crit_edge:                ; preds = %if.then126.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then126.i.for.body.i_crit_edge
  %i.0659.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.0655.i, %if.then126.i.for.body.i_crit_edge ]
  %p.0658.i = phi i32 [ %inc166.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then126.i.for.body.i_crit_edge ]
  %arrayidx145.i = getelementptr %struct.iwl_scan_cmd, ptr %53, i32 0, i32 12, i32 %p.0658.i
  %102 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx145.i, align 1
  %103 = ptrtoint ptr %scan_request124.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %scan_request124.i, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %ssid_len149.i = getelementptr %struct.cfg80211_ssid, ptr %106, i32 %i.0659.i, i32 1
  %107 = ptrtoint ptr %ssid_len149.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ssid_len149.i, align 1
  %len.i = getelementptr %struct.iwl_scan_cmd, ptr %53, i32 0, i32 12, i32 %p.0658.i, i32 1
  %109 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %len.i, align 1
  %ssid154.i = getelementptr %struct.iwl_scan_cmd, ptr %53, i32 0, i32 12, i32 %p.0658.i, i32 2
  %110 = load ptr, ptr %scan_request124.i, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %arrayidx158.i = getelementptr %struct.cfg80211_ssid, ptr %112, i32 %i.0659.i
  %ssid_len164.i = getelementptr %struct.cfg80211_ssid, ptr %112, i32 %i.0659.i, i32 1
  %113 = ptrtoint ptr %ssid_len164.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ssid_len164.i, align 1
  %conv165.i = zext i8 %114 to i32
  %115 = call ptr @memcpy(ptr %ssid154.i, ptr %arrayidx158.i, i32 %conv165.i)
  %inc166.i = add nuw nsw i32 %p.0658.i, 1
  %i.0.i = add i32 %i.0659.i, -1
  %exitcond.not.i = icmp eq i32 %inc166.i, %i.0655.i
  br i1 %exitcond.not.i, label %sw.epilog175.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end170.i:                                      ; preds = %sw.bb123.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %93, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.44) #7
  br label %sw.epilog175.i

sw.epilog175.loopexit.i:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = trunc i32 %101 to i8
  %117 = add i8 %116, -1
  br label %sw.epilog175.i

sw.epilog175.i:                                   ; preds = %sw.epilog175.loopexit.i, %do.end170.i, %if.then126.i.sw.epilog175.i_crit_edge, %do.end118.i, %if.end112.i.sw.epilog175.i_crit_edge
  %n_probes.1.i = phi i8 [ 0, %if.end112.i.sw.epilog175.i_crit_edge ], [ 0, %do.end170.i ], [ 0, %do.end118.i ], [ 0, %if.then126.i.sw.epilog175.i_crit_edge ], [ %117, %sw.epilog175.loopexit.i ]
  %is_active.0.off0.i = phi i1 [ false, %if.end112.i.sw.epilog175.i_crit_edge ], [ false, %do.end170.i ], [ false, %do.end118.i ], [ true, %if.then126.i.sw.epilog175.i_crit_edge ], [ true, %sw.epilog175.loopexit.i ]
  %ssid.0.i = phi ptr [ null, %if.end112.i.sw.epilog175.i_crit_edge ], [ null, %do.end170.i ], [ null, %do.end118.i ], [ %97, %if.then126.i.sw.epilog175.i_crit_edge ], [ %97, %sw.epilog175.loopexit.i ]
  %ssid_len.0.i = phi i8 [ 0, %if.end112.i.sw.epilog175.i_crit_edge ], [ 0, %do.end170.i ], [ 0, %do.end118.i ], [ %99, %if.then126.i.sw.epilog175.i_crit_edge ], [ %99, %sw.epilog175.loopexit.i ]
  %tx_cmd.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 11
  %tx_flags.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 11, i32 2
  %118 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 2097152, ptr %tx_flags.i, align 1
  %bcast_sta_id.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0.i, i32 0, i32 18
  %119 = ptrtoint ptr %bcast_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bcast_sta_id.i, align 4
  %sta_id.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 11, i32 5
  %121 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %sta_id.i, align 1
  %stop_time.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 11, i32 12
  %122 = ptrtoint ptr %stop_time.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 -1, ptr %stop_time.i, align 1
  %123 = ptrtoint ptr %scan_band to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %scan_band, align 4
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %124, label %do.end207.i [
    i32 0, label %sw.bb178.i
    i32 1, label %sw.epilog175.i.sw.epilog211.i_crit_edge
  ]

sw.epilog175.i.sw.epilog211.i_crit_edge:          ; preds = %sw.epilog175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog211.i

sw.bb178.i:                                       ; preds = %sw.epilog175.i
  %flags.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 9
  %126 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 83886080, ptr %flags.i, align 1
  %flags181.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 12
  %127 = ptrtoint ptr %flags181.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags181.i, align 4
  %scan_request182.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %129 = ptrtoint ptr %scan_request182.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %scan_request182.i, align 8
  %tobool183.not.i = icmp eq ptr %130, null
  br i1 %tobool183.not.i, label %lor.lhs.false.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb178.i
  %no_cck.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %130, i32 0, i32 18
  %131 = ptrtoint ptr %no_cck.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %no_cck.i, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool185.not.i = icmp ne i8 %132, 0
  %133 = and i32 %128, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp187.i = icmp eq i32 %133, 2
  %or.cond.i = select i1 %tobool185.not.i, i1 true, i1 %cmp187.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end191.i_crit_edge, label %land.lhs.true.i.if.else190.i_crit_edge

land.lhs.true.i.if.else190.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else190.i

land.lhs.true.i.if.end191.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191.i

lor.lhs.false.i:                                  ; preds = %sw.bb178.i
  %.old.i = and i32 %128, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.old.i)
  %cmp187.old.i = icmp eq i32 %.old.i, 2
  br i1 %cmp187.old.i, label %lor.lhs.false.i.if.end191.i_crit_edge, label %lor.lhs.false.i.if.else190.i_crit_edge

lor.lhs.false.i.if.else190.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else190.i

lor.lhs.false.i.if.end191.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191.i

if.else190.i:                                     ; preds = %lor.lhs.false.i.if.else190.i_crit_edge, %land.lhs.true.i.if.else190.i_crit_edge
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.else190.i, %lor.lhs.false.i.if.end191.i_crit_edge, %land.lhs.true.i.if.end191.i_crit_edge
  %rate_flags.0.i = phi i32 [ 512, %if.else190.i ], [ 0, %lor.lhs.false.i.if.end191.i_crit_edge ], [ 0, %land.lhs.true.i.if.end191.i_crit_edge ]
  %rate.0.i = phi i8 [ 10, %if.else190.i ], [ 13, %lor.lhs.false.i.if.end191.i_crit_edge ], [ 13, %land.lhs.true.i.if.end191.i_crit_edge ]
  %lib.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %134 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lib.i, align 8
  %bt_params.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %bt_params.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bt_params.i, align 4
  %tobool192.not.i = icmp eq ptr %137, null
  br i1 %tobool192.not.i, label %if.end191.i.sw.epilog211.i_crit_edge, label %land.lhs.true193.i

if.end191.i.sw.epilog211.i_crit_edge:             ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog211.i

land.lhs.true193.i:                               ; preds = %if.end191.i
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool196.not.i = icmp eq i8 %139, 0
  br i1 %tobool196.not.i, label %land.lhs.true193.i.sw.epilog211.i_crit_edge, label %if.then198.i

land.lhs.true193.i.sw.epilog211.i_crit_edge:      ; preds = %land.lhs.true193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog211.i

if.then198.i:                                     ; preds = %land.lhs.true193.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 3145728, ptr %tx_flags.i, align 1
  br label %sw.epilog211.i

do.end207.i:                                      ; preds = %sw.epilog175.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %142, ptr noundef nonnull @.str.45) #7
  br label %if.then70

sw.epilog211.i:                                   ; preds = %if.then198.i, %land.lhs.true193.i.sw.epilog211.i_crit_edge, %if.end191.i.sw.epilog211.i_crit_edge, %sw.epilog175.i.sw.epilog211.i_crit_edge
  %rate_flags.1.i = phi i32 [ %rate_flags.0.i, %if.then198.i ], [ %rate_flags.0.i, %land.lhs.true193.i.sw.epilog211.i_crit_edge ], [ %rate_flags.0.i, %if.end191.i.sw.epilog211.i_crit_edge ], [ 0, %sw.epilog175.i.sw.epilog211.i_crit_edge ]
  %rate.1.i = phi i8 [ %rate.0.i, %if.then198.i ], [ %rate.0.i, %land.lhs.true193.i.sw.epilog211.i_crit_edge ], [ %rate.0.i, %if.end191.i.sw.epilog211.i_crit_edge ], [ 13, %sw.epilog175.i.sw.epilog211.i_crit_edge ]
  %new_scan_threshold_behaviour.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 47
  %143 = ptrtoint ptr %new_scan_threshold_behaviour.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %new_scan_threshold_behaviour.i, align 4, !range !137
  %sext.i = add nsw i8 %144, -1
  %..i = sext i8 %sext.i to i16
  %conv221.i = select i1 %is_active.0.off0.i, i16 256, i16 %..i
  %145 = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 5
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 %conv221.i, ptr %145, align 1
  %147 = ptrtoint ptr %scan_band to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %scan_band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp225.i = icmp eq i32 %148, 0
  br i1 %cmp225.i, label %land.lhs.true227.i, label %sw.epilog211.i.if.end239.i_crit_edge

sw.epilog211.i.if.end239.i_crit_edge:             ; preds = %sw.epilog211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end239.i

land.lhs.true227.i:                               ; preds = %sw.epilog211.i
  %lib228.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %149 = ptrtoint ptr %lib228.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lib228.i, align 8
  %bt_params229.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %bt_params229.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bt_params229.i, align 4
  %tobool230.not.i = icmp eq ptr %152, null
  br i1 %tobool230.not.i, label %land.lhs.true227.i.if.end239.i_crit_edge, label %land.lhs.true231.i

land.lhs.true227.i.if.end239.i_crit_edge:         ; preds = %land.lhs.true227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end239.i

land.lhs.true231.i:                               ; preds = %land.lhs.true227.i
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %152, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool235.not.i = icmp eq i8 %154, 0
  br i1 %tobool235.not.i, label %land.lhs.true231.i.if.end239.i_crit_edge, label %if.then237.i

land.lhs.true231.i.if.end239.i_crit_edge:         ; preds = %land.lhs.true231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end239.i

if.then237.i:                                     ; preds = %land.lhs.true231.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i565.i = zext i8 %35 to i32
  %and.i566.i = and i32 %conv.i565.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i566.i)
  %tobool.not.i567.i = icmp eq i32 %and.i566.i, 0
  %and2.i.i = and i32 %conv.i565.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i568.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i568.i, i8 4, i8 2
  %retval.0.i569.i = select i1 %tobool.not.i567.i, i8 %..i.i, i8 1
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.then237.i, %land.lhs.true231.i.if.end239.i_crit_edge, %land.lhs.true227.i.if.end239.i_crit_edge, %sw.epilog211.i.if.end239.i_crit_edge
  %scan_tx_antennas.0.i = phi i8 [ %retval.0.i569.i, %if.then237.i ], [ %35, %land.lhs.true231.i.if.end239.i_crit_edge ], [ %35, %land.lhs.true227.i.if.end239.i_crit_edge ], [ %35, %sw.epilog211.i.if.end239.i_crit_edge ]
  %arrayidx240.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 44, i32 %148
  %155 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx240.i, align 1
  %call241.i = tail call zeroext i8 @iwl_toggle_tx_ant(ptr noundef %priv, i8 noundef zeroext %156, i8 noundef zeroext %scan_tx_antennas.0.i) #7
  %157 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %call241.i, ptr %arrayidx240.i, align 1
  %conv.i570.i = zext i8 %call241.i to i32
  %shl1.i.i = shl i32 16384, %conv.i570.i
  %conv.i571.i = zext i8 %rate.1.i to i32
  %or247.i = or i32 %rate_flags.1.i, %conv.i571.i
  %or.i.i = or i32 %or247.i, %shl1.i.i
  %158 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %rate_n_flags.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 11, i32 4
  %159 = ptrtoint ptr %rate_n_flags.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 %158, ptr %rate_n_flags.i, align 1
  %160 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %status.i.i, align 4
  %162 = and i32 %161, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool251.not.i = icmp eq i32 %162, 0
  br i1 %tobool251.not.i, label %if.end239.i.if.end276.i_crit_edge, label %land.lhs.true252.i

if.end239.i.if.end276.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end276.i

land.lhs.true252.i:                               ; preds = %if.end239.i
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %163 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %and254.i = and i32 %166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254.i)
  %tobool255.not.i = icmp eq i32 %and254.i, 0
  br i1 %tobool255.not.i, label %if.then256.i, label %land.lhs.true252.i.if.end276.i_crit_edge

land.lhs.true252.i.if.end276.i_crit_edge:         ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end276.i

if.then256.i:                                     ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #9
  %chain_noise_data.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54
  %167 = ptrtoint ptr %chain_noise_data.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %chain_noise_data.i, align 8
  %169 = trunc i32 %168 to i8
  %conv262.i = and i8 %33, %169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv262.i)
  %tobool263.not.i = icmp eq i8 %conv262.i, 0
  %spec.select562.i = select i1 %tobool263.not.i, i8 %33, i8 %conv262.i
  %170 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %171, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.46, i32 noundef %168) #7
  %conv.i572.i = zext i8 %spec.select562.i to i32
  %and.i573.i = and i32 %conv.i572.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i573.i)
  %tobool.not.i574.i = icmp eq i32 %and.i573.i, 0
  %and2.i575.i = and i32 %conv.i572.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i575.i)
  %tobool3.not.i576.i = icmp eq i32 %and2.i575.i, 0
  %..i577.i = select i1 %tobool3.not.i576.i, i8 4, i8 2
  %retval.0.i578.i = select i1 %tobool.not.i574.i, i8 %..i577.i, i8 1
  br label %if.end276.i

if.end276.i:                                      ; preds = %if.then256.i, %land.lhs.true252.i.if.end276.i_crit_edge, %if.end239.i.if.end276.i_crit_edge
  %rx_ant.0.i = phi i8 [ %33, %land.lhs.true252.i.if.end276.i_crit_edge ], [ %retval.0.i578.i, %if.then256.i ], [ %33, %if.end239.i.if.end276.i_crit_edge ]
  %lib277.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %172 = ptrtoint ptr %lib277.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %lib277.i, align 8
  %bt_params278.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %bt_params278.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bt_params278.i, align 4
  %tobool279.not.i = icmp eq ptr %175, null
  br i1 %tobool279.not.i, label %if.end276.i.if.end291.i_crit_edge, label %land.lhs.true280.i

if.end276.i.if.end291.i_crit_edge:                ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291.i

land.lhs.true280.i:                               ; preds = %if.end276.i
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %175, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool284.not.i = icmp eq i8 %177, 0
  br i1 %tobool284.not.i, label %land.lhs.true280.i.if.end291.i_crit_edge, label %land.lhs.true286.i

land.lhs.true280.i.if.end291.i_crit_edge:         ; preds = %land.lhs.true280.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291.i

land.lhs.true286.i:                               ; preds = %land.lhs.true280.i
  %bt_full_concurrent.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %178 = ptrtoint ptr %bt_full_concurrent.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bt_full_concurrent.i, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool287.not.i = icmp eq i8 %179, 0
  br i1 %tobool287.not.i, label %land.lhs.true286.i.if.end291.i_crit_edge, label %if.then289.i

land.lhs.true286.i.if.end291.i_crit_edge:         ; preds = %land.lhs.true286.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291.i

if.then289.i:                                     ; preds = %land.lhs.true286.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i579.i = zext i8 %rx_ant.0.i to i32
  %and.i580.i = and i32 %conv.i579.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i580.i)
  %tobool.not.i581.i = icmp eq i32 %and.i580.i, 0
  %and2.i582.i = and i32 %conv.i579.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i582.i)
  %tobool3.not.i583.i = icmp eq i32 %and2.i582.i, 0
  %..i584.i = select i1 %tobool3.not.i583.i, i8 4, i8 2
  %retval.0.i585.i = select i1 %tobool.not.i581.i, i8 %..i584.i, i8 1
  br label %if.end291.i

if.end291.i:                                      ; preds = %if.then289.i, %land.lhs.true286.i.if.end291.i_crit_edge, %land.lhs.true280.i.if.end291.i_crit_edge, %if.end276.i.if.end291.i_crit_edge
  %rx_ant.1.i = phi i8 [ %retval.0.i585.i, %if.then289.i ], [ %rx_ant.0.i, %land.lhs.true286.i.if.end291.i_crit_edge ], [ %rx_ant.0.i, %land.lhs.true280.i.if.end291.i_crit_edge ], [ %rx_ant.0.i, %if.end276.i.if.end291.i_crit_edge ]
  %180 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %nvm_data.i, align 8
  %valid_rx_ant293.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %181, i32 0, i32 21
  %182 = ptrtoint ptr %valid_rx_ant293.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %valid_rx_ant293.i, align 2
  %conv294.i = zext i8 %183 to i32
  %shl295.i = shl nuw nsw i32 %conv294.i, 1
  %conv299.i = zext i8 %rx_ant.1.i to i32
  %shl300.i = shl nuw nsw i32 %conv299.i, 7
  %shl305.i = shl nuw nsw i32 %conv299.i, 4
  %or302.i = or i32 %shl305.i, %shl300.i
  %or307.i = or i32 %or302.i, %shl295.i
  %184 = trunc i32 %or307.i to i16
  %conv311.i = or i16 %184, 1
  %185 = tail call i16 @llvm.bswap.i16(i16 %conv311.i) #7
  %rx_chain312.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 6
  %186 = ptrtoint ptr %rx_chain312.i to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 %185, ptr %rx_chain312.i, align 1
  %187 = ptrtoint ptr %scan_type67 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %scan_type67, align 8
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %188, label %do.body327.i [
    i32 0, label %sw.bb314.i
    i32 1, label %sw.bb321.i
  ]

sw.bb314.i:                                       ; preds = %if.end291.i
  %data.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 13
  %scan_request317.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %190 = ptrtoint ptr %scan_request317.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %scan_request317.i, align 8
  %ie.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ie.i, align 8
  %ie_len.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %191, i32 0, i32 5
  %194 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ie_len.i, align 4
  %sub.i.i = add i32 %39, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i586.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i586.i, label %sw.bb314.i.sw.epilog333.i_crit_edge, label %if.end.i588.i

sw.bb314.i.sw.epilog333.i_crit_edge:              ; preds = %sw.bb314.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog333.i

if.end.i588.i:                                    ; preds = %sw.bb314.i
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %196 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 16384, ptr %data.i, align 2
  %da.i.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 3
  %197 = call ptr @memset(ptr %da.i.i, i32 255, i32 6)
  %sa.i.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 6
  %198 = call ptr @memcpy(ptr %sa.i.i, ptr %addr.i, i32 6)
  %bssid.i.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 8
  %199 = call ptr @memset(ptr %bssid.i.i, i32 255, i32 6)
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %data.i, i32 0, i32 5
  %200 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 0, ptr %seq_ctrl.i.i, align 2
  %conv.i587.i = zext i8 %ssid_len.0.i to i32
  %201 = add nsw i32 %39, 574
  %sub4.i.i = sub nsw i32 %201, %conv.i587.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i.i)
  %cmp5.i.i = icmp slt i32 %sub4.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i588.i.sw.epilog333.i_crit_edge, label %if.end8.i591.i

if.end.i588.i.sw.epilog333.i_crit_edge:           ; preds = %if.end.i588.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog333.i

if.end8.i591.i:                                   ; preds = %if.end.i588.i
  %variable.i.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 10
  %incdec.ptr.i589.i = getelementptr i8, ptr %variable.i.i, i32 1
  %202 = ptrtoint ptr %variable.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %variable.i.i, align 1
  %incdec.ptr9.i.i = getelementptr %struct.ieee80211_mgmt, ptr %data.i, i32 0, i32 6, i32 0, i32 1
  %203 = ptrtoint ptr %incdec.ptr.i589.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %ssid_len.0.i, ptr %incdec.ptr.i589.i, align 1
  %tobool.not.i590.i = icmp eq ptr %ssid.0.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ssid_len.0.i)
  %tobool11.not.i.i = icmp eq i8 %ssid_len.0.i, 0
  %or.cond.i.i = or i1 %tobool.not.i590.i, %tobool11.not.i.i
  br i1 %or.cond.i.i, label %if.end8.i591.i.if.end15.i.i_crit_edge, label %if.then12.i.i

if.end8.i591.i.if.end15.i.i_crit_edge:            ; preds = %if.end8.i591.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.then12.i.i:                                    ; preds = %if.end8.i591.i
  call void @__sanitizer_cov_trace_pc() #9
  %204 = call ptr @memcpy(ptr %incdec.ptr9.i.i, ptr %ssid.0.i, i32 %conv.i587.i)
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr9.i.i, i32 %conv.i587.i
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then12.i.i, %if.end8.i591.i.if.end15.i.i_crit_edge
  %pos.0.i.i = phi ptr [ %add.ptr.i.i, %if.then12.i.i ], [ %incdec.ptr9.i.i, %if.end8.i591.i.if.end15.i.i_crit_edge ]
  %add18.i.i = add nuw nsw i32 %conv.i587.i, 26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i.i, i32 %195)
  %cmp19.i.i = icmp slt i32 %sub4.i.i, %195
  br i1 %cmp19.i.i, label %do.end.i.i, label %if.end45.i.i, !prof !136

do.end.i.i:                                       ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #7
  %conv44.i.i = trunc i32 %add18.i.i to i16
  br label %sw.epilog333.i

if.end45.i.i:                                     ; preds = %if.end15.i.i
  %tobool46.not.i.i = icmp eq ptr %193, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool48.not.i.i = icmp eq i32 %195, 0
  %or.cond82.i.i = or i1 %tobool46.not.i.i, %tobool48.not.i.i
  br i1 %or.cond82.i.i, label %if.end45.i.i.if.end51.i.i_crit_edge, label %if.then49.i.i

if.end45.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i.i

if.then49.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %205 = call ptr @memcpy(ptr %pos.0.i.i, ptr %193, i32 %195)
  %add50.i.i = add i32 %195, %add18.i.i
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then49.i.i, %if.end45.i.i.if.end51.i.i_crit_edge
  %len.0.i.i = phi i32 [ %add50.i.i, %if.then49.i.i ], [ %add18.i.i, %if.end45.i.i.if.end51.i.i_crit_edge ]
  %conv52.i.i = trunc i32 %len.0.i.i to i16
  br label %sw.epilog333.i

sw.bb321.i:                                       ; preds = %if.end291.i
  %sub.i593.i = add i32 %39, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i593.i)
  %cmp.i594.i = icmp slt i32 %sub.i593.i, 0
  br i1 %cmp.i594.i, label %sw.bb321.i.sw.epilog333.i_crit_edge, label %if.end.i601.i

sw.bb321.i.sw.epilog333.i_crit_edge:              ; preds = %sw.bb321.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog333.i

if.end.i601.i:                                    ; preds = %sw.bb321.i
  %data322.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 13
  %206 = ptrtoint ptr %data322.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 16384, ptr %data322.i, align 2
  %da.i595.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 3
  %207 = call ptr @memset(ptr %da.i595.i, i32 255, i32 6)
  %sa.i596.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 6
  %208 = call ptr @memcpy(ptr %sa.i596.i, ptr @iwl_bcast_addr, i32 6)
  %bssid.i597.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 8
  %209 = call ptr @memset(ptr %bssid.i597.i, i32 255, i32 6)
  %seq_ctrl.i598.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %data322.i, i32 0, i32 5
  %210 = ptrtoint ptr %seq_ctrl.i598.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %seq_ctrl.i598.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -574, i32 %39)
  %cmp5.i600.i = icmp slt i32 %39, -574
  br i1 %cmp5.i600.i, label %if.end.i601.i.sw.epilog333.i_crit_edge, label %if.end45.i610.i

if.end.i601.i.sw.epilog333.i_crit_edge:           ; preds = %if.end.i601.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog333.i

if.end45.i610.i:                                  ; preds = %if.end.i601.i
  call void @__sanitizer_cov_trace_pc() #9
  %variable.i602.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 1, i32 10
  %incdec.ptr.i603.i = getelementptr i8, ptr %variable.i602.i, i32 1
  %211 = ptrtoint ptr %variable.i602.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %variable.i602.i, align 1
  %212 = ptrtoint ptr %incdec.ptr.i603.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %incdec.ptr.i603.i, align 1
  br label %sw.epilog333.i

do.body327.i:                                     ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlwifi/dvm/scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #7, !srcloc !139
  unreachable

sw.epilog333.i:                                   ; preds = %if.end45.i610.i, %if.end.i601.i.sw.epilog333.i_crit_edge, %sw.bb321.i.sw.epilog333.i_crit_edge, %if.end51.i.i, %do.end.i.i, %if.end.i588.i.sw.epilog333.i_crit_edge, %sw.bb314.i.sw.epilog333.i_crit_edge
  %cmd_len.0.i = phi i16 [ %conv44.i.i, %do.end.i.i ], [ %conv52.i.i, %if.end51.i.i ], [ 0, %sw.bb314.i.sw.epilog333.i_crit_edge ], [ 0, %if.end.i588.i.sw.epilog333.i_crit_edge ], [ 26, %if.end45.i610.i ], [ 0, %sw.bb321.i.sw.epilog333.i_crit_edge ], [ 0, %if.end.i601.i.sw.epilog333.i_crit_edge ]
  %213 = tail call i16 @llvm.bswap.i16(i16 %cmd_len.0.i) #7
  %214 = ptrtoint ptr %tx_cmd.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 2)
  store i16 %213, ptr %tx_cmd.i, align 1
  %filter_flags.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 10
  %215 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %filter_flags.i, align 1
  %or336.i = or i32 %216, 1140850688
  store i32 %or336.i, ptr %filter_flags.i, align 1
  %217 = ptrtoint ptr %scan_type67 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %scan_type67, align 8
  %219 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %218, label %sw.epilog333.i.sw.epilog352.i_crit_edge [
    i32 1, label %sw.bb338.i
    i32 0, label %sw.bb343.i
  ]

sw.epilog333.i.sw.epilog352.i_crit_edge:          ; preds = %sw.epilog333.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog352.i

sw.bb338.i:                                       ; preds = %sw.epilog333.i
  %idxprom.i = zext i16 %cmd_len.0.i to i32
  %arrayidx340.i = getelementptr %struct.iwl_scan_cmd, ptr %53, i32 0, i32 13, i32 %idxprom.i
  %hw.i.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %220 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %wiphy.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %223, i32 0, i32 53, i32 %148
  %224 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i616.i = icmp eq ptr %225, null
  br i1 %tobool.not.i616.i, label %do.end.i617.i, label %if.end.i618.i

do.end.i617.i:                                    ; preds = %sw.bb338.i
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %227, i32 noundef 0, ptr noundef nonnull @.str.48) #7
  br label %sw.epilog352.sink.split.i

if.end.i618.i:                                    ; preds = %sw.bb338.i
  %n_channels.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %225, i32 0, i32 3
  %228 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %n_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp59.i.i.i = icmp sgt i32 %229, 0
  br i1 %cmp59.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end.i618.i.do.end16.i.i_crit_edge

if.end.i618.i.do.end16.i.i_crit_edge:             ; preds = %if.end.i618.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i618.i
  %valid_contexts.i.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc28.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.060.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc28.i.i.i.for.body.i.i.i_crit_edge ]
  br i1 %cmp11.i.i, label %for.body6.lr.ph.i.i.i, label %for.body.i.i.i.if.end17.i.i620.i_crit_edge

for.body.i.i.i.if.end17.i.i620.i_crit_edge:       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i620.i

for.body6.lr.ph.i.i.i:                            ; preds = %for.body.i.i.i
  %230 = ptrtoint ptr %valid_contexts.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %valid_contexts.i.i.i, align 4
  %conv.i.i.i = zext i8 %231 to i32
  br label %for.body6.i.i.i

for.body6.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body6.i.i.i_crit_edge, %for.body6.lr.ph.i.i.i
  %ctx.057.i.i.i = phi ptr [ %contexts.i, %for.body6.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body6.i.i.i_crit_edge ]
  %ctxid.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.057.i.i.i, i32 0, i32 7
  %232 = ptrtoint ptr %ctxid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %ctxid.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %233
  %and.i.i.i = and i32 %shl.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i619.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i619.i, label %for.body6.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body6.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body6.i.i.i
  %234 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %225, align 4
  %hw_value.i.i.i = getelementptr %struct.ieee80211_channel, ptr %235, i32 %i.060.i.i.i, i32 3
  %236 = ptrtoint ptr %hw_value.i.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %hw_value.i.i.i, align 2
  %channel.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.057.i.i.i, i32 0, i32 15, i32 14
  %238 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %channel.i.i.i, align 2
  %240 = tail call i16 @llvm.bswap.i16(i16 %239) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %237, i16 %240)
  %cmp10.i.i.i = icmp eq i16 %237, %240
  br i1 %cmp10.i.i.i, label %if.then.i.i.i.for.inc28.i.i.i_crit_edge, label %if.then.i.i.i.for.inc.i.i.i_crit_edge

if.then.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.then.i.i.i.for.inc28.i.i.i_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc28.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i.for.inc.i.i.i_crit_edge, %for.body6.i.i.i.for.inc.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.057.i.i.i, i32 1
  %cmp5.i.i.i = icmp ult ptr %incdec.ptr.i.i.i, %arrayidx2.i.i
  br i1 %cmp5.i.i.i, label %for.inc.i.i.i.for.body6.i.i.i_crit_edge, label %for.inc.i.i.i.if.end17.i.i620.i_crit_edge

for.inc.i.i.i.if.end17.i.i620.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i620.i

for.inc.i.i.i.for.body6.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.i.i

if.end17.i.i620.i:                                ; preds = %for.inc.i.i.i.if.end17.i.i620.i_crit_edge, %for.body.i.i.i.if.end17.i.i620.i_crit_edge
  %241 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %225, align 4
  %flags.i.i.i = getelementptr %struct.ieee80211_channel, ptr %242, i32 %i.060.i.i.i, i32 4
  %243 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %flags.i.i.i, align 4
  %and20.i.i.i = and i32 %244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %and20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %iwl_get_single_channel_number.exit.i.i, label %if.end17.i.i620.i.for.inc28.i.i.i_crit_edge

if.end17.i.i620.i.for.inc28.i.i.i_crit_edge:      ; preds = %if.end17.i.i620.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc28.i.i.i

for.inc28.i.i.i:                                  ; preds = %if.end17.i.i620.i.for.inc28.i.i.i_crit_edge, %if.then.i.i.i.for.inc28.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.060.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %229
  br i1 %exitcond.not.i.i.i, label %for.inc28.i.i.i.do.end16.i.i_crit_edge, label %for.inc28.i.i.i.for.body.i.i.i_crit_edge

for.inc28.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc28.i.i.i.do.end16.i.i_crit_edge:           ; preds = %for.inc28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i.i

iwl_get_single_channel_number.exit.i.i:           ; preds = %if.end17.i.i620.i
  %hw_value25.i.i.i = getelementptr %struct.ieee80211_channel, ptr %242, i32 %i.060.i.i.i, i32 3
  %245 = ptrtoint ptr %hw_value25.i.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %hw_value25.i.i.i, align 2
  %conv26.i.i.i = trunc i16 %246 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv26.i.i.i)
  %tobool5.not.i.i = icmp eq i8 %conv26.i.i.i, 0
  br i1 %tobool5.not.i.i, label %iwl_get_single_channel_number.exit.i.i.do.end16.i.i_crit_edge, label %if.then6.i.i

iwl_get_single_channel_number.exit.i.i.do.end16.i.i_crit_edge: ; preds = %iwl_get_single_channel_number.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i.i

if.then6.i.i:                                     ; preds = %iwl_get_single_channel_number.exit.i.i
  %conv.i621.i = shl i16 %246, 8
  %channel7.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %arrayidx340.i, i32 0, i32 1
  %247 = ptrtoint ptr %channel7.i.i to i32
  call void @__asan_storeN_noabort(i32 %247, i32 2)
  store i16 %conv.i621.i, ptr %channel7.i.i, align 1
  %248 = ptrtoint ptr %arrayidx340.i to i32
  call void @__asan_storeN_noabort(i32 %248, i32 4)
  store i32 0, ptr %arrayidx340.i, align 1
  %active_dwell.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %arrayidx340.i, i32 0, i32 4
  %249 = ptrtoint ptr %active_dwell.i.i to i32
  call void @__asan_storeN_noabort(i32 %249, i32 2)
  store i16 1280, ptr %active_dwell.i.i, align 1
  %passive_dwell.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %arrayidx340.i, i32 0, i32 5
  %250 = ptrtoint ptr %passive_dwell.i.i to i32
  call void @__asan_storeN_noabort(i32 %250, i32 2)
  store i16 1280, ptr %passive_dwell.i.i, align 1
  %dsp_atten.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %arrayidx340.i, i32 0, i32 3
  %251 = ptrtoint ptr %dsp_atten.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 110, ptr %dsp_atten.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp.i622.i = icmp eq i32 %148, 1
  %tx_gain.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %arrayidx340.i, i32 0, i32 2
  br i1 %cmp.i622.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %252 = ptrtoint ptr %tx_gain.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 59, ptr %tx_gain.i.i, align 1
  br label %sw.epilog352.sink.split.i

if.else.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %253 = ptrtoint ptr %tx_gain.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 40, ptr %tx_gain.i.i, align 1
  br label %sw.epilog352.sink.split.i

do.end16.i.i:                                     ; preds = %iwl_get_single_channel_number.exit.i.i.do.end16.i.i_crit_edge, %for.inc28.i.i.i.do.end16.i.i_crit_edge, %if.end.i618.i.do.end16.i.i_crit_edge
  %254 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %255, i32 noundef 0, ptr noundef nonnull @.str.49) #7
  br label %sw.epilog352.sink.split.i

sw.bb343.i:                                       ; preds = %sw.epilog333.i
  %idxprom347.i = zext i16 %cmd_len.0.i to i32
  %arrayidx348.i = getelementptr %struct.iwl_scan_cmd, ptr %53, i32 0, i32 13, i32 %idxprom347.i
  %hw.i.i624.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %256 = ptrtoint ptr %hw.i.i624.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %hw.i.i624.i, align 4
  %wiphy.i.i625.i = getelementptr inbounds %struct.ieee80211_hw, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %wiphy.i.i625.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %wiphy.i.i625.i, align 8
  %arrayidx.i.i626.i = getelementptr %struct.wiphy, ptr %259, i32 0, i32 53, i32 %148
  %260 = ptrtoint ptr %arrayidx.i.i626.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i.i626.i, align 4
  %tobool.not.i627.i = icmp eq ptr %261, null
  br i1 %tobool.not.i627.i, label %sw.bb343.i.iwl_get_channels_for_scan.exit.i_crit_edge, label %if.end.i630.i

sw.bb343.i.iwl_get_channels_for_scan.exit.i_crit_edge: ; preds = %sw.bb343.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_get_channels_for_scan.exit.i

if.end.i630.i:                                    ; preds = %sw.bb343.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp.i.i628.i = icmp eq i32 %148, 1
  %conv.i.i629.i = zext i8 %n_probes.1.i to i16
  %add.i.i.i = shl nuw nsw i16 %conv.i.i629.i, 1
  %add1.i.i.i = add nuw nsw i16 %add.i.i.i, 22
  %262 = mul nuw nsw i16 %conv.i.i629.i, 3
  %add6.i.i.i = add nuw nsw i16 %262, 33
  %retval.0.i.i.i = select i1 %cmp.i.i628.i, i16 %add1.i.i.i, i16 %add6.i.i.i
  %conv.i3.i.i = select i1 %cmp225.i, i16 120, i16 110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %limits.i.i.i.i) #7
  %263 = ptrtoint ptr %limits.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 0, ptr %limits.i.i.i.i, align 8
  br i1 %cmp11.i.i, label %for.body.lr.ph.i.i.i.i, label %if.end.i630.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge

if.end.i630.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge: ; preds = %if.end.i630.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_get_passive_dwell_time.exit.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end.i630.i
  %valid_contexts.i.i.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %264 = ptrtoint ptr %valid_contexts.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %valid_contexts.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %265 to i32
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %ctx.0122.i.i.i.i = phi ptr [ %contexts.i, %for.body.lr.ph.i.i.i.i ], [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %n_active.0120.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %n_active.1.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %ctxid.i.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0122.i.i.i.i, i32 0, i32 7
  %266 = ptrtoint ptr %ctxid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %ctxid.i.i.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %267
  %and.i.i.i.i = and i32 %shl.i.i.i.i, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %dev_type.i.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0122.i.i.i.i, i32 0, i32 15, i32 6
  %268 = ptrtoint ptr %dev_type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %dev_type.i.i.i.i, align 2
  %270 = zext i8 %269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %269, label %sw.default.i.i.i.i [
    i8 9, label %if.then.i.i.i.i.for.inc.i.i.i.i_crit_edge
    i8 8, label %if.then.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
    i8 7, label %if.then.i.i.i.i.sw.epilog.i.i.i.i_crit_edge114
  ]

if.then.i.i.i.i.sw.epilog.i.i.i.i_crit_edge114:   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i

if.then.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i

if.then.i.i.i.i.for.inc.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %filter_flags.i.i.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0122.i.i.i.i, i32 0, i32 14, i32 13
  %271 = ptrtoint ptr %filter_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %filter_flags.i.i.i.i.i, align 4
  %273 = and i32 %272, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool5.not.i.i.i.i = icmp eq i32 %273, 0
  br i1 %tobool5.not.i.i.i.i, label %sw.default.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %sw.default.i.i.i.i.sw.epilog.i.i.i.i_crit_edge

sw.default.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:   ; preds = %sw.default.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i

sw.default.i.i.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %sw.default.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.default.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %if.then.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %if.then.i.i.i.i.sw.epilog.i.i.i.i_crit_edge114
  %beacon_int.i.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0122.i.i.i.i, i32 0, i32 28
  %274 = ptrtoint ptr %beacon_int.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %beacon_int.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool8.not.i.i.i.i = icmp eq i32 %275, 0
  %..i.i.i.i = select i1 %tobool8.not.i.i.i.i, i32 100, i32 %275
  %inc.i.i.i.i = add i32 %n_active.0120.i.i.i.i, 1
  %arrayidx9.i.i.i.i = getelementptr [2 x i32], ptr %limits.i.i.i.i, i32 0, i32 %n_active.0120.i.i.i.i
  %276 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %..i.i.i.i, ptr %arrayidx9.i.i.i.i, align 4
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %sw.epilog.i.i.i.i, %sw.default.i.i.i.i.for.inc.i.i.i.i_crit_edge, %if.then.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %n_active.1.i.i.i.i = phi i32 [ %inc.i.i.i.i, %sw.epilog.i.i.i.i ], [ %n_active.0120.i.i.i.i, %sw.default.i.i.i.i.for.inc.i.i.i.i_crit_edge ], [ %n_active.0120.i.i.i.i, %if.then.i.i.i.i.for.inc.i.i.i.i_crit_edge ], [ %n_active.0120.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.0122.i.i.i.i, i32 1
  %cmp.i.i.i.i = icmp ult ptr %incdec.ptr.i.i.i.i, %arrayidx2.i.i
  br i1 %cmp.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.end.i.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i
  %277 = zext i32 %n_active.1.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %277, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %n_active.1.i.i.i.i, label %land.end.i.i.i.i [
    i32 0, label %for.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge
    i32 2, label %sw.bb12.i.i.i.i
    i32 1, label %for.end.i.i.i.i.sw.bb29.i.i.i.i_crit_edge
  ]

for.end.i.i.i.i.sw.bb29.i.i.i.i_crit_edge:        ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29.i.i.i.i

for.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_get_passive_dwell_time.exit.i.i

sw.bb12.i.i.i.i:                                  ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx13.i.i.i.i = getelementptr inbounds [2 x i32], ptr %limits.i.i.i.i, i32 0, i32 1
  %278 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx13.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %279, 98
  %div.i.i.i.i = sdiv i32 %mul.i.i.i.i, 100
  %280 = add nsw i32 %div.i.i.i.i, 65526
  %281 = lshr i32 %280, 1
  %conv18.i.i.i.i = and i32 %281, 32767
  %conv19.i.i.i.i = zext i16 %conv.i3.i.i to i32
  %282 = tail call i32 @llvm.umin.i32(i32 %conv18.i.i.i.i, i32 %conv19.i.i.i.i) #7
  %conv28.i.i.i.i = trunc i32 %282 to i16
  br label %sw.bb29.i.i.i.i

sw.bb29.i.i.i.i:                                  ; preds = %sw.bb12.i.i.i.i, %for.end.i.i.i.i.sw.bb29.i.i.i.i_crit_edge
  %dwell_time.addr.0.i.i.i.i = phi i16 [ %conv.i3.i.i, %for.end.i.i.i.i.sw.bb29.i.i.i.i_crit_edge ], [ %conv28.i.i.i.i, %sw.bb12.i.i.i.i ]
  %283 = ptrtoint ptr %limits.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %limits.i.i.i.i, align 8
  %mul31.i.i.i.i = mul i32 %284, 98
  %div32.i.i.i.i = sdiv i32 %mul31.i.i.i.i, 100
  %285 = trunc i32 %div32.i.i.i.i to i16
  %div36117.lhs.trunc.i.i.i.i = add i16 %285, -10
  %div36117.rhs.trunc.i.i.i.i = trunc i32 %n_active.1.i.i.i.i to i16
  %div36117118.i.i.i.i = udiv i16 %div36117.lhs.trunc.i.i.i.i, %div36117.rhs.trunc.i.i.i.i
  %286 = tail call i16 @llvm.umin.i16(i16 %div36117118.i.i.i.i, i16 %dwell_time.addr.0.i.i.i.i) #7
  br label %iwl_get_passive_dwell_time.exit.i.i

land.end.i.i.i.i:                                 ; preds = %for.end.i.i.i.i
  %.b116.i.i.i.i = load i1, ptr @iwl_limit_dwell.__already_done, align 1
  br i1 %.b116.i.i.i.i, label %land.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge, label %if.then57.i.i.i.i, !prof !140

land.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge: ; preds = %land.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_get_passive_dwell_time.exit.i.i

if.then57.i.i.i.i:                                ; preds = %land.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_limit_dwell.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 410, i32 noundef 9, ptr noundef null) #7
  br label %iwl_get_passive_dwell_time.exit.i.i

iwl_get_passive_dwell_time.exit.i.i:              ; preds = %if.then57.i.i.i.i, %land.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge, %sw.bb29.i.i.i.i, %for.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge, %if.end.i630.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i16 [ %286, %sw.bb29.i.i.i.i ], [ %conv.i3.i.i, %for.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge ], [ %conv.i3.i.i, %if.then57.i.i.i.i ], [ %conv.i3.i.i, %land.end.i.i.i.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge ], [ %conv.i3.i.i, %if.end.i630.i.iwl_get_passive_dwell_time.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %limits.i.i.i.i) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i.i.i, i16 %retval.0.i.i.i)
  %cmp.not.i.i = icmp ugt i16 %retval.0.i.i.i.i, %retval.0.i.i.i
  %add.i.i = add nuw nsw i16 %retval.0.i.i.i, 1
  %spec.select.i.i = select i1 %cmp.not.i.i, i16 %retval.0.i.i.i.i, i16 %add.i.i
  %scan_request.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 41
  %287 = ptrtoint ptr %scan_request.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %scan_request.i.i, align 8
  %n_channels5.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %288, i32 0, i32 2
  %289 = ptrtoint ptr %n_channels5.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %n_channels5.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp96.not.i.i = icmp eq i32 %290, 0
  br i1 %cmp96.not.i.i, label %iwl_get_passive_dwell_time.exit.i.i.do.end57.i.i_crit_edge, label %for.body.lr.ph.i635.i

iwl_get_passive_dwell_time.exit.i.i.do.end57.i.i_crit_edge: ; preds = %iwl_get_passive_dwell_time.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57.i.i

for.body.lr.ph.i635.i:                            ; preds = %iwl_get_passive_dwell_time.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n_probes.1.i)
  %tobool23.not.i.i = icmp eq i8 %n_probes.1.i, 0
  %conv25.i.i = zext i8 %n_probes.1.i to i32
  %shl.i631.i = shl nuw i32 1, %conv25.i.i
  %sub.i632.i = add i32 %shl.i631.i, -2
  %or.i633.i = or i32 %sub.i632.i, %shl.i631.i
  %291 = tail call i32 @llvm.bswap.i32(i32 %or.i633.i) #7
  %292 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.i.i) #7
  %293 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i.i) #7
  %or29.i.i = select i1 %tobool23.not.i.i, i32 0, i32 %291
  %spec.select11.i.i = select i1 %cmp.i.i628.i, i8 59, i8 40
  br label %for.body.i636.i

for.body.i636.i:                                  ; preds = %for.inc.i640.i.for.body.i636.i_crit_edge, %for.body.lr.ph.i635.i
  %294 = phi ptr [ %288, %for.body.lr.ph.i635.i ], [ %317, %for.inc.i640.i.for.body.i636.i_crit_edge ]
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i635.i ], [ %inc53.i.i, %for.inc.i640.i.for.body.i636.i_crit_edge ]
  %added.08.i.i = phi i32 [ 0, %for.body.lr.ph.i635.i ], [ %added.1.i.i, %for.inc.i640.i.for.body.i636.i_crit_edge ]
  %scan_ch.addr.07.i.i = phi ptr [ %arrayidx348.i, %for.body.lr.ph.i635.i ], [ %scan_ch.addr.1.i.i, %for.inc.i640.i.for.body.i636.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.cfg80211_scan_request, ptr %294, i32 0, i32 22, i32 %i.09.i.i
  %295 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx.i.i, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %296, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %148)
  %cmp13.not.i.i = icmp eq i32 %298, %148
  br i1 %cmp13.not.i.i, label %if.end16.i.i, label %for.body.i636.i.for.inc.i640.i_crit_edge

for.body.i636.i.for.inc.i640.i_crit_edge:         ; preds = %for.body.i636.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i640.i

if.end16.i.i:                                     ; preds = %for.body.i636.i
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %296, i32 0, i32 3
  %299 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %hw_value.i.i, align 2
  %301 = tail call i16 @llvm.bswap.i16(i16 %300) #7
  %channel17.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %scan_ch.addr.07.i.i, i32 0, i32 1
  %302 = ptrtoint ptr %channel17.i.i to i32
  call void @__asan_storeN_noabort(i32 %302, i32 2)
  store i16 %301, ptr %channel17.i.i, align 1
  br i1 %is_active.0.off0.i, label %lor.lhs.false.i.i, label %if.end16.i.i.if.end22.i.i_crit_edge

if.end16.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %296, i32 0, i32 4
  %303 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %flags.i.i, align 4
  %and.i637.i = shl i32 %304, 23
  %305 = and i32 %and.i637.i, 16777216
  %306 = xor i32 %305, 16777216
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %lor.lhs.false.i.i, %if.end16.i.i.if.end22.i.i_crit_edge
  %storemerge.i.i = phi i32 [ 0, %if.end16.i.i.if.end22.i.i_crit_edge ], [ %306, %lor.lhs.false.i.i ]
  %spec.select10.i.i = or i32 %storemerge.i.i, %or29.i.i
  %307 = ptrtoint ptr %scan_ch.addr.07.i.i to i32
  call void @__asan_storeN_noabort(i32 %307, i32 4)
  store i32 %spec.select10.i.i, ptr %scan_ch.addr.07.i.i, align 1
  %active_dwell31.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %scan_ch.addr.07.i.i, i32 0, i32 4
  %308 = ptrtoint ptr %active_dwell31.i.i to i32
  call void @__asan_storeN_noabort(i32 %308, i32 2)
  store i16 %292, ptr %active_dwell31.i.i, align 1
  %passive_dwell32.i.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %scan_ch.addr.07.i.i, i32 0, i32 5
  %309 = ptrtoint ptr %passive_dwell32.i.i to i32
  call void @__asan_storeN_noabort(i32 %309, i32 2)
  store i16 %293, ptr %passive_dwell32.i.i, align 1
  %dsp_atten.i638.i = getelementptr inbounds %struct.iwl_scan_channel, ptr %scan_ch.addr.07.i.i, i32 0, i32 3
  %310 = ptrtoint ptr %dsp_atten.i638.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 110, ptr %dsp_atten.i638.i, align 1
  %311 = getelementptr inbounds %struct.iwl_scan_channel, ptr %scan_ch.addr.07.i.i, i32 0, i32 2
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %spec.select11.i.i, ptr %311, align 1
  %313 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev62, align 4
  %conv40.i.i = zext i16 %300 to i32
  %315 = tail call i32 @llvm.bswap.i32(i32 %spec.select10.i.i) #7
  %and43.i.i = and i32 %spec.select10.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  %cond.i.i = select i1 %tobool44.not.i.i, ptr @.str.52, ptr @.str.51
  %spec.select.call1.i.i = select i1 %tobool44.not.i.i, i16 %spec.select.i.i, i16 %retval.0.i.i.i
  %cond50.i.i = zext i16 %spec.select.call1.i.i to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %314, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_get_channels_for_scan, ptr noundef nonnull @.str.50, i32 noundef %conv40.i.i, i32 noundef %315, ptr noundef nonnull %cond.i.i, i32 noundef %cond50.i.i) #7
  %incdec.ptr.i639.i = getelementptr %struct.iwl_scan_channel, ptr %scan_ch.addr.07.i.i, i32 1
  %inc.i.i = add i32 %added.08.i.i, 1
  br label %for.inc.i640.i

for.inc.i640.i:                                   ; preds = %if.end22.i.i, %for.body.i636.i.for.inc.i640.i_crit_edge
  %scan_ch.addr.1.i.i = phi ptr [ %scan_ch.addr.07.i.i, %for.body.i636.i.for.inc.i640.i_crit_edge ], [ %incdec.ptr.i639.i, %if.end22.i.i ]
  %added.1.i.i = phi i32 [ %added.08.i.i, %for.body.i636.i.for.inc.i640.i_crit_edge ], [ %inc.i.i, %if.end22.i.i ]
  %inc53.i.i = add nuw i32 %i.09.i.i, 1
  %316 = ptrtoint ptr %scan_request.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %scan_request.i.i, align 8
  %n_channels.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %317, i32 0, i32 2
  %318 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %n_channels.i.i, align 8
  %cmp9.i.i = icmp ult i32 %inc53.i.i, %319
  br i1 %cmp9.i.i, label %for.inc.i640.i.for.body.i636.i_crit_edge, label %for.inc.i640.i.do.end57.i.i_crit_edge

for.inc.i640.i.do.end57.i.i_crit_edge:            ; preds = %for.inc.i640.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57.i.i

for.inc.i640.i.for.body.i636.i_crit_edge:         ; preds = %for.inc.i640.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i636.i

do.end57.i.i:                                     ; preds = %for.inc.i640.i.do.end57.i.i_crit_edge, %iwl_get_passive_dwell_time.exit.i.i.do.end57.i.i_crit_edge
  %added.0.lcssa.i.i = phi i32 [ 0, %iwl_get_passive_dwell_time.exit.i.i.do.end57.i.i_crit_edge ], [ %added.1.i.i, %for.inc.i640.i.do.end57.i.i_crit_edge ]
  %320 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %321, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_get_channels_for_scan, ptr noundef nonnull @.str.53, i32 noundef %added.0.lcssa.i.i) #7
  br label %iwl_get_channels_for_scan.exit.i

iwl_get_channels_for_scan.exit.i:                 ; preds = %do.end57.i.i, %sw.bb343.i.iwl_get_channels_for_scan.exit.i_crit_edge
  %retval.0.i641.i = phi i32 [ %added.0.lcssa.i.i, %do.end57.i.i ], [ 0, %sw.bb343.i.iwl_get_channels_for_scan.exit.i_crit_edge ]
  %conv350.i = trunc i32 %retval.0.i641.i to i8
  br label %sw.epilog352.sink.split.i

sw.epilog352.sink.split.i:                        ; preds = %iwl_get_channels_for_scan.exit.i, %do.end16.i.i, %if.else.i.i, %if.then9.i.i, %do.end.i617.i
  %conv350.sink.i = phi i8 [ %conv350.i, %iwl_get_channels_for_scan.exit.i ], [ 0, %do.end16.i.i ], [ 0, %do.end.i617.i ], [ 1, %if.else.i.i ], [ 1, %if.then9.i.i ]
  %channel_count351.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 2
  %322 = ptrtoint ptr %channel_count351.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv350.sink.i, ptr %channel_count351.i, align 1
  br label %sw.epilog352.i

sw.epilog352.i:                                   ; preds = %sw.epilog352.sink.split.i, %sw.epilog333.i.sw.epilog352.i_crit_edge
  %channel_count353.i = getelementptr inbounds %struct.iwl_scan_cmd, ptr %53, i32 0, i32 2
  %323 = ptrtoint ptr %channel_count353.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %channel_count353.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %cmp355.i = icmp eq i8 %324, 0
  br i1 %cmp355.i, label %do.end361.i, label %if.end367.i

do.end361.i:                                      ; preds = %sw.epilog352.i
  call void @__sanitizer_cov_trace_pc() #9
  %325 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dev62, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %326, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_request_scan, ptr noundef nonnull @.str.47, i32 noundef 0) #7
  br label %if.then70

if.end367.i:                                      ; preds = %sw.epilog352.i
  %conv354.i = zext i8 %324 to i16
  %327 = ptrtoint ptr %tx_cmd.i to i32
  call void @__asan_loadN_noabort(i32 %327, i32 2)
  %328 = load i16, ptr %tx_cmd.i, align 1
  %329 = tail call i16 @llvm.bswap.i16(i16 %328) #7
  %mul373.i = mul nuw nsw i16 %conv354.i, 12
  %add374.i = add i16 %329, %mul373.i
  %330 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %28, align 4
  %add378.i = add i16 %add374.i, %331
  store i16 %add378.i, ptr %28, align 4
  %332 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %53, ptr %cmd.i, align 4
  %dataflags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 7
  %333 = ptrtoint ptr %dataflags.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 1, ptr %dataflags.i, align 4
  %334 = tail call i16 @llvm.bswap.i16(i16 %add378.i) #7
  %335 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %335, i32 2)
  store i16 %334, ptr %53, align 1
  tail call void @_set_bit(i32 noundef 9, ptr noundef %status.i.i) #7
  %call387.i = tail call i32 @iwlagn_set_pan_params(ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387.i)
  %tobool388.not.i = icmp eq i32 %call387.i, 0
  br i1 %tobool388.not.i, label %if.end391.i, label %if.then389.i

if.then389.i:                                     ; preds = %if.end367.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %status.i.i) #7
  br label %if.then70

if.end391.i:                                      ; preds = %if.end367.i
  %call392.i = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392.i)
  %tobool393.not.i = icmp eq i32 %call392.i, 0
  br i1 %tobool393.not.i, label %if.end73, label %if.then394.i

if.then394.i:                                     ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 9, ptr noundef %status.i.i) #7
  %call396.i = call i32 @iwlagn_set_pan_params(ptr noundef %priv) #7
  br label %if.then70

if.then70:                                        ; preds = %if.then394.i, %if.then389.i, %do.end361.i, %do.end207.i, %do.end79.i, %do.end.i
  %retval.0.i100.ph = phi i32 [ %call392.i, %if.then394.i ], [ -12, %do.end79.i ], [ %call387.i, %if.then389.i ], [ -5, %do.end361.i ], [ -5, %do.end207.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #7
  call void @_clear_bit(i32 noundef 7, ptr noundef %status.i.i) #7
  %336 = ptrtoint ptr %scan_type67 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 0, ptr %scan_type67, align 8
  br label %cleanup

if.end73:                                         ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #7
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %337 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %workqueue, align 4
  %call.i101 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %338, ptr noundef %scan_check, i32 noundef 1500) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then70, %do.end53, %do.end41, %do.end31
  %retval.0 = phi i32 [ -16, %do.end41 ], [ -16, %do.end53 ], [ %retval.0.i100.ph, %if.then70 ], [ 0, %if.end73 ], [ -5, %do.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_internal_short_hw_scan(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  %start_internal_scan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 111
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %start_internal_scan) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_setup_scan_deferred_work(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_completed = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 102
  tail call void @__init_work(ptr noundef %scan_completed, i32 noundef 0) #7
  %0 = ptrtoint ptr %scan_completed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %scan_completed, align 8
  %lockdep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 102, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @iwl_setup_scan_deferred_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 102, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 102, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 102, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iwl_bg_scan_completed, ptr %func, align 4
  %abort_scan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 103
  tail call void @__init_work(ptr noundef %abort_scan, i32 noundef 0) #7
  %4 = ptrtoint ptr %abort_scan to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %abort_scan, align 4
  %lockdep_map12 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 103, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map12, ptr noundef nonnull @.str.13, ptr noundef nonnull @iwl_setup_scan_deferred_work.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry14 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 103, i32 1
  %5 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i71 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 103, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry14, ptr %prev.i71, align 4
  %func16 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 103, i32 2
  %7 = ptrtoint ptr %func16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iwl_bg_abort_scan, ptr %func16, align 4
  %start_internal_scan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 111
  tail call void @__init_work(ptr noundef %start_internal_scan, i32 noundef 0) #7
  %8 = ptrtoint ptr %start_internal_scan to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %start_internal_scan, align 4
  %lockdep_map24 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 111, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map24, ptr noundef nonnull @.str.15, ptr noundef nonnull @iwl_setup_scan_deferred_work.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry26 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 111, i32 1
  %9 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i72 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 111, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry26, ptr %prev.i72, align 4
  %func28 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 111, i32 2
  %11 = ptrtoint ptr %func28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @iwl_bg_start_internal_scan, ptr %func28, align 4
  %scan_check = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115
  tail call void @__init_work(ptr noundef %scan_check, i32 noundef 0) #7
  %12 = ptrtoint ptr %scan_check to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %scan_check, align 4
  %lockdep_map39 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map39, ptr noundef nonnull @.str.17, ptr noundef nonnull @iwl_setup_scan_deferred_work.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry42 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115, i32 0, i32 1
  %13 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i73 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry42, ptr %prev.i73, align 4
  %func45 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115, i32 0, i32 2
  %15 = ptrtoint ptr %func45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @iwl_bg_scan_check, ptr %func45, align 4
  %timer = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @iwl_setup_scan_deferred_work.__key.18) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_scan_completed(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10392
  %mutex = getelementptr i8, ptr %work, i32 -10324
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call fastcc void @iwl_process_scan_complete(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_abort_scan(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10436
  %dev = getelementptr i8, ptr %work, i32 -10432
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_bg_abort_scan, ptr noundef nonnull @.str.54) #7
  %mutex = getelementptr i8, ptr %work, i32 -10368
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @iwl_scan_cancel_timeout(ptr noundef %add.ptr, i32 noundef 200)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_start_internal_scan(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10668
  %dev = getelementptr i8, ptr %work, i32 -10664
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_bg_start_internal_scan, ptr noundef nonnull @.str.55) #7
  %mutex = getelementptr i8, ptr %work, i32 -10600
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %scan_type = getelementptr i8, ptr %work, i32 -7964
  %2 = ptrtoint ptr %scan_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.unlock.sink.split_crit_edge, label %if.end

entry.unlock.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.sink.split

if.end:                                           ; preds = %entry
  %status = getelementptr i8, ptr %work, i32 -10648
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end19, label %if.end.unlock.sink.split_crit_edge

if.end.unlock.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.sink.split

if.end19:                                         ; preds = %if.end
  %band = getelementptr i8, ptr %work, i32 -10300
  %7 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %band, align 8
  %call20 = tail call i32 @iwl_scan_initiate(ptr noundef %add.ptr, ptr noundef null, i32 noundef 1, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.unlock_crit_edge, label %if.end19.unlock.sink.split_crit_edge

if.end19.unlock.sink.split_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.sink.split

if.end19.unlock_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

unlock.sink.split:                                ; preds = %if.end19.unlock.sink.split_crit_edge, %if.end.unlock.sink.split_crit_edge, %entry.unlock.sink.split_crit_edge
  %.str.58.sink = phi ptr [ @.str.56, %entry.unlock.sink.split_crit_edge ], [ @.str.57, %if.end.unlock.sink.split_crit_edge ], [ @.str.58, %if.end19.unlock.sink.split_crit_edge ]
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_bg_start_internal_scan, ptr noundef nonnull %.str.58.sink) #7
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.end19.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_scan_check(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -10844
  %dev = getelementptr i8, ptr %data, i32 -10840
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_bg_scan_check, ptr noundef nonnull @.str.59) #7
  %mutex = getelementptr i8, ptr %data, i32 -10776
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @iwl_force_scan_end(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_cancel_scan_deferred_work(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_internal_scan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 111
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %start_internal_scan) #7
  %abort_scan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 103
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %abort_scan) #7
  %scan_completed = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 102
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %scan_completed) #7
  %scan_check = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 115
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_check) #7
  br i1 %call3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @iwl_force_scan_end(ptr noundef %priv)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_post_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_toggle_tx_ant(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_set_pan_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !53, !55, !56, !58, !60, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114, !115, !117, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 146, i32 2}
!2 = !{ptr @__func__.iwl_force_scan_end, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 149, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 153, i32 2}
!7 = !{ptr @__func__.iwl_scan_cancel, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 190, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.iwl_scan_cancel_timeout, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 205, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 927, i32 3}
!15 = !{ptr @__func__.iwl_scan_initiate, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 932, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 938, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 942, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @iwl_setup_scan_deferred_work.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 1039, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @iwl_setup_scan_deferred_work.__key.12, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 1040, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @iwl_setup_scan_deferred_work.__key.14, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 1041, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @iwl_setup_scan_deferred_work.__key.16, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 1042, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @iwl_setup_scan_deferred_work.__key.18, !34, !"__key", i1 false, i1 false}
!37 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__func__.iwl_complete_scan, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 82, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__func__.iwl_do_scan_abort, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 168, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 173, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 179, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 182, i32 3}
!50 = !{ptr @__func__.iwl_send_scan_abort, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 65, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__func__.iwl_process_scan_complete, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 100, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 106, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 109, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 124, i32 4}
!62 = !{ptr @__func__.iwl_rx_reply_scan, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 239, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__func__.iwl_rx_scan_start_notif, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 251, i32 2}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__func__.iwl_rx_scan_results_notif, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 269, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__func__.iwl_rx_scan_complete_notif, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 291, i32 2}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 296, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__func__.iwlagn_request_scan, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 648, i32 4}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 665, i32 3}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 684, i32 3}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 690, i32 3}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 701, i32 4}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 725, i32 4}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 759, i32 3}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 818, i32 3}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 878, i32 3}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 463, i32 3}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 484, i32 2}
!103 = !{ptr @__func__.iwl_get_channels_for_scan, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 543, i32 3}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 554, i32 2}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 410, i32 3}
!112 = !{ptr @__func__.iwl_bg_abort_scan, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 1018, i32 2}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__func__.iwl_bg_start_internal_scan, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 979, i32 2}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 984, i32 3}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 989, i32 3}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 994, i32 3}
!124 = !{ptr @__func__.iwl_bg_scan_check, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/scan.c", i32 1004, i32 2}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i8 0, i8 2}
!138 = !{i8 0, i8 9}
!139 = !{i64 2157937304, i64 2157937814, i64 2157937341, i64 2157937397, i64 2157937431, i64 2157937455, i64 2157937496, i64 2157937517, i64 2157937545, i64 2157937579}
!140 = !{!"branch_weights", i32 2000, i32 1}
